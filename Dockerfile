FROM node:0.10
MAINTAINER Roberto Huertas <roberto.huertas@outlook.com>


# Locale issue
ENV LC_ALL="POSIX" \
    METEOR_VERSION=latest 
    
#COPY start.sh start.sh
#RUN sh start.sh && rm start.sh
COPY meteor.sh meteor.sh
RUN sh meteor.sh && npm install -g mupx && rm meteor.sh


# RUN mkdir /tmp/meteor \
#     && curl -SL https://install.meteor.com/ -o /tmp/meteor/inst \
#     && sed -e "s/^RELEASE=.*/RELEASE=\"\$METEOR_VERSION\"/" /tmp/meteor/inst > /tmp/meteor/inst-canonical \
#     && chmod +x /tmp/meteor/inst \
#     && /tmp/meteor/inst \
#     && rm -rf /tmp/meteor

#VOLUME /app
WORKDIR /app
EXPOSE 3000
CMD ["bash"]


