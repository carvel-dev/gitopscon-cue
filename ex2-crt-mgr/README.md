https://github.com/cue-lang/cue/discussions/806#discussioncomment-1517672

```
cue export --out yaml github.com/uhthomas/automata/k8s/pillowtalk/cert_manager --expression 'list'
```

kapp deploy -a crt -f .
