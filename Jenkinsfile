pipeline {
    agent any

    environment {
        GRADLE_IMAGE = "gradle:7.2.0-jdk17"
        SPRING_APP_IMAGE = "your-spring-app-image"
    }

    stages {
//         stage("Build") {
//             steps {
//                 script {
//                     // Xây dựng ứng dụng Spring Boot bằng Gradle
//                     docker.image(GRADLE_IMAGE).inside {
//                         sh "gradle build"
//                     }
//                 }
//             }
//         }

        stage("Test") {
            steps {
                script {
                    // Chạy các bài kiểm tra của ứng dụng Spring Boot
                    docker.image(GRADLE_IMAGE).inside {
                        sh "gradle test"
                    }
                }
            }
        }

//         stage("Package") {
//             steps {
//                 script {
//                     // Copy các tệp liên quan đến ứng dụng Spring Boot vào thư mục build
//                     sh "cp -r build/libs /tmp/"
//                 }
//             }
//         }
//
//         stage("Deploy") {
//             steps {
//                 script {
//                     // Xây dựng ảnh Docker cho ứng dụng Spring Boot
//                     docker.build(SPRING_APP_IMAGE, "--build-arg JAR_FILE=/tmp/libs/your-spring-app.jar .")
//
//                     // Đăng nhập vào Docker Hub hoặc hệ thống Docker Registry
//                     withCredentials([usernamePassword(credentialsId: 'docker-hub', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
//                         sh 'echo $DOCKER_PASSWORD | docker login --username $DOCKER_USERNAME --password-stdin'
//                     }
//
//                     // Đẩy ảnh Docker lên Docker Registry
//                     docker.withRegistry('https://registry.example.com', 'docker-hub') {
//                         sh "docker push $SPRING_APP_IMAGE"
//                     }
//                 }
//             }
//         }
//     }

    post {
        success {
            echo "SUCCESSFUL"
        }
        failure {
            echo "FAILED"
        }
    }
}
