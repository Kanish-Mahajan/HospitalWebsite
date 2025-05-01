stage('Deploy Static Site with Docker Compose') {
  steps {
    echo '🚀 Deploying static website using Nginx in Docker...'
    script {
      sh 'docker-compose down || true'
      sh 'docker-compose up -d --build'
    }
  }
}

stage('Verify Deployment') {
  steps {
    script {
      echo "✅ Application deployed at: http://localhost:${env.PROJECT_PORT}"
    }
  }
}
