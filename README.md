# pyspark-jupyter-cdh
Pyspark Jupyter Notebook on Cloudera CDH

This repository contains files to support the execution of Jupyter notebooks for Pyspark as a daemon

Assuming you have installed anaconda to your CDH cluster using the following guide(s)
http://blog.cloudera.com/blog/2016/02/making-python-on-apache-hadoop-easier-with-anaconda-and-cdh/
http://www.cloudera.com/documentation/enterprise/latest/topics/spark_ipython.html

To enable the Jupyter notebook as a service on a host:
copy the pyspark-jupyter-cdh file to /etc/init.d
chmod +x /etc/init.d
