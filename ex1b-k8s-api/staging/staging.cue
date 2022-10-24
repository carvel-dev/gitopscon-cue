package app

deployment: spec: template: spec: containers: [...{
    env: [{
        name: name
        if name == "HELLO_MSG" {
        	value: "hi-staging"
        }
    }]
}]
