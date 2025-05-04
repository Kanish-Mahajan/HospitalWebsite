pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t hospital_frontend .'
            }
        }

        stage('Stop Existing Container') {
            steps {
                script {
                    try {
                        bat 'docker compose down'
                    } catch (Exception e) {
                        echo 'No existing container to stop.'
                    }
                }
            }
        }

        stage('Creating New Container') {
            steps {
                bat 'docker compose up -d --build'
            }
        }
    }

    post {
        success {
            echo '✅ Deployment successful!'
        }
        failure {
            echo '❌ Deployment failed.'
        }
    }
}
