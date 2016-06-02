Clustered Experiment
====================
A simple setup with two servers. 
MySql on db, mysql-client on web.
Also Apache is provisioned on web (just for fun).

Testing mysql
-------------
Try
 mysql -uroot -h192.168.33.21
to test the cluster

Testing Apache
--------------
Edit index.html under ./work

Provisioning
------------
Provisioning is a (messy) mix of ansible and shell - just to get an idea of how it works
