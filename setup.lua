local function create_map(planets)
    for i, p in pairs(planets) do
      g2.new_planet(p['owner'], p['x'], p['y'], p['prod'], p['ships'])
    end

    g2.planets_settle()
end

local function create_players()
    local neutral = g2.new_user("neutral", SETTINGS.color.neutral)
    neutral.user_neutral = 1
    neutral.ships_production_enabled = 0

    local player = g2.new_user("player", SETTINGS.color.player)
    g2.player = player

    local bot = g2.new_user("bot", SETTINGS.color.bot)

    return {
        neutral = neutral,
        player = player,
        bot = bot
    }
end

local function new()
    local users = create_players()
    local planets = UTILS.shallowcopy(SETTINGS.planets)

    for k, planet in pairs(planets) do
        planets[k] = UTILS.shallowcopy(planet)
        planets[k]["owner"] = users[planet["owner"]]
    end

    -- generate map
    create_map(planets)
end

SETUP = {
    new = new
}
