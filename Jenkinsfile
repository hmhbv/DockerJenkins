pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com:hmhbv/DockerJenkins.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('jenkins-nginx-alpine')
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    sh 'docker rm -f jenkins-nginx || true'
                    sh 'docker run -d --name jenkins-nginx -p 8081:80 jenkins-nginx-alpine'
                }
            }
        }
    }
}
