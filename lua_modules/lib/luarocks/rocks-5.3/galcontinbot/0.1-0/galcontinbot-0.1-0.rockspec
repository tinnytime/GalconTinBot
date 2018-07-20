package = "GalconTinBot"
version = "0.1-0"
source = {
   url = "git@github.com:tinnytime/GalconTinBot.git",
   tag = "0.1"
}
description = {
   summary = "A Galcon 2 bot",
   license = "MIT"
}
dependencies = {
  "galconmodslib ~= 0"
}
build = {
   type = "builtin",
   modules = {
    ["tinbot"] = "src/init.lua",
    ["tinbot.amodule"] = "src/amodule.lua"
  }
}
