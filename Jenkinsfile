pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
               git branch: 'main',
               url: 'https://github.com/shanmathi-1420/Reactjs-App-Deployment.git'
            }
        }

        stage('Build and Push Docker Image') {
            steps {
                // Granting executable permissions to the build script
                sh 'chmod +x deploy.sh'

                // Building the Docker image using the build script
                sh './deploy.sh'

              
            }
        }
    }
}
