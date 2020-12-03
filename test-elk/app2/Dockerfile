FROM ruby:2.7.1

WORKDIR /app2
COPY . /app2
RUN bundle install

EXPOSE 8002

CMD ["bundle", "exec", "rackup", "-o", "0.0.0.0", "-p", "8002"]
