killPython()
{
    pid=`ps -ef | grep "python_order/orderServer.py" | grep -v grep | awk '{print $2}'`
    echo "python server Id list :$pid"
    if [ "$pid" = "" ]
    then
      echo "no python server pid alive"
    else
      kill -9 $pid
    fi
}

killPython
cd $WORKSPACE
python3 orderServer.py &
sleep 2