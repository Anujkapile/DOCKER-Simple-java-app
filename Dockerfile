

# BASE IMAGE - which provides the working environment
FROM openjdk:17-jdk-alpine

#WORKING DIRECTORY - on which directory will my container run.... if it is copied from source
WORKDIR /app

# Copy the source code from HOST to working directory
COPY . .

# Install timezone data using Alpine Package Manager
RUN apk add --no-cache tzdata

# Set timezone equal to IST
ENV TZ=Asia/Kolkata

# Compile the code
RUN javac src/Main.java -d /app

# Run the Application
CMD ["java", "Main"]

