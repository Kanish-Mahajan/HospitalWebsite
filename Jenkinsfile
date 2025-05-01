pipeline {
    agent any

    stages {
        stage('Deploy Static Site with Docker Compose') {
            steps {
                bat '''
                    docker compose down || true
                    docker compose up -d --build
                '''
            }
        }
    }
}
