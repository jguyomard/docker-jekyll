FROM jekyll/jekyll:builder
MAINTAINER JG

# Install some jekyll plugins
RUN apk add --no-cache python \
    && gem install jekyll-archives \
    && gem install jekyll-paginate-categories \
    && gem install rouge \
    && gem install pygments.rb

RUN docker-helper cleanup

VOLUME /src
EXPOSE 4000

WORKDIR /src
