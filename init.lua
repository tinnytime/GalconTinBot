-- GALCON 2 MODS STARTER KIT
-- by tinny

require "utils"
require "settings"
require "setup"
require "main"
require "menu"

function init()
    MENU.start()
end

-- no need to touch this
function loop(t)
    local win = nil;
    local planets = g2.search("planet -neutral")
    for _i,p in ipairs(planets) do
        local user = p:owner()
        if (win == nil) then win = user end
        if (win ~= user) then return end
    end

    if (win ~= nil) then
        if (win.has_player == 1) then
            MENU.win()
            g2.state = "pause"
            return
        else
            MENU.lose()
            g2.state = "pause"
            return
        end
    end

end

-- no need to touch this
function event(e)
    if e["type"] == "onclick" and e["value"] then
        if e["value"] == "newmap" or e["value"] == "restart" then
            g2.game_reset();
            SETUP.new();
            g2.state = "play"
        elseif (e["value"] == "resume") then
            g2.state = "play"
        elseif (e["value"] == "quit") then
            g2.state = "quit"
        end
    elseif e["type"] == "pause" then
        MENU.paused();
        g2.state = "pause"
    end
end


