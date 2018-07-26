job "nomad-job" {
  datacenters = ["dc1"]
  type = "service"
  group "helloWorld" {
    count = 1
    task "goApp" {
      driver = "docker"
      config {
        image = "localhost:5000/hello:latest"
        port_map {
          http = 8080
        }
      }
      resources {
        network {
          port "http" {}
        }
      }
      service {
        port = "http"
      }
    }
  }
}