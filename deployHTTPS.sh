#deploy frontend
git clone https://github.com/nyansite/nyasite-backend.git nyasiteBackend
#deploy backend
git clone https://github.com/nyansite/nyasite-frontend.git nyasiteFrontend
cd /nyasite/nyasiteFrontend
npm install
cd /nyasite
#deploy nodebb
git clone -b v3.x  https://github.com/NodeBB/NodeBB.git nyasiteNodeBB
cd nyasiteNodeBB
node nodebb setup