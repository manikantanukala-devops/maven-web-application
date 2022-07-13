node
   {
    echo "the job name is : ${env.JOB_NAME}"
    echo "the node name is: ${env.NODE_NAME}"
    echo "the build number is: ${env.BUILD_NUMBER}"
    echo "the workspace path is: ${env.WORKSPACE}"
    def mavenhome = tool name: "maven3.8.6"
    properties([buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '5', daysToKeepStr: '', numToKeepStr: '5')), [$class: 'JobLocalConfiguration', changeReasonComment: ''], pipelineTriggers([pollSCM('* * * * *')])])
    
    stage('Githubcode'){
        git branch: 'development', credentialsId: '53f6da8d-d897-425d-821c-ec361c7e3c1e', url: 'https://github.com/manikantanukala-devops/maven-web-application.git'
         }
         
  stage('Buildpackage'){
        sh "${mavenhome}/bin/mvn clean package"
    }
   /*
   stage('Sonarqubereport'){
        sh "${mavenhome}/bin/mvn sonar:sonar"
    }
    stage('nexusuploadartifacts'){
        sh "${mavenhome}/bin/mvn deploy"
    }
    stage('deployappintotomcatserver'){
        sshagent(['3a6a215b-11d7-4dcb-80ee-d8f9e35030a3']) {
sh "scp -o StrictHostKeyChecking=no target/maven-web-application.war ec2-user@13.233.150.135:/opt/apache-tomcat-9.0.64/webapps/"
 
}
    }
    
        
}*/
