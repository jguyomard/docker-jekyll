# Jekyll Docker Image

This Docker Image is based on [official Jekyll Docker Image](https://github.com/jekyll/docker) (Alpine based), and add some plugins.

[Jekyll](https://jekyllrb.com/) is a simple, blog-aware, static site generator perfect for personal, project, or organization sites. Think of it like a file-based CMS, without all the complexity.


## Running

To build your site:

```bash
docker run --rm -it -v $PWD:/src jguyomard/jekyll-builder jekyll build
```

To serve your site locally:

```bash
docker run --rm -it -p 4000:4000 -v $PWD:/src jguyomard/jekyll-builder jekyll serve
```
Then open [`http://localhost:4000/`](http://localhost:4000/) in your browser.

## Supported tags

* [`latest`](https://github.com/jguyomard/docker-jekyll/blob/master/Dockerfile).
 

## Jekyll plugins

This Docker image comes with:

- jekyll
- jekyll-sitemap
- jekyll-mentions
- jekyll-coffeescript
- jekyll-sass-converter
- jekyll-redirect-from
- jekyll-paginate
- jekyll-compose
- jekyll-feed
- jekyll-archives
- jekyll-paginate-categories
- rdiscount
- redcarpet
- kramdown
- jemoji
- RedCloth
- maruku
- pygments.rb
- rouge


## Continuous Deployment

I use this Docker image for Continuous Deployment. You can find some CI config examples on `ci-deploy` directory.

This Docker image also comes with:

- rsync
- lftp
- openssh-client
- html-proofer


## Issues

If you have any problems with or questions about this docker image, please contact me through a [GitHub issue](https://github.com/jguyomard/docker-jekyll/issues). 
If the issue is related to Jekyll itself, please leave an issue on the [Jekyll official repository](https://github.com/jekyll/jekyll).


## Contributing

You are invited to contribute new features, fixes or updates to this container, through a [Github Pull Request](https://github.com/jguyomard/docker-jekyll/pulls).
