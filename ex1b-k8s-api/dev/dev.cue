package app

service: spec: {
    ports: [{
        port:       90
        targetPort: 90
    }]
}

deployment: spec: template: spec: containers: [{
    env: [{
        name:  "HELLO_MSG"
        value: "hi-dev"
    }]
}]
