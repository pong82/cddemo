 node("docker-test") {

     stage("Unit Test"){

     }
     stage("Deploy"){
        checkout scm
        sh "ls"
        sh "docker build -t ng ."
        SERVICES=$(docker service ls --filter name=nginx --quiet | wc -l)
        if [[ "$SERVICES" -eq 0 ]]; then
            sh "docker service create --name nginx -p80:80 ng"
        else
            sh "docker service update --image ng nginx"
     }
 }