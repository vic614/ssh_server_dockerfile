
{
	docker stop ssh_server &&
	echo stopped old container &&
	sleep 2
	echo starting new container
	docker run --hostname=ssh-server --name=ssh_server -d -p 22:22 --rm ssh_container
} || {
	echo starting new container
	docker run --hostname=ssh-server --name=ssh_server -d -p 22:22 --rm ssh_container
}
