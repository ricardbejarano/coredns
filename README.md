<p align="center"><img src="https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/320/apple/198/earth-globe-europe-africa_1f30d.png" width="120px"></p>
<h1 align="center">coredns (container image)</h1>
<p align="center">Built-from-source container image of the <a href="https://coredns.io/">CoreDNS DNS server</a></p>


## Tags

### Docker Hub

Available on [Docker Hub](https://hub.docker.com) as [`ricardbejarano/coredns`](https://hub.docker.com/r/ricardbejarano/coredns):

- [`1.6.0-glibc`, `1.6.0`, `glibc`, `master`, `latest` *(Dockerfile.glibc)*](https://github.com/ricardbejarano/coredns/blob/master/Dockerfile.glibc)
- [`1.6.0-musl`, `musl` *(Dockerfile.musl)*](https://github.com/ricardbejarano/coredns/blob/master/Dockerfile.musl)

### Quay

Available on [Quay](https://quay.io) as:

- [`quay.io/ricardbejarano/coredns-glibc`](https://quay.io/repository/ricardbejarano/coredns-glibc), tags: [`1.6.0`, `master`, `latest` *(Dockerfile.glibc)*](https://github.com/ricardbejarano/coredns/blob/master/Dockerfile.glibc)
- [`quay.io/ricardbejarano/coredns-musl`](https://quay.io/repository/ricardbejarano/coredns-musl), tags: [`1.6.0`, `master`, `latest` *(Dockerfile.musl)*](https://github.com/ricardbejarano/coredns/blob/master/Dockerfile.musl)


## Features

* Super tiny (about `42.1MB`)
* Compiled from source during build time
* Built `FROM scratch`, with zero bloat (see [Filesystem](#filesystem))
* Reduced attack surface (no shell, no UNIX tools, no package manager...)
* Runs as unprivileged (non-`root`) user


## Configuration

### Volumes

- Bind your **configuration** at `/Corefile`.


## Building

- To build the `glibc`-based image: `$ docker build -t coredns:glibc -f Dockerfile.glibc .`
- To build the `musl`-based image: `$ docker build -t coredns:musl -f Dockerfile.musl .`


## Filesystem

The images' contents are:

```
/
├── coredns
└── etc/
    ├── group
    ├── passwd
    └── ssl/
        └── certs/
            └── ca-certificates.crt
```


## License

See [LICENSE](https://github.com/ricardbejarano/coredns/blob/master/LICENSE).
