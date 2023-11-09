pipeline {
    agent any
tools { nodejs '19.9.0'}
    stages {
        

        stage('Build Angular') {
            steps {
                script {
                    // Your Angular build commands
                    git branch: 'main',
                    url: 'https://github.com/aminemtar/DEVOPS-FRONTEND.git'
                    sh 'npm install && npm run build'
                }
            }
        }

        stage('Build Docker Images') {
            steps {
                script {
                    // Your Docker build commands
                    
                    sh 'docker build -t angular-image angular-project'
                }
            }
        }

      
    }
}