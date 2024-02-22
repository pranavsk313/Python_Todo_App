# Python-Django_Todo_App
## Deployed containerized Python-Django application using Docker
# Step 1 
1] Clone The repository into your local terminal 

   bash 
$ git clone https://github.com/shreys7/django-todo.git

2] Cloned the repository into My Vscode integrated terminal

![image](https://github.com/pranavsk313/Python_Todo_App/assets/122976840/65cf59a6-395a-4ab5-843d-c2d3627f09b9)


3] Installed the Virtual enviroment into your local terminal 
 bash
$ pip install virtualenv

4] Setup the virtual enviroment 
bash
$ virtualenv -p python3.10 env

5] This command will execute the Activate script within the Scripts directory of your virtual environment, setting up the environment variables and modifying the shell prompt to indicate the activated environment.
bash
$ .\env\Scripts\Activate

6]  Install the django application into your local terminal 
bash
$ pip install django 

7] Update the pip 
bash
$  python.exe -m pip install --upgrade pip

8] This will create all the migrations file (database migrations) required to run this App
bash
$ python manage.py makemigration

9] Now, Apply the migration run following command
bash
 $ python manage.py migrate

10] One last step and then our todo App will be live. We need to create an admin user to run this App. On the terminal, type the following command and provide username, password and email for the admin user
bash
$ python manage.py createsuperuser

11] That was pretty simple, right? Now let's make the App live. We just need to start the server now and then we can start using our simple todo App. Start the server by following command
bash
$ python manage.py runserver

12] Once the server is hosted, head over to http://127.0.0.1:8000/todos for the App.
# Step 2
1] Lauched the Ec2 instance on ubuntu 

![Screenshot 2024-02-18 234346](https://github.com/AdityaAgasti007/Todo-app/assets/159541012/243f9ada-0845-4aaa-aee7-1be0856020e4)

2]  Clone the repository And get into it
bash
 $ git clone https://github.com/shreys7/django-todo.git

3] Created the dockerfile 
bash
$ vi dockerfile

![Screenshot 2024-02-18 235149](https://github.com/AdityaAgasti007/Todo-app/assets/159541012/c9b151b1-14da-497d-991a-387946c65e6a)

4] Build the image 
bash
$ docker build . -t todo-app

5] Create the container using this command 
bash
$ docker run -d -p 8001:8001 <image-id>

# Step 3
1]  Access Your application using public ip of Ec2 instance 
    
    https:// <public-ip>:8001

   ![Screenshot 2024-02-18 234213](https://github.com/AdityaAgasti007/Todo-app/assets/159541012/76c16a99-9f74-407c-a2bc-0b27548e2935)
