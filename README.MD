# SSHer
### A simple tool to manage multi ssh server
***
I haz too many ssh server.

## Tutorial

Edit your `~/.ssher/ssh-servers` file in the following format:
```
  server_name:ssh_command
  staging:ssh -i key.pem superduper.com
```

Now simply type `ssher` and you'll see a list of all your servers. Simply type
the number to connect.
