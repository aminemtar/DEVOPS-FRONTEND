pipeline {
    agent any

    stages {
        

        stage('Build Angular') {
            steps {
                script {
                    // Your Angular build commands
                    sh 'cd DEVOPS-FRONTEND && npm install && npm run build'
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