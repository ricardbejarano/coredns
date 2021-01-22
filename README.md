<p align="center"><img src="https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/320/apple/198/earth-globe-europe-africa_1f30d.png" width="120px"></p>
<h1 align="center">coredns (container image)</h1>
<p align="center">Built-from-source container image of the <a href="https://coredns.io">CoreDNS</a> domain name server</p>


## Tags

### Docker Hub

Available on Docker Hub as [`docker.io/ricardbejarano/coredns`](https://hub.docker.com/r/ricardbejarano/coredns):

- [`1.8.1`, `latest` *(Dockerfile)*](Dockerfile)

### RedHat Quay

Available on RedHat Quay as [`quay.io/ricardbejarano/coredns`](https://quay.io/repository/ricardbejarano/coredns):

- [`1.8.1`, `latest` *(Dockerfile)*](Dockerfile)


## Features

* Compiled from source during build time
* Built `FROM scratch`, with zero bloat
* Statically linked to the [`musl`](https://musl.libc.org/) implementation of the C standard library
* Reduced attack surface (no shell, no UNIX tools, no package manager...)
* Runs as unprivileged (non-`root`) user


## Building

```bash
docker build --tag ricardbejarano/coredns --file Dockerfile .
```


## Configuration

### Volumes

- Mount your **configuration** at `/Corefile`.


## License

MIT licensed, see [LICENSE](LICENSE) for more details.
