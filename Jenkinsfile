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
            }
        }
    }
}