------>Esse script deve ser colocado dentro de StarterCharacterScripts
local REGEN_STEP = 1
local REGEN_AMOUNT = 5
local MAX_HEALT = 100

local caracter = script.Parent
local humanoid = caracter:Waitforchild("Humanoid")

while true do
  task.wait(REGEN_STEP)
  
  if humanoid.Health > 0 and humanoid.Health < humanoid.Maxhealth then
    local newhealth = humanoid.Health + REGEN_AUMONT
    humanoid.health = math.min(newHealth,Humanoid.MaxHealt)
  end
end
