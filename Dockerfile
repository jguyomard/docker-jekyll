FROM jekyll/jekyll:builder
MAINTAINER JG

# Install some jekyll plugins
RUN gem install jekyll-archives
RUN gem install jekyll-paginate-categories
RUN gem install rouge 

RUN docker-helper cleanup

VOLUME /src
EXPOSE 4000

WORKDIR /src
