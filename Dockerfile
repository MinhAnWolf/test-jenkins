# Sử dụng một hình ảnh cơ sở đã có Java 17 và môi trường chạy Spring Boot
FROM adoptopenjdk/openjdk17:alpine-jre

# Chuyển đến thư mục /app bên trong container
WORKDIR /app

# Sao chép tệp .jar đã được xây dựng từ dự án Spring Boot vào thư mục /app bên trong container
COPY build/libs/*.jar app.jar

# Cấu hình biến môi trường cho ứng dụng Spring Boot
ENV SPRING_PROFILES_ACTIVE=production

# Mở cổng mạng cho ứng dụng Spring Boot
EXPOSE 8081

# Lệnh chạy ứng dụng Spring Boot khi container được khởi động
CMD ["java", "-jar", "app.jar"]
