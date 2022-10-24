package app

import (
    appsv1 "k8s.io/api/apps/v1"
)

deployment: appsv1.#Deployment & {
    apiVersion: "apps/v1"
    kind:       "Deployment"
    metadata: {
        namespace: "default"
        name:      "simple-app"
    }
    spec: {
        selector: matchLabels: {
            "simple-app": ""
        }
        template: {
            metadata: labels: selector.matchLabels
            spec: {
                containers: [{
                    name:  "simple-app"
                    image: "docker.io/dkalinin/k8s-simple-app@sha256:4c8b96d4fffdfae29258d94a22ae4ad1fe36139d47288b8960d9958d1e63a9d0"
                    env: [{
                        name:  "HELLO_MSG"
                        value: string | *"hi!"
                    }]
                }]
            }
        }
    }
}