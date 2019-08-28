import requests
#string interpolation
#문자열에 변수 값 넣기
currency = 'BTC'
url = f'https://api.bithumb.com/public/ticker/{currency}'
print(url)
response = requests.get(url).json()
# 요청결과 json -> dictionary 자료구조로 변환
print(response['data']['opening_price'])
print(response.get('data').get('opening_price'))