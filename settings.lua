local colors_list = {
    0x555555,
    0x0000ff,0xff0000,
    0xffff00,0x00ffff,
    0xffffff,0xffbb00,
    0x99ff99,0xff9999,
    0xbb00ff,0xff88ff,
    0x9999ff,0x00ff00,
}

local color = {
  neutral = 0x999999,
  player = colors_list[4],
  bot = colors_list[5]
}

local planets = {
   {owner = "player", x = 0, y = 0, prod = 0, ships = 1},
   {owner = "neutral", x = 0, y = 100, prod = 0, ships = 100},
   {owner = "bot", x = 0, y = 200, prod = 0, ships = 20},
}

SETTINGS = {
  color = color,
  planets =  planets
}