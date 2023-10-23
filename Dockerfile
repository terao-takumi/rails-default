FROM ruby:3.2.2
ENV LANG=C.UTF-8
ENV TZ=Asia/Tokyo
# ディレクトリ名を任意に書き変えてください
ENV APP_ROOT /my-app-name

RUN mkdir ${APP_ROOT}
COPY Gemfile Gemfile.lock ${APP_ROOT}/

WORKDIR ${APP_ROOT}
RUN gem update && bundle install --jobs=4
COPY . ${APP_ROOT}

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000
