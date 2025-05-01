pipeline {
    agent any

    stages {
       stage('Deploy Static Site with Docker Compose') {
    steps {
        bat docker compose down || echo "Docker Compose down failed" && docker compose up -d --build

    }
}

    }
}
