# How to reproduce the problem

```
$ vagrant up
$ vagrant ssh

vagrant@vagrant-ubuntu-trusty-64:~$ sudo /vagrant/run.rb
Reading package lists...
Building dependency tree...
Reading state information...
...
...
...
2015-07-06 09:17:44 0 [Note] mysqld (mysqld 5.6.25) starting as process 6120 ...
......
* MySQL Community Server 5.6.25 is started
(Hang up here)
```

If you will try again, remove mysql-community-server package before retrying.

```
vagrant@vagrant-ubuntu-trusty-64:~$ sudo apt-get remove mysql-community-server
vagrant@vagrant-ubuntu-trusty-64:~$ sudo /vagrant/run.rb
```
