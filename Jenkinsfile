pipeline {

    agent any
tools { nodejs '19.9.0'}
    stages {

       
         
        stage('Build ') {
            steps {
                // Checkout the Angular frontend repository
                git branch: 'main',
                url: 'https://github.com/aminemtar/DEVOPS-FRONTEND.git'
                sh 'npm install -g @angular/cli'
                sh 'npm install'
                sh 'ng build --configuration=production'
            }
        }
        

    }
 }