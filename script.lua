-- made by KY#6446, modified to new and other standards by rayan001.
function sendmsg(msg)
game.StarterGui:SetCore("ChatMakeSystemMessage", {
Text = msg;
})
end 
local rolesandcolors = {
    ["Mafia"] = Color3.fromRGB(255,0,0), 
    ["Vampire"] = Color3.fromRGB(64,64,64),
    ["Coven"] = Color3.fromRGB(110,0,170),
    ["Werewolf"] = Color3.fromRGB(64,64,64),
    ['Bodyguard'] = Color3.fromRGB(0,255,0),
    ['Medic'] = Color3.fromRGB(0,255,0),
    ['Guardian'] = Color3.fromRGB(100,255,255),
    ['Vigilante'] = Color3.fromRGB(100,150,200),
    ['Liberator'] = Color3.fromRGB(0,255,0),
    ['Veteran'] = Color3.fromRGB(0,255,0),
    ['Bounty Hunter'] = Color3.fromRGB(0,255,0),
}
local gunsandroles = {
    ["Shield"] = "Bodyguard",
    ["Knife"] = "Serial Killer",
    ["GuardianSword"] = "Guardian Angel",
    ["Revolver"] = "Vigilante or Enforcer",
    ["Katana"] = "Assassin",
    ["ShieldK"] = "Liberator",
    ["Medkit"] = "Doctor",
    ["Pistol"] = "Veteran or Godfather",
    ["Winchester"] = "Bounty Hunter",
    ["Silenced Pistol"] = "Hitman",
    ["Plague"] = "Plaguebearer",
    ["JuggernautT"] = "Juggernaut",
    ["PlagueStaff"] = "Pestilence (dangerous)",
    ["KnifeFugitive"] = "Fugitive",
    ["Bat"] = "Outlaw w/o gun",
    ["TommyGun"] = "Outlaw",
    ["Tommy Gun"] = "Outlaw",
}

function bypac()
local ACRemote = game:GetService("ReplicatedStorage").Remotes.FinishAudio
local ACBypass
ACBypass = hookmetamethod(game, "__namecall", function(...)
    local method = getnamecallmethod();
    local args = ...;

    if not checkcaller() then
        if typeof(self) == "Instance" and self == ACRemote and method == "FireServer" then
            return wait(9e9);
        end
    end

    return ACBypass(...)
end)
end
sendmsg("Bloxston Mystery ESP")
sendmsg("Initializing..")
print("Parsing V2.7..")
wait(0.5)
print("Loaded BME V2.7 in 1036ms")
print("[BME] tip: dont commit die")
print("[BME] Changelog for V2.5: Added Juggernaut, Fugitive, Outlaw w/ gun and w/o gun.")
print("[BME] Changelog for V2.6: Added changelog and changed a bit of messages and added print functions.")
print("[BME] Changelog for V2.7: Reversed IY function breaking the script.")
sendmsg("[BME] Bypassing anticheat..")
sendmsg("If the anticheat bypassed message doesnt appear, you are probably in the lobby, if so: execute this ingame.")
print("If the anticheat bypassed message doesnt appear, you are probably in the lobby, if so: execute this ingame.")
wait(1)
bypac()
wait()
sendmsg("[BME] Anticheat bypassed!")
print("[BME] Anticheat has been bypassed!")
wait()
print("[BME] Role snooper has been enabled.")
sendmsg("[BME] Role snooper has been enabled.")
wait(1)
sendmsg("[BME] Tip: Roles will most likely appear in the night, have this executed before the begin of the night. if ya want some more info from BME check console.")
print("[BME] Tip: Roles will most likely appear in the night, have this executed before the begin of the night. if ya want some more info from BME check console.")
print("[BME] A vigilante has a blueish nametag. (or someone with a relatable tool/gun)")
for i,v in pairs(game:GetService("Workspace").Game:GetChildren()) do 
    local folder = v.Name
    v.ChildAdded:Connect(function(p)
    local plr = game.Players:FindFirstChild(p.Name)
    if folder == "Mafia" or folder == "Vampire" or folder == "Coven" or folder == "Medium" then
        if not plr:GetAttribute("NSXFA") then 
  
        plr:SetAttribute("NSXFA",folder)
        sendmsg('[' .. 
            plr:GetAttribute("NSXFA") ..
            "] (" .. plr.PlayerData.DisplayName.Value  .. ")[" .. plr.PlayerData.Number.Value  ..  "] 's role is now exposed to you and is available in chat! \n")
        print('[' .. 
            plr:GetAttribute("NSXFA") ..
            "] (" .. plr.PlayerData.DisplayName.Value  .. ")[" .. plr.PlayerData.Number.Value  ..  "] 's role is now exposed to you and is available in chat! \n")
        end 
    p.ChildAdded:Connect(function(ai)
        if ai == "WerewolfVal" then 
        if not plr:GetAttribute("NSXFA") then 
        
        plr:SetAttribute("NSXFA","Werewolf")
        sendmsg('[' .. 
            plr:GetAttribute("NSXFA") ..
            "] (" .. plr.PlayerData.DisplayName.Value  .. ")[" .. plr.PlayerData.Number.Value  ..  "] 's role is now exposed to you and is available in chat! \n")
        print('[' .. 
            plr:GetAttribute("NSXFA") ..
            "] (" .. plr.PlayerData.DisplayName.Value  .. ")[" .. plr.PlayerData.Number.Value  ..  "] 's role is now exposed to you and is available in chat! \n")
        end 
            end 
        end)
end
    end)
