FROM bioconductor/bioconductor_docker:devel

RUN apt-get update -qq && apt-get -y --no-install-recommends install
RUN R -e 'BiocManager::install("plyranges")'
