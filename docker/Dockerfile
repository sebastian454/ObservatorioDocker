FROM ruby:2.6.3
ENV APP_ROOT /
ENV BUNDLE_PATH /usr/local/bundle

RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs libc6-dev

RUN    curl -o- -L https://yarnpkg.com/install.sh | bash
run apt install -y yarn


RUN apt-get install wget

RUN wget http://www.freetds.org/files/stable/freetds-1.1.24.tar.gz
RUN tar -xzf freetds-1.1.24.tar.gz
RUN cd freetds-1.1.24
RUN ./configure --prefix=/usr/local --with-tdsver=7.3
RUN make
RUN make install


WORKDIR $APP_ROOT
ADD . $APP_ROOT
