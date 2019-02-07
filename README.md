# Continues Deployment for Docker Image, Build and push Docker image to Docker hub using Jenkins Pipeline
**Jenkins Pipeline:**

Jenkins Pipeline uses a build pipeline plugin which supports continues delivery pipeline into Jenkins.
A continuous delivery (CD) pipeline is an automated expression of your process for getting software from version control right through to your users and customers.
The definition of a Jenkins Pipeline is written into a text file (called a Jenkinsfile) which in turn can be committed to a project’s source control repository.

![image](https://2.bp.blogspot.com/-3wKnO3_17u0/XFj97g94qKI/AAAAAAAAFL8/U10CyOU1ZZgOgYpCl3X0ivJPUEsNXi-mwCLcBGAs/s1600/docker-push-to-dockerHub.jpg)

**Prerequisites:**
1- Windows machine installed following software.

2- Installed Docker on Windows.

3- Installed Jenkins

4- Docker Hub Account

**Step 1- Install Docker on Windows:**
I'm using Windows 7 for the demonstration, You can follow this blog to finish the Docker for Windows installation.

https://linuxhowtoguide.blogspot.com/2019/02/how-to-install-docker-in-windows-7.html

**Step 2- Install Jenkins On Windows:**
Follow this blog to finish the Jenkins installation on Windows: How to Install Jenkins on Windows Machine.

https://linuxhowtoguide.blogspot.com/2018/07/how-to-install-jenkins-on-windows.html

**Step 3- Complete pre-requisites:**
To add docker hub login details open Jenkins and go to add credentials page:
On add credentials page add docker User and Password

![image](https://2.bp.blogspot.com/-RC4m7sBgbVs/XFkT1ZBW5dI/AAAAAAAAFMI/oVzkKil5sacsW0Mdc4CA9_U8xzP7nKzRgCLcBGAs/s640/dk.png)

After adding credentials. 
In the Jenkinsfile, I have defined steps to stop and delete existing container so we need to run following command before continuing. Open Docker quick terminal and the command.

```
$ docker run -dit --name apache2 -p 80:80 ubuntu
```
The above command will create a container of ubuntu with name apache2. Let's continue. 

**Step 4- Setup Jenkins Job:**

Open Jenkins > new project  >Enter Project name > Choose Project type Pipeline

![image](https://1.bp.blogspot.com/-uZ1tmjQujws/XFkU2qwD4yI/AAAAAAAAFMQ/aS4fYfB-lkcgdEmEz6MeJRA69JZb4ZRDgCLcBGAs/s1600/jk.png)

Choose Ok > Choose this project is parameterized > fill out the details as in the picture below

![image](https://1.bp.blogspot.com/-DJjf2ZxILYM/XFkbRYT2z6I/AAAAAAAAFMo/hRw7yTFS0Po5ZfQiCD5DIbZsXNGN1-qxACLcBGAs/s640/dks.png)

On the Pipeline section select Definition  pipeline Script from SCM > Select type Git > Enter Git repository URL > click on Save

![image](https://3.bp.blogspot.com/-znQnObodVYM/XFkWD_LeJ4I/AAAAAAAAFMc/QIovbwRFpmQLR5Igy-6QfJrmPQrfDDqOACLcBGAs/s1600/jk1.png)

In my case I'm using public git repository, if you have private repository define you login details in the pipeline section. Jenkins Job is ready to build.

**Step 5- Build and test Jenkins job:**

choose to Build with parameters select your docker user and click on the build button.

![image](https://3.bp.blogspot.com/-zL8UqZJXQtY/XFkcEvnmdxI/AAAAAAAAFMw/uNJH-JP-L3w4XisGhCLleBhef3wFGrKiwCLcBGAs/s1600/dks1.png)

After successfully complete, you will see output like this.

![image](https://4.bp.blogspot.com/-Z2MH6fO-MB8/XFkcv1LYz3I/AAAAAAAAFM4/nxvwbKrrOlUQ4LmXCe2cb20zB-dlhgfUwCLcBGAs/s1600/dks2.png)

Login and Check pushed image in your Docker Hub account.

![image](https://2.bp.blogspot.com/-tqzgZ0ONEcM/XFkeN6-0WkI/AAAAAAAAFNE/hfjivVqA8-cQ10qCCML-MYIZ9ix2mcg9wCLcBGAs/s640/dks3.png)

Build and push has completed successfully to Docker Hub. Based on this you build other customs Docker Image and push to your Docker hub account.
