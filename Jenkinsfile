pipeline {
  agent any
  stages {
    stage('Clone Repo') {
      steps {
        git(url: 'https:/github.com:hmhbv/DockerJenkins.git', branch: 'main')
      }
    }

    stage('Build Docker Image') {
      steps {
        script {
          docker.build('DockerJenkins')
        }

      }
    }

    stage('Run Container') {
      steps {
        script {
          sh 'docker rm -f jenkins-nginx || true'
          sh 'docker run -d --name jenkins-nginx -p 8081:80 DokerJenkins'
        }

      }
    }

  }
}