import requests
import json

def send_request():
    # 创建请求数据
    instances = [
        {
            "userId": 4867,
            "userAvgRating": 4.2,
            "userCategory1": "外设产品",
            "userCategory2": "鼠标",
            "userCategory3": "家用电器",
            "userRatedProduct1": 3982,
            "userRatingCount": 5,
            "userRatingStddev": 0.5,
            "productId": 6797,
            "productAvgRating": 4.0,
            "productCategory1": "外设产品",
            "productCategory2": "家用电器",
            "productCategory3": "鼠标",
            "productRatingCount": 10,
            "productRatingStddev": 0.4
        },
        {
            "userId": 12345,
            "userAvgRating": 4.2,
            "userCategory1": "Action",
            "userCategory2": "Comedy",
            "userCategory3": "Drama",
            "userRatedProduct1": 68,
            "userRatingCount": 5,
            "userRatingStddev": 0.5,
            "productId": 68,
            "productAvgRating": 3.8,
            "productCategory1": "Action",
            "productCategory2": "Adventure",
            "productCategory3": "Sci-Fi",
            "productRatingCount": 8,
            "productRatingStddev": 0.6
        }
    ]
    instances_root = {
        "signature_name": "serving_default",
        "instances": instances
    }

    # 将请求数据转换为 JSON 字符串
    json_data = json.dumps(instances_root)

    # 发送 POST 请求
    url = "http://localhost:8501/v1/models/finalmodel:predict"
    headers = {"Content-Type": "application/json"}
    response = requests.post(url, data=json_data, headers=headers)

    # 打印响应内容
    print(response.json())

if __name__ == "__main__":
    send_request()