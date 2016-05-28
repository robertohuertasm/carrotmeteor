#!/bin/sh

mkdir /tmp/meteor
curl -SL https://install.meteor.com/ -o /tmp/meteor/inst 
sed -e "s/^RELEASE=.*/RELEASE=\"\$METEOR_VERSION\"/" /tmp/meteor/inst > /tmp/meteor/inst-canonical 
chmod +x /tmp/meteor/inst 
/tmp/meteor/inst 
rm -rf /tmp/meteor
npm install -g mupx
