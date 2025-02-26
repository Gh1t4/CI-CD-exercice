pipeline {
    agent any

    stages {
        stage('Cloner le dépôt') {
            steps {
                git 'https://github.com/Gh1t4/CI-CD-exercice.git'
            }
        }

        stage('Exécuter le script Python') {
            steps {
                sh 'python3 app.py'
            }
        }
    }
}

