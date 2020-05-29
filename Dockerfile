FROM bioconductor/bioconductor_docker:devel

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
    libcurl4-openssl-dev \ 
    libxml2-dev \
    && R -e 'BiocManager::install("plyranges")' \
    && R -e 'BiocManager::install("BSgenome")' \
    && rm -rf /tmp/downloaded_packages/
