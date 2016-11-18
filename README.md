# Reveal.js Docker image

A container to expose your presentations with Reveals.js.

### Content

* Official [Node image v7.1.0](https://hub.docker.com/_/node/)
* [reveal.js v3.3.0](https://github.com/hakimel/reveal.js/releases/3.3.0)

### Usage

To simply test this image run this command:

`docker run -p 80:80 -d francescoben/docker-reveal-js`

To create your presentation, you can mount index.html file like this:

`docker run -p 80:80 -v </path/to/your/index/file>:/srv/reveal.js/index.html -d francescoben/docker-reveal-js`

You can then browse your content visiting:

    http://localhost:80

### Contributions and todo

* All contributions are welcome, I will try to review them as quick as possible.
