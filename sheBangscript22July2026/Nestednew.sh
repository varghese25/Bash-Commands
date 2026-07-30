fileName="Test.txt"

if [ -d logs ]; then
  echo "Directory logs Exits"

  if [ -f syslog ]; then
    echo "syslog exists"

    rm -f syslog
    cp -f /var/log/syslog syslog

    echo "syslog copied"
  else
    cp -f /var/log/syslog syslog
    echo "copied"
  fi
fi


