import requests
import json

# 测试服务器的地址
url = "http://localhost:6010/getsimilaruser"

# 要传递的数据，假设需要传递 user_id 和 clicked_items
data = {
    "user_id": "12345",
    "clicked_items": "1001,1002,1003"
}

# 发送 POST 请求到 /getsimilaruser 路径
response = requests.post(url, json=data)

# 检查响应状态码
if response.status_code == 200:
    print("Request was successful!")
    
    # 解析响应的 JSON 数据
    try:
        response_data = response.json()
        print("Response Data:", json.dumps(response_data, indent=2))
        
        # 如果你知道期望的返回数据格式，可以在这里进行验证
        if "userId" in response_data and "prediction" in response_data:
            print("Response contains 'userId' and 'prediction'.")
        else:
            print("Response does not contain expected keys.")
    except json.JSONDecodeError:
        print("Failed to decode JSON response.")
else:
    print(f"Request failed with status code: {response.status_code}")
