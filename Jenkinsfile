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
                script {
                   sh 'chmod +x ./gradlew'
                }
                tool name: 'gradle-tool', type: 'Gradle'
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
