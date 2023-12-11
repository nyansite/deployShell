#deploy frontend
git clone https://github.com/nyansite/cute_site.git nyasiteBackend
#deploy backend
git clone https://github.com/nyansite/cirno_web.git nyasiteFrontend
cd /nyasite/nyasiteFrontend
npm install
cd /nyasite
#deploy nodebb
git clone -b v3.x https://github.com/NodeBB/NodeBB.git nyasiteNodeBB
cd nyasiteNodeBB
node nodebb setup