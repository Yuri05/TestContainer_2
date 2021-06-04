FROM ghcr.io/yuri05/base-r3.6.3-centos7:latest

ENTRYPOINT ["sh"]

# Install R package dependencies
RUN R --no-save -e "library(tictoc); tic(); toc()"
