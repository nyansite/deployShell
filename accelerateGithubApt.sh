echo "20.205.243.166 github.com" >> /etc/hosts
echo "104.244.46.71 github.global.ssl.fastly.net" >> /etc/hosts
echo "185.199.109.153 assets-cdn.github.com" >> /etc/hosts
echo "185.199.111.153 assets-cdn.github.com" >> /etc/hosts
echo "185.199.108.153 assets-cdn.github.com" >> /etc/hosts
echo "185.199.110.153 assets-cdn.github.com" >> /etc/hosts
echo > /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/ubuntu/ jammy main restricted universe multiverse' >> /etc/apt/sources.list
echo 'deb-src http://mirrors.aliyun.com/ubuntu/ jammy main restricted universe multiverse' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/ubuntu/ jammy-security main restricted universe multiverse' >> /etc/apt/sources.list
echo 'deb-src http://mirrors.aliyun.com/ubuntu/ jammy-security main restricted universe multiverse' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/ubuntu/ jammy-updates main restricted universe multiverse'  >> /etc/apt/sources.list
echo 'deb-src http://mirrors.aliyun.com/ubuntu/ jammy-updates main restricted universe multiverse' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/ubuntu/ jammy-proposed main restricted universe multiverse' >> /etc/apt/sources.list
echo 'deb-src http://mirrors.aliyun.com/ubuntu/ jammy-proposed main restricted universe multiverse' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/ubuntu/ jammy-backports main restricted universe multiverse' >> /etc/apt/sources.list
echo 'deb-src http://mirrors.aliyun.com/ubuntu/ jammy-backports main restricted universe multiverse' >> /etc/apt/sources.list
apt-get update