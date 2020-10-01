loadstring(game:HttpGet("https://raw.githubusercontent.com/skeletalz/Slaxx-Hub/master/GamesList.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/skeletalz/Main-Stuff/master/Notification%20Service"))()
Notification("Slaxx Hub","Slaxx Hub is being loaded!",{Enter = 0.6,Exit = 0.8})
wait(1.2)
local noter = game.Players.LocalPlayer:WaitForChild("PlayerGui").Notification
game:GetService("TweenService"):Create(noter.Scroll.News,TweenInfo.new(0.8),{ImageTransparency = 1}):Play()
game:GetService("TweenService"):Create(noter.Scroll.News.Close,TweenInfo.new(0.8),{ImageTransparency = 1}):Play()
game:GetService("TweenService"):Create(noter.Scroll.News.Title,TweenInfo.new(0.8),{TextTransparency = 1}):Play()
game:GetService("TweenService"):Create(noter.Scroll.News.Desc, TweenInfo.new(0.8),{TextTransparency = 1}):Play() 
wait(0.8)
noter:Destroy()
local ingame = false
for i,gam in pairs(_G.Games) do
  if game.PlaceId == gam.ID then
     ingame = true
     loadstring(game:HttpGet("https://raw.githubusercontent.com/skeletalz/Slaxx-Hub/master/games/"..gam.Script))()
 else
     ingame = false
  end
end
if ingame == false then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/skeletalz/Main-Stuff/master/Notification%20Service"))()
  Notification("Slaxx Hub","Your not in a supported game!",{Enter = 0.6,Exit = 0.8})
  wait(1.2)
  local noter = game.Players.LocalPlayer:WaitForChild("PlayerGui")["Notification"]
  game:GetService("TweenService"):Create(noter.Scroll.News,TweenInfo.new(0.8),{ImageTransparency = 1}):Play()
  game:GetService("TweenService"):Create(noter.Scroll.News.Close,TweenInfo.new(0.8),{ImageTransparency = 1}):Play()
  game:GetService("TweenService"):Create(noter.Scroll.News.Title,TweenInfo.new(0.8),{TextTransparency = 1}):Play()
  game:GetService("TweenService"):Create(noter.Scroll.News.Desc, TweenInfo.new(0.8),{TextTransparency = 1}):Play() 
  wait(0.8)
  noter:Destroy()
end
