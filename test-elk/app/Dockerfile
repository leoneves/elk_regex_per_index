FROM ruby:2.7.1

WORKDIR /app
COPY . /app
RUN bundle install

EXPOSE 8000

CMD ["bundle", "exec", "rackup", "-o", "0.0.0.0", "-p", "8000"]
