# docker-tmpfiles-clean

Delete old temporary files using atime.

## Usage

The following command deletes `/tmp` files whose atime is before 600 seconds every 30 seconds.

```shell
docker run -v /tmp:/tmp rxnew/tmpfiles-clean /tmp 600 30
```
