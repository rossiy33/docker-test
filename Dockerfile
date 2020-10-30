FROM debian:latest

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV PATH /opt/miniconda3/bin:$PATH

WORKDIR /root
RUN apt-get -qq update && \
	apt-get -qq -y install curl bzip2 && \
	curl -sSL https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -o ~/miniconda.sh && \
	bash ~/miniconda.sh -bfp /opt/miniconda3 && \
	rm ~/miniconda.sh && \
	conda update conda && \
	conda clean --all --yes && \
	apt-get -qq -y remove curl bzip2 && \
	apt-get -qq -y autoremove && \
	apt-get -qq autoclean && \
	rm -rf /var/lib/apt/lists/* /var/log/dpkg.log

RUN echo ". /opt/miniconda3/etc/profile.d/conda.sh" >> ~/.profile && \
    echo "conda activate" >> ~/.profile

CMD ["/bin/bash", "-l"]
