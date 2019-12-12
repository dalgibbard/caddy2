# caddy2
Caddy2 docker image builder.

## To build + run locally
```bash
docker build -t caddy2 .
docker run -it -p80:80 caddy2
```

## To use a custom config
When starting docker, push in your own caddy.json file to ```/caddy.json``` inside the container; eg:
```bash
docker run -it -p80:80 -v caddy.json:/caddy.json caddy2
```

## To use a custom command/file/config adapter
The entrypoint is set to ```caddy```. So you can replace the ```CMD``` Docker paramenter to change the start behaviour of Caddy2.
For example, if you wanted to load in a Caddyfile instead of JSON, you could do:
```bash
docker run -it -p80:80 -v Caddyfile:/Caddyfile caddy2 run --config=/Caddyfile --adapter=Caddyfile
```

## TODO:
* Flesh out the example configuration in this repo.
* Think about how to run this as a build pipeline triggered by upstream changes (with appropriate tagging).
* Tie this into dockerhub.
* Provide example docker-compose file.
* Test the examples above for correctness

## Caddy2 configuration documentation
Useful documentation on how to setup Caddy2 is here:
* Caddy2 wiki: https://github.com/caddyserver/caddy/wiki/v2:-Documentation
* Full configuration guide: https://github.com/caddyserver/caddy/wiki/v2:-Documentation#making-one-from-scratch
* Git repo quickstart: https://github.com/caddyserver/caddy/tree/v2#quick-starthttps://github.com/caddyserver/caddy/tree/v2#quick-start

