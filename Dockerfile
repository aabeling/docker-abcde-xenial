FROM ubuntu:16.04

RUN apt update

# postfix is needed for abcde
RUN bash -c 'debconf-set-selections <<< "postfix postfix/mailname string foo.bar"'
RUN bash -c 'debconf-set-selections <<< "postfix postfix/main_mailer_type string No configuration"'
RUN apt install -y postfix

# install abcde
RUN apt install -y abcde

# install vim (only used during development to work in container)
RUN apt install -y vim

RUN apt install -y eyed3
RUN apt install -y lame
RUN apt install -y ffmpeg
RUN apt install -y normalize-audio
RUN apt install -y glyrc

#ENTRYPOINT ["abcde"]
