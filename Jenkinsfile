node {
   echo 'Building Apache Docker Image'

stage('Git Checkout') {
    git 'https://github.com/amarsingh3d/jenkins-pipeline'
    }
stage('Build Docker Imagae'){
        def imagename = "ubuntu:16"
        powershell "docker build -t  ${imagename} ."
    }
stage(Stop Existing Container'){
     def container = "apache2"
     powershell "docker stop ${container}"
    }
stage(Remove Existing Container'){
     def container = "apache2"
     powershell "docker rm ${container}"
    }    
stage ('Runing Container to test built Docker Image'){
    def imagename = "ubuntu:16"
    powershell "docker run -dit --name apache2 -p 80:80 ${imagename}"
    }
}
