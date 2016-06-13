FROM jekyll/jekyll:builder
MAINTAINER JG

# Install some jekyll plugins
RUN apk add --no-cache --virtual .build-deps \
        build-base \
        ruby-dev \
    && apk add --no-cache \
        python \
    && gem install \
        jekyll-archives \
        jekyll-paginate-categories \
        rouge \
        pygments.rb \

# Clean
    && apk del -f .build-deps \
    && docker-helper cleanup

VOLUME /src
EXPOSE 4000

WORKDIR /src
