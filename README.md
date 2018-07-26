# Hello world Docker / Consul - Nomad

## To run the application

Use one of the several ways of running a Spring Boot application.

1. Build using maven goal: `mvn clean package` and execute the resulting artifact as follows `java -jar hello-word-0.0.1-SNAPSHOT.jar`
2. On Unix/Linux based systems: run `mvn clean package` then run the resulting jar as any other executable `./hello-word-0.0.1-SNAPSHOT.jar`


## Commands

### Docker

```docker build -t hello .
docker run --rm -d -p 8080:8080 hello
docker stop "pid"
docker ps
docker container prune
docker rm -f "pid"```

### Docker console
```docker exec -ti "pid" /bin/sh 
docker run --rm -ti "pid" bash
docker logs -f "pid"```

### Consul (service dicovery, configuration)
http://localhost:8500
```consul agent -dev```

### Nomad (orchestrator)
http://127.0.0.1:4646/
```nomad agent -consul-address localhost:8500 -dev```

As admin:
```nomad run nomad-job.hcl
nomad status nomad-job
nomad alloc-status "pid"```

```docker run -d -p 5000:5000 --restart always --name registry registry:2
docker build -t localhost:5000/hello:latest .
docker push localhost:5000/hello:latest```