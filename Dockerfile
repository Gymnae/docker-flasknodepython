#
# alpine based micro image to get started with web app development
#

FROM gymnae/alpine-base:master
MAINTAINER Gunnar Falk <docker@grundstil.de>

# add packages
RUN apk-install \
	nodejs \
	nodejs-npm \
	py3-flask \
	git

EXPOSE 80 443 3000 22 3001 5000

RUN addgroup angpynode users 

VOLUME ["/home/angpynode"]

# update npm
CMD npm install npm@latest -g

CMD ["/init.sh"]

