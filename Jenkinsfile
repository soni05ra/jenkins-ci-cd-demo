/*
pipeline{
    agent any
    tools{
        maven 'maven'
    }
    stages{
        stage("SCM Checkout"){
            steps{
                checkout scmGit(branches: [[name: '*//*
main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/soni05ra/jenkins-ci-cd-demo.git']])
            }
        }
        stage("Build"){
            steps{
                script{
                    bat 'mvn clean install'
                }
            }
        }
        stage("Deploy WAR"){
                    steps{
                        deploy adapters: [tomcat9(alternativeDeploymentContext: '', credentialsId: 'admin1', path: '', url: 'http://localhost:8081/')], contextPath: 'jenkinsCiCd', war: '** /*
*/
/*.war'
                    }
                }
    }
    post{
        always{
            echo 'email sent'
        }
    }
}
//SCM checkout
//Build
//deploy war
//email */
