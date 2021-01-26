#!/bin/bash
template="file://vpc-cft.json"
stackName="mynetwork"
env="stage"
aws cloudformation delete-stack --stack-name $stackName
aws cloudformation wait stack-delete-complete --stack-name $stackName
aws cloudformation create-stack --stack-name $stackName --template-body $template
