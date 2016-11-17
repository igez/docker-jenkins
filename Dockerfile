FROM igez/jenkins:devel

MAINTAINER Robby Prima Suherlan <robbyprima@gmail.com>

EXPOSE 8080
EXPOSE 50000

ADD bootstrap.sh bootstrap.sh

RUN chmod +x bootstrap.sh
RUN chown -R jenkins:jenkins /var/lib/jenkins

ENTRYPOINT ["/bootstrap.sh"]
