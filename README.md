# pyspark-jupyter-cdh
Pyspark Jupyter Notebook Daemon on Cloudera CDH

This repository contains files to support the execution of Jupyter notebooks for Pyspark as a daemon on a Cloudera CDH Cluster using the anaconda parcels.

Assuming you have installed anaconda to your CDH cluster using the following guide(s)
http://blog.cloudera.com/blog/2016/02/making-python-on-apache-hadoop-easier-with-anaconda-and-cdh/
http://www.cloudera.com/documentation/enterprise/latest/topics/spark_ipython.html

To enable the Jupyter notebook as a service on a host, as root:

copy the ``pyspark-jupyter-cdh`` file to ``/etc/init.d``

then ``chmod +x /etc/init.d/pyspark-jupyter-cdh``

If you have installed the anaconda using parcel at defaults the service should operate without changes.
Otherwise edit the ``/etc/init.d/pyspark-jupyter-cdh`` file and change the values below as you desire

``export DAEMON_USER=hdfs``

``export DAEMON_NAME=pyspark-jupyter-cdh``

``export DAEMON_PATH=/var/jupyter``

``export DAEMON_PORT=8880``


Start the service
``service start pyspark-jupyter-cdh``

Auto start the service
``chkconfig pyspark-jupyter-cdh on``

Note: Depending upon existing lib installations you may need to execute the following commands:
RHEL/CentOS: ``sudo yum install libXext libSM libXrender``
Ubuntu/Debian: ``sudo apt-get install libXext libSM libXrender``
