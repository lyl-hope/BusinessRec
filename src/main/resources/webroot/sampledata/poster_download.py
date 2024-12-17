import pandas as pd
import os
import requests

def read_product_csv(file_path):
    # 指定列标题，读取无标题行的CSV文件
    columns = ['productid', 'name', 'categoriesId', 'amazonId', 'imageUrl', 'categories', 'tags']
    products = pd.read_csv(file_path, delimiter='^', header=None, names=columns)
    return products

def save_to_excel(data, output_file):
    # 保存到Excel
    data.to_excel(output_file, index=False, engine='openpyxl')

#import warnings
proxy = {'https': 'http://127.0.0.1:7890', 'http': 'http://127.0.0.1:7890'}
#warnings.filterwarnings("ignore")  # 忽略不安全的连接警告
headers = {'User-Agent': "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0"}
def download_images(data, output_folder):
    os.makedirs(output_folder, exist_ok=True)
    
    for index, row in data.iterrows():
        image_url = row['imageUrl']
        image_path = os.path.join(output_folder, f"{index + 1}.jpg")
        
        try:
            response = requests.get(image_url, headers=headers,proxies=proxy, timeout=10)
            response.raise_for_status()
            with open(image_path, 'wb') as file:
                file.write(response.content)
            print(f"Downloaded: {image_path}")
        except requests.RequestException as e:
            print(f"Failed to download {image_url}: {e}")

# 示例用法
file_path = 'products.csv'  # 替换为实际路径
output_excel = 'products.xlsx'  # 保存的Excel文件
output_folder = 'poster'  # 下载图片存储的文件夹

products = read_product_csv(file_path)
save_to_excel(products, output_excel)
download_images(products, output_folder)

print(f"Data has been saved to {output_excel}")
print(f"Images have been downloaded to {output_folder}")
