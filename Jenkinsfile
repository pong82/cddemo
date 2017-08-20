 node("docker-test") {

     stage("Unit Test"){

     }
     stage("Deploy"){
        checkout scm
        sh "ls"
        sh "docker build -t ng ."
        sh "docker service create --name nginx -p80:80 ng"
        
     }
 }