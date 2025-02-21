pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t mon-nginx:latest .'
            }
        }

        stage('Retag Image') {
            steps {
                sh 'docker tag mon-nginx:latest mon-nginx:v1'
            }
        }

        stage('List Docker Images') {
            steps {
                sh 'docker images'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 8014:80 --name mon_nginx mon-nginx:v1'
            }
        }
    }
}
