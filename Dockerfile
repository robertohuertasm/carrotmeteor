FROM node:0.10.46-slim
MAINTAINER Valudio <development@valudio.com>

# Locale issue
ENV LC_ALL="POSIX" \
    METEOR_VERSION=latest 
    
# due to a bug when extracting a tarball we have to customize the default meteor script
# once this is solved we'll be back to the usual start script
# COPY start.sh start.sh
# RUN sh start.sh && rm start.sh
COPY meteor.sh meteor.sh
RUN sh meteor.sh && npm install -g mupx && apt-get update && apt-get install git && rm meteor.sh

# VOLUME /app
WORKDIR /app
EXPOSE 3000
CMD ["bash"]


