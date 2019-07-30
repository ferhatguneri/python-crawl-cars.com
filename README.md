# python-crawl-cars.com

git clone 

Mysql entegrasyonunu kod içerisinde otomatik yapmadım. Bu yüzden veritabanı ve tabloyu oluşturmak gerekecek.

Mysql içerisinde yapılackalar

mysql> create database Cars;

mysql> CREATE USER 'cars'@'localhost' IDENTIFIED BY 'G457ret32';

mysql> GRANT ALL PRIVILEGES ON * . * TO 'cars'@'localhost';

mysql> FLUSH PRIVILEGES;

mysql> CREATE TABLE `Cars` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(100) DEFAULT NULL,
  `extcolor` varchar(100) DEFAULT NULL,
  `intcolor` varchar(100) DEFAULT NULL,
  `price` float(13,2) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `transmission` varchar(100) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`car_id`)
) ;


pip3 install -r requirements

python3 app.py
