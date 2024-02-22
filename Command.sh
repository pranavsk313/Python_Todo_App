sudo apt-get update 
mkdir projects 
cd projects
ls
git clone https://github.com/shreys7/django-todo.git
sudo apt-get update
sudo apt install python3-pip
pip install django
python3 manage.py migrate 
python3 manage.py runserver 
python3 manage.py runserver 0.0.0.0:8001
nohup python3 manage.py runserver 0.0.0.0:8001 &
lsof -i:8001
kill -9 pid 
