#################################################################
# Dockerfile
#
# Version:          1.0
# Software:         rna-seqc
# Software Version: 1.1.8
# Description:      RNA-seq QC tools
# Code:             https://github.com/cgwyx/rna-seqc_conda_docker
# Base Image:       cgwyx/conda_debian_git
# Build Cmd:        sudo docker build -t cgwyx/rna-seqc_conda_docker .
# Pull Cmd:         sudo docker pull cgwyx/rna-seqc_conda_docker
# Run Cmd:          sudo docker run -it --rm -v /home:/home cgwyx/rna-seqc_conda_docker
# File Author / Maintainer: cheng gong <512543469@qq.com>
#################################################################

FROM continuumio/miniconda

RUN conda update --all -y&&\
         conda config --add channels r &&\
         conda config --add channels bioconda &&\
         conda config --set show_channel_urls yes &&\
         conda install rna-seqc=1.1.8 -y

CMD ["/bin/bash"]


