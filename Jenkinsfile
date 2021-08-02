pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {

        stage('Test'){
            steps {
                echo 'Testing'
                sh './gradlew clean test'
                junit 'build/test/results/test/TEST-*.xml'
            }
        }
        
        stage('Build') {
            steps {
                sh 'make'
            }
        }
        
        stage('Deploy') {
            steps {
                sh 'make publish'
            }
        }
    }
}
