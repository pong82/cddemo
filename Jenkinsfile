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
                CONTAINER=$(docker ps | grep nginx | cut -c 1-12)
                docker cp app1.conf "$CONTAINER":/etc/nginx/conf.d/
            else
                docker service update --image ng nginx
                CONTAINER=$(docker ps | grep nginx | cut -c 1-12)
                docker cp app1.conf "$CONTAINER":/etc/nginx/conf.d/
            fi
        '''
     }
 }