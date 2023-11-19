#need to set the password of root
su postgres
service postgresql restart
psql -a -f /nyasite/deployDB.sql
exit