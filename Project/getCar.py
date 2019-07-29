import json
import requests
from bs4 import BeautifulSoup as bs
import mysql.connector
import time
mydb = mysql.connector.connect(host="localhost",user="cars",passwd="G457ret32",database="Cars")
mycursor = mydb.cursor()
sql = "Truncate table Cars"
mycursor.execute(sql)

class Cars:


#Bu fonksiyon, her bir araç ve bu araçlara ait detaylı bilgiler elde edilmek ve veri tabanına kaydedilmek üzere çalışır.
    def craw_from_url(start_url):

# Sayfayı rahatsız etmemek ve IP adresimizin banlanmaması adına saniyede 1 istek eklenmiştir.
        time.sleep(1)
        req = requests.get(start_url)
        soup = bs(req.text, 'lxml')
        contents = soup.findAll('script', type='application/ld+json')[-1].text
        cars_info = json.loads(contents)

# her bir araba için veriler alınır
# 100 araba için bu işlem devam edilerek döngü son bulur
        for ind, car_data in enumerate(cars_info):

            if 'telephone' in car_data['offers']['seller']:
                telephone = car_data['seller_phone'] = car_data['offers']['seller']['telephone']
            else:
                telephone = ""
            brand = car_data['brand']['name']
            extcolor = car_data['color']
            price =  car_data['offers']['price']
            name = car_data['name']
            vehicleModelDate = name.split()
            year = vehicleModelDate[0]


# Mevcut Arabanın iç rengini ve Vites türünü alabilmek için arabanın detaylı bilgilerinin
#bulunduğu sayfaya istek atılarak yeniden parse işlemi yapılarak gerekli bilgiler alınır.
            detailed_url = (car_data['url'])
            req = requests.get(detailed_url)
            soup = bs(req.text, 'lxml')
            contents = soup.findAll('script', type='application/ld+json')[-1].text
            car_detail_info = json.loads(contents)
            arr = []

            for ind, car_detail in enumerate(car_detail_info):

                try:
                    if(['vehicleInteriorColor']):
                        intcolor =car_detail['vehicleInteriorColor']
                        arr.append(intcolor)
                except:
                    intcolor = ''
                    arr.append(intcolor)

                try:
                    if(['vehicleTransmission']):
                        transmission = car_detail['vehicleTransmission']
                        arr.append(transmission)
                except:
                    transmission = ''
                    arr.append(transmission)


            intcolor =arr[0]
            transmission = arr[1]

#Mevcut arabanın çekilen verileri MySQL veritabanına kaydedilir.
            sql = "INSERT INTO Cars (brand, extcolor,intcolor,price,year,transmission,contact) VALUES (%s, %s,%s, %s,%s, %s,%s)"
            val = (brand, extcolor,intcolor,price,year,transmission,telephone)

            mycursor.execute(sql, val)
            mydb.commit()


#BMW ve Ford Araçlarına ait veriler çekilmek üzere craw_from_url fonksiyonu çalıştırılır.
    url =["https://www.cars.com/for-sale/searchresults.action/?mkId=20005&page=1&perPage=50&searchSource=PAGINATION&sort=relevance&zc=34010","https://www.cars.com/for-sale/searchresults.action/?mkId=20015&page=1&perPage=50&searchSource=GN_REFINEMENT&sort=relevance&zc=34010"]
    for item in url:
        craw_from_url(item)

