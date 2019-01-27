node {
   echo 'Building Apache Docker Image'

stage('Git Checkout') {
    git 'https://github.com/amarsingh3d/jenkins-pipeline'
    }
stage('Build Docker Imagae'){
        def imagename = "ubuntu:16"
        powershell "docker build -t  ${imagename} ."
    }
stage('Stop Existing Container'){
     def container = "apache2"
     powershell "docker stop ${container}"
    }
stage('Remove Existing Container'){
     def container = "apache2"
     powershell "docker rm ${container}"
    }    
stage ('Runing Container to test built Docker Image'){
    def imagename = "ubuntu:16"
    powershell "docker run -dit --name apache2 -p 80:80 ${imagename}"
    }

stage('Tag Docker Image'){
     def imagename = "ubuntu:16"
     powershell "docker tag ${imagename} amarsingh3d/ubuntu:16.04"
    }

stage('Docker Login and Push Image'){
    withCredentials([string(credentialsId: 'f7378cd1-22fd-42f9-b575-8aeb6ac9df7b', variable: 'dockerhubpwd')]) {
    powershell "docker login -u amarsingh3d -p ${dockerhubpwd}"
    }
    powershell "docker push amarsingh3d/ubuntu:16.04"
    }

}
