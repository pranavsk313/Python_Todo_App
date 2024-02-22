sudo yum update all 
mkdir projects 
cd projects
sudo yum install git
git clone https://github.com/shreys7/django-todo.git
sudo yum install pip
sudo yum install python3-pip
sudo pip install django
python3 manage.py migrate 
python3 manage.py runserver 
python3 manage.py runserver 0.0.0.0:8001
nohup python3 manage.py runserver 0.0.0.0:8001 &
sudo lsof -i:8001
