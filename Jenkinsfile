pipeline {
    agent any
    stages {
        stage('Foodcritic') {
            steps {
            script {
            try {
                sh "foodcritic ."
            } catch (Exception e) {
            status = -1
            }
            }
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
                 script {
            try {
                sh "sudo kitchen verify"
                } catch (Exception e) {
            status = -1
            }
            }
            }
        }
        stage('berks upload') {
            steps {
                sh "sudo berks install && sudo berks upload"
            }
        }
    }  
}