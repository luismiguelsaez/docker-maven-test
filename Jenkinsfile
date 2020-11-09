pipeline {
    agent {
        docker { image 'maven:3.6.3-openjdk-16-slim' }
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn package'
            }
        }
    }
}