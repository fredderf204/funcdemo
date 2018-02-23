pipeline {
    agent any

    stages {
        stage('Source') {
            steps {
                echo 'Pull from source'
                checkout scm
            }
        }
        stage('Build'){
            steps {
                echo 'hello...'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('DeployToCloud') {
            steps {
                echo 'Deploying....'
                azureCLI commands: [[exportVariablesString: '', script: 'az']], principalCredentialId: '7f122f04-9592-4782-a3f3-822196987cd8'
                timeout(time:30, unit:'MINUTES') {
                    input message:'Yo, do you approve this here deployment?'
                }
            }
        }
        stage('DeploytoProd'){
            steps{
                echo 'slot swap'
            }
        }
    }
}