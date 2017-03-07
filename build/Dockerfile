FROM centos:centos7

RUN yum -y update && yum clean all
RUN yum -y install epel-release && yum clean all
RUN yum -y install python-pip && yum clean all
RUN yum -y install sudo which curl unzip git java-1.8.0-openjdk-devel
RUN yum -y install gcc-c++ patch readline readline-devel zlib zlib-devel
RUN yum -y install libyaml-devel libffi-devel openssl-devel make
RUN yum -y install bzip2 autoconf automake libtool bison iconv-devel sqlite-devel

RUN \curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
RUN export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

RUN nvm install node


#RUN yum -y install ruby
#RUN yum -y install gcc g++ make automake autoconf curl-devel openssl-devel zlib-devel httpd-devel apr-devel apr-util-devel sqlite-devel
#RUN yum -y install ruby-rdoc ruby-devel rubygems
#RUN /bin/bash -l -c "curl -sSL https://get.rvm.io | bash -s stable"
#RUN \curl -sSL https://get.rvm.io | bash

#RUN useradd -ms /bin/bash ruby
#USER ruby
#RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

#RUN /bin/bash -l -c "rvm install 2.1"
#RUN /bin/bash -l -c "rvm use 2.1 --default"


#RUN curl --silent --location https://rpm.nodesource.com/setup | bash -
#RUN yum -y install nodejs

ENTRYPOINT ["/bin/bash"]
