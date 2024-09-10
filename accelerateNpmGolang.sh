npm config set registry http://registry.npmmirror.com
export npm_config_sharp_binary_host="https://npmmirror.com/mirrors/sharp"
export npm_config_sharp_libvips_binary_host="https://npmmirror.com/mirrors/sharp-libvips"
export PATH=$PATH:/usr/local/go/bin
go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.cn