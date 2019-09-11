# Helpful Commands

These are helpful commands that I want to keep around and remember.

## Checksums

Generate SHA 256 checksum (used by homebrew)

```
shasum -a 256 /path/to/file
```

Generate SHA 1 checksum

```
shasum -a 1 /path/to/file
```


Generate MD5 checksum

```
md5 /path/to/file
```


## Disk Space

List the directories and files in the current directory and sort by 
size. Add r to gsort to reverse the order. 

```
$ du -sh * | gsort -h
```

Display free disk space

```
$ df -H / # of the root volume
$ df -H # of all volumes
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


## AWS 

List files on AWS S3

```
$ aws s3 ls s3://bucket
```

Copy database backup

```
$ aws s3 cp s3://bucket/filename ./
```

Get today's backup files

```
$ aws s3 cp s3://bucket ./ --recursive --exclude "*" --include "FILENAME_PREFIX*"
```

Restore local databases

```
$ pg_restore --clean --dbname=database_name --no-owner --jobs=2 -v PATH_TO_PGDUMP
```

## SSH Key


Change passphrase

Create a new key

```
ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa_[identification] -C "user@host"
```

```
ssh-keygen -t rsa
```

```
ssh-keygen -p -f ~/.ssh/id_dsa
```

