require "modules/hotkey" -- hotkey.lua
require "modules/windows" -- windows.lua
--- 一个闭包函数
function open(name)
    return function()
        hs.application.launchOrFocus(name)
        if name == 'Finder' then
            hs.appfinder.appFromName(name):activate()
        end
    end
end
--- 快速打开Finder，微信，Chrome等等
hs.hotkey.bind({"alt"}, "F", open("Finder"))
hs.hotkey.bind({"alt"}, "W", open("WeChat"))
hs.hotkey.bind({"alt"}, "C", open("Google Chrome"))
hs.hotkey.bind({"alt"}, "I", open("iTerm"))
hs.hotkey.bind({"alt"}, "S", open("Sublime Text"))
hs.hotkey.bind({"alt"}, "J", open("IntelliJ IDEA"))
hs.hotkey.bind({"alt"}, "G", open("GoLand"))
hs.hotkey.bind({"alt"}, "P", open("PhpStorm"))
