#run on user postgres
service postgresql restart
psql -a -f /nyasite/deployDB.sql
exit