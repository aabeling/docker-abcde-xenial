docker run -it \
  --device=/dev/sr1:/dev/cdrom \
  -v $HOME/.abcde.conf:/root/.abcde.conf \
  -v $HOME/Rip:/root/Music docker-abcde-xenial \
  /bin/bash
