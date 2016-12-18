infinit-user --import -i /etc/infinit/user.json
infinit-network --fetch --as $USER
infinit-volume --fetch --as $USER

if [ "$MODE" = "server" ]; then
  if infinit-storage --list | grep local; then
    echo "Using local storage"
  else
    echo "Creating infinit storage"
    infinit-storage --create --filesystem --name local
  fi
  NETWORK_OPTIONS="--storage local"
fi

if infinit-network --list --as $USER | grep $NETWORK | grep "not linked"; then
  infinit-network --link --as $USER --name $NETWORK $NETWORK_OPTIONS
fi

infinit-volume --mount --as $USER --name $VOLUME $VOLUME_OPTIONS --port $PORT --publish --mountpoint /infinit_mount
