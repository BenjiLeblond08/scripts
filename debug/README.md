# debug_log.sh Manual

## Description

`debug_log.sh` is a shell script that execute another script and log all its outputs in a file.
This is usefull for debug.

## Usage

To use `debug_log.sh`, just run it and give the script to execute and log as argument.

```
$ ./debug_log.sh /root/any_script.sh
```

## Test

A test script `test.sh` is given to test `debug_log.sh`. 
To test it, run:
```
$ ./debug_log.sh test.sh
```

## Log File location

The log file is located in your home directory.
The name of the log file is `<script_name.sh>.log`

## Output example

```
┌[benjamin@debian:~/Documents/scripts/debug] [16:11:49] [master *]
└> ./debug_log.sh test.sh
Debug of script test.sh
Start execution time: Wed Oct 24 16:11:49 DST 2018


## Creating directory in home
$ cd /home/benjamin
$ mkdir test_debug

## Find test
$ find /etc/ssh -name '*_config'
/etc/ssh/ssh_config
/etc/ssh/sshd_config

##copy test
$ cp /etc/ssh/sshd_config /home/benjamin/test_debug

## Stop non-existing service
$ systemctl stop not_a_joke.service
System has not been booted with systemd as init system (PID 1). Can't operate.

## Removing file
$ rm /home/benjamin/test_debug/sshd_config

## Re-Creating already existing directory in home
$ cd /home/benjamin
$ mkdir test_debug
mkdir: cannot create directory ‘test_debug’: File exists

## Removing test Directory
$ rmdir /home/benjamin/test_debug

End execution time: Wed Oct 24 16:11:49 DST 2018

┌[benjamin@debian:~/Documents/scripts/debug] [16:11:49] [master *]
└> cat ~/test.sh.log
Debug of script test.sh
Start execution time: Wed Oct 24 16:11:49 DST 2018


## Creating directory in home
$ cd /home/benjamin
$ mkdir test_debug

## Find test
$ find /etc/ssh -name '*_config'
/etc/ssh/ssh_config
/etc/ssh/sshd_config

##copy test
$ cp /etc/ssh/sshd_config /home/benjamin/test_debug

## Stop non-existing service
$ systemctl stop not_a_joke.service
System has not been booted with systemd as init system (PID 1). Can't operate.

## Removing file
$ rm /home/benjamin/test_debug/sshd_config

## Re-Creating already existing directory in home
$ cd /home/benjamin
$ mkdir test_debug
mkdir: cannot create directory ‘test_debug’: File exists

## Removing test Directory
$ rmdir /home/benjamin/test_debug

End execution time: Wed Oct 24 16:11:49 DST 2018

┌[benjamin@debian:~/Documents/scripts/debug] [16:12:32] [master *]
└>

```