# SVN

## Improve svn log

Install [svn-fancy-log](https://github.com/mnpk/svn-fancy-log)

```
wget https://raw.githubusercontent.com/mnpk/svn-fancy-log/master/svn-fancy-log -O /usr/local/bin/svn-fancy-log && chmod +x /usr/local/bin/svn-fancy-log
```

Add this function to your shell configuration

```
function slog() {
  re_numbers='^[0-9]+$'
  ARGS="$@"

  if [[ $1 =~ $re_numbers ]]; then
    ARGS="-l $1"
  fi

  svn log $ARGS | svn-fancy-log
}
```

Use examples

```
$ slog 10
$ slog -l 10
```

