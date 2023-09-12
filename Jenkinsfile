pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Bước này dùng để lấy mã nguồn từ repository Git hoặc SVN
                checkout scm
            }
        }

        stage('Build') {
            steps {
                // Bước này dùng để xây dựng ứng dụng Spring Boot
                sh './gradlew build' // Hoặc './gradlew build' nếu bạn sử dụng Gradle
            }
        }

        stage('Test') {
            steps {
                // Bước này dùng để chạy các bài kiểm tra
                sh './gradlew test' // Hoặc './gradlew test' nếu bạn sử dụng Gradle
            }
        }

        stage('Deploy') {
            steps {
                // Bước này dùng để triển khai ứng dụng Spring Boot, ví dụ qua Docker hoặc một máy chủ ứng dụng
                sh 'docker build -t my-spring-app . && docker run -p 8081:8081 my-spring-app' // Ví dụ triển khai qua Docker
            }
        }
    }

    post {
        success {
            // Bước này được thực hiện nếu pipeline chạy thành công
            echo 'Build and deployment successful!'
        }
        failure {
            // Bước này được thực hiện nếu pipeline thất bại
            echo 'Build or deployment failed!'
        }
    }
}
