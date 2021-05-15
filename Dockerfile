FROM ruby

WORKDIR /home/app

ENV PORT 3031

EXPOSE $PORT

RUN gem install rails bundler
RUN gem install rails
RUN apt-get update -qq && apt-get install -y nodejs


RUN curl --compressed -o- -L https://yarnpkg.com/install.sh | bash
RUN export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

COPY ./MYAPP/ .
WORKDIR /home/app/MYAPP
RUN bundle update && bundle install
# RUN rails webpacker:install
RUN rails server -p $PORT -b 0.0.0.0

ENTRYPOINT [ "/bin/bash" ]
