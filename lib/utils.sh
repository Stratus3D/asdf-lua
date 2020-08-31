download_source() {
    local install_type=$1
    local version=$2
    local download_path=$3
    local download_url=$(get_download_url $install_type $version)

    curl -Lo $download_path -C - $download_url
}


get_download_url() {
  local install_type=$1
  local version=$2

  local lua_type=$(get_lua_type $version)

  if [ "${lua_type}" = "Lua" ]; then
    echo "https://www.lua.org/ftp/lua-${version}.tar.gz"
  elif [ "${lua_type}" = "LuaJIT" ]; then
    echo "https://luajit.org/download/LuaJIT-${version}.tar.gz"
  fi
}

get_lua_type() {
    IFS='-' read -a version_info <<< "$1"
    if [ "${version_info[0]}" = "LuaJIT" ]; then
        echo "LuaJIT"
    else
        echo "Lua"
    fi
}
