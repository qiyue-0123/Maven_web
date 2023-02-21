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
            }
        }
        }
        }