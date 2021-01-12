local module = {}
local tagHumanoid = game:GetService'ServerStorage':WaitForChild'Requests':WaitForChild'TagHumanoid'
local dangerHandler = require(game.ServerScriptService.DangerHandler)
local TweenService = game:GetService("TweenService")
local WALK_RANGE = 15
local ATTACK_RANGE = 10
local NO_CLOSER = 5
local GROUPING_RANGE = 20
local AGGRO_DISTANCE = 50
local SHRIEK_DISTANCE = 100
local CHASE_DISTANCE = 100
local TORCH_RANGE = 25
local COLUBRAS = 9144450
local COLUBRAS_ALLIES = {["151239872"]=true}
module.setup = function(char)

end
module.die = function(char)
    if (not char.MonsterInfo.Master.Value) and math.random(1,100)/100 <= char.Variables.Droprate.Value and not char:FindFirstChild("NoDrops") -- unknown code from here sorry
        then local item = game.ServerStorage.Items[char.Variables.Drop.Value]:Clone()
        game.ServerStorage.Requests.GenerateItemID.Invoke(item)
        item.Handle.CFrame = char.Torso.CFrame
        item.Parent = workspace.Thrown
     end
     
     local dustpart = game.ServerStorage.Assets.MonsterDeath:Clone()
     dustpart.Parent = workspace.Thrown
     dustpart.CFrame = char.Torso.CFrame
     dustpart.DeadCast:Play()
     game:GetService("Debris"):AddItem(dustpart,3)
     dustpart.DUST1.Emit(70)
     wait(.2)
     dustpart.DUST2:Emit(50)
     wait(.2)
     dustpart.DUST3:Emit(25)
     wait(.5)
     
     char:Destroy()
  end
  
  module.colubrasKilled = function(char)
    local spelleffect = game.ServerStorage.SpellEffects.ColubrasRestrain
    
    local ray = Ray.new(char.HumanoidRootPart.Position,Vector3.new(0,50,0)
    local intersect,pos = 
    
    -- GOT LAZY SORRY GOING TO WRITE MORE CODE LATER, 1:46PM EST 1/12/2021
