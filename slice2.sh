sudo apt-get update
sudo apt-get upgrade
sudo apt-get install python3-dev libmysqlclient-dev build-essential -y
sudo apt-get install mysql-server
sudo systemctl start mysql
sudo mysql
CREATE DATABASE slice2;
exit;
sudo mysql -u root -p

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'computacao';
exit;
sudo systemctl restart mysql
python3 -m venv slice2-env
cd slice2-env
source bin/activate
pip install --upgrade pip
python -m pip install -r requirements.txt
cd src
python
from App import db
db.create_all()
exit()
cd ..
export FLASK_APP=src/App.py
flask run