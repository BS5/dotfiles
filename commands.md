# Helpful Commands

These are helpful commands that I want to keep around and remember.

## Disk Space

List the directories and files in the current directory and sort by 
size. Add r to gsort to reverse the order. 

```
$ du -sh * | gsort -h
```

Display free disk space

```
$ df / -k # of the root volume
$ df -k # of all volumes
```

## Files

Find and delete all files in the current directory with the file 
extension .orig and delete them.

```
$ find ./ -type f -name "*.orig" -delete
```

Compressing a directory

```
$ tar -zcvf archive-name.tar.gz directory-name
```

Uncompressing a directory

```
$ tar -zxvf archive-name.tar.gz -C /destination
```


