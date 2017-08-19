 node("master") {

     stage("Unit Test"){

     }
     stage("Deploy"){
        checkout scm
        sh "ls"
        sh "docker build -t ng ."
        sh "docker run"
     }
 }