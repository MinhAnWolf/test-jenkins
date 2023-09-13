pipeline {
    agent any

     tools {
            // Use Gradle from the predefined Tool Installation
            gradle 'gradle-tool'
        }

    stages {
        stage('Build') {
            steps {
                script {
                   sh 'chmod +x ./gradlew'
                }
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
