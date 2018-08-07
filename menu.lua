local title = "My Modzz"
local subtitle = "by tinny"
local win_copy = "You are epic."
local lose_copy = "You suck."

local function options()
    return [[
        <table>
        <tr><td><input type='button' value='New Map' onclick='restart' />
        <tr><td><input type='button' value='Quit' onclick='quit' />
    ]]
end

local function start()
    g2.state = "menu"

    g2.html = [[
        <table>
            <tr><td><h1>]] .. title .. [[</h1>
            <tr><td><p>]] .. subtitle .. [[</p>
            <tr><td><input type='button' value='Start' onclick='newmap' />
            <tr><td><p></p>
        </table>
    ]]
end

local function paused()
    g2.html = [[
        <table>
        <tr><td><input type='button' value='Resume' onclick='resume' />
    ]] .. options()
end

local function win()
    g2.html = [[
        <table>
        <tr><td><h1>]] .. win_copy .. [[</h1>
    ]] .. options()
end

local function lose()
    g2.html = [[
        <table>
        <tr><td><h1>]] .. lose_copy .. [[</h1>
    ]] .. options()
end


MENU = {
    start = start,
    options = options,
    paused = paused,
    win = win,
    lose = lose
}
