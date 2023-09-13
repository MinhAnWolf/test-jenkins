pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Bước này để checkout mã nguồn từ kho lưu trữ, ví dụ Git
                checkout scm
            }
        }

        stage('Build') {
            steps {
                // Bước này để thực hiện build
                sh './gradlew build'
            }
        }

        stage('Test') {
            steps {
                // Bước này để thực hiện các bước kiểm tra
                sh './gradlew test'
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
