FROM ruby:2.7.2-alpine

ENV WORKSPACE /app

ADD ./Gemfile* $WORKSPACE/

WORKDIR $WORKSPACE

RUN bundle install

ADD . $WORKSPACE

EXPOSE 4567

CMD ['ruby', 'app.rb']