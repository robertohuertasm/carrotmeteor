FROM node:0.10
MAINTAINER Roberto Huertas <roberto.huertas@outlook.com>


# Locale issue
ENV LC_ALL="POSIX" \
    METEOR_VERSION=latest 
    
#COPY start.sh start.sh
#RUN sh start.sh && rm start.sh

#due to a bug when extracting a tarball we have to customize the default meteor script
#once this is solved we'll be back to the usual start script
COPY meteor.sh meteor.sh
RUN sh meteor.sh && npm install -g mupx && rm meteor.sh

#VOLUME /app
WORKDIR /app
EXPOSE 3000
CMD ["bash"]


