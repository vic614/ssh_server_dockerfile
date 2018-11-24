# Ubuntu SSH Server Dockerfile
Containerized SSH server, non root user, no password promt
## Getting Started
Pull this repostory, run..
```
$ bash build.sh
```
This build script will 
*Generat a key pair under `<em>/home/user/.ssh/</em>` with name ssh_server_key and ssh_server_key.pub.
*Copy over the ssh_server_key.pub to build folder
*Start the image build
This build script was written for ubuntu 16.04
## Author
Victor
