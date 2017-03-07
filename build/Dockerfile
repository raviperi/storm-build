FROM centos:centos7

RUN yum -y update && yum clean all
RUN yum -y install epel-release && yum clean all
RUN yum -y install python-pip && yum clean all

# Install needed libraries
RUN yum -y install sudo which curl unzip git 
RUN yum -y install gcc-c++ patch readline readline-devel zlib zlib-devel
RUN yum -y install libyaml-devel libffi-devel openssl-devel make
RUN yum -y install bzip2 autoconf automake libtool bison iconv-devel sqlite-devel

ADD install /tmp/install

RUN chmod -R 777 /tmp/install

# Install Java8 JDK, maven
RUN /tmp/install/setup_jdk.sh

# Install Nodejs via NVM
RUN /tmp/install/setup_node.sh

# Install RVM and Ruby
RUN /tmp/install/setup_ruby.sh

# Clone Storm and build
RUN /tmp/install/setup_storm.sh

ENTRYPOINT ["/bin/bash"]
