pipeline {
    agent {
        label 'AGENT-1'
    }
    options {
        timeout(time: 30, unit: 'MINUTES') 
        disableConcurrentBuilds()
       // ansiColor('xterm')
    }
    // parameters {
    //     choice(name: 'Action', choices: ['Apply', 'Destroy'], description: 'Pick something')
    // }
    stages {
        stage('init') {
            steps {
                sh """

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
            // when {
            //     expression {
            //         params.Action == 'Apply'
            //     }
            // }
            // input {
            //     message "Should we continue"
            //     ok "Yes, we should."
            // }
            steps {
                sh """
                cd 01-vpc
                ls -lrth
                terraform init -reconfigure
                """
            }
        }
    //    stage('Destroy') {
    //         when {
    //             expression {
    //                 params.Action == 'Destroy'
    //             }
    //         }
    //         steps {
    //             sh """
    //             cd 01-vpc
    //             ls -lrth
    //             """
    //         }
    //     }
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