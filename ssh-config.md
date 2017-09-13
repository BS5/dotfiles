# SSH Config

An SSH config file can be very powerful and greatly assist you when using SSH.

## Setup

Create a config file in your SSH directory.

```
touch ~/.ssh/config
```

## Configuring

### Using different SSH keys for github and bitbucket

```
Host github
  Hostname github.com
  IdentityFile ~/.ssh/id_rsa
  User git

Host bitbucket
  Hostname bitbucket.com
  IdentityFile ~/.ssh/id_rsa_bitbucket
  User git
```


### Using multiple SSH key files

```
IdentityFile [path/to/id_rsa]
```


## Restarting the SSH daemon

### Linux

### Mac


## References

[SSH Config Documentation](https://linux.die.net/man/5/ssh_config)

[Simplify Your Life With an SSH Config File](http://nerderati.com/2011/03/17/simplify-your-life-with-an-ssh-config-file/)

