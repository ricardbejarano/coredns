<div align="center">
	<p><img src="https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/160/apple/325/bus-stop_1f68f.png" width="100px"></p>
	<h1>coredns</h1>
	<p>Built-from-source container image of <a href="https://github.com/coredns/coredns">CoreDNS</a></p>
	<code>docker pull quay.io/ricardbejarano/coredns</code>
</div>


## Features

* Compiled from source during build time
* Built `FROM scratch`, with zero bloat
* Reduced attack surface (no shell, no UNIX tools, no package manager...)
* Runs as unprivileged (non-`root`) user


## Tags

### Docker Hub

Available on Docker Hub as [`docker.io/ricardbejarano/coredns`](https://hub.docker.com/r/ricardbejarano/coredns):

- [`1.9.4`, `latest` *(Dockerfile)*](Dockerfile)

### RedHat Quay

Available on RedHat Quay as [`quay.io/ricardbejarano/coredns`](https://quay.io/repository/ricardbejarano/coredns):

- [`1.9.4`, `latest` *(Dockerfile)*](Dockerfile)


## Configuration

### Volumes

- Mount your **configuration** at `/Corefile`.
