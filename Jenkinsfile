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
                script {
            try {
                sh "sudo kitchen converge"
            } catch (Exception e) {
            status = -1
            }
            }
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