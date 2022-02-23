# Docker Redis Roaring

## Introduction

Redis Roaring uses the [CRoaring](https://github.com/RoaringBitmap/CRoaring)
library to implement roaring bitmap commands for Redis. These commands can have
the same performance as redis' native bitmaps for *O(1)* operations and be up to
8x faster for *O(N)* calls, according to microbenchmarks, while consuming less
memory than their uncompressed counterparts (benchmark pending).

## Features

* Based off latest version of Redis Roaring.
* Included bash scripts to run Redis Sentinel easily in Kubernetes.

## Usage

To run a simple setup of a single Redis Roaring container in Docker use:

```bash
docker run -p 6379:6379 zappi/redis-roaring:<tag>
```

And to run a more complex setup using Redis Sentinel in Kubernetes use the
reference [example manifests here][1]. Replace `zappi/redis:<tag>` with
`zappi/redis-roaring:<tag>` and run:

```bash
kubectl apply -f examples/kubernetes/
```

[1]: https://github.com/Intellection/docker-redis/tree/main/examples/kubernetes
