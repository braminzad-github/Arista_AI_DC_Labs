# Arista_SpineLeaf_Lab_Docker
TOPOLOGY: 2x Spine 4x Leaf DC Lab Setup Using Docker
In this article, you will be able to setup a simple DC spine/leaf DC network, using Arista virtual image, running on Docker. 
Docker can run in any environment, but in this lab we use x86 hosts. 

This is a teeeeeest
# Lab Setup 
## Recommended resource
- x86 Arch
- 2 CPU Cores
- 32 GB Ram
- Ubuntu 24.04

## Install Docker
Install Docker and Containerlab. Containerlab’s install page (containerlab.dev/install) has a one-line script that sets up both.

I used this and it worked: 
curl -sL https://containerlab.dev/setup | sudo -E bash -s "all"
bash -c "$(curl -sL https://get.containerlab.dev)"

## Download Arista lab image
Download the x86 cEOS-lab image from Arista’s Software Download page (a free account is required) and copy it over with scp/winscp/cyberduck to the Ubuntu. 

I downloaded cEOS-lab-4.36.2F.tar.xz

## Import the image to Docker
NOTE: On Arista Software Download page, threre is a readme file, read it! It has instructions and this is what I did to setup my lab? 

Run unxz on the file, then docker image import cEOS64-lab-<version>.tar ceos:<version>.
>> import the downloaded cEOS-lab.tar.xz image
docker import cEOS-lab.tar.xz ceosimage:4.36.2F
>> docker images (to confirm)
