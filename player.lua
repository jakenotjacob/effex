local PlayerKlass = {}
PlayerKlass.__index = PlayerKlass

local Player = {}
Player.__index= Player

function Player.new(p)
  local p = p or {}
  return setmetatable(p, { __index = PlayerKlass })
end

function Player:id()
  return PlayerPedId()
end

function Player.post_init()
  --setters maybe that aren't default
  --or that init the player different depending on if existant
  --or a new player? etc.
end

function Player:inventory()
end

function Player:say_name()
  print("Hello, my name is " .. self.name)
end

--return Player



-- Usage
player = Player.new{ name = "bob" }
player.say_name()
local items = player.inventory.items

function Player:new(p)
  --If no args provided, make a blank state
  p = p or {}
  -- self == Account at this point in time
  setmetatable(p, self)
  --Setting metamethod AFTER metatable
  self.__index = self
  return p
end
