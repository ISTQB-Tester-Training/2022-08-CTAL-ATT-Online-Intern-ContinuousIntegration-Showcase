pipeline {
    agent any

    environment {
            SQ_TOKEN = credentials('Token-für-Zugriff-auf-SonarQube')
        }

    stages {
        stage('Compile') {
            steps {

                git 'https://github.com/ISTQB-Tester-Training/2022-08-CTAL-ATT-Online-Intern-ContinuousIntegration-Showcase.git'

                sh "mvn compile -DskipTests"
            }
        }
        stage('Unit Tests TDD') {
            steps {

                sh "mvn test -P TDD"
            }
        }
        stage('Code Analysis') {
            steps {

                sh "mvn verify sonar:sonar -DskipTests -Dsonar.host.url=http://80.158.7.52:30002 -Dsonar.login=$SQ_TOKEN"
            }
        }
        stage('Behavior Tests BDD') {
            steps {

               sh "mvn test -P BDD"
            }
        }
        stage('Deploy to Local Repository') {
            steps {

                sh "mvn package -DskipTests"
            }
        }
        stage('Deploy to Remote Repository') {
            steps {

                sh "mvn deploy -DskipTests"
            }
        }
    }
}
