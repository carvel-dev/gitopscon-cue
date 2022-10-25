package app

deployment: spec: template: spec: containers: [{
    env: [{
        name:  "HELLO_MSG"
        value: "hi-dev"
    }]
}]
