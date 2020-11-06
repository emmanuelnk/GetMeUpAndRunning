#!/bin/bash

package_name="aws"
script_name="awscli"

awscli.ub() {
    echo -e "\n\ninstalling latest aws cli...\n..."
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o $HOME/Downloads/awscliv2.zip
    mkdir -p $HOME/Downloads/awscliv2 && unzip $HOME/Downloads/awscliv2.zip -d $HOME/Downloads/awscliv2
    sudo $HOME/Downloads/awscliv2/aws/install
}