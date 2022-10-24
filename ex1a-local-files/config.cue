package app

service: {
	apiVersion: "v1"
	kind:       "Service"
	metadata: {
		namespace: "default"
		name:      "simple-app"
	}
	spec: {
		ports: [{
			port:       80
			targetPort: 80
		}]
		selector: "simple-app": ""
	}
}
