pipeline {
    agent any

    stages {
        stage('Deploy Static Site with Docker Compose') {
            steps {
                script {
                    try {
                        bat 'docker compose down'
                    } catch (Exception e) {
                        echo 'Docker Compose down failed'
                    }
                    bat 'docker compose up -d --build'
                }
            }
        }
    }
}
