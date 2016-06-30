# pyspark-jupyter-cdh
Pyspark Jupyter Notebook Daemon on Cloudera CDH

This repository contains files to support the execution of Jupyter notebooks for Pyspark as a daemon

Assuming you have installed anaconda to your CDH cluster using the following guide(s)
http://blog.cloudera.com/blog/2016/02/making-python-on-apache-hadoop-easier-with-anaconda-and-cdh/
http://www.cloudera.com/documentation/enterprise/latest/topics/spark_ipython.html

To enable the Jupyter notebook as a service on a host:
copy the pyspark-jupyter-cdh file to /etc/init.d
chmod +x /etc/init.d

If you have installed the anaconda using parcel at defaults the service should operate without changes.
Otherwise edit the /etc/init.d/pyspark-jupyter-cdh file and change the values below as you desire
  export DAEMON_USER=hdfs
  export DAEMON_NAME=pyspark-jupyter-cdh
  export DAEMON_PATH=/var/jupyter
  export DAEMON_PORT=8880
service start pyspark-jupyter-cdh 
