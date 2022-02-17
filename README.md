# Redis Roaring

Roaring Bitmaps for Redis

## Intro

This project uses the [CRoaring](https://github.com/RoaringBitmap/CRoaring)
library to implement roaring bitmap commands for Redis. These commands can have
the same performance as redis' native bitmaps for *O(1)* operations and be up to
8x faster for *O(N)* calls, according to microbenchmarks, while consuming less
memory than their uncompressed counterparts (benchmark pending).

See upstream project at [github.com/aviggiano/redis-roaring](https://github.com/aviggiano/redis-roaring) for more details.

## Docker

To run the service in Docker use:

```bash
docker run -p 6379:6379 zappi/redis-roaring:<tag>
```
