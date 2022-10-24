package app

import (
    corev1 "k8s.io/api/core/v1"
)

service: corev1.#Service & {
    apiVersion: "v1"
    kind:       "Service"
    metadata: {
        namespace: "default"
        name:      "simple-app"
    }
    spec: {
        ports: [{
            port:       int | *80
            targetPort: int | *80
        }]
        selector: deployment.spec.selector.matchLabels
    }
}