end


game.Players.DescendantAdded:Connect(function(t)
    if t:IsA("Tool") then
        local plr = t.Parent.Parent
        local tool = t
        if not game.Players:FindFirstChild(t.Parent.Parent.Name):GetAttribute("NSXFA") then 
        if gunsandroles[t.Name] ~= nil then
             plr:SetAttribute("NSXFA",gunsandroles[t.Name])  
         end 
          
            wait()
        sendmsg("[" .. 
            (plr:GetAttribute("NSXFA") or "Unknown") .. 
            "] (" .. plr.PlayerData.DisplayName.Value .. ")[" .. plr.PlayerData.Number.Value  ..  "] has a tool with the name " .. tool.Name .. '\n')
        print("[" .. 
            (plr:GetAttribute("NSXFA") or "Unknown") .. 
            "] (" .. plr.PlayerData.DisplayName.Value .. ")[" .. plr.PlayerData.Number.Value  ..  "] has a tool with the name " .. tool.Name .. '\n')
        end 
    end 
end)
for i,plr in pairs(game.Players:GetChildren()) do 
local v = plr
if plr:GetAttribute("NSXFA") then 
       sendmsg('[' .. 
            plr:GetAttribute("NSXFA") ..
            "] (" .. plr.PlayerData.DisplayName.Value  .. ")[" .. plr.PlayerData.Number.Value  ..  "] 's role is now exposed to you and is available in chat! \n")
        print('[' .. 
            plr:GetAttribute("NSXFA") ..
            "] (" .. plr.PlayerData.DisplayName.Value  .. ")[" .. plr.PlayerData.Number.Value  ..  "] 's role is now exposed to you and is available in chat! \n")
end 
  spawn(function()
      while wait() do 
          local charr = v.Character or v.CharacterAdded:Wait()

local oh = charr:FindFirstChild("Overhead",true)
if oh then 
    oh.AlwaysOnTop = true
    if v == game.Players.LocalPlayer then 
        oh.PlayerName.Text = '[' .. plr.PlayerData.Number.Value .. '] ' .. plr.PlayerData.DisplayName.Value
        oh.PlayerName.TextColor3 = Color3.fromRGB(255,80,192)
    elseif v:GetAttribute("NSXFA")~= nil and  rolesandcolors[v:GetAttribute("NSXFA")] ~= nil then 
        oh.PlayerName.Text = '[' .. plr.PlayerData.Number.Value .. '] ' .. plr.PlayerData.DisplayName.Value
        oh.PlayerName.TextColor3 = rolesandcolors[v:GetAttribute("NSXFA")]
    else
         oh.PlayerName.Text = '[' .. plr.PlayerData.Number.Value .. '] ' .. plr.PlayerData.DisplayName.Value
        oh.PlayerName.TextColor3 = Color3.fromRGB(255,255,255)
    end 
end 
          end 
      end)
end
