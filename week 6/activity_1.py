import requests
from requests.structures import CaseInsensitiveDict

url = "https://jsonplaceholder.typicode.com/posts?"

headers = CaseInsensitiveDict()
headers["Content-Type"] = "application/json"

data = """
{"accuracy": 91,
  "torque": 145.76,
  "episode_number": 113}

"""


resp = requests.post(url, headers=headers, data=data)

print(resp.status_code)
