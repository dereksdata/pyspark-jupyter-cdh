# Start Jupyter notebook with pyspark
# location: /usr/local/sbin
# author: dereksdata
# version 1.1

if [ -z "$1" ]; then
    export DAEMON_PORT=8880
else
    DAEMON_PORT="$1"
fi
ANACONDA=$(command -v anaconda)
if [[ -z $ANACONDA ]]; then
    ANACONDA_PATH=/opt/cloudera/parcels/Anaconda/bin
else
    ANACONDA_PATH=$(dirname "${ANACONDA}")
fi
export PATH=$ANACONDA_PATH:$PATH
export PYSPARK_DRIVER_PYTHON=$ANACONDA_PATH/jupyter
export PYSPARK_DRIVER_PYTHON_OPTS="notebook --NotebookApp.open_browser=False --NotebookApp.ip='*' --NotebookApp.port=$DAEMON_PORT"
if [ ! -d "$ANACONDA_PATH" ]; then
    echo "Unable to find anaconda on the system path or /opt/cloudera/parcels/Anaconda/bin" 
    echo "Please ensure anaconda has been deployed to all hosts in the cluster" 
    exit 1
fi
pyspark
