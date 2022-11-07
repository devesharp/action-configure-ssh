mkdir -p ~/.ssh/
echo "$SSH_KEY" > ~/.ssh/server.key
chmod 600 ~/.ssh/server.key
cat >>~/.ssh/config <<END
    Host server
    HostName $SSH_HOST
    User $SSH_USER
    IdentityFile ~/.ssh/server.key
    StrictHostKeyChecking no
END