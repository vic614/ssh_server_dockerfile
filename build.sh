echo Generating ssh key ... &&
ssh-keygen -q -t rsa -f ~/.ssh/ssh_server_key -N '' &&
echo moving ssh key to current folder for the build ... &&
cp ~/.ssh/ssh_server_key.pub ./authorized_keys &&
echo starting the image build ... &&
docker build . -t ssh_container &&
echo Removing the key from current folder ... &&
rm ./authorized_keys &&
bash run.sh
