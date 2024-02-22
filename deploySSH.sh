#deploy frontend
git clone git@github.com:nyansite/nyasite-backend.git nyasiteBackend
#deploy backend
git clone git@github.com:nyansite/nyasite-frontend.git nyasiteFrontend
#deploy nodebb
git clone -b v3.x git@github.com:NodeBB/NodeBB.git nyasiteNodeBB
cd nyasiteNodeBB
node nodebb setup
