pipeline{
    agent any
    tools{
        maven 'maven'
    }
   environment {
    APP_NAME = "spring-docker-cicd"
    RELEASE_NO = "1.0.0"
    DOCKER_USER = "soni05ra"
    IMAGE_NAME  = "${DOCKER_USER}/${APP_NAME}"
    IMAGE_TAG = "${RELEASE_NO}-${BUILD_NUMBER}"
}

    stages{
        stage("SCM Checkout"){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/soni05ra/jenkins-ci-cd-demo.git']])
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
              script{
                  bat "docker build -t %IMAGE_NAME%:%IMAGE_TAG% ."

              }
            }
        }
        stage("Deploy image to hub"){
            steps{
            //  withCredentials([string(credentialsId: 'dp', variable: 'dp')]) {
              // some block
              bat 'docker login -u soni05ra -p DDockerhub@25'
             // sh 'docker tag spring-cicd:1.0 soni05ra/spring-cicd:1.0'
             //but we did tagging above itself
              bat "docker push %IMAGE_NAME%:%IMAGE_TAG%"



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
//emailK


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
