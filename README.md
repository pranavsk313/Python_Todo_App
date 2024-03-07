# Python-Django_Todo_App
## Deployed containerized Python-Django application using Docker
# Step 1 
1] Clone The repository into your Vscode integrated terminal
```bash
'$ git clone https://github.com/shreys7/django-todo.git'
```
![image](https://github.com/pranavsk313/Python_Todo_App/assets/122976840/65cf59a6-395a-4ab5-843d-c2d3627f09b9)

2] Installed the virtual enviroment into your local terminal  
```bash
$ pip install virtualenv
```
3] Setup the virtual enviroment 
```bash
$ virtualenv -p python3.10 env
```
4] This command will execute the Activate script within the Scripts directory of your virtual environment, setting up the environment variables and modifying the shell prompt to indicate the activated environment.
```bash
$ .\env\Scripts\Activate
```
5]  Install the django application into your local terminal 
```bash
$ pip install django 
```
6] Update the pip 
```bash
$  python.exe -m pip install --upgrade pip
```
7] This will create all the migrations file (database migrations) required to run this App
```bash
$ python manage.py makemigration
```
8] Now, Apply the migration run following command
```bash
 $ python manage.py migrate
```
9] One last step and then our todo App will be live. We need to create an admin user to run this App. On the terminal, type the following command and provide username, password and email for the admin user
```bash
$ python manage.py createsuperuser
```
10] That was pretty simple, right? Now let's make the App live. We just need to start the server now and then we can start using our simple todo App. Start the server by following command
```bash
$ python manage.py runserver
```
11] Once the server is hosted, head over to http://127.0.0.1:8000/todos for the App.

# Step 2
1] Lauched the EC2 instance on Red Hat Linux 

![image](https://github.com/pranavsk313/Python_Todo_App/assets/122976840/f54520bf-fe01-43e4-860d-52f97790e7df)

2]  Clone the repository and get into it
```bash
 $ git clone https://github.com/shreys7/django-todo.git
```
3] Installed docker on EC2 instance 

![image](https://github.com/pranavsk313/Python_Todo_App/assets/122976840/cca6faa3-7fe2-4f1a-a00f-78864221587a)

4] Created the dockerfile 
```bash
$ vi dockerfile
```
![image](https://github.com/pranavsk313/Python_Todo_App/assets/122976840/1f8ea38f-d12c-4fcb-a1c9-235972d2a513)

5] Edited the inbound rules of Security groups in AWS

![image](https://github.com/pranavsk313/Python_Todo_App/assets/122976840/42f3fd18-1ab6-4f9b-8b4e-830af8a9eb8e)

6] Build the image 
```bash
$ docker build . -t todo-app
```
7] Create the container using this command 
```bash
$ docker run -itd --name Python-Django-App -p 8001:8001 <image-id>
```
# Step 3
1]  Access your application using public ip of EC2 instance 
    
    https:// <public-ip>:8001

![image](https://github.com/pranavsk313/Python_Todo_App/assets/122976840/94c41d7e-c161-4f08-8561-8e4b609600a3)

