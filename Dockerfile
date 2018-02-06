FROM alpine:latest

LABEL version="0.1"
LABEL description="julienlevasseur/jekyll"
MAINTAINER Julien Levasseur

RUN mkdir -p /opt/jekyll \
&& apk upgrade --update \
&& apk add libatomic readline readline-dev libxml2 libxml2-dev\
 ncurses-terminfo-base ncurses-terminfo libxslt libxslt-dev\
 zlib-dev zlib ruby ruby-dev yaml yaml-dev libffi-dev build-base\
 ruby-io-console ruby-irb ruby-json ruby-rake git\
&& gem install --no-document redcarpet kramdown maruku rdiscount\
 RedCloth liquid pygments.rb sass safe_yaml jekyll-paginate\
 jekyll-feed jekyll-redirect-from\
 json bundler rake jekyll-seo-tag\
&& gem install --no-document jekyll -v 3.7.0 \
&& gem install --no-document jekyll-sitemap -v 1.1.1 \
&& gem install --no-document i18n -v 0.9.1 \
&& gem install --no-document rouge -v 3.1.0 \
&& gem install --no-document jekyll-feed -v 0.9.2 \
&& gem install --no-document jekyll-sass-converter -v 1.5.1 \
&& gem install --no-document rake -v 10.5 \
&& gem install --no-document ffi -v 1.9.18 \
&& rm -rf /root/src /tmp/* /usr/share/man /var/cache/apk/* \
&& apk del build-base zlib-dev ruby-dev readline-dev \
yaml-dev libffi-dev libxml2-dev \
&& apk search --update

WORKDIR /opt/jekyll
VOLUME /opt/jekyll
EXPOSE 4000
