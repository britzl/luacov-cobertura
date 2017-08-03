package = "LuaCov-Cobertura"
version = "scm-1"
source = {
   url = "git@github.com:krux/luacov-cobertura.git",
}
description = {
   summary = "LuaCov to Cobertura report generator",
   description = [[
    This is a fork of https://github.com/britzl/luacov-cobertura
    to generate and publish rockspec to luarocks
   ]]
   maintainer = "siddharthsharma@salesforce.com",
   homepage = "https://github.com/krux/luacov-cobertura",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "luacov",
}
build = {
  type = "builtin",
  modules = {
    ["luacov.reporter.cobertura"] = "src/luacov/reporter/cobertura.lua",
    ["luacov.cobertura.luatoxml"] = "src/luacov/cobertura/luatoxml.lua",
  },
  install = {
    bin = {
      ["luacov-cobertura"] = "src/bin/luacov-cobertura",
    }
  }
}
