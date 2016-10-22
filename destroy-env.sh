#!/bin/bash

aws autoscaling detach-load-balancers --auto-scaling-group-name webserverdemo --load-balancer-names itmo-444-mk

aws autoscaling update-auto-scaling-group --auto-scaling-group-name webserverdemo --min-size 0 --desired-capacity 0

aws autoscaling delete-auto-scaling-group --auto-scaling-group-name webserverdemo --force-delete

aws autoscaling delete-launch-configuration --launch-configuration-name webserver

#!aws elb deregister-instances-from-load-balancer --load-balancer-name itmo-444-mk --instances $ID

aws elb delete-load-balancer-listeners --load-balancer-name itmo-444-mk --load-balancer-ports 80

aws elb delete-load-balancer --load-balancer-name itmo-444-mk

#!aws ec2 terminate-instances --instance-ids $ID
