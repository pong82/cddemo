 node("docker-test") {

     stage("Unit Test"){

     }
     stage("Deploy"){
        checkout scm
        sh "ls"
        sh "docker build -t ng ."
        sh '''
            SERVICES=$(docker service ls --filter name=nginx --quiet | wc -l)
            if [[ "$SERVICES" -eq 0 ]]; then
                docker service create --name nginx -p80:80 ng
            else
                sleep 2
                docker service update --force --image ng nginx
            fi
        '''
     }
 }