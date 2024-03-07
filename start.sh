service postgresql restart
export PATH=$PATH:/usr/local/go/bin
cd /nyasite/nyasiteNodeBB
node nodebb start &
cd /nyasite/nyasiteBackend/
go run . &
cd /nyasite/nyasiteFrontend
npm run dev