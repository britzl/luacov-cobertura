package = "luacov-cobertura"
version = "1.1-0"
source = {
  url = "git://github.com/britzl/luacov-cobertura",
  tag = "1.1.0",
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
