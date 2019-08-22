FROM ruby:latest

RUN gem install mailcatcher

EXPOSE 1080

CMD   ["mailcatcher", "--no-quit", "--foreground", "--ip=0.0.0.0"]
