FROM gcr.io/tensorflow/tensorflow:latest-gpu
MAINTAINER Vincent Vanhoucke <vanhoucke@google.com>
RUN pip install scikit-learn

RUN pip install numpy scipy scikit-learn nltk pandas beautifulsoup4

RUN pip install seaborn

#ENV LD_LIBRARY_PATH /usr/lib:/usr/local/nvidia/lib64:/opt/cuda/lib64
#ENV CUDA_HOME /opt/cuda
#RUN rm -rf /notebooks/*
#ADD *.ipynb /notebooks/
WORKDIR /notebooks

#RUN ln -s libcudnn.so.4 /usr/lib/x86_64-linux-gnu/libcudnn.so
RUN pip install gensim 
RUN pip install Cython

CMD ["/run_jupyter.sh", "--allow-root"]
