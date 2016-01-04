#!/bin/sh

HOSTNAME="$1"
TRACEROUTE="traceroute"
SQLITE="sqlite3"
DBNAME="routermesh.db"

echo "digraph G {"
$SQLITE $DBNAME "SELECT * FROM routers;" | sed "s/|/ /g" | while read LINE; do
  FROM=`echo $LINE | awk '{print $1}'`
  TO=`echo $LINE | awk '{print $2}'`
  echo "\"$FROM\" -> \"$TO\";"
done
echo "}"



#digraph G {
#      main -> parse -> execute;
#      main -> init;
#      main -> cleanup;
#      execute -> make_string;
#      execute -> printf
#      init -> make_string;
#      main -> printf;
#      execute -> compare;
#}
