FROM debian:sid
RUN cd; apt update; apt upgrade -y; apt install -y rake git python python-dev python-numpy python-scipy python-matplotlib ruby ruby-dev wget make libtool-bin autoconf gcc g++ libzmq3-dev gnuplot; wget https://bootstrap.pypa.io/get-pip.py; python get-pip.py; pip install -U scikit-learn jupyter
RUN git clone git://github.com/masa16/narray-devel; cd narray-devel; gem build narray-devel.gemspec; gem install narray-devel-0.9.0.1.gem

EXPOSE 8888
CMD iruby notebook --no-browser --ip='*' --port 8888
