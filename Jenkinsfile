pipeline {
    agent any

    stages {
        stage('Cloner le dépôt') {
            steps {
                git 'https://github.com/Gh1t4/CI-CD-exercice.git'
            }
        }

        stage('Compiler le code Java') {
            steps {
                sh 'javac Main.java'
            }
        }

        stage('Exécuter le programme') {
            steps {
                sh 'java Main'
            }
        }
    }
}

