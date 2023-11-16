#克隆后端
git clone https://github.com/nyansite/cute_site.git nyasiteBackend
#克隆前端
git clone https://github.com/nyansite/cirno_web.git nyasiteFrontend
#部署nodeBB站
git clone https://github.com/NodeBB/NodeBB.git nyasiteNodeBB
cd nyasiteNodeBB
node nodebb setup
npm install nodebb-plugin-session-sharing
