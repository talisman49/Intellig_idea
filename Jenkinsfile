pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {

        stage('Test'){
            steps {
                echo 'Testing...'
                withGradle {
                    sh './gradlew clean test'
                }
            }    
            post{
                always{
                    junit 'build/test/results/test/TEST-*.xml'
                }
            }   
        }
        
        stage('Build') {
            steps {
                sh 'Building'
            }
        }
        
        stage('Deploy') {
            steps {
                sh 'Deploying'
            }
        }
    }
}
