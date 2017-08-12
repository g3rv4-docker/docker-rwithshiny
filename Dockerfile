FROM g3rv4/rstack
MAINTAINER Gervasio Marchand <gmc@gmc.uy>
ENV build_date 2017-08-12

RUN R -e "install.packages('shiny', repos = \"https://cran.rstudio.com/\")" && \
    wget https://download3.rstudio.org/ubuntu-12.04/x86_64/shiny-server-1.5.3.838-amd64.deb && \
    gdebi -n shiny-server-1.5.3.838-amd64.deb

EXPOSE 3838
VOLUME ["/srv/shiny-server"]
CMD ["/usr/bin/shiny-server"]
