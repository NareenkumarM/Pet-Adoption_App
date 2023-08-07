pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                // Your build steps here
                sh 'echo "Building..."'
            }
        }
        stage('Test') {
            steps {
                // Your test steps here
                sh 'echo "Testing..."'
            }
        }
        stage('Deploy') {
            steps {
                // Your deployment steps here
                sh 'echo "Deploying..."'
            }
        }
    }
}'

pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build('your-docker-image-name:tag', '.')
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                withCredentials([
                    usernamePassword(credentialsId: 'b8e12b02-c717-406e-aae7-2637bf4851c1', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')
                ]) {
                    script {
                        docker.withRegistry('http://localhost:8080/credentials/store/system/domain/_/', 'docker-registry-credentials') {
                            dockerImage.push()
                        }
                    }
                }
            }
        }
    }
}

