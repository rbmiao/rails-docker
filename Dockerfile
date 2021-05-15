FROM ruby

WORKDIR /home/app

# exposing port of docker container
ENV PORT 3031

EXPOSE $PORT

RUN gem install rails bundler
RUN gem install rails
RUN apt-get update -qq && apt-get install -y nodejs


RUN curl --compressed -o- -L https://yarnpkg.com/install.sh | bash
RUN export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Upload existing rails project to docker
COPY ./MYAPP/ .
WORKDIR /home/app/MYAPP

# Gems install
RUN bundle update && bundle install

# ENTRYPOINT [ "/bin/bash" ]
ENTRYPOINT [ "/bin/bash", "-c", "rails server -p 3031 -b 0.0.0.0"  ]