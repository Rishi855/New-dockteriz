pipeline {
    agent any

    stages {
        stage('Build app') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Rishi855/New-dockteriz.git']])
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    bat 'docker build -t jenkinsjavaapp .'
                }
            }
        }
        stage('Change image tag'){
            steps{
                script{
                    bat 'docker tag jenkinsjavaapp rushikesh855/poedevops:v1.0'
                }
            }
        }
        stage('Push image to docker hub'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'dockerpwd', variable: 'dockerpwd')]) {
                        bat 'docker login -u rushikeshs855@gmail.com -p Swami@3295'

                    }
                    bat 'docker push rushikesh855/poedevops:v1.0'
                }
            }
        }
    }
}
