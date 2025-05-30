FROM ruby:3.2

WORKDIR /app

COPY Gemfile Gemfile.lock* ./
RUN bundle install

COPY . .

EXPOSE 8080
CMD ["ruby", "app.rb"] 