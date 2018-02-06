# julienlevasseur/jekyll

Jekyll Docker image

Jekyll version -> 3.7.0

## Usage

```bash
docker run --net=host -v jekyll:/opt/jekyll -ti julienlevasseur/jekyll bundle exec jekyll serve
```

## Build

```bash
docker build https://raw.githubusercontent.com/julienlevasseur/julienlevasseur-jekyll-docker/master/Dockerfile -t julienlevasseur/jekyll
```

## Publish image

```bash
docker login
docker push julienlevasseur/jekyll
```