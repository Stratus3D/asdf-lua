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

get_lua_version() {
    IFS='-' read -a version_info <<< "$1"

    if [ "${version_info[0]}" = "LuaJIT" ]; then
        # TODO LuaJIT
        echo "${version_info[1]}-${version_info[2]}"
    else
        # Lua
        if [ "${#version_info[@]}" -eq 1 ]; then
            echo "${version_info[0]}"
        else
            echo "${version_info[0]}-${version_info[1]}"
        fi
    fi
}

get_download_file_path() {
    local install_type=$1
    local version=$2
    local tmp_download_dir=$3

    local lua_type=$(get_lua_type $version)
    local lua_version=$(get_lua_version $version)

    if [ "${lua_type}" = "Lua" ]; then
        local pkg_name="lua-${lua_version}.tar.gz"
    fi

    echo "$tmp_download_dir/$pkg_name"
}

get_latest_luarocks_version() {
    curl -sL "https://api.github.com/repos/luarocks/luarocks/tags?per_page=1&page=1" |
        grep '"name"' | cut -d\" -f4 | cut -c2-
}
