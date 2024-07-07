pipeline {
    agent {
        label 'AGENT-1'
    }
    options {
        timeout(time: 30, unit: 'MINUTES') 
        disableConcurrentBuilds()
        ansiColor('xterm')
    }
    stages {
        stage('init') {
            steps {
                sh """
                cd 01-vpc
                terraform plan
                """
            }
        }
        stage('plan') {
            steps {
                sh """

                """
            }
        }
        stage('Deploy') {
            input {
                message "Should we continue"
                ok "Yes, we should."
            }
            steps {
                sh """

                """
            }
        }
    }
        post { 
            always { 
                echo 'I will always say Hello again!'
                deleteDir()
            }
            success {
                echo 'i will run the pipeline is usccess'
            }
            failure {
                echo 'i will the pipeline is failure'
            }
        }
}