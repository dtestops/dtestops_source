# Jekyll and other gems needed to generate dtestops.com
# To build use:
# docker build -t dtestops/website .
# To run use:
# docker run --name jekyll --rm -p 4000:4000 -v ../dtestops_source:/src/ -e jekyll_command=serve -it dtestops/website
# docker run --name jekyll --rm -p 4000:4000 -v ~/src/dtestops_source:/src/ -e jekyll_command=build -it dtestops/website 
FROM jekyll/jekyll
MAINTAINER Derek Downey <dtestops@gmail.com>
LABEL description="Container to build dtestops.com"

ENV jekyll_command build
RUN gem install redcarpet jemoji jekyll-redirect-from jekyll-paginate 
RUN mkdir /src
WORKDIR /src
CMD ["/bin/bash", "-c", "jekyll ${jekyll_command}"]

