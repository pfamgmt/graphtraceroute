Dependencies
------------
Before using please install sqlite3 and graphviz.

	apt-get install sqlite3 graphviz


Filling the database with routing-info
--------------------------------------

	./collect.sh www.google.de

Generating the graphics
-----------------------

	./makeOutput.sh > test.ps
