#!/bin/bash
# 180604 7392 Reza Farrahi (imriss@yahoo.c0m)
#
# How to call: */1 * * * * /opt/aws-scripts-mon/mon-put-instance-data.pl ... --cool-service-stats ...

#
apt install unzip libwww-perl libdatetime-perl jq -y; cd ~; curl -OL http://aws-cloudwatch.s3.amazonaws.com/downloads/CloudWatchMonitoringScripts-1.2.1.zip; unzip CloudWatchMonitoringScripts-1.2.1.zip; mv aws-scripts-mon /opt/; 

# 
cd /opt/aws-scripts-mon/; mv mon-put-instance-data.pl mon-put-instance-data.pl_bckup; curl -O https://raw.githubusercontent.com/imriss/aws_factory/master/mon-put-instance-data.pl; 

# Do not forget to change "cool service" and "awesome container" names to yours.