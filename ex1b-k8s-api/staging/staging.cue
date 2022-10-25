package app

deployment: spec: template: spec: containers: [{
    env: [{
        name:  "HELLO_MSG"
        value: "hi-staging"
    }]
}]

// Adding additional env variable?
// deployment: spec: template: spec: containers: [{
//     env: env
//     env: env + [{
//         name: "NEW_ONE"
//         value: "hi-staging"
//     }, ...]
// }]
