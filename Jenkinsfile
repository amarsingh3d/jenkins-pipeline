node {
   echo 'Building Apache Docker Image'

stage('Git Checkout') {
    git 'https://github.com/amarsingh3d/jenkins-pipeline'
    }
stage('Build Docker Imagae'){
        def imagename = "ubuntu:16"
        powershell "docker build -t  ${imagename} ."
    }
stage ('Test Docker Image'){
    def container = "apache2"
    def imagename = "ubuntu:16"
    powershell "docker stop ${container}"
    powershell "docker rm ${container}"
    powershell "docker run -dit --name apache2 -p 80:80 ${imagename}"
    }
}
