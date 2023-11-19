#deploy frontend
git clone git@github.com:nyansite/cirno_web.git nyasiteBackend
#deploy backend
git clone git@github.com:nyansite/cirno_web.git nyasiteFrontend
#deploy nodebb
git clone git@github.com:NodeBB/NodeBB.git nyasiteNodeBB
cd nyasiteNodeBB
node nodebb setup
