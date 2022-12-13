#!/usr/bin/env bash
HOST=put_your_hostname
REMOTE_PORT=port_to_open_in_remote
LOCAL_PORT=port_to_forward_to_remote
USER=login_user_name
SSH_KEY=login_private_key
SSH_PORT=remote_ssh_port
ssh -NT -o ServerAliveInterval=60 -o ExitOnForwardFailure=yes -R $REMOTE_PORT:0.0.0.0:$LOCAL_PORT $USER@$HOST -p$SSH_PORT -i $SSH_KEY
