pipeline {
    agent any

    environment {
        DOCKER_REGISTRY = "docker.io"
        DOCKER_IMAGE = "bhavyascaler/java-hello-world"
        DEPLOYMENT_NAME = "java-hello-world"
    }

    stages {
        stage('Clone Repository') {
            steps {
                checkout scm
            }
        }

        stage('Build JAR') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Image') {
            steps {
                script {
                    sh 'docker build -t bhavyascaler/java-hello-world:latest .'
                }
            }
        }
        


         stage('Push') {
            steps {
                sh 'docker push bhavyascaler/java-hello-world:latest'
            }
        }
    }
}
