pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t thebela-portfoliowebsitenew .'
                }
            }
        }

        stage('Stop Old Container') {
            steps {
                script {
                    sh 'docker stop thebela-portfoliowebsitenew || true'
                    sh 'docker rm thebela-portfoliowebsitenew || true'
                }
            }
        }

        stage('Run New Container') {
            steps {
                script {
                    sh 'docker run -d --name thebela-portfoliowebsitenew -p 80:80 thebela-portfoliowebsitenew'
                }
            }
        }
    }
}
