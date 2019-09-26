elastic-transfer 🔍
==================

It helps move all ES structure to another ES.
- settings
- analyzer
- mapping
- data
- alias

## Options

- first url `http://1.2.3.4:9200` is **input** ES
- secound url `http://5.6.7.8:9200` is **output** ES
- third parameter is `index-name`

## Use

```docker
docker run -it --rm alicankustemur/elastic-transfer \
    http://1.2.3.4:9200 \
    http://5.6.7.8:9200
```

If you need to run using `localhost` as your ES host :

```docker
docker run --net=host -it --rm alicankustemur/elastic-transfer \
    http://1.2.3.4:9200 \
    http://localhost:9200
```

## Use with only index

It imports only `students` index.

```docker
docker run -it --rm alicankustemur/elastic-transfer \
    http://1.2.3.4:9200 \
    http://5.6.7.8:9200 \
    students
```

If you need to run using `localhost` as your ES host :

```docker
docker run --net=host -it --rm alicankustemur/elastic-transfer \
    http://1.2.3.4:9200 \
    http://localhost:9200 \
    students
```

## Notes
- This tool include `elasticdump@6.22`, `curl` and `jq`
