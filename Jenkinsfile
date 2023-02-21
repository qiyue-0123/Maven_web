pipeline {
    agent { node { label '' } }

    stages {
        stage("Prepare") {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/qiyue-0123/Maven_web.git']])
            }
        }

        stage("Build"){
            steps{
                sh "mvn -v"
                sh "mvn clean package"
                sh "docker build -t maven_web ."
                sh "docker run -id -p 8000:8080 maven_web"
            }
        }
        }
        }