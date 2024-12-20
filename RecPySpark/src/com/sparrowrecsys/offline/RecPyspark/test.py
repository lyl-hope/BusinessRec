import requests
import json

# 请求URL
url = "http://192.168.237.128:5000/recommend"

# 请求数据
data = {
    "user_id": "11100",
    "clicked_items": ["13316", "57272", "119166", "186429"]
}

# 发送POST请求
response = requests.post(url, json=data)

# 解析并打印响应内容
if response.status_code == 200:
    print("Response JSON:", response.json())
else:
    print("Request failed with status code:", response.status_code)