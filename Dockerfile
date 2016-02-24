FROM ubuntu:15.10
RUN cd; apt update; apt install -y rake git  ruby ruby-dev wget make libtool-bin autoconf gcc g++ libzmq3-dev gnuplot
RUN git clone git://github.com/masa16/narray-devel; cd narray-devel; gem build narray-devel.gemspec; gem install narray-devel-0.9.0.1.gem; gem install rbczmq iruby pry; cd

# numpy, scipy
#RUN apt install -y python python-dev python-numpy python-scipy python-matplotlib
# jupyter, sklearn
#RUN wget https://bootstrap.pypa.io/get-pip.py; python get-pip.py; pip install -U scikit-learn jupyter

#EXPOSE 8888
#CMD iruby notebook --no-browser --ip='*' --port 8888
