# nem-nis-docker
Dockerfile for [nem nis package](https://nemproject.github.io/)


# Building

```bash
docker build -t nis .
```


# Running

```bash
# block dir
mkdir nem
docker run --rm -itd --name nis-node -v `pwd`/nem:/opt/nem -p 127.0.0.1:7890:7890 nis
```


# Using pre-built docker image

```bash
docker run --rm -itd --name nis-node -v `pwd`/nem:/opt/nem -p 127.0.0.1:7890:7890 mixhq/nem-nis:latest
```
