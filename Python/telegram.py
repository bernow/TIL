import requests
# url
token = '825579650:AAFhJzZ4VW8p3_IdFatPtPmBo6WesbAHaLY'
base_url = f'https://api.telegram.org/bot{token}'
# 요청 내용
chat_id = 899056890
text = '안녕하세요'
url = f'{base_url}/sendMessage?chat_id={chat_id}&text={text}'
# 요청 보내기
requests.get(url)