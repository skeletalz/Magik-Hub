 --<==<:({[ Project Lazarus (ZOMBIES) [Crossbow] ]}):>==>--
  --< Saving Settings >--
    if isfile("Project_Lazarus.json") then
        local file = readfile("Project_Lazarus.json")
        local decrypt = game:GetService("HttpService"):JSONDecode(file)
        getgenv().ApexSettings = decrypt
    else
        writefile("Project_Lazarus.json",game:GetService("HttpService"):JSONEncode({}))
    end
    function savesettings()
        local encrypt = game:GetService("HttpService"):JSONEncode(getgenv().ApexSettings)
        writefile("Project_Lazarus.json",encrypt)
    end

  --<  Anti  Ban  >--

    hookfunction(game.Players.LocalPlayer.Kick, warn)
    hookfunction(game.Players.LocalPlayer.kick, warn)

  --<  Loading UI/UX  >--

    local webhost   = 'https://oneshot.wtf/ApexHub/Scripts'

    local esp       = webhost.."/Universal/ESP.lua"
    local lib       = webhost.."/Universal/UILib.lua"

    lib             = loadstring(game:HttpGet(lib))()
    esp             = loadstring(game:HttpGet(esp))()

    lib.GameName = "Project Lazarus [Crossbow]"
