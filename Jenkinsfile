pipeline {
    agent any
    stages {
        stage('Foodcritic') {
            steps {
                sh "foodcritic ."
            }
        }
        stage('cookstyle') {
            steps {
            echo "running cookstyle"
            script {
            try {
                sh "cookstyle -a"
            } catch (Exception e) {
            status = -1
            }
            }
            }
        }
        stage('kitchen test') {
            steps {
                sh "sudo kitchen converge"
            }
        }
        stage('inspec test') {
            steps {
                sh "sudo kitchen verify"
            }
        }
        stage('berks upload') {
            steps {
                sh "sudo berks install && sudo berks upload"
            }
        }
    }  
}