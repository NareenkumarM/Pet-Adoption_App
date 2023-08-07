pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Define your build steps here
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                // Define your test steps here
                sh 'mvn test'
            }
        }
        stage('Deploy') {
            steps {
                // Define your deployment steps here
                sh 'mvn deploy'
            }
        }
    }
}
