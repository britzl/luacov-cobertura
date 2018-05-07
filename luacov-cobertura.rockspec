package = "luacov-cobertura"
version = "2.0-0"
source = {
  url = "https://github.com/britzl/luacov-cobertura/archive/master.zip",
  dir = "luacov-cobertura-master"
}
description = {
  summary = "LuaCov to Cobertura report generator",
  license = "MIT "
}
dependencies = {
  "lua >= 5.1",
  "luacov >= 0.6-1"
}
build = {
  type = "builtin",
  modules = {
    ["luacov.cobertura.luatoxml"] = "luacov/cobertura/luatoxml.lua",
    ["luacov.reporter.cobertura"] = "luacov/reporter/cobertura.lua"
  },
  install = {
      bin = {
        ['luacov-cobertura'] = 'bin/luacov-cobertura'
      }
    }
}
