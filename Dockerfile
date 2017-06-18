FROM ruby:2.4

RUN mkdir -p /usr/src/app
RUN gem install sinatra
RUN gem install bundler

WORKDIR /usr/src/app

EXPOSE 80

CMD ["bundle install && bin/rails server"]

# Run with (e.g.)
# docker build -t edusinatra . 
# docker run -p 80:80 -v $(pwd)/support-request-system:/usr/src/app -d edusinatra
