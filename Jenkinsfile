pipeline {
    agent any

    stages {
        stage('Checkout') {
              steps {
                 checkout scm
              }
        }
        stage('Build') {
            steps {
                // Bước này để thực hiện build
                bat './gradlew build'
            }
        }

        stage('Test') {
            steps {
                // Bước này để thực hiện các bước kiểm tra
                bat './gradlew test'
            }
        }
    }

    post {
        success {
            echo "SUCCESSFUL"
        }
        failure {
            echo "FAILED"
        }
    }
}
