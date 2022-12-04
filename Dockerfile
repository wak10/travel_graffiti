FROM ruby:3.1.2

RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
ENV BUNDLER_VERSION 2.3.7
RUN gem install bundler -v 2.3.7
RUN bundle update --bundler 
RUN bundle install
COPY . /app

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 9000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
