local files = {
  game = "https://github.com/skeletalz/Magik-Hub/blob/master/games/",
  games = "https://github.com/skeletalz/Magik-Hub/blob/master/GamesList.lua",
  notif = "https://raw.githubusercontent.com/skeletalz/Main-Stuff/master/Notification%20Service"
}
loadstring(game:HttpGet(list.games))()
Notification("Magik Hub","Magik Hub is being loaded!",{Enter = 0.6,Exit = 0.8})
wait(1.2)
local not = game.Players.LocalPlayer:WaitForChild("PlayerGui")["Notification"]
game:GetService("TweenService"):Create(not.Scroll.News,TweenInfo.new(0.8),{ImageTransparency = 1}):Play()
game:GetService("TweenService"):Create(not.Scroll.News.Close,TweenInfo.new(0.8),{ImageTransparency = 1}):Play()
game:GetService("TweenService"):Create(not.Scroll.News.Title,TweenInfo.new(0.8),{TextTransparency = 1}):Play()
game:GetService("TweenService"):Create(not.Scroll.News.Desc, TweenInfo.new(0.8),{TextTransparency = 1}):Play() 
wait(0.8)
not:Destroy()

for i,gam in pairs(_G.Games) do
  if game.PlaceId == gam.ID then
     loadstring(game:HttpGet(list.game..gam.Script))()
  end
end
