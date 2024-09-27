[
    {
      "essential": true,
      "name": "${app_name}",
      "image": "${app_image}",
      "cpu": ${fargate_cpu},
      "memory": ${fargate_memory},
      "networkMode": "awsvpc",
      "portMappings": [
          {
              "containerPort": ${app_port},
              "hostPort": ${app_port}
          }
        ],
        "environment": [
          {
              "name": "ENVVAR",
              "value": "test-env-var"
          }
        ],
        "secrets": [
          {
              "name": "SECRET",
              "valueFrom": "${secret_var}"
          }
        ]
    }
]