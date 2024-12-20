

 function appendMovie2Row(rowId, movieName, movieId, year, rating, rateNumber, genres, baseUrl) {
    var selector = "#" + rowId.replace(/\//g, '\\/');//正则表达式，告诉 jQuery 将rowId中的 / 视为普通字符而不是选择器的一部分。
    var genresStr = "";
    $.each(genres, function(i, genre){
        genresStr += ('<div class="genre"><a href="'+baseUrl+'collection.html?type=genre&value='+genre+'"><b>'+genre+'</b></a></div>');
    });


    var divstr = '<div class="movie-row-item" style="margin-right:5px">\
                    <movie-card-smart>\
                     <movie-card-md1>\
                      <div class="movie-card-md1">\
                       <div class="card">\
                        <link-or-emit>\
                         <a uisref="base.movie" onclick="incrementX();add_product('+movieId+')" href="./movie.html?productId='+movieId+'">\
                         <span>\
                           <div class="poster">\
                            <img src="./posters/' + movieId + '.jpg" />\
                           </div>\
                           </span>\
                           </a>\
                        </link-or-emit>\
                        <div class="overlay">\
                         <div class="above-fold">\
                          <link-or-emit>\
                           <a uisref="base.movie" onclick="incrementX();add_product('+movieId+')" href="./movie.html?productId='+movieId+'">\
                           <span><p class="title">' + movieName + '</p></span></a>\
                          </link-or-emit>\
                          <div class="rating-indicator">\
                           <ml4-rating-or-prediction>\
                            <div class="rating-or-prediction predicted">\
                             <svg xmlns:xlink="http://www.w3.org/1999/xlink" class="star-icon" height="14px" version="1.1" viewbox="0 0 14 14" width="14px" xmlns="http://www.w3.org/2000/svg">\
                              <defs></defs>\
                              <polygon fill-rule="evenodd" points="13.7714286 5.4939887 9.22142857 4.89188383 7.27142857 0.790044361 5.32142857 4.89188383 0.771428571 5.4939887 4.11428571 8.56096041 3.25071429 13.0202996 7.27142857 10.8282616 11.2921429 13.0202996 10.4285714 8.56096041" stroke="none"></polygon>\
                             </svg>\
                             <div class="rating-value">\
                              '+rating+'\
                             </div>\
                            </div>\
                           </ml4-rating-or-prediction>\
                          </div>\
                         </div>\
                         <div class="below-fold">\
                          <div class="genre-list">\
                           '+genresStr+'\
                          </div>\
                          <div class="ratings-display">\
                           <div class="rating-average">\
                            <span class="rating-large">'+rating+'</span>\
                            <span class="rating-total">/5</span>\
                            <p class="rating-caption"> '+rateNumber+' ratings </p>\
                           </div>\
                          </div>\
                         </div>\
                        </div>\
                       </div>\
                      </div>\
                     </movie-card-md1>\
                    </movie-card-smart>\
                   </div>';
     $(selector).append(divstr);
};


function addRowFrame(pageId, rowName, rowId, baseUrl) {
 var divstr = '<div class="frontpage-section-top"> \
                <div class="explore-header frontpage-section-header">\
                 <a class="plainlink" title="go to the full list" href="'+baseUrl+'collection.html?type=genre&value='+rowName+'">' + rowName + '</a> \
                </div>\
                <div class="movie-row">\
                 <div class="movie-row-bounds">\
                  <div class="movie-row-scrollable" id="' + rowId +'" style="margin-left: 0px;">\
                  </div>\
                 </div>\
                 <div class="clearfix"></div>\
                </div>\
               </div>'
     $(pageId).prepend(divstr);
};

function addRowFrameWithoutLink(pageId, rowName, rowId, baseUrl) {
 var divstr = '<div class="frontpage-section-top"> \
                <div class="explore-header frontpage-section-header">\
                 <a class="plainlink" title="go to the full list" href="'+baseUrl+'collection.html?type=genre&value='+rowName+'">' + rowName + '</a> \
                </div>\
                <div class="movie-row">\
                 <div class="movie-row-bounds">\
                  <div class="movie-row-scrollable" id="' + rowId +'" style="margin-left: 0px;">\
                  </div>\
                 </div>\
                 <div class="clearfix"></div>\
                </div>\
               </div>'
     $(pageId).prepend(divstr);
};

function addGenreRow(pageId, rowName, rowId, size, baseUrl) {

            addRowFrame(pageId,rowName,rowId,baseUrl);
            //http://localhost:6010/getrecommendation?category=育儿/早教&size=8&sortby=rating
            $.getJSON(baseUrl + "getrecommendation?category="+rowName+"&size="+size+"&sortby=rating", function(result){
                $.each(result, function(i, movie){
                    appendMovie2Row(rowId, movie.title, movie.productId, 0, movie.averageRating.toPrecision(2), movie.ratingNumber, movie.categories,baseUrl);
                });
            });
};

function addAllByCategory(category){

    var getUrl = window.location;
    var baseUrl = getUrl.protocol + "//" + getUrl.host + "/"
    var size;
    //http://localhost:6010/getProductCountByCategory?category=%E8%82%B2%E5%84%BF/%E6%97%A9%E6%95%99
    $.getJSON(baseUrl + "getProductCountByCategory?category=" + category, function(result) {
        size = result.count;
        addGenreRow('#recPage', category, category + '-collection', size , baseUrl);
    });
}

function addRelatedMovies(pageId, containerId, movieId, baseUrl){

    var rowDiv = '<div class="frontpage-section-top"> \
                <div class="explore-header frontpage-section-header">\
                 Related Products \
                </div>\
                <div class="movie-row">\
                 <div class="movie-row-bounds">\
                  <div class="movie-row-scrollable" id="' + containerId +'" style="margin-left: 0px;">\
                  </div>\
                 </div>\
                 <div class="clearfix"></div>\
                </div>\
               </div>'
    $(pageId).prepend(rowDiv);

    $.getJSON(baseUrl + "getsimilarproduct?productId="+movieId+"&size=16&model=emb", function(result){
            $.each(result, function(i, movie){
              appendMovie2Row(containerId, movie.title, movie.productId, 0, movie.averageRating.toPrecision(2), movie.ratingNumber, movie.categories,baseUrl);
            });
    });
}
function add_firstpage(pageId){
    var x1 = './resources/img_3.png'
    var x2 = './resources/img.png';
    var x3 = './resources/img_1.png';
    var rowDiv = '<!-- 轮播图 -->\
        <div class="carousel-container">\
            <div class="carousel-slides" id="carousel-slides">\
                <div class="carousel-slide" style="background-image: url('+ x1 +');"></div>\
                <div class="carousel-slide" style="background-image: url('+ x2 +');"></div>\
                <div class="carousel-slide" style="background-image: url('+ x3 +');"></div>\
            </div>\
            <div class="carousel-nav">\
                <button class="carousel-arrow" id="prev">&#9664;</button>\
                <button class="carousel-arrow" id="next">&#9654;</button>\
            </div>\
        </div>\
    <!-- 文字介绍 -->\
    <div class="frontpage-description">\
        <h2>个性化推荐，提升您的购物体验</h2>\
        <p>我们使用先进的推荐算法，基于您的兴趣和偏好，为您提供精准的商品推荐。<p>\
        <p>无论是电子产品、图书音像，还是美妆个护，您总能找到心仪的商品。<p>\
        <p>我们的推荐系统在每次浏览和交互中不断优化，只为带给您更好的体验。</p>\
        <p>立即开始探索，发现属于您的精选好物！</p>\
    </div>'
    $(pageId).prepend(rowDiv);
}


 function addRecForYou(pageId, containerId, userId, model, baseUrl){

     var rowDiv = '<div class="frontpage-section-top"> \
                <div class="explore-header frontpage-section-header">\
                 Recommended For You \
                </div>\
                <div class="movie-row">\
                 <div class="movie-row-bounds">\
                  <div class="movie-row-scrollable" id="' + containerId +'" style="margin-left: 0px;">\
                  </div>\
                 </div>\
                 <div class="clearfix"></div>\
                </div>\
               </div>'
     $(pageId).prepend(rowDiv);

     $.getJSON(baseUrl + "getrecforyou?id="+userId+"&size=32&model=" + model, function(result){
         $.each(result, function(i, movie){
             appendMovie2Row(containerId, movie.title, movie.productId, 0, movie.averageRating.toPrecision(2), movie.ratingNumber, movie.categories,baseUrl);
         });
     });
 }


 function addRecFornewYou(pageId, containerId, userId,rec_user_id, model, baseUrl){

     var rowDiv = '<div class="frontpage-section-top"> \
                <div class="explore-header frontpage-section-header">\
                 Recommended For '+ userId +'\
                </div>\
                <div class="movie-row">\
                 <div class="movie-row-bounds">\
                  <div class="movie-row-scrollable" id="' + containerId +'" style="margin-left: 0px;">\
                  </div>\
                 </div>\
                 <div class="clearfix"></div>\
                </div>\
               </div>'
     $(pageId).prepend(rowDiv);

     $.getJSON(baseUrl + "getrecforyou?id="+rec_user_id+"&size=32&model=" + model, function(result){
         $.each(result, function(i, movie){
             appendMovie2Row(containerId, movie.title, movie.productId, 0, movie.averageRating.toPrecision(2), movie.ratingNumber, movie.categories,baseUrl);
         });
     });
 }

 function addUserscanHistory(pageId, containerId, userId, baseUrl){

     var rowDiv = '<div class="frontpage-section-top"> \
                <div class="explore-header frontpage-section-header">\
                 User Scanned Products \
                </div>\
                <div class="movie-row">\
                 <div class="movie-row-bounds">\
                  <div class="movie-row-scrollable" id="' + containerId +'" style="margin-left: 0px;">\
                  </div>\
                 </div>\
                 <div class="clearfix"></div>\
                </div>\
               </div>'
     $(pageId).prepend(rowDiv);

     $.getJSON(baseUrl + "getuserscanlist?userId="+userId +'&size=100', function(userObject){
         $.each(userObject.productId, function(i, productid){
             $.getJSON(baseUrl + "getproduct?id="+productid, function(movieObject){
                 appendMovie2Row(containerId, movieObject.title, movieObject.productId, 0, movieObject.averageRating.toPrecision(2), movieObject.ratingNumber, movieObject.categories, baseUrl);
             });
         });
     });
 }

 function addUserratingHistory(pageId, containerId, userId, baseUrl){

     var rowDiv = '<div class="frontpage-section-top"> \
                <div class="explore-header frontpage-section-header">\
                 User Rating Products \
                </div>\
                <div class="movie-row">\
                 <div class="movie-row-bounds">\
                  <div class="movie-row-scrollable" id="' + containerId +'" style="margin-left: 0px;">\
                  </div>\
                 </div>\
                 <div class="clearfix"></div>\
                </div>\
               </div>'
     $(pageId).prepend(rowDiv);

     $.getJSON(baseUrl + "getuser?id="+userId, function(userObject){
         $.each(userObject.ratings, function(i, rating){
             $.getJSON(baseUrl + "getproduct?id="+rating.rating.productId, function(movieObject){
                 appendMovie2Row(containerId, movieObject.title, movieObject.productId, 0, rating.rating.score, movieObject.ratingNumber, movieObject.categories, baseUrl);
             });
         });
     });
 }

 function addMovieDetails(containerId, movieId, baseUrl) {

    $.getJSON(baseUrl + "getproduct?id="+movieId, function(movieObject){
        var genres = "";
        $.each(movieObject.categories, function(i, genre){
                genres += ('<span><a href="'+baseUrl+'collection.html?type=genre&value='+genre+'"><b>'+genre+'</b></a>');
                if(i < movieObject.categories.length-1){
                    genres+=", </span>";
                }else{
                    genres+="</span>";
                }
        });

        var ratingUsers = "";
                $.each(movieObject.topRatings, function(i, rating){
                        ratingUsers += ('<span><a href="'+baseUrl+'olduser.html?id='+rating.rating.userId+'"><b>User'+rating.rating.userId+'</b></a>');
                        if(i < movieObject.topRatings.length-1){
                            ratingUsers+=", </span>";
                        }else{
                            ratingUsers+="</span>";
                        }
                });

        var movieDetails = '<div class="row movie-details-header movie-details-block">\
                                        <div class="col-md-2 header-backdrop">\
                                            <img alt="movie backdrop image" height="250" src="./posters/'+movieObject.productId+'.jpg">\
                                        </div>\
                                        <div class="col-md-9"><h1 class="movie-title"> '+movieObject.title+' </h1>\
                                            <div class="row movie-highlights">\
                                                <div class="col-md-3">\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading"> System predicts for you</div>\
                                                        <div> 5.0 stars</div>\
                                                    </div>\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading"> Average of '+movieObject.ratingNumber+' ratings</div>\
                                                        <div> '+movieObject.averageRating.toPrecision(2)+' stars\
                                                        </div>\
                                                    </div>\
                                                </div>\
                                                <div class="col-md-6">\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading">Categories</div>\
                                                        '+genres+'\
                                                    </div>\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading">Who likes the prodect most</div>\
                                                        '+ratingUsers+'\
                                                    </div>\
                                                </div>\
                                            </div>\
                                        </div>\
                                    </div>'
        $("#"+containerId).prepend(movieDetails);
    });
};

 function addoldUserDetails(containerId, userId, baseUrl) {

     $.getJSON(baseUrl + "getuser?id="+userId, function(userObject){
         var userDetails = '<div class="row movie-details-header movie-details-block">\
                                        <div class="col-md-2 header-backdrop">\
                                            <img alt="movie backdrop image" height="200" src="./images/avatar/'+userObject.userId%10+'.png">\
                                        </div>\
                                        <div class="col-md-9"><h1 class="movie-title"> User'+userObject.userId+' </h1>\
                                            <div class="row movie-highlights">\
                                                <div class="col-md-2">\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading">#Scanned Products</div>\
                                                        <div> '+ userObject.ratingCount +' </div>\
                                                    </div>\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading"> Average Rating Score</div>\
                                                        <div> '+userObject.averageRating.toPrecision(2)+' stars\
                                                        </div>\
                                                    </div>\
                                                </div>\
                                                <div class="col-md-3">\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading"> Highest Rating Score</div>\
                                                        <div> '+userObject.highestRating+' stars</div>\
                                                    </div>\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading"> Lowest Rating Score</div>\
                                                        <div> '+userObject.lowestRating+' stars\
                                                        </div>\
                                                    </div>\
                                                </div>\
                                                <div class="col-md-6">\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading">Favourite Genres</div>\
                                                        '+userObject.userCategory1+'\
                                                    </div>\
                                                </div>\
                                            </div>\
                                        </div>\
                                    </div>'
         $("#"+containerId).prepend(userDetails);
     });
 };

function addUserDetails(containerId, userId, baseUrl) {

    $.getJSON(baseUrl + "getuser?id="+userId, function(userObject){
        var userDetails = '<div class="row movie-details-header movie-details-block">\
                                        <div class="col-md-2 header-backdrop">\
                                            <img alt="movie backdrop image" height="200" src="./images/avatar/'+userObject.userId%10+'.png">\
                                        </div>\
                                        <div class="col-md-9"><h1 class="movie-title"> User'+userObject.userId+' </h1>\
                                            <div class="row movie-highlights">\
                                                <div class="col-md-2">\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading">#Scanned Products</div>\
                                                        <div> '+ userObject.scanCount +' </div>\
                                                    </div>\
                                                    \<div class="heading-and-data">\
                                                        <div class="movie-details-heading">#Rating Products</div>\
                                                        <div> '+ userObject.ratingCount +' </div>\
                                                    </div>\
                                                </div>\
                                                <div class="col-md-3">\
                                                     <div class="heading-and-data">\
                                                        <div class="movie-details-heading"> Average Rating Score</div>\
                                                        <div> '+userObject.averageRating.toPrecision(2)+' stars\
                                                        </div>\
                                                    </div>\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading"> Highest Rating Score</div>\
                                                        <div> '+userObject.highestRating.toPrecision(2)+' stars</div>\
                                                    </div>\
                                                </div>\
                                                <div class="col-md-6">\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading"> Lowest Rating Score</div>\
                                                        <div> '+userObject.lowestRating.toPrecision(2)+' stars\
                                                        </div>\
                                                    </div>\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading">Favourite Genres</div>\
                                                        '+userObject.userCategory1+'\
                                                    </div>\
                                                </div>\
                                            </div>\
                                        </div>\
                                    </div>'
        $("#"+containerId).prepend(userDetails);
    });
};


 function updateCarousel() {
     const slideWidth = slides[0].clientWidth;
     const carouselSlides = document.getElementById('carousel-slides');
     carouselSlides.style.transform = `translateX(-${currentIndex * slideWidth}px)`;
 }

 function show(category) {
     document.getElementById('recPage').innerHTML = '';
     console.log('加载类别:', category);
     addAllByCategory(category);
     if(isVisible)
         toggleVisibility();
 }
 function show_firstpage(){
     if(!isVisible)
         toggleVisibility();
     document.getElementById('recPage').innerHTML = '';
 }

 function toggleVisibility() {
     const frontpage = document.getElementById('first');
     if (isVisible) {
         frontpage.style.display = 'none'; // 隐藏
     } else {
         frontpage.style.display = 'block'; // 显示
     }
     isVisible = !isVisible; // 反转显示状态
 }

 function checkAndShowPopup() {
     // 当 x 等于 5 时，显示悬浮窗口

     if (sessionStorage.getItem('x') >= 1) {
         document.getElementById('rec-button').style.display = 'flex';
     }
 }

 // 增加 x 的值，并检查是否达到条件
 function incrementX() {
     var temp = sessionStorage.getItem('x')
     temp++;
     sessionStorage.setItem('x', temp); // 使用 sessionStorage
     checkAndShowPopup();  // 检查 x 是否达到了 5
 }



