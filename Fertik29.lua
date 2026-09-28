-- SNPWARE HUB v1.0 — ЕДИНЫЙ ФАЙЛ
-- Часть 1/4: Каркас + базовые модули
--=====================================================================

--=====================================================================
-- 1. ОКРУЖЕНИЕ
--=====================================================================
local IS_HUB_PC     = game:GetService("UserInputService").KeyboardEnabled
local IS_HUB_MOBILE = not IS_HUB_PC

--=====================================================================
-- 2. ГЛОБАЛЬНЫЕ ССЫЛКИ
--=====================================================================
local Players           = game:GetService("Players")
local RunService        = game:GetService("RunService")
local UserInputService  = game:GetService("UserInputService")
local TweenService      = game:GetService("TweenService")
local Lighting          = game:GetService("Lighting")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CollectionService = game:GetService("CollectionService")
local TextChatService   = game:GetService("TextChatService")
local Stats             = game:GetService("Stats")
local HttpService       = game:GetService("HttpService")
local TeleportService   = game:GetService("TeleportService")
local CoreGui           = game:GetService("CoreGui")
local VirtualUser       = game:GetService("VirtualUser")
local StarterGui        = game:GetService("StarterGui")

local localPlayer = Players.LocalPlayer
local workspace   = workspace
local camera      = workspace.CurrentCamera

_G.Players           = Players
_G.RunService        = RunService
_G.UserInputService  = UserInputService
_G.TweenService      = TweenService
_G.Lighting          = Lighting
_G.ReplicatedStorage = ReplicatedStorage
_G.CollectionService = CollectionService
_G.TextChatService   = TextChatService
_G.Stats             = Stats
_G.HttpService       = HttpService
_G.TeleportService   = TeleportService
_G.CoreGui           = CoreGui
_G.VirtualUser       = VirtualUser
_G.StarterGui        = StarterGui
_G.localPlayer       = localPlayer
_G.Workspace         = workspace
_G.camera            = camera

--=====================================================================
-- 3. ФУНКЦИИ EXECUTOR'А
--=====================================================================
func = {}
func.fire      = firetouchinterest ~= nil
func.signal    = replicatesignal   ~= nil
func.file      = writefile ~= nil and readfile ~= nil
func.setfpscap = setfpscap ~= nil
func.http      = (request ~= nil) or (http_request ~= nil)
func.request   = request or http_request or (http and http.request)

firetouchinterest = firetouchinterest or function() end
replicatesignal   = replicatesignal   or function() end

--=====================================================================
-- 4. ГЛОБАЛЬНЫЕ ТАБЛИЦЫ
--=====================================================================
_G.HUB = _G.HUB or {}
local HUB = _G.HUB

HUB.values       = HUB.values       or {}
HUB.valueslider  = HUB.valueslider  or {}
HUB.valuestrings = HUB.valuestrings or {}
HUB.valuekeys    = HUB.valuekeys    or {}
HUB.valuecolors  = HUB.valuecolors  or {}
HUB.dropdownval  = HUB.dropdownval  or {}
HUB.buttonParams = HUB.buttonParams or {}
HUB.conns        = HUB.conns        or {}
HUB.adorns       = HUB.adorns       or {}
HUB.sessionData  = HUB.sessionData  or {}
HUB.lc           = HUB.lc           or {}

values       = HUB.values
valueslider  = HUB.valueslider
valuestrings = HUB.valuestrings
valuekeys    = HUB.valuekeys
valuecolors  = HUB.valuecolors
dropdownval  = HUB.dropdownval
buttonParams = HUB.buttonParams
conns        = HUB.conns
adorns       = HUB.adorns
sessionData  = HUB.sessionData
lc           = HUB.lc

--=====================================================================
-- 5. ДЕФОЛТНЫЕ ЗНАЧЕНИЯ
--=====================================================================
local function setDefault(t, k, v)
    if t[k] == nil then t[k] = v end
end

-- values
setDefault(values, "runnings", false)
setDefault(values, "silentAim", false)
setDefault(values, "silentAimhook", false)
setDefault(values, "shoot", false)
setDefault(values, "autoGrabGun", false)
setDefault(values, "customCursor", false)
setDefault(values, "customSkybox", false)
setDefault(values, "customBackground", false)
setDefault(values, "customGunSound", false)
setDefault(values, "lower", false)
setDefault(values, "showpingfps", false)
setDefault(values, "showtimer", false)
setDefault(values, "antiAfk", true)
setDefault(values, "antifling", true)
setDefault(values, "antitrap", false)
setDefault(values, "nb", false)
setDefault(values, "murdnotify", false)
setDefault(values, "shernotify", false)
setDefault(values, "gn", false)
setDefault(values, "loopWalkSpeed", false)
setDefault(values, "loopJumpPower", false)
setDefault(values, "freezePlayer", false)
setDefault(values, "spamjump", false)
setDefault(values, "infiniteJump", false)
setDefault(values, "noclipEnabled", false)
setDefault(values, "flyEnabled", false)
setDefault(values, "flySmoothAnim", false)
setDefault(values, "spinningEnabled", false)
setDefault(values, "jerkenabled", false)
setDefault(values, "enabledfakelag", false)
setDefault(values, "teleportEnabled", false)
setDefault(values, "loopStretch", false)
setDefault(values, "FOVEnabled", false)
setDefault(values, "Hitboxexpander", false)
setDefault(values, "FakeHeadless", false)
setDefault(values, "FakeKorblox", false)
setDefault(values, "removeRaggy", false)
setDefault(values, "destroyCoins", false)
setDefault(values, "removeShadow", false)
setDefault(values, "removeAccessories", false)
setDefault(values, "ChangeXray", false)
setDefault(values, "customBackground", false)
setDefault(values, "configAutosave", true)
setDefault(values, "prestige", false)
setDefault(values, "autoOpenCrate", false)
setDefault(values, "rejoinOnKick", false)
setDefault(values, "hopWhenEmpty", false)
setDefault(values, "disable3dRender", false)
setDefault(values, "resetmurderer", false)
setDefault(values, "gunDropEsp", false)
setDefault(values, "coinEsp", false)
setDefault(values, "trapesp", false)
setDefault(values, "thrownKnifeEsp", false)
setDefault(values, "spamEmotes", false)
setDefault(values, "autoExposeRoles", false)
setDefault(values, "MuteRadiosEnabled", false)
setDefault(values, "hideChat", false)
setDefault(values, "tpSafePartIfMurderNearest", false)
setDefault(values, "throwingKnifeActive", false)
setDefault(values, "throwingKnifeWallCheck", false)
setDefault(values, "knifeAura", false)
setDefault(values, "knifeAuraWallCheck", false)
setDefault(values, "autoequipknife", false)
setDefault(values, "KnifeAimEnabled", false)
setDefault(values, "KnifeUseFOV", true)
setDefault(values, "KnifeShowPrediction", true)
setDefault(values, "KnifeShowFOV", true)
setDefault(values, "aimbotEnabled", false)
setDefault(values, "aimbotPrediction", false)
setDefault(values, "HighlightInnocent", false)
setDefault(values, "HighlightSheriff", false)
setDefault(values, "HighlightMurderer", false)
setDefault(values, "HighlightHero", false)
setDefault(values, "HighlightDead", false)
setDefault(values, "NameEspInnocent", false)
setDefault(values, "NameEspSheriff", false)
setDefault(values, "NameEspMurderer", false)
setDefault(values, "NameEspHero", false)
setDefault(values, "NameEspDead", false)
setDefault(values, "gsRunning", false)
setDefault(values, "gbRunning", false)
setDefault(values, "bangFollowing", false)
setDefault(values, "alr", false)

-- valueslider
setDefault(valueslider, "walkSpeed", 16)
setDefault(valueslider, "walkSpeedDefault", 16)
setDefault(valueslider, "jumpPower", 50)
setDefault(valueslider, "jumpPowerDefault", 50)
setDefault(valueslider, "newflySpeed", 50)
setDefault(valueslider, "espRefreshRate", 60)
setDefault(valueslider, "fpsCap", 240)
setDefault(valueslider, "FOV", 70)
setDefault(valueslider, "stretch", 0.65)
setDefault(valueslider, "backgroundTransparency", 6)
setDefault(valueslider, "backgroundZoom", 100)
setDefault(valueslider, "XrayTransparency", 0.5)
setDefault(valueslider, "HitboxTransparency", 5)
setDefault(valueslider, "hitboxSizeScalar", 5)
setDefault(valueslider, "KnifeFOVSize", 120)
setDefault(valueslider, "knifeAuraRange", 8)
setDefault(valueslider, "throwingKnifeReach", 20)
setDefault(valueslider, "murderSafeTpRange", 20)
setDefault(valueslider, "aimbotFOVRadius", 240)
setDefault(valueslider, "farmSpeed", 22)
setDefault(valueslider, "farmLift", -3)
setDefault(valueslider, "emoteSpamSpeed", 3)
setDefault(valueslider, "spinspeed", 40)
setDefault(valueslider, "interval", 0.07)
setDefault(valueslider, "anchoredDuration", 0.4)
setDefault(valueslider, "teleportDistance", 15)
setDefault(valueslider, "uiElementTransparency", 0)
setDefault(valueslider, "ChamTransparency", 5)
setDefault(valueslider, "BoxScale", 30)
setDefault(valueslider, "TRANS", 5)
setDefault(valueslider, "newItemPopupAmount", 1)
setDefault(valueslider, "ud", 40)
setDefault(valueslider, "rotateSpeed", 2.3)
setDefault(valueslider, "jerkUI", 5)
setDefault(valueslider, "gunSoundVolume", 5)
setDefault(valueslider, "gunSoundPlaybackSpeed", 1)

-- dropdownval
setDefault(dropdownval, "espModes", { "Highlight" })
setDefault(dropdownval, "espPlayerNameMode", {})
setDefault(dropdownval, "farmType", "Floating")
setDefault(dropdownval, "coinPickMode", "Nearby")
setDefault(dropdownval, "backgroundImage", "Default")
setDefault(dropdownval, "skybox", "Default")
setDefault(dropdownval, "cursorStyle", "Default")
setDefault(dropdownval, "gunSound", "Default Gun")
setDefault(dropdownval, "theme", "Amber")
setDefault(dropdownval, "language", "en")
setDefault(dropdownval, "silentAimType", "Dynamic")
setDefault(dropdownval, "knifeTargetingMode", "Everyone")
setDefault(dropdownval, "flingPicked", {})
setDefault(dropdownval, "killWhitelist", {})
setDefault(dropdownval, "espGunDropMode", { "Highlight" })

-- valuecolors
setDefault(valuecolors, "espHighlightOutline", Color3.new(1, 1, 1))
setDefault(valuecolors, "espCoinColor", Color3.fromRGB(255, 215, 0))
setDefault(valuecolors, "espTrapColor", Color3.fromRGB(255, 60, 60))
setDefault(valuecolors, "espGunColor", Color3.fromRGB(255, 215, 0))
setDefault(valuecolors, "espThrownKnifeColor", Color3.fromRGB(255, 100, 100))

--=====================================================================
-- 6. ХЕЛПЕРЫ
--=====================================================================
DROPDOWN_REFRESH_BATCH = 32
SNP_LOG_DIR = "SNPWARE/logs"
HUB_AUTOSTART_CONFIG_FILE = "SNPWARE/autostart.json"

function findPlayerTool(player, toolName)
    if not player then return nil end
    local char = player.Character
    local bp   = player:FindFirstChild("Backpack")
    if char and char:FindFirstChild(toolName) then return char[toolName] end
    if bp   and bp:FindFirstChild(toolName)   then return bp[toolName]   end
    return nil
end

function getPlayerBackpack(player)
    return player:FindFirstChild("Backpack")
end

function findMurder()
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= localPlayer and findPlayerTool(p, "Knife") then
            return p
        end
    end
    return nil
end

function findSheriff()
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= localPlayer and findPlayerTool(p, "Gun") then
            return p
        end
    end
    return nil
end

function getRoot(char)
    if not char then return nil end
    return char:FindFirstChild("HumanoidRootPart")
        or char:FindFirstChild("Torso")
        or char:FindFirstChild("UpperTorso")
end

function hubOnPC(fn)     if IS_HUB_PC     then task.spawn(fn) end end
function hubOnMobile(fn) if IS_HUB_MOBILE then task.spawn(fn) end end

function hubInputOrSlider(tab, opts)
    if not tab then return nil end
    if tab.Slider then
        return tab:Slider({
            Title = opts.Title,
            Default = opts.Value and opts.Value.Default or opts.Value,
            Min = opts.Value and opts.Value.Min or 0,
            Max = opts.Value and opts.Value.Max or 100,
            Callback = opts.Callback,
        })
    end
    return nil
end

function hubNormalizeDropdownValue(v)
    if type(v) == "table" then return v[1] end
    return v
end

function hubNormalizeDropdownSelection(v, allowNone)
    if type(v) ~= "table" then
        if v == nil or v == "" then return {} end
        return { v }
    end
    return v
end

function hubDropdownHas(flag, value)
    local modes = dropdownval[flag]
    if type(modes) ~= "table" then modes = { modes } end
    return table.find(modes, value) ~= nil
end

function hubDropdownModes(flag)
    local modes = dropdownval[flag]
    if type(modes) ~= "table" then modes = { modes } end
    return modes
end

function hubPlayerNames()
    local t = {}
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= localPlayer then t[#t+1] = p.Name end
    end
    return t
end

sendnotification = sendnotification or function(text, duration)
    print("[NOTIFY]", tostring(text))
end
gradient = gradient or function(text, c1, c2) return text end
randomString = randomString or function(len)
    len = len or 12
    local s = ""
    for _ = 1, len do s = s .. string.char(math.random(97, 122)) end
    return s
end

-- LC fallback
local LC_FALLBACK = {
    kill = "You don't have a knife",
    target = "Target not found",
    targetbang = "Target not found for Bang",
    targetsucked = "Target not found for Get Sucked",
    targetbanged = "Target not found for Get Banged",
    flingactive = "Fling already active: ",
    waitgundrop = "Waiting for gun to drop...",
    rootpart = "No HumanoidRootPart",
    firetouch = "firetouchinterest not supported",
    notsheriff = "You are not the Sheriff",
    role = "Your role: ",
    chance = " | Chance: ",
    goodluck = " — good luck!",
    murderis = "Murderer is ",
    sheriffis = "Sheriff is ",
    viewing = "Viewing ",
    stopview = "Stop view",
    stoppedviewing = "Stopped viewing",
    targetlost = "Target lost",
    viewinggundrop = "Viewing gun drop",
    gundroplost = "Gun drop lost",
    gundropped = "Gun dropped!",
    gunpicked = "Gun picked up",
    trollcombatlock = "Trolling & combat locked (autofarm active)",
    trollcombatunlock = "Trolling & combat unlocked",
    killall_busy = "Kill All already in progress",
    forgotlang = "Language config reset",
    roundwaiting = "Waiting for round...",
    roundendin = "Round end in: ",
    safetp_murder_nearby = "Murderer nearby — on safe platform.",
    grabgun_you_murderer = "You are the Murderer — cannot grab gun.",
    grabgun_no_round = "No round data (lobby / loading).",
    grabgun_you_dead = "You are dead — cannot grab gun.",
    grabgun_murder_nearby = "Murderer near gun — waiting.",
    grabgun_murder_blocked = "Murderer near gun — cancelled.",
    keybind = "Menu keybind: ",
}
for k, v in pairs(LC_FALLBACK) do
    if not lc[k] then lc[k] = v end
end

--=====================================================================
-- 7. РЕМОУТЫ ИГРЫ
--=====================================================================
local Remotes, Gameplay, Extras, Inventory, Shop, Misc
pcall(function()
    Remotes   = ReplicatedStorage:WaitForChild("Remotes", 10)
    Gameplay  = Remotes and Remotes:WaitForChild("Gameplay", 10)
    Extras    = Remotes and Remotes:WaitForChild("Extras", 10)
    Inventory = Remotes and Remotes:WaitForChild("Inventory", 10)
    Shop      = Remotes and Remotes:WaitForChild("Shop", 10)
    Misc      = Remotes and Remotes:WaitForChild("Misc", 10)
end)

Fade              = Gameplay and Gameplay:FindFirstChild("Fade")
UnFade            = Gameplay and Gameplay:FindFirstChild("UnFade")
PlayerDataChanged = Gameplay and Gameplay:FindFirstChild("PlayerDataChanged")
CoinCollected     = Gameplay and Gameplay:FindFirstChild("CoinCollected")
CoinsStarted      = Gameplay and Gameplay:FindFirstChild("CoinsStarted")
RoundEndFade      = Gameplay and Gameplay:FindFirstChild("RoundEndFade")
ClientTweenEvents = Gameplay and Gameplay:FindFirstChild("ClientTweenEvents")
GetCurrentPlayerData = Extras and Extras:FindFirstChild("GetCurrentPlayerData")
GetChance         = Extras and Extras:FindFirstChild("GetChance")

_G.Fade = Fade
_G.UnFade = UnFade
_G.GetCurrentPlayerData = GetCurrentPlayerData

--=====================================================================
-- 8. SESSION DATA
--=====================================================================
function UpdateSessionData(data)
    if type(data) ~= "table" then return end
    local new = {}
    for name, info in pairs(data) do
        if type(info) == "table" then new[name] = info end
    end
    sessionData = new
    _G.sessionData = new
    if _G.onEspSettingsChanged     then pcall(_G.onEspSettingsChanged)     end
    if _G.onNameEspSettingsChanged then pcall(_G.onNameEspSettingsChanged) end
end

if Fade then
    Fade.OnClientEvent:Connect(function(data)
        if type(data) == "table" then UpdateSessionData(data) end
    end)
end
if UnFade then
    UnFade.OnClientEvent:Connect(function()
        sessionData = {}
        _G.sessionData = sessionData
    end)
end
if PlayerDataChanged then
    PlayerDataChanged.OnClientEvent:Connect(function(data)
        if type(data) == "table" then UpdateSessionData(data) end
    end)
end

--=====================================================================
-- 9. UI БИБЛИОТЕКА (WindUI)
--=====================================================================
local WindUI = nil
local ok_wind = pcall(function()
    WindUI = loadstring(game:HttpGet(
        "https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"
    ))()
end)

if not ok_wind or not WindUI then
    warn("[SNPWARE] WindUI не загрузился — ставлю заглушку")
    WindUI = {
        CreateWindow = function()
            return {
                Tab = function() return {
                    Toggle      = function() return { Set = function() end, Lock = function() end } end,
                    Slider      = function() return { Set = function() end, Lock = function() end } end,
                    Dropdown    = function() return { Set = function() end, Lock = function() end } end,
                    Button      = function() end,
                    Keybind     = function() end,
                    Input       = function() end,
                    Colorpicker = function() end,
                    Divider     = function() end,
                    Section     = function() end,
                    Paragraph   = function() return { SetDesc = function() end } end,
                } end,
                OnClose = function() end,
                OnOpen  = function() end,
            }
        end,
        Localization = function() end,
        SetLanguage  = function() end,
        SetNotificationLower = function() end,
        SetTheme     = function() end,
        GetThemes    = function() return {} end,
        SetBackgroundImage = function() end,
        SetBackgroundImageTransparency = function() end,
    }
end

v_ = WindUI
v  = WindUI

--=====================================================================
-- 10. ОКНО И ТАБЫ
--=====================================================================
Window = v_:CreateWindow({
    Title = "SNPWARE",
    Author = "hub",
    Size  = UDim2.fromOffset(580, 460),
    Theme = "Amber",
    MinimizeKey = Enum.KeyCode.RightControl,
    Transparent = true,
})

Tabs = {
    character = Window:Tab({ Title = "Character" }),
    combat    = Window:Tab({ Title = "Combat"    }),
    visual    = Window:Tab({ Title = "Visuals"   }),
    esp       = Window:Tab({ Title = "ESP"       }),
    teleport  = Window:Tab({ Title = "Teleport"  }),
    troll     = Window:Tab({ Title = "Troll"     }),
    emotes    = Window:Tab({ Title = "Emotes"    }),
    autofarm  = Window:Tab({ Title = "Autofarm"  }),
    buttons   = Window:Tab({ Title = "Buttons"   }),
    other     = Window:Tab({ Title = "Other"     }),
    settings  = Window:Tab({ Title = "Settings"  }),
}

Tabs.character:Section({ Title = "Movement" })
Tabs.combat:Section({ Title = "Combat" })
Tabs.visual:Section({ Title = "Visuals" })
Tabs.esp:Section({ Title = "ESP" })
Tabs.teleport:Section({ Title = "Teleport" })
Tabs.troll:Section({ Title = "Troll" })
Tabs.emotes:Section({ Title = "Emotes" })
Tabs.autofarm:Section({ Title = "Autofarm" })
Tabs.buttons:Section({ Title = "Hub Buttons" })
Tabs.other:Section({ Title = "Other" })
Tabs.settings:Section({ Title = "Settings" })

--=====================================================================
-- 11. ЗАГРУЗЧИК МОДУЛЕЙ
--=====================================================================
local MODULES = {}

local function loadModule(name, fn)
    local ok, err = pcall(fn)
    if ok then
        print(("[SNPWARE] %s loaded"):format(name))
    else
        warn(("[SNPWARE] %s failed: %s"):format(name, tostring(err)))
    end
end

--=====================================================================
-- МОДУЛЬ 1: PROTECTION (Anti-Trap / Anti-Fling / Anti-AFK)
--=====================================================================
MODULES["Protection"] = function()
    Tabs.other:Toggle({
        Title = "Anti Trap", Value = false, Flag = "antitrap",
        Callback = function(v)
            values.antitrap = v
            if not v then return end
            task.spawn(function()
                while values.antitrap do
                    pcall(function()
                        local hum = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
                        if hum and hum.WalkSpeed == 0.01 then hum.WalkSpeed = 16 end
                    end)
                    task.wait(2)
                end
            end)
        end,
    })

    Tabs.other:Toggle({
        Title = "Anti Fling", Value = true, Flag = "antifling",
        Callback = function(on) values.antifling = on end,
    })

    RunService.Stepped:Connect(function()
        if not values.antifling or values.alr then return end
        local char = localPlayer.Character
        if not char then return end
        for _, part in ipairs(char:GetChildren()) do
            if part:IsA("BasePart") and part.CanCollide then
                part.CanCollide = false
            end
        end
    end)

    Tabs.other:Toggle({
        Title = "Anti AFK", Value = true, Flag = "antiAfk",
        Callback = function(on)
            values.antiAfk = on
            if on then
                if conns.antiAfk then conns.antiAfk:Disconnect() end
                conns.antiAfk = localPlayer.Idled:Connect(function()
                    VirtualUser:CaptureController()
                    VirtualUser:ClickButton2(Vector2.new())
                end)
            elseif conns.antiAfk then
                conns.antiAfk:Disconnect()
                conns.antiAfk = nil
            end
        end,
    })

    conns.antiAfk = localPlayer.Idled:Connect(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
end

--=====================================================================
-- МОДУЛЬ 2: MOVEMENT (WalkSpeed / JumpPower / Freeze / SpamJump / InfJump)
--=====================================================================
MODULES["Movement"] = function()
    Tabs.character:Toggle({
        Title = "WalkSpeed", Value = false, Flag = "loopWalkSpeed",
        Callback = function(on)
            values.loopWalkSpeed = on
            if not on then
                local hum = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
                if hum then hum.WalkSpeed = valueslider.walkSpeedDefault end
                return
            end
            task.spawn(function()
                while values.loopWalkSpeed do
                    local hum = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
                    if hum then hum.WalkSpeed = valueslider.walkSpeed end
                    task.wait()
                end
                local hum = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
                if hum then hum.WalkSpeed = valueslider.walkSpeedDefault end
            end)
        end,
    })

    hubInputOrSlider(Tabs.character, {
        Title = "WalkSpeed Value",
        Value = { Min = 16, Max = 500, Default = 16 },
        Flag = "walkSpeed",
        Callback = function(v) valueslider.walkSpeed = tonumber(v) or 16 end,
    })

    Tabs.character:Toggle({
        Title = "JumpPower", Value = false, Flag = "loopJumpPower",
        Callback = function(on)
            values.loopJumpPower = on
            if not on then
                local hum = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
                if hum then hum.JumpPower = valueslider.jumpPowerDefault end
                return
            end
            task.spawn(function()
                while values.loopJumpPower do
                    local hum = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
                    if hum then hum.JumpPower = valueslider.jumpPower end
                    task.wait()
                end
            end)
        end,
    })

    hubInputOrSlider(Tabs.character, {
        Title = "JumpPower Value",
        Value = { Min = 50, Max = 500, Default = 50 },
        Flag = "jumpPower",
        Callback = function(v) valueslider.jumpPower = tonumber(v) or 50 end,
    })

    Tabs.character:Toggle({
        Title = "Freeze", Value = false, Flag = "freezePlayer",
        Callback = function(on)
            values.freezePlayer = on
            local char = localPlayer.Character
            if not char then return end
            for _, d in ipairs(char:GetDescendants()) do
                if d:IsA("BasePart") then d.Anchored = on end
            end
        end,
    })

    Tabs.character:Toggle({
        Title = "Spam Jump", Value = false, Flag = "spamjump",
        Callback = function(on)
            values.spamjump = on
            task.spawn(function()
                while values.spamjump do
                    local hum = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
                    if hum and hum.FloorMaterial ~= Enum.Material.Air then
                        hum:ChangeState("Jumping")
                        task.wait(0.55)
                    else
                        task.wait(0.03)
                    end
                end
            end)
        end,
    })

    Tabs.character:Toggle({
        Title = "Infinite Jump", Value = false, Flag = "infiniteJump",
        Callback = function(on) values.infiniteJump = on end,
    })
    UserInputService.JumpRequest:Connect(function()
        if values.infiniteJump then
            local hum = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
            if hum then hum:ChangeState("Jumping") end
        end
    end)
end

--=====================================================================
-- МОДУЛЬ 3: NOCLIP
--=====================================================================
MODULES["Noclip"] = function()
    Tabs.character:Toggle({
        Title = "Noclip", Value = false, Flag = "noclipEnabled",
        Callback = function(on)
            values.noclipEnabled = on
            if on then
                if conns.noclip then conns.noclip:Disconnect() end
                conns.noclip = RunService.Stepped:Connect(function()
                    local char = localPlayer.Character
                    if char then
                        for _, d in ipairs(char:GetDescendants()) do
                            if d:IsA("BasePart") and d.CanCollide then
                                d.CanCollide = false
                            end
                        end
                    end
                end)
            elseif conns.noclip then
                conns.noclip:Disconnect()
                conns.noclip = nil
            end
        end,
    })
end

--=====================================================================
-- МОДУЛЬ 4: ESP (Highlight / Chams / Boxes / Tracers)
--=====================================================================
MODULES["ESP"] = function()
    espObjects = {}
    tracerDrawings = {}
    espCharConns = {}

    function getPlayerEspVisualState(player)
        local d = sessionData[player.Name]
        if not d then
            if values.HighlightDead then return true, Color3.fromRGB(128, 128, 128) end
            return false, Color3.fromRGB(128, 128, 128)
        end
        if d.Killed or d.Dead then
            if values.HighlightDead then return true, Color3.fromRGB(128, 128, 128) end
            return false, Color3.fromRGB(128, 128, 128)
        end
        if d.Role == "Murderer" and values.HighlightMurderer then return true, Color3.fromRGB(255, 0, 0) end
        if d.Role == "Sheriff"  and values.HighlightSheriff  then return true, Color3.fromRGB(0, 0, 255) end
        if d.Role == "Hero"     and values.HighlightHero     then return true, Color3.fromRGB(255, 255, 0) end
        if d.Role == "Hero"     and not values.HighlightHero then return true, Color3.fromRGB(0, 0, 255) end
        if d.Role == "Innocent" and values.HighlightInnocent then return true, Color3.fromRGB(0, 255, 0) end
        return false, Color3.fromRGB(128, 128, 128)
    end
    _G.getPlayerEspVisualState = getPlayerEspVisualState

    function syncPlayerInstanceEsp(player)
        if player == localPlayer then return end
        local char = player.Character
        if not char then return end
        local useHL   = hubDropdownHas("espModes", "Highlight")
        local useCham = hubDropdownHas("espModes", "Chams")
        local show, color = getPlayerEspVisualState(player)

        local hl = char:FindFirstChild("EspHighlight")
        if useHL and show then
            if not hl or not hl:IsA("Highlight") then
                if hl then hl:Destroy() end
                hl = Instance.new("Highlight")
                hl.Name = "EspHighlight"
                hl.Parent = char
            end
            hl.Adornee = char
            hl.Enabled = true
            hl.FillColor = color
            hl.OutlineColor = valuecolors.espHighlightOutline or Color3.new(1, 1, 1)
            hl.FillTransparency = 0.5
            hl.OutlineTransparency = 0
            hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        elseif hl then
            hl:Destroy()
        end

        for _, child in ipairs(char:GetChildren()) do
            if child:IsA("BasePart") and child.Name ~= "HumanoidRootPart" then
                local ad = child:FindFirstChild("espAdornment")
                if useCham and show then
                    if not ad then
                        ad = Instance.new("BoxHandleAdornment", child)
                        ad.Name = "espAdornment"
                        ad.AlwaysOnTop = true
                        ad.ZIndex = 5
                    end
                    ad.Adornee = child
                    ad.Size = child.Size
                    ad.Color3 = color
                    ad.Transparency = 0.5
                elseif ad then
                    ad:Destroy()
                end
            end
        end
    end
    _G.syncPlayerInstanceEsp = syncPlayerInstanceEsp

    function UpdateDrawingESP()
        local cam = workspace.CurrentCamera
        if not cam then return end
        local useBoxes   = hubDropdownHas("espModes", "Boxes")
        local useTracers = hubDropdownHas("espModes", "Tracers")
        if not (useBoxes or useTracers) then return end

        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= localPlayer then
                local char = player.Character
                local hrp  = char and char:FindFirstChild("HumanoidRootPart")
                local show, color = getPlayerEspVisualState(player)

                if useBoxes and hrp and show then
                    local sp, on = cam:WorldToViewportPoint(hrp.Position)
                    if on and Drawing and Drawing.new then
                        if not espObjects[player] then
                            local sq = Drawing.new("Square")
                            sq.Thickness = 2
                            sq.Filled = false
                            espObjects[player] = { box = sq }
                        end
                        local box = espObjects[player].box
                        local h = 1000 * 0.3 / sp.Z
                        box.Size = Vector2.new(h * 0.67, h)
                        box.Position = Vector2.new(sp.X - h * 0.335, sp.Y - h * 0.5)
                        box.Color = color
                        box.Visible = true
                    end
                elseif espObjects[player] then
                    espObjects[player].box.Visible = false
                end

                if useTracers and hrp and show then
                    local sp, on = cam:WorldToViewportPoint(hrp.Position)
                    if on and Drawing and Drawing.new then
                        local line = tracerDrawings[player]
                        if not line then
                            line = Drawing.new("Line")
                            line.Thickness = 1
                            tracerDrawings[player] = line
                        end
                        line.From = Vector2.new(cam.ViewportSize.X / 2, cam.ViewportSize.Y)
                        line.To = Vector2.new(sp.X, sp.Y)
                        line.Color = color
                        line.Visible = true
                    end
                elseif tracerDrawings[player] then
                    tracerDrawings[player].Visible = false
                end
            end
        end
    end

    Tabs.esp:Dropdown({
        Title = "ESP Modes",
        Values = { "Highlight", "Boxes", "Chams", "Tracers" },
        Value = dropdownval.espModes,
        Multi = true, AllowNone = false, Flag = "espModes",
        Callback = function(val)
            dropdownval.espModes = hubNormalizeDropdownSelection(val, true)
            for _, p in ipairs(Players:GetPlayers()) do
                if p ~= localPlayer then syncPlayerInstanceEsp(p) end
            end
        end,
    })

    for _, role in ipairs({
        { title = "Innocent", flag = "HighlightInnocent" },
        { title = "Sheriff",  flag = "HighlightSheriff" },
        { title = "Murderer", flag = "HighlightMurderer" },
        { title = "Hero",     flag = "HighlightHero" },
        { title = "Dead",     flag = "HighlightDead" },
    }) do
        Tabs.esp:Toggle({
            Title = role.title, Value = false, Flag = role.flag,
            Callback = function(v)
                values[role.flag] = v
                for _, p in ipairs(Players:GetPlayers()) do
                    if p ~= localPlayer then syncPlayerInstanceEsp(p) end
                end
            end,
        })
    end

    Tabs.esp:Colorpicker({
        Title = "Outline Color",
        Default = Color3.new(1, 1, 1),
        Flag = "espHighlightOutline",
        Callback = function(c) valuecolors.espHighlightOutline = c end,
    })

    _G.onEspSettingsChanged = function()
        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= localPlayer then syncPlayerInstanceEsp(p) end
        end
    end

    RunService.Heartbeat:Connect(function()
        local now = os.clock()
        if (conns._lastDraw or 0) + (1 / (valueslider.espRefreshRate or 60)) > now then return end
        conns._lastDraw = now
        UpdateDrawingESP()
    end)

    Players.PlayerAdded:Connect(function(p)
        p.CharacterAdded:Connect(function()
            task.wait(0.3)
            syncPlayerInstanceEsp(p)
        end)
    end)
    Players.PlayerRemoving:Connect(function(p)
        if espObjects[p]     then pcall(function() espObjects[p].box:Remove() end) espObjects[p] = nil end
        if tracerDrawings[p] then pcall(function() tracerDrawings[p]:Remove() end) tracerDrawings[p] = nil end
    end)
end

-- ═══════════════════════════════════════════════════════════
-- [КОНЕЦ ЧАСТИ 1] — СЛЕДУЮЩАЯ ЧАСТЬ КЛЕИТСЯ СРАЗУ ПОСЛЕ
-- ═══════════════════════════════════════════════════════════
--=====================================================================
-- МОДУЛЬ 5: NAME ESP
--=====================================================================
MODULES["NameESP"] = function()
    local nameEspFolder = Instance.new("Folder", CoreGui)
    nameEspFolder.Name = "PlayerNameESP"

    local nameEspRecords   = {}
    local nameEspCharConns = {}
    local nameEspDistTick  = 0

    local function clearRecord(player, rec)
        if rec.nameBillboard  then pcall(function() rec.nameBillboard:Destroy() end)  end
        if rec.quickBillboard then pcall(function() rec.quickBillboard:Destroy() end) end
        local qa = PlayerGui and PlayerGui:FindFirstChild("Esp_player_QuickAction_" .. tostring(player.UserId))
        if qa then qa:Destroy() end
    end

    local function buildQuickAction(player, adornee, color)
        local key = tostring(player.UserId)
        local old = PlayerGui:FindFirstChild("Esp_player_QuickAction_" .. key)
        if old then old:Destroy() end

        local bb = Instance.new("BillboardGui")
        bb.Name = "Esp_player_QuickAction_" .. key
        bb.Adornee = adornee
        bb.Size = UDim2.new(0, 44, 0, 44)
        bb.AlwaysOnTop = true
        bb.ResetOnSpawn = false
        bb.Active = true
        bb.Parent = PlayerGui

        local frame = Instance.new("Frame", bb)
        frame.Size = UDim2.new(0, 44, 0, 44)
        frame.AnchorPoint = Vector2.new(0.5, 0.5)
        frame.Position = UDim2.new(0.5, 0, 0.5, 0)
        frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        frame.BackgroundTransparency = 0.5
        frame.ZIndex = 5
        Instance.new("UICorner", frame).CornerRadius = UDim.new(1, 0)

        local stroke = Instance.new("UIStroke", frame)
        stroke.Color = color
        stroke.Thickness = 2

        local btn = Instance.new("TextButton", frame)
        btn.Size = UDim2.fromScale(1, 1)
        btn.BackgroundTransparency = 1
        btn.Text = "+"
        btn.TextColor3 = Color3.new(1, 1, 1)
        btn.TextSize = 26
        btn.Font = Enum.Font.GothamBold
        btn.AutoButtonColor = false
        btn.ZIndex = 6

        local open = false
        local menu = Instance.new("Frame", bb)
        menu.Name = "MenuPanel"
        menu.Size = UDim2.new(0, 0, 0, 128)
        menu.AnchorPoint = Vector2.new(0, 0.5)
        menu.Position = UDim2.new(0.5, 28, 0.5, 0)
        menu.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        menu.BackgroundTransparency = 0.4
        menu.ClipsDescendants = true
        menu.ZIndex = 4
        menu.Visible = false
        Instance.new("UICorner", menu).CornerRadius = UDim.new(0, 10)

        local menuStroke = Instance.new("UIStroke", menu)
        menuStroke.Color = color
        menuStroke.Thickness = 2

        local holder = Instance.new("Frame", menu)
        holder.Size = UDim2.new(1, -16, 1, -16)
        holder.Position = UDim2.new(0, 8, 0, 8)
        holder.BackgroundTransparency = 1
        holder.ZIndex = 5

        local ll = Instance.new("UIListLayout", holder)
        ll.Padding = UDim.new(0, 8)
        ll.VerticalAlignment = Enum.VerticalAlignment.Center

        local function makeBtn(text)
            local b = Instance.new("TextButton", holder)
            b.Size = UDim2.new(1, 0, 0, 32)
            b.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            b.BackgroundTransparency = 0.2
            b.Text = text
            b.TextColor3 = Color3.new(1, 1, 1)
            b.Font = Enum.Font.GothamBold
            b.TextSize = 14
            b.ZIndex = 7
            Instance.new("UICorner", b).CornerRadius = UDim.new(0, 6)
            local s = Instance.new("UIStroke", b)
            s.Color = color
            s.Thickness = 1.2
            s.Transparency = 0.3
            return b
        end

        local goTo  = makeBtn("Go To")
        local fling = makeBtn("Fling")
        local view  = makeBtn("View")

        btn.MouseButton1Click:Connect(function()
            open = not open
            if open then
                menu.Visible = true
                menu.Size = UDim2.new(0, 0, 0, 128)
                TweenService:Create(bb, TweenInfo.new(0.3, Enum.EasingStyle.Quart),
                    { Size = UDim2.new(0, 236, 0, 140) }):Play()
                TweenService:Create(menu, TweenInfo.new(0.3, Enum.EasingStyle.Quart),
                    { Size = UDim2.new(0, 160, 0, 128) }):Play()
                btn.Text = "×"
            else
                TweenService:Create(menu, TweenInfo.new(0.2, Enum.EasingStyle.Quart),
                    { Size = UDim2.new(0, 0, 0, 128) }):Play()
                task.delay(0.2, function()
                    if not open then
                        menu.Visible = false
                        bb.Size = UDim2.new(0, 44, 0, 44)
                    end
                end)
                btn.Text = "+"
            end
        end)

        goTo.MouseButton1Click:Connect(function()
            local hrp = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
            local th  = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
            if hrp and th then hrp.CFrame = th.CFrame * CFrame.new(0, 3, 0) end
        end)
        fling.MouseButton1Click:Connect(function()
            if _G.minifling then pcall(_G.minifling, player) end
        end)
        view.MouseButton1Click:Connect(function()
            if _G.startView then pcall(_G.startView, player) end
        end)

        return bb, stroke, menuStroke
    end

    local function ensureBillboard(player, rec, adornee, color, showAvatar, showDist)
        if rec.nameBillboard and rec.nameBillboard.Parent then
            if not rec.nameTagFrame or not rec.nameTagFrame.Parent then
                pcall(function() rec.nameBillboard:Destroy() end)
                rec.nameBillboard = nil
            else
                rec.nameBillboard.Adornee = adornee
            end
        end

        if not rec.nameBillboard then
            local bb = Instance.new("BillboardGui", nameEspFolder)
            bb.Name = "Name_" .. player.Name
            bb.AlwaysOnTop = true
            bb.Size = UDim2.fromOffset(100, 30)
            bb.StudsOffset = Vector3.new(0, 2.2, 0)
            bb.ResetOnSpawn = false
            bb.Adornee = adornee
            bb.Enabled = false

            local frame = Instance.new("Frame", bb)
            frame.Name = "Tag"
            frame.Size = UDim2.fromScale(1, 1)
            frame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
            frame.BackgroundTransparency = 0.35
            frame.BorderSizePixel = 0
            Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 10)

            local stroke = Instance.new("UIStroke", frame)
            stroke.Thickness = 1.5
            stroke.Color = color

            local pad = Instance.new("UIPadding", frame)
            pad.PaddingLeft = UDim.new(0, 6)
            pad.PaddingRight = UDim.new(0, 8)
            pad.PaddingTop = UDim.new(0, 4)
            pad.PaddingBottom = UDim.new(0, 4)

            local ll = Instance.new("UIListLayout", frame)
            ll.FillDirection = Enum.FillDirection.Horizontal
            ll.VerticalAlignment = Enum.VerticalAlignment.Center
            ll.SortOrder = Enum.SortOrder.LayoutOrder
            ll.Padding = UDim.new(0, 6)

            local avatar = Instance.new("ImageLabel", frame)
            avatar.Name = "Avatar"
            avatar.LayoutOrder = 1
            avatar.Size = UDim2.fromOffset(22, 22)
            avatar.BackgroundTransparency = 1
            avatar.ScaleType = Enum.ScaleType.Fit
            avatar.Visible = false
            Instance.new("UICorner", avatar).CornerRadius = UDim.new(1, 0)
            local avStroke = Instance.new("UIStroke", avatar)
            avStroke.Thickness = 1.5
            avStroke.Color = color

            local nameLabel = Instance.new("TextLabel", frame)
            nameLabel.Name = "Name"
            nameLabel.LayoutOrder = 2
            nameLabel.BackgroundTransparency = 1
            nameLabel.AutomaticSize = Enum.AutomaticSize.X
            nameLabel.Size = UDim2.fromOffset(0, 22)
            nameLabel.Font = Enum.Font.GothamBold
            nameLabel.TextSize = 14
            nameLabel.TextStrokeTransparency = 1
            nameLabel.Text = player.DisplayName ~= "" and player.DisplayName or player.Name

            local distLabel = Instance.new("TextLabel", frame)
            distLabel.Name = "Distance"
            distLabel.LayoutOrder = 3
            distLabel.BackgroundTransparency = 1
            distLabel.AutomaticSize = Enum.AutomaticSize.X
            distLabel.Size = UDim2.fromOffset(0, 22)
            distLabel.Font = Enum.Font.GothamBold
            distLabel.TextSize = 14
            distLabel.TextStrokeTransparency = 1
            distLabel.Visible = false

            rec.nameBillboard  = bb
            rec.nameTagFrame   = frame
            rec.nameTagStroke  = stroke
            rec.avatarImage    = avatar
            rec.avatarStroke   = avStroke
            rec.nameLabel      = nameLabel
            rec.distanceLabel  = distLabel
            rec.nameListLayout = ll

            ll:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                if not rec.nameBillboard then return end
                local pad2 = rec.nameTagFrame:FindFirstChildOfClass("UIPadding")
                local px, py = 14, 8
                if pad2 then
                    px = pad2.PaddingLeft.Offset + pad2.PaddingRight.Offset
                    py = pad2.PaddingTop.Offset + pad2.PaddingBottom.Offset
                end
                local s = ll.AbsoluteContentSize
                rec.nameBillboard.Size = UDim2.fromOffset(s.X + px, math.max(28, s.Y + py))
            end)
        end

        rec.nameBillboard.Enabled = true
        rec.nameLabel.Text = player.DisplayName ~= "" and player.DisplayName or player.Name
        rec.nameLabel.TextColor3 = color

        if rec.avatarImage then
            rec.avatarImage.Visible = showAvatar
            if showAvatar then
                rec.avatarImage.Image = "rbxthumb://type=AvatarHeadShot&id=" .. player.UserId .. "&w=420&h=420"
                rec.avatarStroke.Color = color
            end
        end
        if rec.distanceLabel then
            rec.distanceLabel.Visible = showDist
            rec.distanceLabel.TextColor3 = color
        end
        rec.nameTagStroke.Color = color
    end

    local function getVisualState(player)
        local d = sessionData[player.Name]
        if not d then
            if values.NameEspDead then return true, Color3.fromRGB(128, 128, 128) end
            return false, Color3.fromRGB(128, 128, 128)
        end
        if d.Killed or d.Dead then
            if values.NameEspDead then return true, Color3.fromRGB(128, 128, 128) end
            return false, Color3.fromRGB(128, 128, 128)
        end
        if d.Role == "Murderer" and values.NameEspMurderer then return true, Color3.fromRGB(255, 0, 0) end
        if d.Role == "Sheriff"  and values.NameEspSheriff  then return true, Color3.fromRGB(0, 0, 255) end
        if d.Role == "Hero"     and values.NameEspHero     then return true, Color3.fromRGB(255, 255, 0) end
        if d.Role == "Hero"     and values.NameEspSheriff  then return true, Color3.fromRGB(0, 0, 255) end
        if d.Role == "Innocent" and values.NameEspInnocent then return true, Color3.fromRGB(0, 255, 0) end
        return false, Color3.fromRGB(128, 128, 128)
    end

    local function syncPlayer(player)
        if player == localPlayer then return end
        local rec = nameEspRecords[player]
        if not rec or not rec.alive then return end

        local anyOn = values.NameEspInnocent or values.NameEspSheriff or values.NameEspMurderer
                   or values.NameEspHero     or values.NameEspDead
        if not anyOn then
            if rec.nameBillboard  then rec.nameBillboard.Enabled  = false end
            if rec.quickBillboard then rec.quickBillboard.Enabled = false end
            return
        end

        local modes  = hubDropdownModes("espPlayerNameMode")
        local quick  = table.find(modes, "QuickAction") ~= nil
        local avatar = table.find(modes, "Avatar")      ~= nil
        local dist   = table.find(modes, "Distance")    ~= nil

        local show, color = getVisualState(player)
        if not show then
            if rec.nameBillboard  then rec.nameBillboard.Enabled  = false end
            if rec.quickBillboard then rec.quickBillboard.Enabled = false end
            return
        end

        local char = player.Character
        local head = char and char:FindFirstChild("Head")
        if not head then
            if rec.nameBillboard  then rec.nameBillboard.Enabled  = false end
            if rec.quickBillboard then rec.quickBillboard.Enabled = false end
            return
        end

        ensureBillboard(player, rec, head, color, avatar, dist)

        local torso = char:FindFirstChild("UpperTorso")
                   or char:FindFirstChild("Torso")
                   or char:FindFirstChild("HumanoidRootPart")
        if not quick or not torso then
            if rec.quickBillboard then
                pcall(function() rec.quickBillboard:Destroy() end)
                local qa = PlayerGui:FindFirstChild("Esp_player_QuickAction_" .. tostring(player.UserId))
                if qa then qa:Destroy() end
                rec.quickBillboard = nil
            end
        elseif not rec.quickBillboard or not rec.quickBillboard.Parent then
            local bb, s1, s2 = buildQuickAction(player, torso, color)
            rec.quickBillboard = bb
            rec.plusStroke = s1
            rec.menuStroke = s2
        else
            rec.quickBillboard.Adornee = torso
            rec.quickBillboard.Enabled = true
            if rec.plusStroke then rec.plusStroke.Color = color end
            if rec.menuStroke then rec.menuStroke.Color = color end
        end
    end
    _G.syncPlayerNameEsp = syncPlayer

    local function updateDistances()
        if not hubDropdownHas("espPlayerNameMode", "Distance") then return end
        local myHrp = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
        if not myHrp then return end
        for p, rec in pairs(nameEspRecords) do
            if rec.alive and rec.nameBillboard and rec.nameBillboard.Enabled and rec.distanceLabel then
                local th = p.Character and p.Character:FindFirstChild("HumanoidRootPart")
                if th then
                    rec.distanceLabel.Text = tostring(math.floor((myHrp.Position - th.Position).Magnitude)) .. "m"
                    rec.distanceLabel.Visible = true
                end
            end
        end
    end

    local function bindPlayer(player)
        if player == localPlayer then return end
        if not nameEspRecords[player] then
            nameEspRecords[player] = { alive = true }
        else
            nameEspRecords[player].alive = true
        end

        if nameEspCharConns[player] then nameEspCharConns[player]:Disconnect() end
        nameEspCharConns[player] = player.CharacterAdded:Connect(function()
            task.wait(0.35)
            local rec = nameEspRecords[player]
            if rec and rec.alive then
                clearRecord(player, rec)
                syncPlayer(player)
            end
        end)

        syncPlayer(player)
    end

    function _G.nameEspUnregister(player)
        local rec = nameEspRecords[player]
        if not rec then return end
        rec.alive = false
        if nameEspCharConns[player] then
            nameEspCharConns[player]:Disconnect()
            nameEspCharConns[player] = nil
        end
        clearRecord(player, rec)
        nameEspRecords[player] = nil
    end

    _G.onNameEspSettingsChanged = function()
        local anyOn = values.NameEspInnocent or values.NameEspSheriff or values.NameEspMurderer
                   or values.NameEspHero     or values.NameEspDead
        if anyOn then
            for _, p in ipairs(Players:GetPlayers()) do
                if p ~= localPlayer then
                    local rec = nameEspRecords[p]
                    if rec then clearRecord(p, rec) end
                    bindPlayer(p)
                end
            end
        else
            for p, c in pairs(nameEspCharConns) do c:Disconnect() nameEspCharConns[p] = nil end
            for p, rec in pairs(nameEspRecords) do clearRecord(p, rec) nameEspRecords[p] = nil end
        end
    end

    Tabs.esp:Dropdown({
        Title = "Name ESP Modes",
        Values = { "QuickAction", "Distance", "Avatar" },
        Value = dropdownval.espPlayerNameMode,
        Multi = true, AllowNone = true, Flag = "espPlayerNameMode",
        Callback = function(val)
            dropdownval.espPlayerNameMode = hubNormalizeDropdownSelection(val, true)
            _G.onNameEspSettingsChanged()
        end,
    })

    for _, r in ipairs({
        { title = "Name: Innocent", flag = "NameEspInnocent" },
        { title = "Name: Sheriff",  flag = "NameEspSheriff"  },
        { title = "Name: Murderer", flag = "NameEspMurderer" },
        { title = "Name: Hero",     flag = "NameEspHero"     },
        { title = "Name: Dead",     flag = "NameEspDead"     },
    }) do
        Tabs.esp:Toggle({
            Title = r.title, Value = false, Flag = r.flag,
            Callback = function(v)
                values[r.flag] = v
                if v and GetCurrentPlayerData then
                    task.spawn(function()
                        local ok, res = pcall(function() return GetCurrentPlayerData:InvokeServer() end)
                        if ok then UpdateSessionData(res) end
                    end)
                end
                _G.onNameEspSettingsChanged()
            end,
        })
    end

    RunService.Heartbeat:Connect(function()
        local now = os.clock()
        if now - nameEspDistTick < 0.033 then return end
        nameEspDistTick = now
        updateDistances()
    end)

    Players.PlayerAdded:Connect(function(p)
        if values.NameEspInnocent or values.NameEspSheriff or values.NameEspMurderer
        or values.NameEspHero or values.NameEspDead then
            bindPlayer(p)
        end
    end)
    Players.PlayerRemoving:Connect(function(p) _G.nameEspUnregister(p) end)

    _G.onNameEspSettingsChanged()
end

--=====================================================================
-- МОДУЛЬ 6: EXTRA ESP (Coins / Traps / GunDrop / ThrownKnife)
--=====================================================================
MODULES["ExtraESP"] = function()
    local coinAdorns = {}
    local coinConn = nil

    local function clearCoins()
        if coinConn then coinConn:Disconnect() coinConn = nil end
        for k, v in pairs(coinAdorns) do pcall(function() v:Destroy() end) coinAdorns[k] = nil end
    end

    local function createAdorn(part)
        if not values.coinEsp or not part:IsA("BasePart") or coinAdorns[part] then return end
        local b = Instance.new("BoxHandleAdornment")
        b.Size = Vector3.new(0.9, 2, 2)
        b.Color3 = valuecolors.espCoinColor or Color3.fromRGB(255, 215, 0)
        b.Transparency = 0.4
        b.AlwaysOnTop = true
        b.ZIndex = 1
        b.Adornee = part
        b.Parent = part
        coinAdorns[part] = b
    end

    Tabs.esp:Toggle({
        Title = "Coin ESP", Value = false, Flag = "coinEsp",
        Callback = function(on)
            values.coinEsp = on
            if on then
                clearCoins()
                for _, d in ipairs(workspace:GetDescendants()) do
                    if d:IsA("Model") and d.Name == "CoinContainer" then
                        for _, c in ipairs(d:GetChildren()) do
                            if c:IsA("BasePart") then createAdorn(c) end
                        end
                    end
                end
                coinConn = workspace.DescendantAdded:Connect(function(d)
                    if d:IsA("BasePart") and d.Parent and d.Parent.Name == "CoinContainer" then
                        createAdorn(d)
                    end
                end)
            else
                clearCoins()
            end
        end,
    })

    Tabs.esp:Colorpicker({
        Title = "Coin Color", Default = Color3.fromRGB(255, 215, 0), Flag = "espCoinColor",
        Callback = function(c)
            valuecolors.espCoinColor = c
            for _, b in pairs(coinAdorns) do if b then b.Color3 = c end end
        end,
    })

    -- TRAP ESP
    local trapArmed = false
    local trapConnections = {}
    local trapCharDesc = {}
    local trapCharAdded = {}

    local function clearTrapLabels()
        for _, p in ipairs(Players:GetPlayers()) do
            if p.Character then
                for _, d in ipairs(p.Character:GetDescendants()) do
                    if d:IsA("BillboardGui") and d.Name == "TrapLabel" then d:Destroy() end
                end
            end
        end
    end

    local function handleTrap(parent)
        if not (parent:IsA("Model") and parent.Name == "Trap") then return end
        if parent:FindFirstChild("TrapLabel") then return end

        local primary = parent.PrimaryPart
            or parent:FindFirstChild("TrapVisual")
            or parent:FindFirstChildWhichIsA("BasePart", true)

        local bb = Instance.new("BillboardGui", parent)
        bb.Name = "TrapLabel"
        bb.Size = UDim2.new(0, 150, 0, 70)
        bb.AlwaysOnTop = true
        bb.StudsOffset = Vector3.new(0, 3, 0)
        bb.Adornee = primary

        local t = Instance.new("TextLabel", bb)
        t.Size = UDim2.new(1, 0, 1, 0)
        t.BackgroundTransparency = 1
        t.Text = "TRAP"
        t.TextColor3 = valuecolors.espTrapColor or Color3.fromRGB(255, 60, 60)
        t.TextScaled = true
        t.Font = Enum.Font.RobotoCondensed
        t.TextStrokeTransparency = 0
        t.TextStrokeColor3 = Color3.new(0, 0, 0)
    end

    local function disableTrapEsp()
        trapArmed = false
        for _, c in ipairs(trapConnections) do
            if c and typeof(c) == "RBXScriptConnection" then pcall(function() c:Disconnect() end) end
        end
        trapConnections = {}
        trapCharDesc = {}
        trapCharAdded = {}
        clearTrapLabels()
    end

    local function initTrapEsp()
        if trapArmed then return end
        trapArmed = true

        local function attachChar(player, char)
            if trapCharDesc[player] then trapCharDesc[player]:Disconnect() end
            if not char then return end
            local c = char.DescendantAdded:Connect(handleTrap)
            trapCharDesc[player] = c
            table.insert(trapConnections, c)
            for _, d in ipairs(char:GetDescendants()) do handleTrap(d) end
        end

        local function trackPlayer(player)
            if player == localPlayer then return end
            if trapCharAdded[player] then return end
            local c = player.CharacterAdded:Connect(function(ch) attachChar(player, ch) end)
            trapCharAdded[player] = c
            table.insert(trapConnections, c)
            if player.Character then attachChar(player, player.Character) end
        end

        table.insert(trapConnections, Players.PlayerAdded:Connect(trackPlayer))
        table.insert(trapConnections, Players.PlayerRemoving:Connect(function(p)
            if trapCharDesc[p] then trapCharDesc[p]:Disconnect() trapCharDesc[p] = nil end
            if trapCharAdded[p] then trapCharAdded[p]:Disconnect() trapCharAdded[p] = nil end
        end))
        for _, p in ipairs(Players:GetPlayers()) do trackPlayer(p) end
    end

    Tabs.esp:Toggle({
        Title = "Trap ESP", Value = false, Flag = "trapesp",
        Callback = function(on)
            values.trapesp = on
            if on then initTrapEsp() else disableTrapEsp() end
        end,
    })

    Tabs.esp:Colorpicker({
        Title = "Trap Color", Default = Color3.fromRGB(255, 60, 60), Flag = "espTrapColor",
        Callback = function(c)
            valuecolors.espTrapColor = c
            for _, p in ipairs(Players:GetPlayers()) do
                if p.Character then
                    for _, d in ipairs(p.Character:GetDescendants()) do
                        if d:IsA("BillboardGui") and d.Name == "TrapLabel" then
                            local t = d:FindFirstChildWhichIsA("TextLabel")
                            if t then t.TextColor3 = c end
                        end
                    end
                end
            end
        end,
    })

    -- GUN DROP ESP
    local function clearGunEsp(part)
        for _, n in ipairs({ "Esp_gun", "Esp_gun_Highlight" }) do
            local x = part:FindFirstChild(n)
            if x then x:Destroy() end
        end
        local qa = PlayerGui and PlayerGui:FindFirstChild("Esp_gun_QuickAction_" .. part:GetDebugId())
        if qa then qa:Destroy() end
    end

    local function createQuickActionEsp(adornee)
        local key = "Esp_gun_QuickAction_" .. adornee:GetDebugId()
        local old = PlayerGui and PlayerGui:FindFirstChild(key)
        if old then old:Destroy() end

        local bb = Instance.new("BillboardGui", PlayerGui)
        bb.Name = key
        bb.Adornee = adornee
        bb.Size = UDim2.new(0, 44, 0, 44)
        bb.StudsOffset = Vector3.new(0, 0.6, 0)
        bb.AlwaysOnTop = true
        bb.ResetOnSpawn = false
        bb.Active = true

        local frame = Instance.new("Frame", bb)
        frame.Size = UDim2.new(0, 44, 0, 44)
        frame.AnchorPoint = Vector2.new(0.5, 0.5)
        frame.Position = UDim2.new(0.5, 0, 0.5, 0)
        frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        frame.BackgroundTransparency = 0.5
        frame.ZIndex = 5
        Instance.new("UICorner", frame).CornerRadius = UDim.new(1, 0)
        local st = Instance.new("UIStroke", frame)
        st.Color = valuecolors.espGunColor or Color3.fromRGB(255, 215, 0)
        st.Thickness = 2

        local btn = Instance.new("TextButton", frame)
        btn.Size = UDim2.fromScale(1, 1)
        btn.BackgroundTransparency = 1
        btn.Text = "+"
        btn.TextColor3 = Color3.new(1, 1, 1)
        btn.TextSize = 26
        btn.Font = Enum.Font.GothamBold
        btn.ZIndex = 6

        local open = false
        local menu = Instance.new("Frame", bb)
        menu.Name = "MenuPanel"
        menu.Size = UDim2.new(0, 0, 0, 128)
        menu.AnchorPoint = Vector2.new(0, 0.5)
        menu.Position = UDim2.new(0.5, 28, 0.5, 0)
        menu.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        menu.BackgroundTransparency = 0.4
        menu.ClipsDescendants = true
        menu.ZIndex = 4
        menu.Visible = false
        Instance.new("UICorner", menu).CornerRadius = UDim.new(0, 10)

        local holder = Instance.new("Frame", menu)
        holder.Size = UDim2.new(1, -16, 1, -16)
        holder.Position = UDim2.new(0, 8, 0, 8)
        holder.BackgroundTransparency = 1
        holder.ZIndex = 5

        local ll = Instance.new("UIListLayout", holder)
        ll.Padding = UDim.new(0, 8)
        ll.VerticalAlignment = Enum.VerticalAlignment.Center

        local function mkBtn(text)
            local b = Instance.new("TextButton", holder)
            b.Size = UDim2.new(1, 0, 0, 32)
            b.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            b.BackgroundTransparency = 0.2
            b.Text = text
            b.TextColor3 = Color3.new(1, 1, 1)
            b.Font = Enum.Font.GothamBold
            b.TextSize = 14
            b.ZIndex = 7
            Instance.new("UICorner", b).CornerRadius = UDim.new(0, 6)
            return b
        end

        local goToBtn    = mkBtn("Go To")
        local collectBtn = mkBtn("Collect")
        local viewBtn    = mkBtn("View")

        btn.MouseButton1Click:Connect(function()
            open = not open
            if open then
                menu.Visible = true
                TweenService:Create(menu, TweenInfo.new(0.3, Enum.EasingStyle.Quart),
                    { Size = UDim2.new(0, 160, 0, 128) }):Play()
                btn.Text = "×"
            else
                TweenService:Create(menu, TweenInfo.new(0.2, Enum.EasingStyle.Quart),
                    { Size = UDim2.new(0, 0, 0, 128) }):Play()
                task.delay(0.2, function() if not open then menu.Visible = false end end)
                btn.Text = "+"
            end
        end)
        goToBtn.MouseButton1Click:Connect(function()
            local hrp = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
            if hrp then hrp.CFrame = adornee.CFrame * CFrame.new(0, 3, 0) end
        end)
        collectBtn.MouseButton1Click:Connect(function()
            if _G.grabGunByMode then _G.grabGunByMode(false) end
        end)
        viewBtn.MouseButton1Click:Connect(function()
            if _G.viewGunDrop then _G.viewGunDrop(adornee) end
        end)

        adornee.AncestryChanged:Connect(function()
            if not adornee:IsDescendantOf(game) then bb:Destroy() end
        end)
    end

    local function highlightGunDrop(part)
        clearGunEsp(part)
        if not values.gunDropEsp then return end

        if hubDropdownHas("espGunDropMode", "TextLabel") then
            local bb = Instance.new("BillboardGui", part)
            bb.Name = "Esp_gun"
            bb.Size = UDim2.new(0, 100, 0, 40)
            bb.StudsOffset = Vector3.new(0, 3, 0)
            bb.AlwaysOnTop = true
            local t = Instance.new("TextLabel", bb)
            t.Size = UDim2.fromScale(1, 1)
            t.BackgroundTransparency = 1
            t.Text = "Dropped gun"
            t.TextColor3 = valuecolors.espGunColor or Color3.fromRGB(255, 215, 0)
            t.TextStrokeTransparency = 0.5
            t.Font = Enum.Font.GothamBold
            t.TextScaled = true
        end
        if hubDropdownHas("espGunDropMode", "QuickAction") then
            createQuickActionEsp(part)
        end
        if hubDropdownHas("espGunDropMode", "Highlight") then
            local h = Instance.new("Highlight", part)
            h.Name = "Esp_gun_Highlight"
            h.FillColor = valuecolors.espGunColor or Color3.fromRGB(255, 215, 0)
            h.OutlineColor = h.FillColor
            h.FillTransparency = 0.6
            h.OutlineTransparency = 0
            h.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        end
    end

    Tabs.esp:Toggle({
        Title = "Gun Drop ESP", Value = false, Flag = "gunDropEsp",
        Callback = function(on)
            values.gunDropEsp = on
            for _, p in pairs(CollectionService:GetTagged("GunDrop")) do
                if on then highlightGunDrop(p) else clearGunEsp(p) end
            end
        end,
    })

    Tabs.esp:Dropdown({
        Title = "Gun Drop Mode",
        Values = { "TextLabel", "QuickAction", "Highlight" },
        Value = dropdownval.espGunDropMode,
        Multi = true, AllowNone = true, Flag = "espGunDropMode",
        Callback = function(val)
            dropdownval.espGunDropMode = hubNormalizeDropdownSelection(val, true)
            if values.gunDropEsp then
                for _, p in pairs(CollectionService:GetTagged("GunDrop")) do
                    highlightGunDrop(p)
                end
            end
        end,
    })

    Tabs.esp:Colorpicker({
        Title = "Gun Drop Color", Default = Color3.fromRGB(255, 215, 0), Flag = "espGunColor",
        Callback = function(c)
            valuecolors.espGunColor = c
            if values.gunDropEsp then
                for _, p in pairs(CollectionService:GetTagged("GunDrop")) do highlightGunDrop(p) end
            end
        end,
    })

    CollectionService:GetInstanceAddedSignal("GunDrop"):Connect(function(p)
        if values.gunDropEsp then highlightGunDrop(p) end
    end)
    CollectionService:GetInstanceRemovedSignal("GunDrop"):Connect(clearGunEsp)

    -- THROWN KNIFE ESP
    local pool = {}
    local renderConn = nil

    local function getPos(model)
        local blade = model:FindFirstChild("BladePosition")
        if blade and blade:IsA("BasePart") then return blade.Position end
        local kv = model:FindFirstChild("KnifeVisual")
        if kv and kv:IsA("BasePart") then return kv.Position end
        return model.PrimaryPart and model.PrimaryPart.Position or nil
    end

    local function clearThrownKnife(model)
        local rec = pool[model]
        if not rec then return end
        if rec.ancestryConn then rec.ancestryConn:Disconnect() end
        if rec.highlight   then pcall(function() rec.highlight:Destroy() end) end
        if rec.box         then pcall(function() rec.box:Remove() end) end
        pool[model] = nil
    end

    local function clearAllThrownKnives()
        for m in pairs(pool) do clearThrownKnife(m) end
    end

    local function attachThrownKnife(model)
        if not values.thrownKnifeEsp or not model or not model.Parent then return end
        if not model:IsA("Model") or model.Name ~= "ThrowingKnife" then return end
        if pool[model] then return end

        local rec = {}
        local h = Instance.new("Highlight", model)
        h.Name = "ThrownKnifeEspHighlight"
        h.Adornee = model
        h.Enabled = true
        h.FillColor = valuecolors.espThrownKnifeColor or Color3.fromRGB(255, 100, 100)
        h.OutlineColor = h.FillColor
        h.FillTransparency = 0.35
        h.OutlineTransparency = 0
        h.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        rec.highlight = h

        if Drawing and Drawing.new then
            local ok, box = pcall(function()
                local sq = Drawing.new("Square")
                sq.Thickness = 2
                sq.Filled = false
                sq.Color = valuecolors.espThrownKnifeColor or Color3.fromRGB(255, 100, 100)
                sq.Visible = false
                return sq
            end)
            if ok and box then rec.box = box end
        end

        rec.ancestryConn = model.AncestryChanged:Connect(function(_, parent)
            if not parent then clearThrownKnife(model) end
        end)
        pool[model] = rec
    end

    local function scanThrownKnives()
        for _, d in ipairs(workspace:GetDescendants()) do
            if d:IsA("Model") and d.Name == "ThrowingKnife" then attachThrownKnife(d) end
        end
    end

    local function updateBoxes()
        local cam = workspace.CurrentCamera
        if not cam then return end
        for m, rec in pairs(pool) do
            if not m.Parent then
                clearThrownKnife(m)
            elseif rec.box then
                local pos = getPos(m)
                if pos then
                    local sp, on = cam:WorldToViewportPoint(pos)
                    if on and sp.Z > 0 then
                        local s = math.clamp(900 / sp.Z, 14, 140)
                        rec.box.Size = Vector2.new(s, s)
                        rec.box.Position = Vector2.new(sp.X - s / 2, sp.Y - s / 2)
                        rec.box.Visible = true
                    else
                        rec.box.Visible = false
                    end
                end
            end
        end
    end

    Tabs.esp:Toggle({
        Title = "Thrown Knife ESP", Value = false, Flag = "thrownKnifeEsp",
        Callback = function(on)
            values.thrownKnifeEsp = on
            if on then
                if not renderConn then
                    renderConn = RunService.RenderStepped:Connect(updateBoxes)
                end
                scanThrownKnives()
            else
                if renderConn then renderConn:Disconnect() renderConn = nil end
                clearAllThrownKnives()
            end
        end,
    })

    Tabs.esp:Colorpicker({
        Title = "Thrown Knife Color", Default = Color3.fromRGB(255, 100, 100), Flag = "espThrownKnifeColor",
        Callback = function(c)
            valuecolors.espThrownKnifeColor = c
            for _, rec in pairs(pool) do
                if rec.highlight then
                    rec.highlight.FillColor = c
                    rec.highlight.OutlineColor = c
                end
                if rec.box then rec.box.Color = c end
            end
        end,
    })

    workspace.DescendantAdded:Connect(function(d)
        if values.thrownKnifeEsp and d:IsA("Model") and d.Name == "ThrowingKnife" then
            attachThrownKnife(d)
        end
    end)
end

--=====================================================================
-- МОДУЛЬ 7: X-RAY
--=====================================================================
MODULES["XRay"] = function()
    local function scan(parent, val)
        for _, child in ipairs(parent:GetChildren()) do
            if child:IsA("BasePart")
                and not (child.Parent and child.Parent:FindFirstChild("Humanoid"))
                and not (child.Parent and child.Parent.Parent and child.Parent.Parent:FindFirstChild("Humanoid"))
            then
                child.LocalTransparencyModifier = val
            end
            scan(child, val)
        end
    end

    function _G.XrayFunction()
        if values.ChangeXray then
            scan(workspace, valueslider.XrayTransparency or 0.5)
        else
            scan(workspace, 0)
        end
    end

    Tabs.visual:Toggle({
        Title = "X-Ray", Value = false, Flag = "ChangeXray",
        Callback = function(on)
            values.ChangeXray = on
            _G.XrayFunction()
        end,
    })

    hubInputOrSlider(Tabs.visual, {
        Title = "X-Ray Transparency",
        Value = { Min = 0, Max = 1, Default = 0.5 },
        Flag = "XrayTransparency",
        Callback = function(v)
            valueslider.XrayTransparency = tonumber(v) or 0.5
            if values.ChangeXray then _G.XrayFunction() end
        end,
    })
end

--=====================================================================
-- МОДУЛЬ 8: SILENT AIM (GUN) — ядро
--=====================================================================
MODULES["SilentAim"] = function()
    local SILENT_AIM_MODES = { "Default", "Dynamic", "Piercing" }
    local SILENT_AIM_LEGACY_MODES = { Pro = "Dynamic", ["Dynamic 1"] = "Dynamic", Hacker = "Piercing" }
    local SILENT_AIM_TURN_WINDOW    = 0.12
    local SILENT_AIM_TURN_MIN_SPEED = 1.5
    local SILENT_AIM_HIST_SPAN      = 1
    local silentAimOvershoot        = 4
    local silentAimPiercingBack     = 4

    silentAimTune = {
        pingScale = 1, base = 0.113, minLead = 0.02, maxLead = 0.6,
        airExtra = 0, turnBoost = 0, turnGate = 0.15,
        intentBlend = 0.85, intentBlendAir = 0.5,
        straightScale = 1, turnScale = 1,
        airAimHeight = 5, fallMargin = 2, gravityScale = 1,
        yBias = 0, floorClamp = 1.2,
    }

    _G.finalPos           = Vector3.zero
    _G.finalAimCore       = Vector3.zero
    _G.silentAimState     = nil
    _G.silentAimStateTick = 0
    _G.silentAimLastLead  = 0
    _G.silentAimHist      = {}
    _G.smoothedVelocity   = Vector3.new()
    _G.lastTargetUserId   = nil
    _G.lastVelocity       = Vector3.new()
    _G.lastTick           = tick()
    _G.lastJumpTick       = 0
    _G.smoothedAccel      = Vector3.new()

    function normalizeSilentAimType(t)
        if type(t) ~= "string" then return "Dynamic" end
        if SILENT_AIM_LEGACY_MODES[t] then return SILENT_AIM_LEGACY_MODES[t] end
        for _, m in ipairs(SILENT_AIM_MODES) do
            if t == m then return m end
        end
        return "Dynamic"
    end
    _G.normalizeSilentAimType = normalizeSilentAimType

    local function safeUnit(v)
        if v.Magnitude < 0.001 then return Vector3.new() end
        return v.Unit
    end
    local function saFlat(v) return Vector3.new(v.X, 0, v.Z) end
    local function saTurnBetween(a, b)
        if a.Magnitude < SILENT_AIM_TURN_MIN_SPEED or b.Magnitude < SILENT_AIM_TURN_MIN_SPEED then return 0 end
        return 1 - math.clamp(a.Unit:Dot(b.Unit), -1, 1)
    end
    local function saVelAgo(dt)
        local hist = _G.silentAimHist
        if #hist == 0 then return nil end
        local now = os.clock()
        if SILENT_AIM_TURN_WINDOW < now - hist[#hist][1] then return nil end
        local target = now - dt
        for i = #hist, 1, -1 do
            if hist[i][1] <= target then
                return Vector3.new(hist[i][2], hist[i][3], hist[i][4])
            end
        end
        return Vector3.new(hist[1][2], hist[1][3], hist[1][4])
    end
    local function saPushVelSample(v)
        local now = os.clock()
        table.insert(_G.silentAimHist, { now, v.X, v.Y, v.Z })
        while #_G.silentAimHist > 0 and now - _G.silentAimHist[1][1] > SILENT_AIM_HIST_SPAN do
            table.remove(_G.silentAimHist, 1)
        end
    end

    function silentAimBuildState(target, excludeChar)
        local char = target and target.Character
        local hrp  = char and char:FindFirstChild("HumanoidRootPart")
        local hum  = char and char:FindFirstChildOfClass("Humanoid")
        if not (hrp and hum) then return nil end

        local vel = hrp.AssemblyLinearVelocity
        local dt  = tick() - _G.lastJumpTick
        local jumpRecent = dt < 0.18

        local ok, st = pcall(function() return hum:GetState() end)
        if not ok then st = nil end
        local airborne = st == Enum.HumanoidStateType.Jumping
                      or st == Enum.HumanoidStateType.Freefall

        local rp = RaycastParams.new()
        rp.FilterType = Enum.RaycastFilterType.Exclude
        rp.FilterDescendantsInstances = { char, excludeChar or localPlayer.Character }
        rp.IgnoreWater = true

        local hit = workspace:Raycast(hrp.Position, Vector3.new(0, -80, 0), rp)
        local vAgo = saVelAgo(SILENT_AIM_TURN_WINDOW) or vel

        return {
            pos = hrp.Position, vel = vel,
            svel = _G.smoothedVelocity, accel = _G.smoothedAccel,
            moveDir = hum.MoveDirection, walkSpeed = hum.WalkSpeed,
            jumpPower = hum.UseJumpPower and hum.JumpPower
                        or (hum.JumpHeight * 2 * workspace.Gravity) ^ 0.5,
            speed = saFlat(vel).Magnitude, speed3 = vel.Magnitude,
            turn = saTurnBetween(saFlat(vel), saFlat(vAgo)),
            accelMag = _G.smoothedAccel.Magnitude,
            jumpAge = dt,
            air = airborne or hum.FloorMaterial == Enum.Material.Air or jumpRecent,
            sitting = hum.Sit or hum.PlatformStand,
            strafing = hum.MoveDirection.Magnitude > 0.1,
            floorY = hit and hit.Position.Y or nil,
            standHeight = math.clamp(hum.HipHeight + hrp.Size.Y * 0.5, 0.5, 8),
            ping = localPlayer:GetNetworkPing(),
        }
    end
    _G.silentAimBuildState = silentAimBuildState

    silentAimPredictors = {}

    silentAimPredictors.Default = function(s)
        if s.vel.Magnitude == 0 then return s.pos, 0 end
        local d = s.vel.Unit * s.vel.Magnitude / 16.5
        local y = math.clamp(d.Y, -2, 2.65)
        return s.pos + Vector3.new(d.X, y, d.Z / 1.25), 0
    end

    silentAimPredictors.Dynamic = function(s, tune)
        tune = tune or silentAimTune
        if s.sitting then return s.pos, 0 end

        local lead = s.ping * tune.pingScale + tune.base
        if s.air then lead = lead + tune.airExtra end
        if tune.turnGate < s.turn then lead = lead + s.turn * tune.turnBoost end
        lead = math.clamp(lead, tune.minLead, tune.maxLead)

        local intent = s.moveDir * (s.walkSpeed > 0 and s.walkSpeed or 16)
        local blend  = s.air and tune.intentBlendAir or tune.intentBlend
        local turnK  = math.clamp((s.turn - tune.turnGate) / math.max(0.001, 1 - tune.turnGate), 0, 1)
        local factor = tune.straightScale + (tune.turnScale - tune.straightScale) * turnK

        local move = saFlat(s.vel):Lerp(saFlat(intent), blend) * lead * factor

        local gravity = workspace.Gravity
        local floorY = s.floorY and (s.floorY + (s.standHeight or 3)) or (s.pos.Y - tune.floorClamp)
        local jp = (s.jumpPower or 0) > 0 and s.jumpPower or 50
        local apex = jp * jp / 2 * gravity

        local y
        if not s.air then
            y = s.pos.Y
        elseif apex + tune.fallMargin < s.pos.Y - floorY then
            y = math.max(s.pos.Y + s.vel.Y * lead - 0.5 * gravity * tune.gravityScale * lead * lead, floorY)
        else
            y = floorY + tune.airAimHeight
        end

        return Vector3.new(s.pos.X + move.X, y + tune.yBias, s.pos.Z + move.Z), lead
    end

    silentAimPredictors.Piercing = function(s, tune)
        return silentAimPredictors.Dynamic(s, tune)
    end

    local function silentAimPiercingOrigin(s)
        local v = saFlat(s.vel)
        if v.Magnitude < 1 then v = saFlat(s.moveDir) end
        return CFrame.new(s.pos - safeUnit(v) * silentAimPiercingBack)
    end

    local function silentAimExtend(from, to)
        local d = to - from
        if d.Magnitude <= 0.001 then return to end
        return from + d + d.Unit * silentAimOvershoot
    end

    local function silentAimWallBlocked(ownerChar, from, targetChar, to)
        local dir = to - from
        if dir.Magnitude < 0.001 then return false, nil end

        local filter = { ownerChar }
        for _, x in ipairs(CollectionService:GetTagged("WeaponPassthrough")) do
            table.insert(filter, x)
        end

        local rp = RaycastParams.new()
        rp.FilterType = Enum.RaycastFilterType.Exclude
        rp.FilterDescendantsInstances = filter

        for _ = 1, 12 do
            local hit = workspace:Raycast(from, dir, rp)
            if not hit then return false, nil end
            if hit.Instance:IsDescendantOf(targetChar) then return false, nil end
            if hit.Instance.Transparency ~= 1 then return true, hit.Instance:GetFullName() end
            table.insert(filter, hit.Instance)
            rp.FilterDescendantsInstances = filter
        end
        return false, nil
    end

    function silentAimResolveShot(ownerChar, gunOrHrp, targetPlayer, mode)
        local cframe = gunOrHrp.CFrame
        local attachment = gunOrHrp:FindFirstChild("GunRaycastAttachment")
        if attachment then cframe = attachment.WorldCFrame end

        if mode == "Piercing" then
            if type(_G.finalPos) == "table" then
                return _G.finalPos[1], _G.finalPos[2].Position, _G.finalAimCore
            end
        elseif typeof(_G.finalPos) == "Vector3" and _G.finalPos ~= Vector3.zero then
            return cframe, _G.finalPos, _G.finalAimCore
        end

        local state = silentAimBuildState(targetPlayer, ownerChar)
        if not state then return cframe, nil, nil end

        local predictor = silentAimPredictors[mode] or silentAimPredictors.Dynamic
        local aimPos, lead = predictor(state, silentAimTune)

        _G.silentAimState     = state
        _G.silentAimStateTick = tick()
        _G.silentAimLastLead  = lead or 0

        if mode == "Piercing" then
            local origin = silentAimPiercingOrigin(state)
            return origin, silentAimExtend(origin.Position, aimPos), aimPos
        end

        return cframe, silentAimExtend(cframe.Position, aimPos), aimPos
    end
    _G.silentAimResolveShot = silentAimResolveShot

    local lastShot = 0
    local shootMurderLastWarn = 0

    function shootCallback(manual)
        if values.runnings then return false end
        if not values.silentAim and manual ~= true then return false end

        if findSheriff() ~= localPlayer then
            local now = tick()
            if now - shootMurderLastWarn >= 1.5 then
                shootMurderLastWarn = now
                sendnotification("You are not the Sheriff", 5)
            end
            return false
        end

        local target = findMurder()
        local tChar = target and target.Character
        local tHrp  = tChar and tChar:FindFirstChild("HumanoidRootPart")
        if not (target and tChar and tHrp) then
            print("[SNPWARE] No murderer to shoot")
            return false
        end

        local myChar = localPlayer.Character
        local myHrp  = myChar and myChar:FindFirstChild("HumanoidRootPart")
        local hum    = myChar and myChar:FindFirstChildOfClass("Humanoid")
        if not (myChar and myHrp and hum) then return false end

        local mode = normalizeSilentAimType(dropdownval.silentAimType)
        local origin, aim, core = silentAimResolveShot(myChar, myHrp, target, mode)
        aim = aim or tHrp.Position

        if mode ~= "Piercing" then
            local checkTo = typeof(core) == "Vector3" and core ~= Vector3.zero and core or tHrp.Position
            local blocked, partName = silentAimWallBlocked(myChar, origin.Position, tChar, checkTo)
            if blocked then
                print("[SNPWARE] Wall blocked: " .. tostring(partName))
                return false
            end
        end

        local gun = myChar:FindFirstChild("Gun")
        if not gun then
            local g = findPlayerTool(localPlayer, "Gun")
            if not g then
                local now = tick()
                if now - shootMurderLastWarn >= 1.5 then
                    shootMurderLastWarn = now
                    sendnotification("You don't have a Gun", 5)
                end
                return false
            end
            hum:EquipTool(g)
            local t0 = os.clock()
            while not myChar:FindFirstChild("Gun") and os.clock() - t0 < 0.35 do task.wait() end
            gun = myChar:FindFirstChild("Gun")
            if not gun then return false end
        end

        local shoot = gun:FindFirstChild("Shoot")
        if not shoot then
            print("[SNPWARE] Gun Shoot remote missing")
            return false
        end

        shoot:FireServer(origin, CFrame.new(aim))
        hum.PlatformStand = false
        hum.AutoRotate = true
        return true
    end
    _G.shootCallback = shootCallback

    local function fn9()
        if not (values.silentAim or values.shoot or values.silentAimhook) then
            if findSheriff() ~= localPlayer then return end
        end

        local target = findMurder()
        if not (target and target.Character and target.Character:FindFirstChild("HumanoidRootPart")) then return end

        local myChar = localPlayer.Character
        local tHrp   = target.Character.HumanoidRootPart
        local tHum   = target.Character:FindFirstChildOfClass("Humanoid")
        if not (myChar and tHrp and tHum) then return end

        local vel = tHrp.AssemblyLinearVelocity
        local pos = tHrp.Position

        if _G.lastTargetUserId ~= target.UserId then
            _G.lastTargetUserId = target.UserId
            _G.smoothedVelocity = vel
            _G.smoothedAccel    = Vector3.new()
            _G.lastVelocity     = vel
            _G.lastTick         = tick()
            table.clear(_G.silentAimHist)
        end

        local now = tick()
        local accel = (vel - _G.lastVelocity) / math.max(now - _G.lastTick, 1 / 240)
        local turn = saTurnBetween(saFlat(vel), saFlat(saVelAgo(SILENT_AIM_TURN_WINDOW) or _G.lastVelocity))
        local accelMag = accel.Magnitude
        local jumped = _G.lastVelocity.Y <= 1 and vel.Y > 20

        local ok, st = pcall(function() return tHum:GetState() end)
        local airborne = ok and (st == Enum.HumanoidStateType.Jumping or st == Enum.HumanoidStateType.Freefall)
        if jumped then _G.lastJumpTick = now end
        local jumpRecent = now - _G.lastJumpTick < 0.18

        local lerpA = math.clamp(0.18 + turn * 0.35 + math.min(accelMag / 800, 0.35), 0.18, 0.85)
        local flatLerp = (_G.smoothedVelocity * Vector3.new(1, 0, 1)):Lerp(Vector3.new(vel.X, 0, vel.Z), lerpA)
        local yA = jumpRecent and 1 or 0.55
        _G.smoothedVelocity = Vector3.new(flatLerp.X, _G.smoothedVelocity.Y * (1 - yA) + vel.Y * yA, flatLerp.Z)
        _G.smoothedAccel = _G.smoothedAccel:Lerp(accel, 0.25)
        _G.lastVelocity = vel
        _G.lastTick = now
        saPushVelSample(vel)

        _G.finalPos = Vector3.zero
        _G.finalAimCore = Vector3.zero

        local bp = getPlayerBackpack(localPlayer)
        local hasGun = myChar:FindFirstChild("Gun") or (bp and bp:FindFirstChild("Gun"))
        if not hasGun then return end

        local state = silentAimBuildState(target, myChar)
        if not state then return end

        _G.silentAimState = state
        _G.silentAimStateTick = now

        local myHrp = myChar:FindFirstChild("HumanoidRootPart")
        local originPos = myHrp and myHrp.Position or pos
        local att = myHrp and myHrp:FindFirstChild("GunRaycastAttachment")
        if att then originPos = att.WorldCFrame.Position end

        local mode = normalizeSilentAimType(dropdownval.silentAimType)
        local predictor = silentAimPredictors[mode] or silentAimPredictors.Dynamic
        local aimPos, lead = predictor(state, silentAimTune)
        _G.silentAimLastLead = lead or 0
        _G.finalAimCore = aimPos

        if mode == "Piercing" then
            local origin = silentAimPiercingOrigin(state)
            _G.finalPos = { origin, CFrame.new(silentAimExtend(origin.Position, aimPos)) }
        else
            _G.finalPos = silentAimExtend(originPos, aimPos)
        end
    end

    function syncCombatAimLoop()
        local needs = values.silentAim or values.silentAimhook or values.shoot
                      or findSheriff() == localPlayer
        if needs then
            if not conns.combatAimRender then
                conns.combatAimRender = RunService.RenderStepped:Connect(fn9)
            end
        elseif conns.combatAimRender then
            conns.combatAimRender:Disconnect()
            conns.combatAimRender = nil
        end
    end
    _G.syncCombatAimLoop = syncCombatAimLoop

    Tabs.combat:Dropdown({
        Title = "Silent Aim Mode",
        Values = { "Default", "Dynamic", "Piercing" },
        Value = dropdownval.silentAimType,
        Flag = "silentAimType",
        Callback = function(v) dropdownval.silentAimType = normalizeSilentAimType(v) end,
    })

    hubOnPC(function()
        Tabs.combat:Toggle({
            Title = "Silent Aim", Value = false, Flag = "silentAim",
            Callback = function(on)
                values.silentAim = on
                syncCombatAimLoop()
            end,
        })
        Tabs.combat:Keybind({
            Title = "Silent Aim Key", Value = valuekeys.silentAimKey,
            Flag = "silentAimKey",
            Callback = function() shootCallback(false) end,
        })
    end)

    hubOnMobile(function()
        Tabs.combat:Toggle({
            Title = "Silent Aim (Hook)",
            Desc = "Мобильный режим — перехватывает твой выстрел",
            Value = false, Flag = "silentAimhook",
            Callback = function(on)
                values.silentAimhook = on
                syncCombatAimLoop()
                if on and _G.ensureMobileSilentAimHook then _G.ensureMobileSilentAimHook() end
            end,
        })
        if values.silentAimhook and _G.ensureMobileSilentAimHook then _G.ensureMobileSilentAimHook() end
    end)

    task.spawn(function()
        while true do
            task.wait(2)
            syncCombatAimLoop()
        end
    end)
end

--=====================================================================
-- МОДУЛЬ 9: SILENT AIM HOOK
--=====================================================================
MODULES["SilentAimHook"] = function()
    local installed = false
    local oldNamecall = nil

    function ensureMobileSilentAimHook()
        if installed or type(hookmetamethod) ~= "function" then return end
        installed = true

        local wrapper = newcclosure or function(f) return f end

        local function nameMatch(obj, name)
            if typeof(obj) == "Instance" and obj.Name == name then return true end
            local s = tostring(obj)
            return s == name or s:find(name, 1, true) ~= nil
        end

        oldNamecall = hookmetamethod(game, "__namecall", wrapper(function(self, ...)
            if not values.silentAimhook and not values.KnifeAimEnabled then
                return oldNamecall(self, ...)
            end
            if getnamecallmethod() ~= "FireServer" then
                return oldNamecall(self, ...)
            end

            if values.silentAimhook and nameMatch(self, "Shoot") and _G.finalPos then
                if type(_G.finalPos) == "table" then
                    return oldNamecall(self, table.unpack(_G.finalPos))
                end
                if _G.finalPos ~= Vector3.zero then
                    local args = table.pack(...)
                    args[2] = CFrame.new(_G.finalPos)
                    return oldNamecall(self, table.unpack(args, 1, args.n))
                end
            end

            if values.KnifeAimEnabled
                and nameMatch(self, "KnifeThrown")
                and _G.CurrentPredictionKnife
                and _G.CurrentPredictionKnife ~= Vector3.zero
            then
                local args = table.pack(...)
                args[2] = CFrame.new(_G.CurrentPredictionKnife)
                return oldNamecall(self, table.unpack(args, 1, args.n))
            end

            return oldNamecall(self, ...)
        end))
    end
    _G.ensureMobileSilentAimHook = ensureMobileSilentAimHook

    if values.silentAimhook then ensureMobileSilentAimHook() end
end

--=====================================================================
-- МОДУЛЬ 10: SILENT AIM (KNIFE)
--=====================================================================
MODULES["SilentAimKnife"] = function()
    local predInterval = 0.16
    local Circle, PredictionIndicator

    local function hasKnife()
        local char = localPlayer.Character
        local bp   = getPlayerBackpack(localPlayer)
        if bp and bp:FindFirstChild("Knife") then return true end
        if char and char:FindFirstChild("Knife") then return true end
        return false
    end

    local function hasGun(player)
        local bp = player:FindFirstChild("Backpack")
        local ch = player.Character
        return (bp and bp:FindFirstChild("Gun")) or (ch and ch:FindFirstChild("Gun"))
    end

    local function insideFOV(worldPos)
        if not values.KnifeUseFOV then return true end
        local cam = workspace.CurrentCamera
        local sp, on = cam:WorldToViewportPoint(worldPos)
        if not on then return false end
        local c = Vector2.new(cam.ViewportSize.X / 2, cam.ViewportSize.Y / 2)
        return (Vector2.new(sp.X, sp.Y) - c).Magnitude <= (valueslider.KnifeFOVSize or 120)
    end

    if Drawing and Drawing.new then
        Circle = Drawing.new("Circle")
        Circle.Color = Color3.fromRGB(255, 0, 0)
        Circle.Radius = valueslider.KnifeFOVSize or 120
        Circle.Thickness = 1
        Circle.Filled = false
        Circle.Visible = false

        PredictionIndicator = Drawing.new("Circle")
        PredictionIndicator.Color = Color3.new(0, 1, 0)
        PredictionIndicator.Radius = 4
        PredictionIndicator.Thickness = 1
        PredictionIndicator.Filled = false
        PredictionIndicator.Visible = false

        local function updateCircle()
            if Circle then
                Circle.Position = Vector2.new(
                    workspace.CurrentCamera.ViewportSize.X / 2,
                    workspace.CurrentCamera.ViewportSize.Y / 2)
            end
        end
        updateCircle()
        workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(updateCircle)
    end

    local function getTarget()
        if not values.KnifeAimEnabled then return nil end
        local myChar = localPlayer.Character
        local myRoot = myChar and myChar.PrimaryPart
        if not myRoot then return nil end

        local best = math.huge
        local picked = nil

        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= localPlayer then
                local pRoot = player.Character and player.Character.PrimaryPart
                if pRoot then
                    local d = (myRoot.Position - pRoot.Position).Magnitude
                    if insideFOV(pRoot.Position) and d < best then
                        if dropdownval.knifeTargetingMode == "Only Sheriff" and hasGun(player) then
                            return player
                        end
                        if dropdownval.knifeTargetingMode == "Everyone" then
                            best = d
                            picked = player
                        end
                    end
                end
            end
        end
        return picked
    end

    local function getPrediction()
        if not values.KnifeAimEnabled or not hasKnife() then
            if PredictionIndicator then PredictionIndicator.Visible = false end
            return nil
        end
        local target = getTarget()
        if not target then
            if PredictionIndicator then PredictionIndicator.Visible = false end
            return nil
        end
        local pRoot = target.Character and target.Character.PrimaryPart
        if not pRoot then
            if PredictionIndicator then PredictionIndicator.Visible = false end
            return nil
        end

        local vel = pRoot.AssemblyLinearVelocity
        local lead = predInterval / 100
        local pred = pRoot.Position + Vector3.new(vel.X, 0, vel.Z) * lead

        if values.KnifeShowPrediction and PredictionIndicator then
            local cam = workspace.CurrentCamera
            local sp, on = cam:WorldToViewportPoint(pred)
            if on then
                PredictionIndicator.Position = Vector2.new(sp.X, sp.Y)
                PredictionIndicator.Visible = true
            else
                PredictionIndicator.Visible = false
            end
        elseif PredictionIndicator then
            PredictionIndicator.Visible = false
        end
        return pred
    end
    _G.CurrentPredictionKnife = Vector3.zero

    local function renderLoop()
        if not values.KnifeAimEnabled then
            if Circle then Circle.Visible = false end
            if PredictionIndicator then PredictionIndicator.Visible = false end
            return
        end
        if Circle then
            Circle.Radius  = valueslider.KnifeFOVSize or 120
            Circle.Visible = values.KnifeShowFOV and values.KnifeAimEnabled and hasKnife()
        end
        _G.CurrentPredictionKnife = getPrediction() or _G.CurrentPredictionKnife
    end

    function _G.syncKnifeAimLoop()
        if values.KnifeAimEnabled then
            if not conns.knifeAimRender then
                conns.knifeAimRender = RunService.RenderStepped:Connect(renderLoop)
            end
        elseif conns.knifeAimRender then
            conns.knifeAimRender:Disconnect()
            conns.knifeAimRender = nil
            renderLoop()
        end
    end

    Tabs.combat:Dropdown({
        Title = "Knife Targeting",
        Values = { "Only Sheriff", "Everyone" },
        Value = dropdownval.knifeTargetingMode,
        Flag = "knifeTargetingMode",
        Callback = function(v) if v then dropdownval.knifeTargetingMode = v end end,
    })

    hubOnPC(function()
        Tabs.combat:Toggle({
            Title = "Silent Aim (Knife)", Value = false, Flag = "KnifeAimEnabled",
            Callback = function(on)
                values.KnifeAimEnabled = on
                _G.syncKnifeAimLoop()
            end,
        })
        Tabs.combat:Keybind({
            Title = "Throw Knife Key", Value = valuekeys.knifeAimKeybind,
            Flag = "knifeAimKeybind",
            Callback = function()
                if not values.KnifeAimEnabled then return end
                if findMurder() ~= localPlayer then print("[SNPWARE] Not the murderer") return end

                local char = localPlayer.Character
                if not char:FindFirstChild("Knife") then
                    local hum = char:FindFirstChildOfClass("Humanoid")
                    local bp  = getPlayerBackpack(localPlayer)
                    local k   = bp and bp:FindFirstChild("Knife")
                    if not k then print("[SNPWARE] No knife") return end
                    hum:EquipTool(k)
                end

                local knife = findPlayerTool(localPlayer, "Knife")
                local aimPos = _G.CurrentPredictionKnife
                if not aimPos or aimPos == Vector3.zero then return end

                local args = { knife.Handle.CFrame, CFrame.new(aimPos) }
                local ok, err = pcall(function()
                    char.Knife.Events.KnifeThrown:FireServer(unpack(args))
                end)
                if not ok then warn("[SNPWARE] Knife throw: " .. tostring(err)) end
                local hum = char:FindFirstChildOfClass("Humanoid")
                if hum then hum.PlatformStand = false hum.AutoRotate = true end
            end,
        })
    end)

    hubOnMobile(function()
        Tabs.combat:Toggle({
            Title = "Silent Aim (Knife) Hook", Value = false, Flag = "KnifeAimEnabled",
            Callback = function(on)
                values.KnifeAimEnabled = on
                _G.syncKnifeAimLoop()
                if on and _G.ensureMobileSilentAimHook then _G.ensureMobileSilentAimHook() end
            end,
        })
        if values.KnifeAimEnabled then
            _G.syncKnifeAimLoop()
            if _G.ensureMobileSilentAimHook then _G.ensureMobileSilentAimHook() end
        end
    end)

    Tabs.combat:Toggle({
        Title = "Use FOV (Knife)", Value = true, Flag = "KnifeUseFOV",
        Callback = function(on) values.KnifeUseFOV = on end,
    })

    Tabs.combat:Toggle({
        Title = "Show Prediction (Knife)", Value = true, Flag = "KnifeShowPrediction",
        Callback = function(on)
            values.KnifeShowPrediction = on
            if PredictionIndicator then
                PredictionIndicator.Visible = on and values.KnifeAimEnabled and hasKnife()
            end
        end,
    })

    Tabs.combat:Toggle({
        Title = "Show FOV Circle", Value = true, Flag = "KnifeShowFOV",
        Callback = function(on)
            values.KnifeShowFOV = on
            if Circle then
                Circle.Visible = on and values.KnifeAimEnabled and hasKnife()
            end
        end,
    })

    hubInputOrSlider(Tabs.combat, {
        Title = "Knife FOV Size",
        Value = { Min = 30, Max = 300, Default = 120 },
        Flag = "KnifeFOVSize",
        Callback = function(v)
            valueslider.KnifeFOVSize = math.clamp(tonumber(v) or 120, 50, 500)
            if Circle then Circle.Radius = valueslider.KnifeFOVSize end
        end,
    })
end

-- ═══════════════════════════════════════════════════════════
-- [КОНЕЦ ЧАСТИ 2] — СЛЕДУЮЩАЯ ЧАСТЬ КЛЕИТСЯ СРАЗУ ПОСЛЕ
-- ═══════════════════════════════════════════════════════════
--=====================================================================
-- МОДУЛЬ 11: AIMBOT
--=====================================================================
MODULES["Aimbot"] = function()
    hubOnPC(function()
        Tabs.combat:Divider()
        Tabs.combat:Toggle({
            Title = "Aimbot", Value = false, Flag = "aimbotEnabled",
            Callback = function(on) values.aimbotEnabled = on end,
        })
        Tabs.combat:Toggle({
            Title = "Aimbot Prediction", Value = false, Flag = "aimbotPrediction",
            Callback = function(on) values.aimbotPrediction = on end,
        })
        hubInputOrSlider(Tabs.combat, {
            Title = "Aimbot FOV Radius",
            Value = { Min = 80, Max = 340, Default = 240 },
            Flag = "aimbotFOVRadius",
            Callback = function(v) valueslider.aimbotFOVRadius = tonumber(v) or 240 end,
        })
    end)

    local mouse = localPlayer:GetMouse()
    local headOffset = Vector3.new(0, 0.1, 0)
    local predictionTime = 0.2

    local function getClosestMurdererToMouse()
        local cam = workspace.CurrentCamera
        local bestDist = valueslider.aimbotFOVRadius
        local best = nil

        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= localPlayer then
                local char = player.Character
                local hum  = char and char:FindFirstChildOfClass("Humanoid")
                local hrp  = char and char:FindFirstChild("HumanoidRootPart")
                if char and hum and hum.Health > 0 and hrp and findPlayerTool(player, "Knife") then
                    local sp, on = cam:WorldToViewportPoint(hrp.Position)
                    if on then
                        local dx = mouse.X - sp.X
                        local dy = mouse.Y - sp.Y
                        local d = math.sqrt(dx * dx + dy * dy)
                        if d < bestDist then
                            bestDist = d
                            best = char
                        end
                    end
                end
            end
        end
        return best
    end

    UserInputService.InputBegan:Connect(function(input, processed)
        if processed then return end
        if input.UserInputType ~= Enum.UserInputType.MouseButton2 then return end
        if not values.aimbotEnabled then return end

        local target = getClosestMurdererToMouse()
        local cam = workspace.CurrentCamera
        local wasLocked = false

        if target then
            UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
            wasLocked = true
        end

        while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
            and values.aimbotEnabled do
            if target and target.Parent and target:FindFirstChild("HumanoidRootPart") then
                local hrp = target.HumanoidRootPart
                local aimPos
                if values.aimbotPrediction then
                    aimPos = (hrp.CFrame + hrp.Velocity * predictionTime + headOffset).Position
                else
                    aimPos = hrp.Position + headOffset
                end
                cam.CFrame = CFrame.lookAt(cam.CFrame.Position, aimPos)
            end
            task.wait()
        end

        UserInputService.MouseBehavior = Enum.MouseBehavior.Default
        if wasLocked and type(stalclansMouseUnlock) == "function" then
            pcall(stalclansMouseUnlock)
        end
    end)
end

--=====================================================================
-- МОДУЛЬ 12: KNIFE AURA
--=====================================================================
MODULES["KnifeAura"] = function()

    function _G.hubStabPlayerHrp(char, knife, targetHrp)
        if not char or not knife or not targetHrp then return false end
        local events = knife:FindFirstChild("Events")
        if not events then return false end

        local stabbed = events:FindFirstChild("KnifeStabbed")
        if stabbed then pcall(function() stabbed:FireServer() end) end

        local handle = knife:FindFirstChild("Handle")
        if handle and func.fire then
            pcall(firetouchinterest, targetHrp, handle, 0)
            pcall(firetouchinterest, targetHrp, handle, 1)
        end

        local touched = events:FindFirstChild("HandleTouched")
        if touched then
            touched:FireServer(targetHrp)
            return true
        end
        return false
    end

    Tabs.combat:Toggle({
        Title = "Knife Aura", Value = false, Flag = "knifeAura",
        Callback = function(on)
            values.knifeAura = on
            if not on then return end

            task.spawn(function()
                while values.knifeAura do
                    if values.runnings then
                        values.knifeAura = false
                        break
                    end

                    pcall(function()
                        local char = localPlayer.Character
                        if not char then return end
                        local knife = char:FindFirstChild("Knife")

                        if not knife and values.autoequipknife then
                            local hum = char:FindFirstChildOfClass("Humanoid")
                            local bp  = getPlayerBackpack(localPlayer)
                            local k   = bp and bp:FindFirstChild("Knife")
                            if hum and k then
                                hum:EquipTool(k)
                                task.wait()
                                knife = char:FindFirstChild("Knife")
                            end
                        end

                        knife = knife or findPlayerTool(localPlayer, "Knife")
                        if not knife or not knife:FindFirstChild("Handle") then return end

                        for _, player in ipairs(Players:GetPlayers()) do
                            if player ~= localPlayer and player.Character then
                                local tHrp = player.Character:FindFirstChild("HumanoidRootPart")
                                local tHum = player.Character:FindFirstChildOfClass("Humanoid")
                                if tHrp and tHum and tHum.Health > 0 then
                                    if valueslider.knifeAuraRange >= localPlayer:DistanceFromCharacter(tHrp.Position) then
                                        if values.knifeAuraWallCheck then
                                            local myHrp = char:FindFirstChild("HumanoidRootPart")
                                            if myHrp then
                                                local dir = tHrp.Position - myHrp.Position
                                                if dir.Magnitude >= 0.05 then
                                                    local rp = RaycastParams.new()
                                                    rp.FilterType = Enum.RaycastFilterType.Exclude
                                                    rp.FilterDescendantsInstances = { char }
                                                    local hit = workspace:Raycast(myHrp.Position, dir, rp)
                                                    if hit and not hit.Instance:IsDescendantOf(player.Character) then
                                                        return
                                                    end
                                                end
                                            end
                                        end
                                        _G.hubStabPlayerHrp(char, knife, tHrp)
                                    end
                                end
                            end
                        end
                    end)
                    task.wait(0.1)
                end
            end)
        end,
    })

    hubInputOrSlider(Tabs.combat, {
        Title = "Knife Aura Range",
        Value = { Min = 4, Max = 120, Default = 8 },
        Flag = "knifeAuraRange",
        Callback = function(v) valueslider.knifeAuraRange = tonumber(v) or 8 end,
    })

    Tabs.combat:Toggle({
        Title = "Knife Aura Wallcheck", Value = false, Flag = "knifeAuraWallCheck",
        Callback = function(on) values.knifeAuraWallCheck = on end,
    })

    Tabs.combat:Toggle({
        Title = "Auto Equip Knife", Value = false, Flag = "autoequipknife",
        Callback = function(on) values.autoequipknife = on end,
    })
end

--=====================================================================
-- МОДУЛЬ 13: THROW KNIFE AURA
--=====================================================================
MODULES["ThrowAura"] = function()
    local auraConns = {}
    local descendantConn = nil

    local rayParams = RaycastParams.new()
    rayParams.FilterType = Enum.RaycastFilterType.Exclude

    local function attachAura(model)
        if auraConns[model] or not model:IsA("Model") or model.Name ~= "ThrowingKnife" then return end

        local blade = model:FindFirstChild("BladePosition") or model:FindFirstChild("KnifeVisual", true)
        if blade and blade:IsA("Attachment") then blade = blade.Parent end
        if not blade or not blade:IsA("BasePart") then
            for _, d in ipairs(model:GetDescendants()) do
                if d:IsA("BasePart") and d.Name == "KnifeVisual" then blade = d break end
            end
        end
        if not blade then return end

        local lastTick = 0

        local function step()
            if not values.throwingKnifeActive or not model.Parent then
                local c = auraConns[model]
                if c then
                    c.hb:Disconnect()
                    c.pos:Disconnect()
                    c.anc:Disconnect()
                    auraConns[model] = nil
                end
                return
            end
            if tick() - lastTick < 0.033 then return end
            lastTick = tick()

            local myChar = localPlayer.Character
            local knife = myChar and myChar:FindFirstChild("Knife")
            local handle = knife and knife:FindFirstChild("Handle")
            local events = knife and knife:FindFirstChild("Events")
            local touched = events and events:FindFirstChild("HandleTouched")
            if not handle or not touched then return end

            local pos = blade.Position
            local reach = valueslider.throwingKnifeReach

            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= localPlayer and player.Character then
                    local tHrp = player.Character:FindFirstChild("HumanoidRootPart")
                    local tHum = player.Character:FindFirstChildOfClass("Humanoid")
                    if tHrp and tHum and tHum.Health > 0 then
                        local delta = tHrp.Position - pos
                        local mag = delta.Magnitude
                        if mag >= 1 and mag <= reach then
                            if values.throwingKnifeWallCheck then
                                local filter = { myChar, model }
                                for _, d in ipairs(model:GetDescendants()) do
                                    if d:IsA("BasePart") then filter[#filter + 1] = d end
                                end
                                rayParams.FilterDescendantsInstances = filter
                                local dir = delta.Unit * mag
                                local hit = workspace:Spherecast(pos, 0.35, dir, rayParams)
                                            or workspace:Raycast(pos, dir, rayParams)
                                local hitPart = hit and hit.Instance
                                if hitPart and not hitPart:IsDescendantOf(player.Character) then
                                    return
                                end
                            end

                            if func.fire then
                                pcall(firetouchinterest, tHrp, handle, 0)
                                pcall(firetouchinterest, tHrp, handle, 1)
                            end
                            touched:FireServer(tHrp)
                        end
                    end
                end
            end
        end

        auraConns[model] = {
            hb  = RunService.Heartbeat:Connect(step),
            pos = blade:GetPropertyChangedSignal("Position"):Connect(step),
            anc = model.AncestryChanged:Connect(function(_, p)
                if not p then step() end
            end),
        }
        step()
    end

    local function setState(on)
        values.throwingKnifeActive = on

        if descendantConn then
            descendantConn:Disconnect()
            descendantConn = nil
        end
        for m, c in pairs(auraConns) do
            c.hb:Disconnect()
            c.pos:Disconnect()
            c.anc:Disconnect()
            auraConns[m] = nil
        end

        if not on then return end

        for _, d in ipairs(workspace:GetDescendants()) do
            if d:IsA("Model") and d.Name == "ThrowingKnife" then attachAura(d) end
        end

        descendantConn = workspace.DescendantAdded:Connect(function(d)
            if d:IsA("Model") and d.Name == "ThrowingKnife" then
                task.defer(attachAura, d)
            end
        end)
    end

    Tabs.combat:Toggle({
        Title = "Throw Knife Aura", Value = false, Flag = "throwingKnifeActive",
        Callback = setState,
    })

    Tabs.combat:Toggle({
        Title = "Throw Aura Wallcheck", Value = false, Flag = "throwingKnifeWallCheck",
        Callback = function(on) values.throwingKnifeWallCheck = on end,
    })

    hubInputOrSlider(Tabs.combat, {
        Title = "Throw Aura Reach",
        Value = { Min = 4, Max = 120, Default = 20 },
        Flag = "throwingKnifeReach",
        Callback = function(v) valueslider.throwingKnifeReach = tonumber(v) or 20 end,
    })

    if values.throwingKnifeActive then setState(true) end
end

--=====================================================================
-- МОДУЛЬ 14: KILL ALL + AUTO SAFE TP
--=====================================================================
MODULES["KillAllSafeTp"] = function()
    --========================= KILL ALL =========================
    local killAllBusy = false

    local function isKillWhitelisted(name)
        local wl = dropdownval.killWhitelist
        if type(wl) ~= "table" then return false end
        for _, v in ipairs(wl) do
            if hubNormalizeDropdownValue(v) == name then return true end
        end
        return false
    end

    function _G.runKillAllBurst()
        if values.runnings then
            sendnotification("Trolling & combat locked (autofarm active)", 6)
            return
        end
        if killAllBusy then
            sendnotification("Kill All already in progress", 8)
            return
        end

        local char = localPlayer.Character
        local bp   = getPlayerBackpack(localPlayer)
        local has  = (bp and bp:FindFirstChild("Knife")) or (char and char:FindFirstChild("Knife"))
        if not has then
            sendnotification("You don't have a knife", 8)
            return
        end

        killAllBusy = true
        task.spawn(function()
            for _ = 1, 24 do
                if values.runnings then break end
                pcall(function()
                    local c   = localPlayer.Character
                    local bp2 = getPlayerBackpack(localPlayer)
                    local hum = c and c:FindFirstChildOfClass("Humanoid")
                    local k   = bp2 and bp2:FindFirstChild("Knife")
                    if hum and k then hum:EquipTool(k) end
                    task.wait()
                    local knife = c and c:FindFirstChild("Knife")
                    if not knife then return end

                    for _, player in ipairs(Players:GetPlayers()) do
                        if player ~= localPlayer and not isKillWhitelisted(player.Name) then
                            local tHrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                            if tHrp then _G.hubStabPlayerHrp(c, knife, tHrp) end
                        end
                    end
                end)
                task.wait()
            end
            killAllBusy = false
        end)
    end

    function _G.hubStabSheriffOnce(char, bp, deferred)
        local hum = char and char:FindFirstChild("Humanoid")
        local k   = bp and bp:FindFirstChild("Knife")
        if hum and k then hum:EquipTool(k) end
        if deferred then wait() else task.wait() end
        local knife = char and char:FindFirstChild("Knife")
        if not knife then return end
        local s = findSheriff()
        local tHrp = s and s.Character and s.Character:FindFirstChild("HumanoidRootPart")
        if tHrp then _G.hubStabPlayerHrp(char, knife, tHrp) end
    end

    Tabs.combat:Button({
        Title = "Kill All",
        Callback = _G.runKillAllBurst,
    })

    Tabs.combat:Dropdown({
        Title = "Kill Whitelist",
        Values = hubPlayerNames(),
        Value = dropdownval.killWhitelist,
        Multi = true, AllowNone = true, SearchBarEnabled = true,
        Flag = "killWhitelist",
        Callback = function(v)
            dropdownval.killWhitelist = hubNormalizeDropdownSelection(v, true)
        end,
    })

    --========================= AUTO SAFE TP =========================
    local hidden = false
    local anchorPos, savedCf, platform, notifyAt = nil, nil, nil, 0

    local function rayParamsFor(exclude)
        local filter = { localPlayer.Character }
        if platform then filter[#filter + 1] = platform end
        if exclude  then filter[#filter + 1] = exclude  end
        local rp = RaycastParams.new()
        rp.FilterType = Enum.RaycastFilterType.Exclude
        rp.FilterDescendantsInstances = filter
        return rp
    end

    local function hasLOS(from, toPart)
        if not from or not toPart or not toPart.Parent then return false end
        local parent = toPart.Parent
        local rp = rayParamsFor(parent)
        local points = {
            { from,                         toPart.Position },
            { from + Vector3.new(0, 1.5, 0),  toPart.Position + Vector3.new(0, 1.5, 0) },
            { from + Vector3.new(0, -0.5, 0), toPart.Position + Vector3.new(0, -1, 0) },
        }
        for _, pair in ipairs(points) do
            local delta = pair[2] - pair[1]
            if delta.Magnitude < 0.05 then return true end
            local hit = workspace:Raycast(pair[1], delta, rp)
            if not hit or hit.Instance:IsDescendantOf(parent) then return true end
        end
        return false
    end

    function _G.findNearestMurdererHrpInRange(pos, range, roundData)
        if not pos or not range then return nil end
        roundData = roundData or _G.autofarmCachedRoundData
        local bestD = range + 1
        local best  = nil
        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= localPlayer and findPlayerTool(p, "Knife") then
                local ch = p.Character
                local hrp = ch and ch:FindFirstChild("HumanoidRootPart")
                local hum = ch and ch:FindFirstChildOfClass("Humanoid")
                if hrp and hum and hum.Health > 0 then
                    local dead = roundData and roundData[p.Name]
                    if not (dead and (dead.Dead or dead.Killed)) then
                        local d = (pos - hrp.Position).Magnitude
                        if d <= range and d < bestD and hasLOS(pos, hrp) then
                            bestD = d
                            best = hrp
                        end
                    end
                end
            end
        end
        return best
    end

    local function activate(hrp, hum)
        if hidden or not hrp then return end
        local pos = hrp.Position
        local under = pos - Vector3.new(1000, 3, 1000)

        anchorPos = pos
        savedCf   = hrp.CFrame
        hidden    = true

        local part = Instance.new("Part")
        part.Name = "SNP_MurderSafePlatform"
        part.Size = Vector3.new(100, 1, 100)
        part.Position = under
        part.Anchored = true
        part.CanCollide = true
        part.Transparency = 1
        part.Parent = workspace
        platform = part

        hrp.CFrame = CFrame.new(under + Vector3.new(0, 4, 0))
        hrp.AssemblyLinearVelocity  = Vector3.zero
        hrp.AssemblyAngularVelocity = Vector3.zero
        if hum then hum:ChangeState(Enum.HumanoidStateType.Freefall) end
    end

    local function cleanup()
        if platform and platform.Parent then platform:Destroy() end
        platform, hidden, anchorPos, savedCf = nil, false, nil, nil
    end

    local function returnTo(hrp)
        if not hidden then return end
        if hrp and hrp.Parent and savedCf then
            hrp.CFrame = savedCf
            hrp.AssemblyLinearVelocity  = Vector3.zero
            hrp.AssemblyAngularVelocity = Vector3.zero
        end
        cleanup()
    end

    Tabs.combat:Toggle({
        Title = "Auto Safe TP (if murderer near)",
        Value = false, Flag = "tpSafePartIfMurderNearest",
        Callback = function(on)
            values.tpSafePartIfMurderNearest = on
            if not on then
                local hrp = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
                returnTo(hrp)
                return
            end
            task.spawn(function()
                notifyAt = 0
                while values.tpSafePartIfMurderNearest do
                    pcall(function()
                        if findPlayerTool(localPlayer, "Knife") then return end
                        local ch  = localPlayer.Character
                        local hrp = ch and ch:FindFirstChild("HumanoidRootPart")
                        local hum = ch and ch:FindFirstChildOfClass("Humanoid")
                        if not (hrp and hum and hum.Health > 0) then return end
                        local range = valueslider.murderSafeTpRange or 20

                        if hidden then
                            if not _G.findNearestMurdererHrpInRange(anchorPos, range) then
                                returnTo(hrp)
                            else
                                local now = tick()
                                if now - notifyAt >= 3 then
                                    notifyAt = now
                                    sendnotification("Murderer nearby — on safe platform", 3)
                                end
                            end
                        elseif _G.findNearestMurdererHrpInRange(hrp.Position, range) then
                            activate(hrp, hum)
                            notifyAt = 0
                        end
                    end)
                    task.wait(0.1)
                end
                local hrp = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
                returnTo(hrp)
            end)
        end,
    })

    hubInputOrSlider(Tabs.combat, {
        Title = "Safe TP Range",
        Value = { Min = 7, Max = 120, Default = 20 },
        Flag = "murderSafeTpRange",
        Callback = function(v) valueslider.murderSafeTpRange = tonumber(v) or 20 end,
    })
end

--=====================================================================
-- МОДУЛЬ 15: FLING
--=====================================================================
MODULES["Fling"] = function()
    _G.activeToggle = nil

    dropdownFling = Tabs.troll:Dropdown({
        Title = "Fling Target",
        Values = hubPlayerNames(),
        Value = dropdownval.flingPicked,
        Multi = true, AllowNone = true, SearchBarEnabled = true,
        Flag = "flingPicked",
        Callback = function(v)
            dropdownval.flingPicked = hubNormalizeDropdownSelection(v, true)
        end,
    })

    local function partSpeed(p)
        if not p or not p.Parent then return 0 end
        local v = p.AssemblyLinearVelocity
        if v.Magnitude > 0 then return v.Magnitude end
        return p.Velocity.Magnitude
    end

    function _G.minifling(player)
        if player == localPlayer or not player.Character then
            values.alr = false
            return
        end
        if values.alr then return end
        values.alr = true

        if type(_G.autofarmStopFloatDrive) == "function" then
            pcall(_G.autofarmStopFloatDrive, "minifling")
        end

        if values.flyEnabled then
            local hum = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
            if hum then hum.PlatformStand = false end
        end

        if not getgenv().FPDH then
            getgenv().FPDH = workspace.FallenPartsDestroyHeight
        end

        local bodyVel, camConn, camSubject

        local function applyCam(subject)
            local cam = workspace.CurrentCamera
            if cam and subject and subject.Parent then
                cam.CameraSubject = subject
            end
        end

        local function stopCamLock()
            if camConn then
                pcall(function() camConn:Disconnect() end)
                camConn = nil
            end
            camSubject = nil
        end

        local function cleanup(hum)
            stopCamLock()
            if bodyVel and bodyVel.Parent then pcall(function() bodyVel:Destroy() end) end
            pcall(function()
                workspace.FallenPartsDestroyHeight = getgenv().FPDH
                getgenv().FPDH = nil
            end)
            pcall(function()
                applyCam(localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid") or hum)
            end)
            if hum then pcall(function() hum:SetStateEnabled(Enum.HumanoidStateType.Seated, true) end) end
            values.alr = false
        end

        local function flingOne(target)
            local myChar = localPlayer.Character
            local myHum  = myChar and myChar:FindFirstChildOfClass("Humanoid")
            local myRoot = myHum and myHum.RootPart
            if not (target and myChar and myHum and myRoot) then cleanup(myHum) return end

            local tChar = target.Character
            if not tChar then cleanup(myHum) return end
            local tHum  = tChar:FindFirstChildOfClass("Humanoid")
            local tHrp  = tChar:FindFirstChild("HumanoidRootPart")
            local tHead = tChar:FindFirstChild("Head")
            if not (tHum and tHrp and tHead) then cleanup(myHum) return end

            if partSpeed(myRoot) < 50 then
                getgenv().OldPos = myRoot.CFrame
            end

            if tHead.Parent and partSpeed(tHead) > 500 then
                cleanup(myHum)
                return
            end

            stopCamLock()
            camSubject = tHead or tHum
            applyCam(camSubject)

            camConn = RunService.RenderStepped:Connect(function()
                if not values.alr then return end
                if not camSubject or not camSubject.Parent then
                    local c = target.Character
                    if c then camSubject = c:FindFirstChild("Head") or c:FindFirstChildOfClass("Humanoid") end
                end
                if camSubject then applyCam(camSubject) end
            end)

            local function fPos(part, off, rot)
                if not myRoot or not part or not part.Parent then return end
                local cf = CFrame.new(part.Position) * off * rot
                myRoot.CFrame = cf
                if myChar.PrimaryPart then myChar:SetPrimaryPartCFrame(cf) end
                myRoot.Velocity    = Vector3.new(9e7, 9e8, 9e7)
                myRoot.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
            end

            local function runV(part)
                local t0 = tick()
                local n = 0
                while true do
                    if not (target and target.Parent == Players) then break end
                    if not (target.Character and target.Character == tChar) then break end
                    if not (part and part.Parent) then break end
                    if not (myHum and myHum.Health > 0) then break end
                    if not (myRoot and myRoot.Parent) then break end
                    if tHum.Sit then break end

                    applyCam(camSubject or tHead or tHum)
                    local sp = partSpeed(part)

                    if sp < 50 then
                        n = n + 100
                        fPos(part, CFrame.new(0, 1.5, 0) + tHum.MoveDirection * sp / 1.25, CFrame.Angles(math.rad(n), 0, 0))
                        task.wait()
                        fPos(part, CFrame.new(0, -1.5, 0) + tHum.MoveDirection * sp / 1.25, CFrame.Angles(math.rad(n), 0, 0))
                        task.wait()
                        fPos(part, CFrame.new(2.25, 1.5, -2.25) + tHum.MoveDirection * sp / 1.25, CFrame.Angles(math.rad(n), 0, 0))
                        task.wait()
                        fPos(part, CFrame.new(-2.25, -1.5, 2.25) + tHum.MoveDirection * sp / 1.25, CFrame.Angles(math.rad(n), 0, 0))
                        task.wait()
                        fPos(part, CFrame.new(0, 1.5, 0) + tHum.MoveDirection, CFrame.Angles(math.rad(n), 0, 0))
                        task.wait()
                        fPos(part, CFrame.new(0, -1.5, 0) + tHum.MoveDirection, CFrame.Angles(math.rad(n), 0, 0))
                        task.wait()
                    else
                        fPos(part, CFrame.new(0, 1.5, tHum.WalkSpeed), CFrame.Angles(math.pi / 2, 0, 0))
                        task.wait()
                        fPos(part, CFrame.new(0, -1.5, -tHum.WalkSpeed), CFrame.Angles(0, 0, 0))
                        task.wait()
                        fPos(part, CFrame.new(0, 1.5, tHum.WalkSpeed), CFrame.Angles(math.pi / 2, 0, 0))
                        task.wait()
                        if tHrp and tHrp.Parent then
                            local hsp = partSpeed(tHrp)
                            fPos(part, CFrame.new(0, 1.5, hsp / 1.25), CFrame.Angles(math.pi / 2, 0, 0))
                            task.wait()
                            fPos(part, CFrame.new(0, -1.5, -hsp / 1.25), CFrame.Angles(0, 0, 0))
                            task.wait()
                            fPos(part, CFrame.new(0, 1.5, hsp / 1.25), CFrame.Angles(math.pi / 2, 0, 0))
                            task.wait()
                        end
                        fPos(part, CFrame.new(0, -1.5, 0), CFrame.Angles(math.pi / 2, 0, 0))
                        task.wait()
                        fPos(part, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()
                        fPos(part, CFrame.new(0, -1.5, 0), CFrame.Angles(-math.pi / 2, 0, 0))
                        task.wait()
                        fPos(part, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()
                    end

                    if partSpeed(part) > 500 or tick() > t0 + 2 then break end
                end
                stopCamLock()
                applyCam(myHum)
            end

            workspace.FallenPartsDestroyHeight = 0 / 0

            bodyVel = Instance.new("BodyVelocity")
            bodyVel.Name = "EpixVel"
            bodyVel.Parent = myRoot
            bodyVel.Velocity = Vector3.new(9e8, 9e8, 9e8)
            bodyVel.MaxForce = Vector3.new(math.huge, math.huge, math.huge)

            myHum:SetStateEnabled(Enum.HumanoidStateType.Seated, false)

            if (tHrp.Position - tHead.Position).Magnitude > 5 then
                runV(tHead)
            else
                runV(tHrp)
            end

            if bodyVel and bodyVel.Parent then bodyVel:Destroy() bodyVel = nil end
            myHum:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
            stopCamLock()
            applyCam(myHum)

            if getgenv().OldPos and myRoot and myChar and myHum and myHum.Health > 0 then
                local t0 = os.clock()
                while true do
                    if not (myRoot and myRoot.Parent) then break end
                    if os.clock() - t0 > 5 then break end
                    local cf = getgenv().OldPos * CFrame.new(0, 0.5, 0)
                    myRoot.CFrame = cf
                    if myChar.PrimaryPart then myChar:SetPrimaryPartCFrame(cf) end
                    myHum:ChangeState(Enum.HumanoidStateType.GettingUp)
                    for _, c in ipairs(myChar:GetChildren()) do
                        if c:IsA("BasePart") then
                            c.Velocity = Vector3.new()
                            c.RotVelocity = Vector3.new()
                        end
                    end
                    task.wait()
                    if (myRoot.Position - getgenv().OldPos.Position).Magnitude < 10 then break end
                end
            end

            cleanup(myHum)
        end

        flingOne(player)
    end

    local function flingLoop(playerPicker, flagName)
        return function(on)
            local stateVar = on
            if on then
                if _G.activeToggle then
                    sendnotification("Fling already active: " .. _G.activeToggle, 5)
                    return false
                end
                _G.activeToggle = flagName
                task.spawn(function()
                    local ok, err = pcall(function()
                        while stateVar do
                            local p = playerPicker()
                            if p and p ~= localPlayer and p.Character
                                and p.Character:FindFirstChild("HumanoidRootPart") then
                                _G.minifling(p)
                                while true do
                                    task.wait(0.1)
                                    if not values.alr or not stateVar then break end
                                end
                            end
                            task.wait(0.1)
                        end
                    end)
                    _G.activeToggle = nil
                    values.alr = false
                    if not ok then warn("[Fling] " .. tostring(err)) end
                end)
            end
        end
    end

    Tabs.troll:Toggle({
        Title = "Fling Selected", Value = false,
        Callback = flingLoop(function()
            local picked = hubNormalizeDropdownSelection(dropdownval.flingPicked, true)
            if #picked == 0 and type(dropdownFling.Value) == "table" then
                picked = hubNormalizeDropdownSelection(dropdownFling.Value, true)
            end
            for _, name in ipairs(picked) do
                local p = Players:FindFirstChild(name)
                if p and p ~= localPlayer and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                    return p
                end
            end
        end, "flingSelected"),
    })

    Tabs.troll:Toggle({
        Title = "Fling All", Value = false,
        Callback = flingLoop(function()
            for _, p in ipairs(Players:GetPlayers()) do
                if p ~= localPlayer and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                    return p
                end
            end
        end, "flingAll"),
    })

    Tabs.troll:Toggle({
        Title = "Fling Murderer", Value = false,
        Callback = flingLoop(findMurder, "flingMurder"),
    })

    Tabs.troll:Toggle({
        Title = "Fling Sheriff", Value = false,
        Callback = flingLoop(findSheriff, "flingSheriff"),
    })
end

--=====================================================================
-- МОДУЛЬ 16: BANG / GET SUCKED / GET BANGED
--=====================================================================
MODULES["Bang"] = function()
    local targetName, targetPlayer = "", nil

    dropdownBang = Tabs.troll:Dropdown({
        Title = "Bang Target",
        Values = hubPlayerNames(),
        SearchBarEnabled = true,
        Flag = "bangTarget",
        Callback = function(v)
            local n = hubNormalizeDropdownValue(v)
            targetName = n and string.lower(n) or ""
        end,
    })

    local function playAnim(hum, id)
        if not hum then return nil end
        local a = Instance.new("Animation")
        a.AnimationId = "rbxassetid://" .. id
        local track = hum:LoadAnimation(a)
        track:Play()
        return track
    end

    -- BANG
    local bangTrack, bangThread = nil, nil
    local function cleanupBang()
        values.bangFollowing = false
        if bangTrack then bangTrack:Stop() bangTrack = nil end
        bangThread = nil
        if conns.bangCharConn then conns.bangCharConn:Disconnect() conns.bangCharConn = nil end
    end

    Tabs.troll:Toggle({
        Title = "Bang", Value = false, Flag = "bang",
        Callback = function(on)
            if not on then cleanupBang() return end

            targetPlayer = nil
            for _, p in ipairs(Players:GetPlayers()) do
                if string.lower(p.Name) == targetName or string.lower(p.DisplayName) == targetName then
                    targetPlayer = p
                    break
                end
            end
            if not targetPlayer then
                sendnotification("Target not found", 4)
                cleanupBang()
                return
            end

            values.bangFollowing = true

            local function loop()
                while values.bangFollowing do
                    local c  = localPlayer.Character
                    local h  = c and c:FindFirstChildOfClass("Humanoid")
                    local hr = c and c:FindFirstChild("HumanoidRootPart")
                    local tc = targetPlayer.Character
                    local tr = tc and tc:FindFirstChild("HumanoidRootPart")
                    if h and hr and tr then
                        if not bangTrack or not bangTrack.IsPlaying then
                            bangTrack = playAnim(h, "10714068222")
                            if bangTrack then bangTrack:AdjustSpeed(2) end
                        end
                        local near = tr.CFrame * CFrame.new(0, 0, 1)
                        local away = tr.CFrame * CFrame.new(0, 0, 2.5)
                        TweenService:Create(hr, TweenInfo.new(0.2), { CFrame = near }):Play()
                        task.wait(0.2)
                        TweenService:Create(hr, TweenInfo.new(0.2), { CFrame = away }):Play()
                        task.wait(0.2)
                    else
                        task.wait(0.5)
                    end
                end
                if bangTrack then bangTrack:Stop() bangTrack = nil end
            end

            bangThread = coroutine.wrap(loop)
            bangThread()

            conns.bangCharConn = localPlayer.CharacterAdded:Connect(function(ch)
                if values.bangFollowing then
                    local h = ch:WaitForChild("Humanoid")
                    if bangTrack then bangTrack:Stop() end
                    bangTrack = playAnim(h, "10714068222")
                    if bangTrack then bangTrack:AdjustSpeed(2) end
                end
            end)
        end,
    })

    -- GET SUCKED
    local gsTrack, gsThread, gsOriginalGravity = nil, nil, nil
    local function cleanupGS()
        values.gsRunning = false
        if gsTrack then gsTrack:Stop() gsTrack = nil end
        gsThread = nil
        if conns.gsCharConn then conns.gsCharConn:Disconnect() conns.gsCharConn = nil end
        if gsOriginalGravity then
            workspace.Gravity = gsOriginalGravity
            gsOriginalGravity = nil
        end
    end

    Tabs.troll:Toggle({
        Title = "Get Sucked", Value = false, Flag = "getSuck",
        Callback = function(on)
            if not on then cleanupGS() return end

            targetPlayer = nil
            for _, p in ipairs(Players:GetPlayers()) do
                if string.lower(p.Name) == targetName or string.lower(p.DisplayName) == targetName then
                    targetPlayer = p
                    break
                end
            end
            if not targetPlayer then
                sendnotification("Target not found for Get Sucked", 4)
                cleanupGS()
                return
            end

            values.gsRunning = true
            gsOriginalGravity = workspace.Gravity
            workspace.Gravity = 0

            local function loop()
                local c = localPlayer.Character
                local h = c and c:FindFirstChildOfClass("Humanoid")
                if h then
                    gsTrack = playAnim(h, "5918726674")
                    if gsTrack then gsTrack:AdjustSpeed(2) end
                end

                while values.gsRunning do
                    local myC = localPlayer.Character
                    local myHrp = myC and myC:FindFirstChild("HumanoidRootPart")
                    local tHrp = targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")
                    if myHrp and tHrp then
                        myHrp.CFrame = tHrp.CFrame * CFrame.new(0, 2.3, -1.1) * CFrame.Angles(0, math.pi, 0)
                        myHrp.Velocity = Vector3.zero
                    else
                        task.wait(0.5)
                    end
                    RunService.Heartbeat:Wait()
                end

                if gsTrack then gsTrack:Stop() gsTrack = nil end
                if gsOriginalGravity then workspace.Gravity = gsOriginalGravity gsOriginalGravity = nil end
            end

            gsThread = coroutine.wrap(loop)
            gsThread()

            conns.gsCharConn = localPlayer.CharacterAdded:Connect(function(ch)
                if values.gsRunning then
                    local h = ch:WaitForChild("Humanoid")
                    if gsTrack then gsTrack:Stop() end
                    gsTrack = playAnim(h, "5918726674")
                    if gsTrack then gsTrack:AdjustSpeed(2) end
                end
            end)
        end,
    })

    -- GET BANGED
    local gbTrack, gbThread = nil, nil
    local function cleanupGB()
        values.gbRunning = false
        if gbTrack then gbTrack:Stop() gbTrack = nil end
        gbThread = nil
        if conns.gbCharConn then conns.gbCharConn:Disconnect() conns.gbCharConn = nil end
        if conns.gbTargetConn then conns.gbTargetConn:Disconnect() conns.gbTargetConn = nil end
    end

    Tabs.troll:Toggle({
        Title = "Get Banged", Value = false, Flag = "getBanged",
        Callback = function(on)
            if not on then cleanupGB() return end

            targetPlayer = nil
            for _, p in ipairs(Players:GetPlayers()) do
                if string.lower(p.Name) == targetName or string.lower(p.DisplayName) == targetName then
                    targetPlayer = p
                    break
                end
            end
            if not targetPlayer then
                sendnotification("Target not found for Get Banged", 4)
                cleanupGB()
                return
            end

            values.gbRunning = true

            local c = localPlayer.Character
            local h = c and c:FindFirstChildOfClass("Humanoid")
            if h then
                if gbTrack then gbTrack:Stop() end
                gbTrack = playAnim(h, "10714360343")
            end

            local function loop()
                while values.gbRunning do
                    local myC = localPlayer.Character
                    local tC  = targetPlayer.Character
                    local myHrp = myC and myC:FindFirstChild("HumanoidRootPart")
                    local tHrp  = tC  and tC:FindFirstChild("HumanoidRootPart")
                    if myHrp and tHrp then
                        local back  = tHrp.CFrame * CFrame.new(0, 0, -1.5)
                        local back2 = tHrp.CFrame * CFrame.new(0, 0, -1.1)
                        local t1 = TweenService:Create(myHrp, TweenInfo.new(0.15, Enum.EasingStyle.Linear), { CFrame = back })
                        t1:Play()
                        pcall(function() t1.Completed:Wait() end)
                        local t2 = TweenService:Create(myHrp, TweenInfo.new(0.15, Enum.EasingStyle.Linear), { CFrame = back2 })
                        t2:Play()
                        pcall(function() t2.Completed:Wait() end)
                    else
                        task.wait(0.3)
                    end
                end
                if gbTrack then gbTrack:Stop() gbTrack = nil end
            end

            gbThread = coroutine.wrap(loop)
            gbThread()

            conns.gbCharConn = localPlayer.CharacterAdded:Connect(function(ch)
                if not values.gbRunning then return end
                local h2 = ch:WaitForChild("Humanoid")
                if gbTrack then gbTrack:Stop() gbTrack = nil end
                gbTrack = playAnim(h2, "10714360343")
            end)
        end,
    })
end

--=====================================================================
-- МОДУЛЬ 17: TROLL MISC (Fake Dead / Spinner / Fake Lag / Jerk Off)
--=====================================================================
MODULES["TrollMisc"] = function()
    -- Fake Dead 1
    local dead1 = nil
    Tabs.troll:Button({
        Title = "Fake Dead 1",
        Callback = function()
            local c = localPlayer.Character
            local h = c and c:FindFirstChildOfClass("Humanoid")
            if not h or h.Health <= 0 then return end
            if dead1 then dead1:Stop() dead1 = nil end
            if conns.deadConn then conns.deadConn:Disconnect() conns.deadConn = nil end
            local a = Instance.new("Animation")
            a.AnimationId = "rbxassetid://125450209491075"
            dead1 = h:LoadAnimation(a)
            dead1.Looped = true
            dead1:Play()
            h.JumpPower = 0
            conns.deadConn = h.Running:Connect(function(speed)
                if speed > 0.1 then
                    if dead1 then dead1:Stop() dead1 = nil end
                    h.JumpPower = 50
                    if conns.deadConn then conns.deadConn:Disconnect() conns.deadConn = nil end
                end
            end)
            h.Died:Connect(function()
                if dead1 then dead1:Stop() end
                dead1 = nil
                if conns.deadConn then conns.deadConn:Disconnect() conns.deadConn = nil end
            end)
        end,
    })

    -- Fake Dead 2
    local dead2 = nil
    Tabs.troll:Button({
        Title = "Fake Dead 2",
        Callback = function()
            local c = localPlayer.Character
            local h = c and c:FindFirstChildOfClass("Humanoid")
            if not h or h.Health <= 0 then return end
            if dead2 then dead2:Stop() dead2 = nil end
            if conns.deadConn2 then conns.deadConn2:Disconnect() conns.deadConn2 = nil end
            local a = Instance.new("Animation")
            a.AnimationId = "rbxassetid://118790173254253"
            dead2 = h:LoadAnimation(a)
            dead2.Looped = true
            dead2:Play()
            h.JumpPower = 0
            conns.deadConn2 = h.Running:Connect(function(speed)
                if speed > 0.1 then
                    if dead2 then dead2:Stop() dead2 = nil end
                    h.JumpPower = 50
                    if conns.deadConn2 then conns.deadConn2:Disconnect() conns.deadConn2 = nil end
                end
            end)
            h.Died:Connect(function()
                if dead2 then dead2:Stop() end
                dead2 = nil
                if conns.deadConn2 then conns.deadConn2:Disconnect() conns.deadConn2 = nil end
            end)
        end,
    })

    -- Spinner
    local SPIN_BIND = "SNPWARE_Spinner"
    local savedAutoRotate = nil

    local function stopSpinner()
        pcall(function() RunService:UnbindFromRenderStep(SPIN_BIND) end)
        local c = localPlayer.Character
        if c then
            local h = c:FindFirstChildOfClass("Humanoid")
            if h and savedAutoRotate ~= nil then h.AutoRotate = savedAutoRotate end
            local r = getRoot(c)
            if r then
                local s = r:FindFirstChild("Spinning")
                if s then s:Destroy() end
            end
        end
        savedAutoRotate = nil
    end

    local function startSpinner()
        stopSpinner()
        local c = localPlayer.Character
        if not c then return end
        local r = getRoot(c)
        local h = c:FindFirstChildOfClass("Humanoid")
        if not (r and h) then return end

        local s = r:FindFirstChild("Spinning")
        if s then s:Destroy() end
        savedAutoRotate = h.AutoRotate
        h.AutoRotate = false

        RunService:BindToRenderStep(SPIN_BIND, Enum.RenderPriority.Last.Value, function(dt)
            if not values.spinningEnabled then stopSpinner() return end
            local ch = localPlayer.Character
            if not ch then return end
            local root = getRoot(ch)
            local hum  = ch:FindFirstChildOfClass("Humanoid")
            if not (root and hum) or hum.Health <= 0 then return end
            hum.AutoRotate = false
            local speed = tonumber(valueslider.spinspeed) or 40
            root.CFrame = root.CFrame * CFrame.Angles(0, math.rad(speed) * dt, 0)
        end)
    end

    Tabs.troll:Toggle({
        Title = "Spinner", Value = false, Flag = "spinningEnabled",
        Callback = function(on)
            values.spinningEnabled = on
            if on then startSpinner() else stopSpinner() end
        end,
    })

    hubInputOrSlider(Tabs.troll, {
        Title = "Spinner Speed",
        Value = { Min = 2, Max = 200, Default = 40 },
        Flag = "spinspeed",
        Callback = function(v) valueslider.spinspeed = v end,
    })

    localPlayer.CharacterAdded:Connect(function()
        if values.spinningEnabled then
            task.wait(0.5)
            startSpinner()
        end
    end)

    -- Fake Lag
    local function fakelagSeconds(v, def)
        local n = tonumber(v) or def
        if n > 1 then return n / 100 end
        return n
    end

    local function doTeleport()
        local c = localPlayer.Character
        local h = c and c:FindFirstChild("Humanoid")
        local r = c and c:FindFirstChild("HumanoidRootPart")
        if r and h and h.MoveDirection.Magnitude > 0 then
            r.CFrame = r.CFrame + h.MoveDirection.Unit * math.random(valueslider.teleportDistance * 100) / 100
        end
    end

    task.spawn(function()
        while true do
            if values.enabledfakelag then
                local c = localPlayer.Character
                local r = c and c:FindFirstChild("HumanoidRootPart")
                if r then
                    r.Anchored = true
                    task.wait(fakelagSeconds(valueslider.anchoredDuration, 0.4))
                    r.Anchored = false
                    if values.teleportEnabled then doTeleport() end
                end
            end
            task.wait(fakelagSeconds(valueslider.interval, 0.07))
        end
    end)

    Tabs.troll:Toggle({
        Title = "Fake Lag", Value = false, Flag = "enabledfakelag",
        Callback = function(on) values.enabledfakelag = on end,
    })
    hubInputOrSlider(Tabs.troll, {
        Title = "Fake Lag Interval",
        Value = { Min = 1, Max = 100, Default = 7 },
        Step = 1, Flag = "interval",
        Callback = function(v) valueslider.interval = v / 100 end,
    })
    hubInputOrSlider(Tabs.troll, {
        Title = "Fake Lag Anchored Duration",
        Value = { Min = 30, Max = 200, Default = 40 },
        Step = 1, Flag = "anchoredDuration",
        Callback = function(v) valueslider.anchoredDuration = v / 100 end,
    })
    Tabs.troll:Toggle({
        Title = "Fake Lag WiFi Teleport", Value = false, Flag = "teleportEnabled",
        Callback = function(on) values.teleportEnabled = on end,
    })
    hubInputOrSlider(Tabs.troll, {
        Title = "Teleport Distance",
        Value = { Min = 5, Max = 50, Default = 15 },
        Flag = "teleportDistance",
        Callback = function(v) valueslider.teleportDistance = v end,
    })

    -- Jerk Off
    local jerkTrack = nil
    local function startJerk()
        if jerkTrack then jerkTrack:Stop() end
        local c = localPlayer.Character or localPlayer.CharacterAdded:Wait()
        local h = c:FindFirstChildOfClass("Humanoid")
        if h and values.jerkenabled then
            local a = Instance.new("Animation")
            a.AnimationId = "rbxassetid://698251653"
            jerkTrack = h:LoadAnimation(a)
            jerkTrack:Play()
            jerkTrack.TimePosition = 0.58
            jerkTrack:AdjustSpeed(valueslider.jerkUI / 10)
            task.spawn(function()
                while jerkTrack and values.jerkenabled do
                    if jerkTrack.TimePosition >= 0.63 then
                        jerkTrack.TimePosition = 0.58
                    end
                    task.wait()
                end
            end)
        end
    end

    Tabs.troll:Toggle({
        Title = "Jerk Off", Value = false, Flag = "jerkenabled",
        Callback = function(on)
            values.jerkenabled = on
            if on then
                startJerk()
                if not conns.jerkConn then
                    conns.jerkConn = localPlayer.CharacterAdded:Connect(function()
                        task.wait(0.5)
                        if values.jerkenabled then startJerk() end
                    end)
                end
            else
                if jerkTrack then jerkTrack:Stop() jerkTrack = nil end
                if conns.jerkConn then conns.jerkConn:Disconnect() conns.jerkConn = nil end
            end
        end,
    })

    hubInputOrSlider(Tabs.troll, {
        Title = "Jerk Speed",
        Value = { Min = 1, Max = 10, Default = 5 },
        Step = 1, Flag = "jerkUI",
        Callback = function(v)
            valueslider.jerkUI = tonumber(v) or 5
            if jerkTrack then jerkTrack:AdjustSpeed(valueslider.jerkUI / 10) end
        end,
    })
end

-- ═══════════════════════════════════════════════════════════
-- [КОНЕЦ ЧАСТИ 3] — СЛЕДУЮЩАЯ ЧАСТЬ КЛЕИТСЯ СРАЗУ ПОСЛЕ
-- ═══════════════════════════════════════════════════════════
--=====================================================================
-- МОДУЛЬ 18: EMOTES
--=====================================================================
MODULES["Emotes"] = function()
    local EMOTE_LIST = {
        "sit", "ninja", "dab", "zen", "floss",
        "headless", "zombie", "wave", "cheer", "laugh",
    }

    local function playEmote(name)
        local remotes = ReplicatedStorage:FindFirstChild("Remotes")
        local misc = remotes and remotes:FindFirstChild("Misc")
        local pe = misc and misc:FindFirstChild("PlayEmote")
        if pe then pe:Fire(name) end
    end

    local spamLoopStarted = false
    local function ensureSpamLoop()
        if spamLoopStarted then return end
        spamLoopStarted = true
        task.spawn(function()
            while true do
                task.wait(1 / math.clamp(tonumber(valueslider.emoteSpamSpeed) or 1, 1, 10))
                if values.spamEmotes then
                    playEmote(EMOTE_LIST[math.random(1, #EMOTE_LIST)])
                end
            end
        end)
    end

    Tabs.emotes:Toggle({
        Title = "Spam Emotes", Value = false, Flag = "spamEmotes",
        Callback = function(on)
            values.spamEmotes = on
            ensureSpamLoop()
        end,
    })

    hubInputOrSlider(Tabs.emotes, {
        Title = "Emote Spam Speed",
        Value = { Min = 1, Max = 10, Default = 3 },
        Step = 1, Flag = "emoteSpamSpeed",
        Callback = function(v) valueslider.emoteSpamSpeed = v end,
    })

    Tabs.emotes:Divider()

    local buttons = {
        { "Ninja",    "ninja"    },
        { "Sit",      "sit"      },
        { "Headless", "headless" },
        { "Dab",      "dab"      },
        { "Zen",      "zen"      },
        { "Floss",    "floss"    },
        { "Zombie",   "zombie"   },
        { "Wave",     "wave"     },
        { "Cheer",    "cheer"    },
        { "Laugh",    "laugh"    },
    }
    for _, e in ipairs(buttons) do
        Tabs.emotes:Button({
            Title = e[1],
            Callback = function() playEmote(e[2]) end,
        })
    end
end

--=====================================================================
-- МОДУЛЬ 19: HUB BUTTONS
--=====================================================================
MODULES["HubButtons"] = function()
    HUB_BUTTON_BY_ID     = HUB_BUTTON_BY_ID or {}
    hubButtonsScreenGui  = nil
    hubButtonZIndex      = 50
    hubButtonControllers = {}
    hubButtonDragSession = nil
    hubButtonDragConns   = nil
    hubButtonPaintList   = hubButtonPaintList or {}

    HUB_BUTTON_DEFS = {
        { id = "grabGun",     title = "Grab Gun",     action = function() if _G.grabGunByMode then _G.grabGunByMode(false) end end },
        { id = "shootmurder", title = "Shoot Murder", action = function() if _G.shootCallback then _G.shootCallback(true) end end },
        { id = "killall",     title = "Kill All",     action = function() if _G.runKillAllBurst then _G.runKillAllBurst() end end },
        { id = "clutchbomb",  title = "Clutch Bomb",  action = function() end },
        { id = "tpSheriff",   title = "TP Sheriff",   action = function()
            for _, p in ipairs(Players:GetPlayers()) do
                if p.Character and (p.Character:FindFirstChild("Gun") or findPlayerTool(p, "Gun")) then
                    local myHrp = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local tHrp  = p.Character:FindFirstChild("HumanoidRootPart")
                    if myHrp and tHrp then myHrp.CFrame = tHrp.CFrame end
                    return
                end
            end
            sendnotification("Sheriff not found", 4)
        end },
        { id = "tpMurderer",  title = "TP Murder",    action = function()
            local m = findMurder()
            if m and m.Character then
                local myHrp = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
                local tHrp  = m.Character:FindFirstChild("HumanoidRootPart")
                if myHrp and tHrp then myHrp.CFrame = tHrp.CFrame end
            else
                sendnotification("Murderer not found", 4)
            end
        end },
        { id = "tpLobby",     title = "Lobby",        action = function()
            local myHrp = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
            local spawns = workspace:FindFirstChild("Spawns", true)
            local kids = spawns and spawns:GetChildren() or {}
            if myHrp and #kids > 0 then
                myHrp.CFrame = kids[math.random(1, #kids)].CFrame + Vector3.new(0, 3, 0)
            end
        end },
        { id = "tpMap",       title = "Map",          action = function()
            local myHrp = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
            if not myHrp then return end
            for _, d in ipairs(workspace:GetDescendants()) do
                if d.Name == "Spawn" or d.Name == "PlayerSpawn" then
                    myHrp.CFrame = CFrame.new(d.Position) * CFrame.new(0, 2.5, 0)
                end
            end
        end },
        { id = "killSheriff", title = "Kill SH",      action = function()
            local char = localPlayer.Character
            local bp   = getPlayerBackpack(localPlayer)
            if (bp and bp:FindFirstChild("Knife")) or (char and char:FindFirstChild("Knife")) then
                pcall(_G.hubStabSheriffOnce, char, bp, false)
            else
                sendnotification("You don't have a knife", 4)
            end
        end },
    }

    for i, def in ipairs(HUB_BUTTON_DEFS) do
        HUB_BUTTON_BY_ID[def.id] = def
        buttonParams[def.id] = buttonParams[def.id] or {
            enabled = false,
            sizeX = 120, sizeY = 44, corner = 14,
            posX = 20, posY = 20 + (i - 1) * 52,
        }
    end

    local function ensureScreenGui()
        if hubButtonsScreenGui and hubButtonsScreenGui.Parent then return hubButtonsScreenGui end
        local sg = Instance.new("ScreenGui")
        sg.Name = "SNP_HubButtons"
        sg.ResetOnSpawn = false
        sg.IgnoreGuiInset = true
        sg.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        sg.DisplayOrder = 10050
        local parent = (type(gethui) == "function" and gethui()) or CoreGui
        pcall(function() sg.Parent = parent end)
        hubButtonsScreenGui = sg
        return sg
    end

    local function bringToFront(btn)
        hubButtonZIndex = hubButtonZIndex + 1
        btn.ZIndex = hubButtonZIndex
    end

    local function inputPosVec2(pos)
        if typeof(pos) == "Vector2" then return pos end
        if typeof(pos) == "Vector3" then return Vector2.new(pos.X, pos.Y) end
        return UserInputService:GetMouseLocation()
    end

    local function finishDrag(save)
        local s = hubButtonDragSession
        if not s then return end
        hubButtonDragSession = nil
        s.dragging = false
        s.inputHeld = false
        s.multiTouchSeen = false
        s.activeInput = nil
        if save and s.dragMoved and s.savePosition then s.savePosition() end
        if s.dragMoved and s.suppressClick then s.suppressClick() end
        if s.onDragFinished then s.onDragFinished() end
        s.dragMoved = false
    end

    local function isDragInputHeld(input)
        if not input or not input.inputType then return false end
        if input.inputType == Enum.UserInputType.MouseButton1 then
            return UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
        end
        if input.inputType == Enum.UserInputType.Touch then
            if input.inputHeld then return true end
            local touches = UserInputService:GetTouchInputs()
            for _, t in ipairs(touches) do
                if t == input.activeInput then return true end
            end
        end
        return false
    end

    local function ensureDragConns()
        if hubButtonDragConns then return end
        hubButtonDragConns = {}

        table.insert(hubButtonDragConns, UserInputService.InputChanged:Connect(function(input)
            local s = hubButtonDragSession
            if not s or s.locked or not s.dragging then return end
            local ok = false
            if s.inputType == Enum.UserInputType.MouseButton1 then
                ok = input.UserInputType == Enum.UserInputType.MouseMovement
            elseif s.inputType == Enum.UserInputType.Touch then
                if input.UserInputType == Enum.UserInputType.Touch then ok = true end
            end
            if not ok then return end
            if not isDragInputHeld(s) then finishDrag(true) return end

            local delta = inputPosVec2(input.Position) - inputPosVec2(s.dragStart)
            local moved = s.dragMoved
            if not moved then
                moved = math.abs(delta.X) + math.abs(delta.Y) >= s.threshold
            end
            if moved then s.dragMoved = true end
            if not s.dragMoved then return end
            s.setPos(s.startOffset.X + delta.X, s.startOffset.Y + delta.Y)
            if s.savePosition then s.savePosition() end
        end))

        table.insert(hubButtonDragConns, UserInputService.InputEnded:Connect(function(input)
            local s = hubButtonDragSession
            if not s or not s.dragging then return end
            if s.activeInput and input == s.activeInput then
                finishDrag(true)
            elseif s.inputType == Enum.UserInputType.MouseButton1
                and input.UserInputType == Enum.UserInputType.MouseButton1 then
                finishDrag(true)
            end
        end))

        table.insert(hubButtonDragConns, RunService.Heartbeat:Connect(function()
            local s = hubButtonDragSession
            if not s or not s.dragging then return end
            if s.inputType == Enum.UserInputType.Touch then return end
            if not isDragInputHeld(s) then finishDrag(true) end
        end))
    end

    local function createButton(logName, text, sizeX, sizeY, corner, onClick, opts)
        opts = opts or {}
        ensureDragConns()
        local sg = ensureScreenGui()

        local btn = Instance.new("TextButton")
        btn.Name = logName .. "Btn"
        btn.Text = text
        btn.Size = UDim2.fromOffset(sizeX, sizeY)
        btn.BackgroundColor3 = Color3.fromRGB(10, 6, 1)
        btn.BackgroundTransparency = 0.5
        btn.BorderSizePixel = 0
        btn.TextColor3 = Color3.fromRGB(221, 214, 197)
        btn.TextSize = 11
        btn.Font = Enum.Font.GothamBold
        btn.AnchorPoint = Vector2.new(0.5, 0.5)
        btn.Active = true
        btn.AutoButtonColor = false
        btn.Parent = sg

        bringToFront(btn)

        local corner_ = Instance.new("UICorner", btn)
        corner_.CornerRadius = UDim.new(0, corner or 14)

        local stroke = Instance.new("UIStroke", btn)
        stroke.Thickness = 0.9
        stroke.Color = (currentThemePalette and currentThemePalette.accentDark)
                       or Color3.fromRGB(176, 113, 23)
        stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

        local sound = Instance.new("Sound", btn)
        sound.SoundId = "rbxassetid://6324790483"
        sound.Volume = 2.2

        local scale = Instance.new("UIScale", btn)
        scale.Scale = 1

        table.insert(hubButtonPaintList, { btn = btn, border = stroke })

        local ctrl = {
            sizeX = sizeX, sizeY = sizeY, btn = btn, border = stroke,
            sg = sg, clickSound = sound, pressScale = scale, connections = {},
        }

        local dragSession = {
            dragging = false, dragMoved = false, locked = false,
            inputHeld = false, multiTouchSeen = false, threshold = 6,
            dragStart = nil, startOffset = nil, activeInput = nil,
            inputType = nil, btnName = logName,
        }

        local function getPos()
            return btn.Position.X.Offset - sizeX * 0.5, btn.Position.Y.Offset - sizeY * 0.5
        end
        local function clampPos(x, y)
            local abs = sg.AbsoluteSize
            return math.clamp(x, 0, math.max(0, abs.X - sizeX)),
                   math.clamp(y, 0, math.max(0, abs.Y - sizeY))
        end
        local function setPos(x, y)
            local cx, cy = clampPos(x, y)
            btn.Position = UDim2.fromOffset(cx + sizeX * 0.5, cy + sizeY * 0.5)
            dragSession.lastX = cx
            dragSession.lastY = cy
        end
        local function savePos()
            if opts.onPosChanged then
                local x, y = getPos()
                opts.onPosChanged(x, y)
            end
        end

        dragSession.setPos = setPos
        dragSession.savePosition = savePos
        dragSession.onDragBegan = function() bringToFront(btn) end

        local suppressClick = false
        dragSession.suppressClick = function()
            suppressClick = true
            task.defer(function() suppressClick = false end)
        end
        dragSession.onDragFinished = function() ctrl:playPress(false) end

        function ctrl:playPress(pressed)
            if not self.btn or not self.btn.Parent then return end
            local target = pressed and 0.92 or 1
            if self.pressScale then self.pressScale.Scale = target end
            if self.border then self.border.Thickness = pressed and 1.15 or 0.9 end
            if pressed and self.clickSound then self.clickSound:Play() end
        end

        local function beginDrag(input)
            if dragSession.locked or not input then return end
            dragSession.dragging = true
            dragSession.dragMoved = false
            dragSession.inputHeld = true
            dragSession.multiTouchSeen = false
            dragSession.activeInput = input
            dragSession.inputType = input.UserInputType
            dragSession.dragStart = inputPosVec2(input.Position)
            local x, y = getPos()
            dragSession.startOffset = Vector2.new(x, y)
            bringToFront(btn)
            if hubButtonDragSession and hubButtonDragSession ~= dragSession then
                finishDrag(true)
            end
            hubButtonDragSession = dragSession
            if dragSession.onDragBegan then dragSession.onDragBegan() end
        end

        setPos(opts.posX or 20, opts.posY or 20)

        table.insert(ctrl.connections, btn.InputBegan:Connect(function(input)
            if input.UserInputType ~= Enum.UserInputType.MouseButton1
                and input.UserInputType ~= Enum.UserInputType.Touch then return end
            ctrl:playPress(true)
            beginDrag(input)
        end))

        table.insert(ctrl.connections, btn.MouseLeave:Connect(function()
            if not dragSession.dragging and hubButtonDragSession ~= dragSession then
                ctrl:playPress(false)
            end
        end))

        table.insert(ctrl.connections, btn.Activated:Connect(function()
            if suppressClick or dragSession.dragMoved then return end
            if onClick then onClick() end
        end))

        function ctrl:setSize(sx, sy)
            self.sizeX = sx
            self.sizeY = sy
            btn.Size = UDim2.fromOffset(sx, sy)
            local x, y = getPos()
            setPos(x, y)
        end

        function ctrl:setCorner(r)
            corner_.CornerRadius = UDim.new(0, r)
        end

        function ctrl:setPosition(x, y) setPos(x, y) end

        function ctrl:setDragLocked(locked)
            dragSession.locked = locked == true
        end

        function ctrl:destroy()
            if hubButtonDragSession == dragSession then finishDrag(false) end
            for _, c in ipairs(ctrl.connections) do
                pcall(function() c:Disconnect() end)
            end
            btn:Destroy()
        end

        return ctrl
    end

    function _G.hubButtonSync(id)
        local p = buttonParams[id]
        local def = HUB_BUTTON_BY_ID[id]
        if not p or not def then return end

        local ctrl = hubButtonControllers[id]
        if p.enabled then
            if not ctrl then
                local ok, result = pcall(createButton, "HubBtn_" .. id, def.title,
                    p.sizeX, p.sizeY, p.corner, def.action,
                    { posX = p.posX or 20, posY = p.posY or 20,
                      onPosChanged = function(x, y) p.posX = x p.posY = y end })
                if ok then hubButtonControllers[id] = result end
            else
                ctrl:setSize(p.sizeX, p.sizeY)
                ctrl:setCorner(p.corner)
            end
        elseif ctrl then
            ctrl:destroy()
            hubButtonControllers[id] = nil
        end
    end

    for i, def in ipairs(HUB_BUTTON_DEFS) do
        if i > 1 then Tabs.buttons:Divider() end

        Tabs.buttons:Toggle({
            Title = def.title,
            Desc = "Show on screen",
            Value = false,
            Flag = "btn_" .. def.id .. "_enabled",
            Callback = function(on)
                buttonParams[def.id].enabled = on
                _G.hubButtonSync(def.id)
            end,
        })

        hubInputOrSlider(Tabs.buttons, {
            Title = "Width",
            Value = { Min = 60, Max = 280, Default = buttonParams[def.id].sizeX },
            Flag = "btn_" .. def.id .. "_sizeX",
            Callback = function(v)
                buttonParams[def.id].sizeX = tonumber(v) or 120
                _G.hubButtonSync(def.id)
            end,
        })
        hubInputOrSlider(Tabs.buttons, {
            Title = "Height",
            Value = { Min = 28, Max = 160, Default = buttonParams[def.id].sizeY },
            Flag = "btn_" .. def.id .. "_sizeY",
            Callback = function(v)
                buttonParams[def.id].sizeY = tonumber(v) or 44
                _G.hubButtonSync(def.id)
            end,
        })
        hubInputOrSlider(Tabs.buttons, {
            Title = "Corner",
            Value = { Min = 0, Max = 40, Default = buttonParams[def.id].corner },
            Flag = "btn_" .. def.id .. "_corner",
            Callback = function(v)
                buttonParams[def.id].corner = tonumber(v) or 14
                _G.hubButtonSync(def.id)
            end,
        })
    end
end

--=====================================================================
-- МОДУЛЬ 20: AUTO FARM (упрощённый, но рабочий)
--=====================================================================
MODULES["AutoFarm"] = function()
    _G.autofarmTotalCoins       = 0
    _G.autofarmCoinCollectCount = 0
    _G.autofarmCachedRoundData  = nil
    _G.autofarmCachedCoinContainer = nil
    _G.autofarmBurstShooting    = false
    _G.autofarmKillAllBusy      = false
    _G.autofarmActiveTween      = nil

    local function ensureCoinContainer()
        local c = _G.autofarmCachedCoinContainer
        if c and c.Parent then return c end
        for _, ch in ipairs(workspace:GetChildren()) do
            if ch:IsA("Model") then
                local cc = ch:FindFirstChild("CoinContainer")
                if cc then
                    _G.autofarmCachedCoinContainer = cc
                    return cc
                end
            end
        end
        return nil
    end

    local function pickFarmCoin(mode)
        local myHrp = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
        if not myHrp then return nil end
        local cc = ensureCoinContainer()
        if not cc then return nil end

        local function valid(c)
            return c and c.Name == "Coin_Server" and c.Parent
                and not c:FindFirstChild("CollectedCoin")
                and c:FindFirstChild("TouchInterest")
        end

        if mode == "Randomize" then
            local list, n = {}, 0
            for _, c in ipairs(cc:GetChildren()) do
                if valid(c) then
                    local ok, delta = pcall(function() return c.Position - myHrp.Position end)
                    if ok and delta and delta.Magnitude < 300 then
                        n = n + 1
                        list[n] = c
                    end
                end
            end
            if n == 0 then return nil end
            return list[math.random(1, n)]
        end

        local best, bestD = nil, math.huge
        for _, c in ipairs(cc:GetChildren()) do
            if valid(c) then
                local ok, delta = pcall(function() return c.Position - myHrp.Position end)
                if ok and delta then
                    local d = delta.X * delta.X + delta.Y * delta.Y + delta.Z * delta.Z
                    if d < bestD then bestD = d best = c end
                end
            end
        end
        return best
    end

    local function getCoinTp()
        local cc = ensureCoinContainer()
        if not cc then return nil end
        for _, c in ipairs(cc:GetChildren()) do
            if c.Name == "Coin_Server"
                and not c:FindFirstChild("CollectedCoin")
                and c:FindFirstChild("TouchInterest") then
                return c
            end
        end
        return nil
    end

    local function getRoundData()
        if not GetCurrentPlayerData then return nil end
        local ok, res = pcall(function() return GetCurrentPlayerData:InvokeServer() end)
        if ok and type(res) == "table" then return res end
        return nil
    end

    local function isLocalMurderer(data)
        if not data then return false end
        local me = data[localPlayer.Name]
        return me and me.Role == "Murderer"
    end

    local function allOthersDead(data)
        if not data then return false end
        for name, info in pairs(data) do
            if name ~= localPlayer.Name and not (info.Dead or info.Killed) then
                return false
            end
        end
        return true
    end

    local function tpToLobby(hrp)
        local spawns = workspace:FindFirstChild("Spawns", true)
        local list = spawns and spawns:GetChildren() or {}
        if hrp and #list > 0 then
            hrp.CFrame = list[math.random(1, #list)].CFrame + Vector3.new(0, 3, 0)
        end
    end

    local function getCameraYaw()
        local cam = workspace.CurrentCamera
        if not cam then return 0 end
        local look = cam.CFrame.LookVector
        return math.atan2(-look.X, -look.Z)
    end

    local function buildLayCFrame(pos)
        if UserInputService.MouseBehavior == Enum.MouseBehavior.LockCenter then
            return CFrame.new(pos) * CFrame.Angles(math.pi / 2, getCameraYaw(), 0)
        end
        return CFrame.new(pos) * CFrame.Angles(math.pi / 2, 0, 0)
    end

    local floatPart = nil
    local floatSyncConn = nil

    local function destroyFloatPart()
        if floatPart then
            local parent = floatPart.Parent
            pcall(function() floatPart:Destroy() end)
            if parent and parent:IsA("Folder") then pcall(function() parent:Destroy() end) end
        end
        floatPart = nil
    end

    local function createFloatPart()
        destroyFloatPart()
        local hrp = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
        if not hrp then return nil end

        local folder = Instance.new("Folder")
        folder.Name = "SNP_FloatDrive"
        folder.Parent = workspace

        local part = Instance.new("Part")
        part.Name = "SNP_FloatPart"
        part.Size = Vector3.one
        part.Transparency = 1
        part.Anchored = true
        part.Massless = true
        part.CanCollide = false
        part.CanQuery = false
        part.CanTouch = false
        part.CastShadow = false
        part.CFrame = buildLayCFrame(hrp.Position)
        part.Parent = folder
        floatPart = part
        return part
    end

    local function syncHrpToFloat()
        local hrp = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
        if not hrp or not floatPart then return end
        if UserInputService.MouseBehavior == Enum.MouseBehavior.LockCenter then
            hrp.CFrame = buildLayCFrame(floatPart.Position)
        else
            hrp.CFrame = floatPart.CFrame
        end
        hrp.AssemblyLinearVelocity  = Vector3.zero
        hrp.AssemblyAngularVelocity = Vector3.zero
    end

    local function startFloatDrive()
        if not floatSyncConn then
            floatSyncConn = RunService.Heartbeat:Connect(function()
                if not values.runnings then return end
                if _G.autofarmKillAllBusy or values.alr then return end
                if dropdownval.farmType ~= "Floating" then return end
                syncHrpToFloat()
            end)
        end
    end

    function _G.autofarmStopFloatDrive(reason)
        if _G.autofarmActiveTween then
            pcall(function() _G.autofarmActiveTween:Cancel() end)
            _G.autofarmActiveTween = nil
        end
        if floatSyncConn then
            pcall(function() floatSyncConn:Disconnect() end)
            floatSyncConn = nil
        end
        local hrp = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
        local hum = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
        destroyFloatPart()
        if hum then
            hum.Sit = false
            hum.AutoRotate = true
            pcall(function() hum:ChangeState(Enum.HumanoidStateType.GettingUp) end)
        end
        if hrp then
            hrp.AssemblyLinearVelocity = Vector3.zero
            hrp.AssemblyAngularVelocity = Vector3.zero
        end
    end

    local function clearFlyForces(hrp)
        if not hrp then return end
        pcall(function()
            local fly = hrp:FindFirstChild("FLY_NIGGER")
            if fly then fly:Destroy() end
            for _, c in ipairs(hrp:GetChildren()) do
                if c:IsA("BodyVelocity") or c:IsA("BodyPosition")
                    or c:IsA("BodyAngularVelocity") or c:IsA("LinearVelocity")
                    or c:IsA("AlignPosition") then
                    c:Destroy()
                end
            end
            hrp.AssemblyLinearVelocity = Vector3.zero
            hrp.AssemblyAngularVelocity = Vector3.zero
        end)
    end

    Tabs.autofarm:Toggle({
        Title = "Autofarm", Value = false, Flag = "runnings",
        Callback = function(on)
            if on and _G.hubConfigLoading then
                _G.hubPendingAutofarmEnable = true
                values.runnings = false
                return
            end
            values.runnings = on

            if not on then
                _G.autofarmStopFloatDrive("toggle_off")
                sendnotification("Autofarm disabled", 4)
                return
            end

            _G.autofarmTotalCoins = 0
            _G.autofarmCoinCollectCount = 0
            _G.autofarmCachedRoundData = nil
            sendnotification("Autofarm enabled", 4)

            task.spawn(function()
                while values.runnings do
                    local char = localPlayer.Character
                    local hrp  = char and char:FindFirstChild("HumanoidRootPart")

                    if not hrp then
                        task.wait(0.5)
                    else
                        local data = getRoundData()
                        if type(data) == "table" and next(data) then
                            _G.autofarmCachedRoundData = data

                            if isLocalMurderer(data) or allOthersDead(data) then
                                task.wait(0.5)
                            else
                                local coin
                                if dropdownval.farmType == "Floating" then
                                    coin = pickFarmCoin(dropdownval.coinPickMode)
                                else
                                    coin = getCoinTp()
                                end

                                if coin then
                                    local targetPos = coin.Position + Vector3.new(0, valueslider.farmLift or 0, 0)

                                    if dropdownval.farmType == "Floating" then
                                        startFloatDrive()
                                        if not floatPart then createFloatPart() end
                                        if floatPart then
                                            local dist = (floatPart.Position - targetPos).Magnitude
                                            local speed = tonumber(valueslider.farmSpeed) or 80
                                            local dur = dist / speed
                                            local tween = TweenService:Create(
                                                floatPart,
                                                TweenInfo.new(dur, Enum.EasingStyle.Linear),
                                                { Position = targetPos }
                                            )
                                            _G.autofarmActiveTween = tween
                                            tween:Play()

                                            local done = false
                                            local c = tween.Completed:Connect(function() done = true end)
                                            while not done and values.runnings do task.wait(0.05) end
                                            if c then c:Disconnect() end
                                            if _G.autofarmActiveTween == tween then _G.autofarmActiveTween = nil end

                                            if values.runnings and coin and coin.Parent then
                                                syncHrpToFloat()
                                                pcall(function()
                                                    firetouchinterest(coin, hrp, 0)
                                                    firetouchinterest(coin, hrp, 1)
                                                    coin:Destroy()
                                                end)
                                                _G.autofarmCoinCollectCount = _G.autofarmCoinCollectCount + 1
                                            end
                                        end
                                    else
                                        local near = _G.findNearestMurdererHrpInRange
                                                     and _G.findNearestMurdererHrpInRange(hrp.Position, 16, data)
                                        if not near then
                                            if not hrp:FindFirstChild("FLY_NIGGER") then
                                                local bv = Instance.new("BodyVelocity", hrp)
                                                bv.MaxForce = Vector3.new(9e9, 9e9, 9e9)
                                                bv.Name = "FLY_NIGGER"
                                            end
                                            hrp.CFrame = CFrame.new(targetPos)
                                            if coin and coin.Parent then
                                                pcall(function()
                                                    firetouchinterest(coin, hrp, 0)
                                                    firetouchinterest(coin, hrp, 1)
                                                end)
                                                _G.autofarmCoinCollectCount = _G.autofarmCoinCollectCount + 1
                                                task.wait(3.4)
                                                tpToLobby(hrp)
                                                clearFlyForces(hrp)
                                            end
                                        end
                                    end
                                else
                                    task.wait(0.5)
                                end
                            end
                        else
                            task.wait(1)
                        end
                    end
                end
            end)
        end,
    })

    Tabs.autofarm:Dropdown({
        Title = "Farm Mode",
        Values = { "Floating", "Teleport" },
        Value = "Floating",
        Flag = "farmType",
        Callback = function(v) if v then dropdownval.farmType = v end end,
    })

    Tabs.autofarm:Dropdown({
        Title = "Coin Pick Mode",
        Values = { "Nearby", "Randomize" },
        Value = "Nearby",
        Flag = "coinPickMode",
        Callback = function(v) if v then dropdownval.coinPickMode = v end end,
    })

    hubInputOrSlider(Tabs.autofarm, {
        Title = "Farm Speed",
        Value = { Min = 18, Max = 25, Default = 22 },
        Flag = "farmSpeed",
        Callback = function(v) valueslider.farmSpeed = v end,
    })

    hubInputOrSlider(Tabs.autofarm, {
        Title = "Safe TP Lift",
        Value = { Min = -5, Max = 1, Default = -3 },
        Flag = "farmLift",
        Callback = function(v) valueslider.farmLift = v end,
    })

    task.spawn(function()
        while task.wait(30) do
            if values.prestige then
                pcall(function()
                    ReplicatedStorage.Remotes.Inventory.Prestige:FireServer()
                end)
            end
            if values.autoOpenCrate then
                local crate = dropdownval.selectCrate
                local key = crate == "Summer2026Box" and "SummerKey2026" or "Coins"
                pcall(function()
                    ReplicatedStorage.Remotes.Shop.OpenCrate:InvokeServer(crate, "MysteryBox", key)
                end)
            end
        end
    end)

    Tabs.autofarm:Toggle({
        Title = "Auto Prestige", Value = false, Flag = "prestige",
        Callback = function(on) values.prestige = on end,
    })

    Tabs.autofarm:Dropdown({
        Title = "Crate Type",
        Values = { "MysteryBox1", "MysteryBox2", "KnifeBox1", "KnifeBox2",
                   "KnifeBox3", "KnifeBox4", "KnifeBox5", "MLG Box",
                   "GunBox1", "GunBox2", "GunBox3", "Summer2026Box" },
        Value = "MysteryBox1",
        SearchBarEnabled = true,
        Flag = "selectCrate",
        Callback = function(v) if v then dropdownval.selectCrate = v end end,
    })

    Tabs.autofarm:Toggle({
        Title = "Auto Open Crate", Value = false, Flag = "autoOpenCrate",
        Callback = function(on) values.autoOpenCrate = on end,
    })

    Tabs.autofarm:Toggle({
        Title = "Disable 3D Render", Value = false, Flag = "disable3dRender",
        Callback = function(on)
            values.disable3dRender = on
            pcall(function() RunService:Set3dRenderingEnabled(not on) end)
        end,
    })

    pcall(function()
        local GuiService = game:GetService("GuiService")
        GuiService.ErrorMessageChanged:Connect(function(msg)
            if not values.rejoinOnKick then return end
            if type(msg) ~= "string" or msg == "" then return end
            task.wait(2)
            pcall(function()
                TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, localPlayer)
            end)
        end)
    end)

    Tabs.autofarm:Toggle({
        Title = "Auto Rejoin on Kick", Value = false, Flag = "rejoinOnKick",
        Callback = function(on) values.rejoinOnKick = on end,
    })

    Tabs.autofarm:Toggle({
        Title = "Server Hop When Empty", Value = false, Flag = "hopWhenEmpty",
        Callback = function(on)
            values.hopWhenEmpty = on
            if not on then return end
            task.spawn(function()
                local aloneSince = nil
                while values.hopWhenEmpty do
                    task.wait(2)
                    if not values.runnings then
                        aloneSince = nil
                    elseif #Players:GetPlayers() <= 1 then
                        aloneSince = aloneSince or os.clock()
                        if os.clock() - aloneSince >= 25 then
                            aloneSince = nil
                            pcall(function()
                                TeleportService:Teleport(game.PlaceId, localPlayer)
                            end)
                        end
                    else
                        aloneSince = nil
                    end
                end
            end)
        end,
    })
end

--=====================================================================
-- МОДУЛЬ 21: BACKGROUND / SKYBOX / CURSOR / GUN SOUND
--=====================================================================
MODULES["BackgroundSkybox"] = function()
    BACKGROUNDS = {
        Default           = "rbxassetid://",
        ["Thunder Blue"]  = "rbxassetid://135394328681927",
        ["Light Pattern"] = "rbxassetid://114250396326695",
        ["Hub Logo"]      = "rbxassetid://100624758648027",
        ["Dark Gray"]     = "rbxassetid://103093123825487",
        ["Purple Glow"]   = "rbxassetid://89399810257675",
        ["Wide Banner"]   = "rbxassetid://75058578343959",
        ["Neon Grid"]     = "rbxassetid://71193875285735",
        ["Warm Tone"]     = "rbxassetid://116212060836000",
        ["Red Accent"]    = "rbxassetid://87845429656964",
    }
    local bgNames = {}
    for k in pairs(BACKGROUNDS) do
        if k ~= "Default" then bgNames[#bgNames + 1] = k end
    end
    table.sort(bgNames)

    function _G.customAssetsApplyBackground(name)
        if name == "Default" or not name or name == "" then
            pcall(function() Window:SetBackgroundImage("") end)
            return true
        end
        local asset = BACKGROUNDS[name]
        if asset then
            pcall(function()
                Window:SetBackgroundImage(asset)
                Window:SetBackgroundImageTransparency((valueslider.backgroundTransparency or 6) * 0.1)
            end)
            return true
        end
        return false
    end

    Tabs.settings:Toggle({
        Title = "Custom Background", Value = false, Flag = "customBackground",
        Callback = function(on)
            values.customBackground = on
            if _G.hubConfigLoading then return end
            if on then
                _G.customAssetsApplyBackground(dropdownval.backgroundImage)
            else
                _G.customAssetsApplyBackground("Default")
            end
        end,
    })

    Tabs.settings:Dropdown({
        Title = "Background Preset",
        Values = bgNames,
        Value = "Thunder Blue",
        AllowNone = false, SearchBarEnabled = true,
        Flag = "backgroundImage",
        Callback = function(v)
            if not v then return end
            dropdownval.backgroundImage = v
            if values.customBackground and not _G.hubConfigLoading then
                _G.customAssetsApplyBackground(v)
            end
        end,
    })

    hubInputOrSlider(Tabs.settings, {
        Title = "Background Transparency",
        Value = { Min = 0, Max = 10, Default = 6 },
        Step = 1, Flag = "backgroundTransparency",
        Callback = function(v)
            valueslider.backgroundTransparency = v
            pcall(function() Window:SetBackgroundImageTransparency(v * 0.1) end)
        end,
    })

    Skyboxes = {
        Default = nil,
        Night   = { Up = "rbxassetid://187654500", Dn = "rbxassetid://187654466",
                    Lf = "rbxassetid://187654434", Rt = "rbxassetid://187654482",
                    Ft = "rbxassetid://187654450", Bk = "rbxassetid://187654418" },
        Sunset  = { Up = "rbxassetid://187654390", Dn = "rbxassetid://187654374",
                    Lf = "rbxassetid://187654354", Rt = "rbxassetid://187654334",
                    Ft = "rbxassetid://187654318", Bk = "rbxassetid://187654302" },
    }
    local skyboxNames = { "Default", "Night", "Sunset" }

    function _G.ApplySkybox(name)
        pcall(function()
            for _, c in ipairs(Lighting:GetChildren()) do
                if c:IsA("Sky") then c:Destroy() end
            end
            if name == "Default" or not Skyboxes[name] then return end
            local data = Skyboxes[name]
            local sky = Instance.new("Sky")
            sky.Name = "SNPWARE_Sky"
            for k, v in pairs(data) do sky["Skybox" .. k] = v end
            sky.Parent = Lighting
        end)
    end

    Tabs.visual:Toggle({
        Title = "Custom Skybox", Value = false, Flag = "customSkybox",
        Callback = function(on)
            values.customSkybox = on
            if _G.hubConfigLoading then return end
            if on then _G.ApplySkybox(dropdownval.skybox or "Default")
            else _G.ApplySkybox("Default") end
        end,
    })

    Tabs.visual:Dropdown({
        Title = "Skybox Preset",
        Values = skyboxNames,
        Value = "Default",
        AllowNone = false, SearchBarEnabled = true,
        Flag = "skybox",
        Callback = function(v)
            if not v then return end
            dropdownval.skybox = v
            if values.customSkybox and not _G.hubConfigLoading then _G.ApplySkybox(v) end
        end,
    })

    hubOnPC(function()
        Tabs.visual:Toggle({
            Title = "Custom Cursor", Value = false, Flag = "customCursor",
            Callback = function(on)
                values.customCursor = on
                local old = CoreGui:FindFirstChild("CustomCursorGui")
                if old then old:Destroy() end

                if not on then
                    UserInputService.MouseIconEnabled = true
                    if conns.customCursorConn then
                        conns.customCursorConn:Disconnect()
                        conns.customCursorConn = nil
                    end
                    return
                end

                local sg = Instance.new("ScreenGui")
                sg.Name = "CustomCursorGui"
                sg.ResetOnSpawn = false
                sg.DisplayOrder = 100000
                sg.Parent = CoreGui

                local img = Instance.new("ImageLabel", sg)
                img.Name = "CursorImage"
                img.AnchorPoint = Vector2.new(0.5, 0.5)
                img.BackgroundTransparency = 1
                img.ImageTransparency = 1
                img.Visible = false
                img.ZIndex = 100000
                img.ScaleType = Enum.ScaleType.Fit
                img.Image = "rbxassetid://15476088982"

                local mouse = localPlayer:GetMouse()
                UserInputService.MouseIconEnabled = true
                local angle = 0

                if conns.customCursorConn then conns.customCursorConn:Disconnect() end
                conns.customCursorConn = RunService.RenderStepped:Connect(function(dt)
                    img.Position = UDim2.new(0, mouse.X, 0, mouse.Y)
                    UserInputService.MouseIconEnabled = false
                    img.Visible = true
                    img.ImageTransparency = 0
                    img.Size = UDim2.new(0, valueslider.ud, 0, valueslider.ud)
                    if values.rotateCursor then
                        angle = angle + 360 / valueslider.rotateSpeed * dt
                        img.Rotation = angle % 360
                    else
                        img.Rotation = 0
                    end
                end)
            end,
        })

        hubInputOrSlider(Tabs.visual, {
            Title = "Cursor Size",
            Value = { Min = 28, Max = 120, Default = 40 },
            Step = 1, Flag = "cursorSize",
            Callback = function(v) valueslider.ud = v end,
        })

        Tabs.visual:Toggle({
            Title = "Rotate Cursor", Value = false, Flag = "rotateCursor",
            Callback = function(on) values.rotateCursor = on end,
        })

        hubInputOrSlider(Tabs.visual, {
            Title = "Cursor Rotation Speed",
            Value = { Min = 0.2, Max = 5, Default = 2.3 },
            Step = 0.1, Flag = "cursorRotateSpeed",
            Callback = function(v) valueslider.rotateSpeed = v end,
        })
    end)

    GUN_SOUNDS = {
        ["Default Gun"] = "",
        ["AK-47"]       = "rbxassetid://6092786031",
        ["M4A1"]        = "rbxassetid://6092803379",
        ["AWP"]         = "rbxassetid://6092834038",
        ["Deagle"]      = "rbxassetid://6092848013",
        ["Silenced"]    = "rbxassetid://6092858760",
    }
    local gunSounds = {}
    for k in pairs(GUN_SOUNDS) do gunSounds[#gunSounds + 1] = k end
    table.sort(gunSounds)

    Tabs.visual:Toggle({
        Title = "Custom Gun Sound", Value = false, Flag = "customGunSound",
        Callback = function(on) values.customGunSound = on end,
    })

    Tabs.visual:Dropdown({
        Title = "Gun Sound Preset",
        Values = gunSounds,
        Value = "Default Gun",
        AllowNone = false, SearchBarEnabled = true,
        Flag = "gunSound",
        Callback = function(v) if v then dropdownval.gunSound = v end end,
    })

    hubInputOrSlider(Tabs.visual, {
        Title = "Gun Sound Volume",
        Value = { Min = 1, Max = 10, Default = 5 },
        Step = 1, Flag = "gunSoundVolume",
        Callback = function(v) valueslider.gunSoundVolume = v end,
    })

    hubInputOrSlider(Tabs.visual, {
        Title = "Gun Sound Playback Speed",
        Value = { Min = 0.25, Max = 3, Default = 1 },
        Step = 0.05, Flag = "gunSoundPlaybackSpeed",
        Callback = function(v) valueslider.gunSoundPlaybackSpeed = tonumber(v) or 1 end,
    })

    task.spawn(function()
        while task.wait(0.2) do
            if not values.customGunSound then continue end
            local gun = findPlayerTool(localPlayer, "Gun")
            if gun then
                local gs = gun:FindFirstChild("Gunshot", true)
                if gs and gs:IsA("Sound") then
                    local soundId = GUN_SOUNDS[dropdownval.gunSound or "Default Gun"]
                    if soundId and soundId ~= "" and gs.SoundId ~= soundId then
                        gs.SoundId = soundId
                    end
                    gs.Volume = valueslider.gunSoundVolume
                    gs.PlaybackSpeed = math.clamp(tonumber(valueslider.gunSoundPlaybackSpeed) or 1, 0.25, 3)
                end
            end
        end
    end)
end

--=====================================================================
-- МОДУЛЬ 22: THEME / LANGUAGE / UI TRANSPARENCY
--=====================================================================
MODULES["ThemeLanguage"] = function()
    HUB_THEME_PALETTES = {
        Dark       = { accent = Color3.fromHex("#0091FF"), accentDark = Color3.fromHex("#003B6B"), text = Color3.fromRGB(255, 255, 255) },
        Light      = { accent = Color3.fromHex("#f5f5f5"), accentDark = Color3.fromHex("#9ca3af"), text = Color3.fromRGB(20, 20, 22) },
        Rose       = { accent = Color3.fromHex("#e95f74"), accentDark = Color3.fromHex("#831843"), text = Color3.fromRGB(255, 255, 255) },
        Plant      = { accent = Color3.fromHex("#16a34a"), accentDark = Color3.fromHex("#166534"), text = Color3.fromRGB(255, 255, 255) },
        Red        = { accent = Color3.fromHex("#dc2626"), accentDark = Color3.fromHex("#7f1d1d"), text = Color3.fromRGB(255, 255, 255) },
        Indigo     = { accent = Color3.fromHex("#6366f1"), accentDark = Color3.fromHex("#3730a3"), text = Color3.fromRGB(255, 255, 255) },
        Sky        = { accent = Color3.fromHex("#00d4ff"), accentDark = Color3.fromHex("#0a4d66"), text = Color3.fromRGB(255, 255, 255) },
        Violet     = { accent = Color3.fromHex("#8b5cf6"), accentDark = Color3.fromHex("#5b21b6"), text = Color3.fromRGB(255, 255, 255) },
        Amber      = { accent = Color3.fromHex("#f59e0b"), accentDark = Color3.fromHex("#a3681a"), text = Color3.fromRGB(255, 255, 255) },
        Emerald    = { accent = Color3.fromHex("#10b981"), accentDark = Color3.fromHex("#047857"), text = Color3.fromRGB(255, 255, 255) },
        Midnight   = { accent = Color3.fromHex("#2563eb"), accentDark = Color3.fromHex("#1e3a8a"), text = Color3.fromRGB(255, 255, 255) },
        Crimson    = { accent = Color3.fromHex("#dc2626"), accentDark = Color3.fromHex("#7f1d1d"), text = Color3.fromRGB(255, 255, 255) },
        MonokaiPro = { accent = Color3.fromHex("#fc9867"), accentDark = Color3.fromHex("#a9633f"), text = Color3.fromRGB(255, 255, 255) },
        CottonCandy= { accent = Color3.fromHex("#ec4899"), accentDark = Color3.fromHex("#831843"), text = Color3.fromRGB(255, 255, 255) },
        Mellowsi   = { accent = Color3.fromHex("#C9A24D"), accentDark = Color3.fromHex("#7a5f29"), text = Color3.fromRGB(255, 255, 255) },
        Rainbow    = { accent = Color3.fromHex("#00ff80"), accentDark = Color3.fromHex("#006633"), text = Color3.fromRGB(255, 255, 255) },
    }
    currentThemePalette = HUB_THEME_PALETTES.Amber
    hubUiElementTransparencySnap = {}

    function _G.hubApplyUiElementTransparency()
        local n = math.clamp(tonumber(valueslider.uiElementTransparency) or 0, 0, 10)
        local themes = v_ and v_.GetThemes and v_:GetThemes()
        if type(themes) ~= "table" then return end
        for k, theme in pairs(themes) do
            if type(theme) == "table" then
                local name = theme.Name or tostring(k)
                if hubUiElementTransparencySnap[name] == nil then
                    hubUiElementTransparencySnap[name] = theme.ElementBackgroundTransparency
                end
                local orig = hubUiElementTransparencySnap[name] or 0
                if n <= 0 then
                    theme.ElementBackgroundTransparency = orig
                else
                    theme.ElementBackgroundTransparency = orig + (0.93 - orig) * n / 10
                end
            end
        end
        pcall(function()
            if v_.Creator and v_.Creator.UpdateTheme then
                v_.Creator.UpdateTheme(nil, false)
            end
        end)
    end

    function _G.applyHubTheme(name)
        local pal = HUB_THEME_PALETTES[name] or HUB_THEME_PALETTES.Amber
        currentThemePalette = pal

        for i = #hubButtonPaintList, 1, -1 do
            local entry = hubButtonPaintList[i]
            if entry.btn and entry.btn.Parent then
                if entry.border then entry.border.Color = pal.accentDark end
            else
                table.remove(hubButtonPaintList, i)
            end
        end

        pcall(function()
            if v_ and v_.SetTheme then v_:SetTheme(name) end
        end)

        _G.hubApplyUiElementTransparency()
    end

    local themeNames = {}
    for k in pairs(HUB_THEME_PALETTES) do themeNames[#themeNames + 1] = k end
    table.sort(themeNames)

    Tabs.settings:Dropdown({
        Title = "Theme",
        Values = themeNames,
        Value = "Amber",
        SearchBarEnabled = true,
        Flag = "theme",
        Callback = function(v)
            if not v then return end
            dropdownval.theme = v
            _G.applyHubTheme(v)
        end,
    })

    hubInputOrSlider(Tabs.settings, {
        Title = "UI Element Transparency",
        Value = { Min = 0, Max = 10, Default = 0 },
        Step = 1, Flag = "uiElementTransparency",
        Callback = function(v)
            valueslider.uiElementTransparency = v
            if _G.hubConfigLoading then return end
            _G.hubApplyUiElementTransparency()
        end,
    })

    LangList = {
        en  = "English",
        ru  = "Русский",
        es  = "Español",
        pt  = "Português",
        de  = "Deutsch",
        ar  = "العربية",
        fil = "Filipino",
    }
    local langValues = {}
    for _, code in ipairs({ "en", "ru", "es", "pt", "de", "ar", "fil" }) do
        langValues[#langValues + 1] = LangList[code]
    end

    Tabs.settings:Dropdown({
        Title = "Language",
        Values = langValues,
        Value = LangList.en,
        Flag = "language",
        Callback = function(v)
            if not v then return end
            for code, name in pairs(LangList) do
                if name == v then
                    dropdownval.language = code
                    pcall(function() v_:SetLanguage(code) end)
                    break
                end
            end
        end,
    })

    pcall(function() _G.applyHubTheme("Amber") end)
end

--=====================================================================
-- МОДУЛЬ 23: CLOSE PARTICLES
--=====================================================================
MODULES["CloseParticles"] = function()
    if not (Window and type(Window.OnClose) == "function") then return end

    local gui, pool
    local tweens = {}
    local generation = 0

    local function paintGradients()
        if not pool then return end
        local pal = currentThemePalette or { accent = Color3.fromHex("#f59e0b"), accentDark = Color3.fromHex("#a3681a") }
        local colorSeq = ColorSequence.new(pal.accent, pal.accentDark)
        for _, frame in ipairs(pool) do
            if frame then
                local g = frame:FindFirstChildOfClass("UIGradient")
                if g then
                    g.Color = colorSeq
                    g.Rotation = 45
                end
            end
        end
    end

    local function ensurePool()
        if gui and gui.Parent and pool and #pool == 12 then return end
        if gui then pcall(function() gui:Destroy() end) end

        gui = Instance.new("ScreenGui")
        gui.Name = "SNP_CloseParticles"
        gui.ResetOnSpawn = false
        gui.IgnoreGuiInset = true
        gui.DisplayOrder = 20000
        gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        pcall(function() gui.ClipToDeviceSafeArea = false end)

        local parent = (type(gethui) == "function" and gethui()) or CoreGui
        pcall(function() gui.Parent = parent end)

        pool = {}
        for i = 1, 12 do
            local f = Instance.new("Frame", gui)
            f.Name = "P" .. i
            f.AnchorPoint = Vector2.new(0.5, 0.5)
            f.BackgroundColor3 = Color3.new(1, 1, 1)
            f.BackgroundTransparency = 0.25
            f.BorderSizePixel = 0
            f.Visible = false
            f.ZIndex = 200
            f.Size = UDim2.fromOffset(0, 0)
            pcall(function() f.Interactable = false end)
            Instance.new("UICorner", f).CornerRadius = UDim.new(1, 0)
            Instance.new("UIGradient", f)
            pool[i] = f
        end
        paintGradients()
    end

    local function getWindowRect()
        local main = Window and Window.UIElements and Window.UIElements.Main
        if main and main:IsA("GuiObject") then
            local size = main.AbsoluteSize
            if size.X > 80 and size.Y > 80 then
                return main.AbsolutePosition, size
            end
        end
        local cam = workspace.CurrentCamera
        local vp = cam and cam.ViewportSize or Vector2.new(1920, 1080)
        local size = Vector2.new(580, 460)
        return Vector2.new((vp.X - size.X) * 0.5, (vp.Y - size.Y) * 0.5), size
    end

    local function toUDim2(offset)
        local g = gui and gui.AbsolutePosition or Vector2.zero
        return UDim2.fromOffset(offset.X - g.X, offset.Y - g.Y)
    end

    local function run(mode)
        ensurePool()
        paintGradients()
        generation = generation + 1
        local gen = generation

        for _, t in ipairs(tweens) do pcall(function() t:Cancel() end) end
        tweens = {}
        for _, f in ipairs(pool) do if f then f.Visible = false end end
        if gui then gui.Enabled = false end

        local pos, size = getWindowRect()
        local center = pos + size * 0.5
        local dir = Vector2.new(0, -1)
        local distance = math.max(size.X, size.Y) * 0.62

        if gui then gui.Enabled = true end

        for i = 1, 12 do
            local f = pool[i]
            local start  = center + Vector2.new(math.random(-20, 20), math.random(-20, 20))
            local target = center + dir * distance + Vector2.new(math.random(-30, 30), math.random(-30, 30))
            local sz = 10 + math.random(0, 4)

            f.Visible = true
            f.Size = UDim2.fromOffset(sz, sz)
            f.Position = toUDim2(start)
            f.BackgroundTransparency = 0.25

            task.delay((i - 1) * 0.012, function()
                if gen ~= generation or not f.Parent then return end
                local t = TweenService:Create(f,
                    TweenInfo.new(0.7, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                    { Position = toUDim2(target), Size = UDim2.fromOffset(sz + 4, sz + 4) })
                tweens[#tweens + 1] = t
                t:Play()
                t.Completed:Connect(function()
                    if gen ~= generation or not f.Parent then return end
                    local t2 = TweenService:Create(f,
                        TweenInfo.new(0.14, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
                        { BackgroundTransparency = 1 })
                    tweens[#tweens + 1] = t2
                    t2:Play()
                    t2.Completed:Connect(function()
                        if gen == generation and f then
                            f.Visible = false
                            f.BackgroundTransparency = 0.25
                        end
                    end)
                end)
            end)
        end

        task.delay(1.2, function()
            if gen == generation and gui then gui.Enabled = false end
        end)
    end

    Window:OnClose(function()
        pcall(run, "close")
        sendnotification("Menu keybind: RightControl", 9)
    end)

    if type(Window.OnOpen) == "function" then
        Window:OnOpen(function() pcall(run, "open") end)
    end
end

--=====================================================================
-- МОДУЛЬ 24: FOV / STRETCH / FPS CAP
--=====================================================================
MODULES["FovStretchFps"] = function()
    local fpsControl = hubInputOrSlider(Tabs.character, {
        Title = "FPS Cap",
        Value = { Min = 1, Max = 9999, Default = 240 },
        Step = 1, Flag = "fpsCap",
        Callback = function(v)
            valueslider.fpsCap = tonumber(v) or 240
            if func.setfpscap then pcall(func.setfpscap, valueslider.fpsCap) end
        end,
    })
    if func.setfpscap then
        pcall(func.setfpscap, valueslider.fpsCap)
    elseif fpsControl and fpsControl.Lock then
        pcall(function() fpsControl:Lock() end)
    end

    local STRETCH_BIND = "SNPWARE_Stretch"
    local function applyStretch(on)
        values.loopStretch = on == true
        pcall(function() RunService:UnbindFromRenderStep(STRETCH_BIND) end)
        if not values.loopStretch then return end

        RunService:BindToRenderStep(STRETCH_BIND, Enum.RenderPriority.Camera.Value + 1, function()
            local cam = workspace.CurrentCamera
            if not cam then return end
            local n = tonumber(valueslider.stretch) or 0.65
            n = math.clamp(n, 0.2, 1)
            cam.CFrame = cam.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, n, 0, 0, 0, 1)
        end)
    end

    Tabs.character:Toggle({
        Title = "Stretch", Value = false, Flag = "loopStretch",
        Callback = applyStretch,
    })

    hubInputOrSlider(Tabs.character, {
        Title = "Stretch Amount",
        Value = { Min = 0.2, Max = 1, Default = 0.65 },
        Step = 0.01, Flag = "stretch",
        Callback = function(v) valueslider.stretch = tonumber(v) or 0.65 end,
    })

    Tabs.character:Toggle({
        Title = "Field of View", Value = false, Flag = "FOVEnabled",
        Callback = function(on)
            values.FOVEnabled = on
            local cam = workspace.CurrentCamera
            if not cam then return end
            if on then cam.FieldOfView = valueslider.FOV or 70
            else cam.FieldOfView = 70 end
        end,
    })

    hubInputOrSlider(Tabs.character, {
        Title = "FOV Amount",
        Value = { Min = 30, Max = 120, Default = 70 },
        Step = 1, Flag = "FOV",
        Callback = function(v)
            valueslider.FOV = tonumber(v) or 70
            if values.FOVEnabled then
                workspace.CurrentCamera.FieldOfView = valueslider.FOV
            end
        end,
    })
end

--=====================================================================
-- МОДУЛЬ 25: HITBOX / KORBLOX / REMOVE STUFF
--=====================================================================
MODULES["HitboxKorbloxRemove"] = function()
    values.HitboxSize = values.HitboxSize or Vector3.new(5, 5, 5)
    values.HitboxDefaultSize = values.HitboxDefaultSize or Vector3.new(2, 2, 1)
    conns.hitboxLoopGen = 0

    local function applyHitbox(hrp)
        hrp.Size = values.HitboxSize
        hrp.Color = Color3.fromRGB(169, 169, 169)
        hrp.Material = Enum.Material.Plastic
        hrp.CanCollide = false
        hrp.Transparency = valueslider.HitboxTransparency * 0.1
    end

    local function resetHitbox(hrp)
        hrp.Size = values.HitboxDefaultSize
        hrp.Color = Color3.fromRGB(255, 255, 255)
        hrp.Material = Enum.Material.SmoothPlastic
        hrp.CanCollide = false
        hrp.Transparency = 1
    end

    Tabs.visual:Toggle({
        Title = "Hitbox Expander", Value = false, Flag = "Hitboxexpander",
        Callback = function(on)
            values.Hitboxexpander = on
            if on then
                conns.hitboxLoopGen = conns.hitboxLoopGen + 1
                if conns.hitboxPlayerAddedConn then conns.hitboxPlayerAddedConn:Disconnect() end
                local gen = conns.hitboxLoopGen

                conns.hitboxPlayerAddedConn = Players.PlayerAdded:Connect(function(p)
                    if p == localPlayer then return end
                    local hrp = p.Character and p.Character:FindFirstChild("HumanoidRootPart")
                    if hrp then applyHitbox(hrp) end
                end)

                task.spawn(function()
                    while values.Hitboxexpander and conns.hitboxLoopGen == gen do
                        for _, p in ipairs(Players:GetPlayers()) do
                            if p ~= localPlayer then
                                local hrp = p.Character and p.Character:FindFirstChild("HumanoidRootPart")
                                if hrp then applyHitbox(hrp) end
                            end
                        end
                        task.wait(0.5)
                    end
                end)
            else
                conns.hitboxLoopGen = conns.hitboxLoopGen + 1
                if conns.hitboxPlayerAddedConn then
                    conns.hitboxPlayerAddedConn:Disconnect()
                    conns.hitboxPlayerAddedConn = nil
                end
                for _, p in ipairs(Players:GetPlayers()) do
                    if p ~= localPlayer then
                        local hrp = p.Character and p.Character:FindFirstChild("HumanoidRootPart")
                        if hrp then resetHitbox(hrp) end
                    end
                end
            end
        end,
    })

    hubInputOrSlider(Tabs.visual, {
        Title = "Hitbox Size",
        Value = { Min = 5, Max = 100, Default = 5 },
        Step = 1, Flag = "hitboxSizeScalar",
        Callback = function(v)
            local s = tonumber(v) or 5
            valueslider.hitboxSizeScalar = s
            values.HitboxSize = Vector3.new(s, s, s)
        end,
    })

    hubInputOrSlider(Tabs.visual, {
        Title = "Hitbox Transparency",
        Value = { Min = 1, Max = 10, Default = 5 },
        Step = 1, Flag = "HitboxTransparency",
        Callback = function(v) valueslider.HitboxTransparency = tonumber(v) or 5 end,
    })

    -- KORBLOX / HEADLESS
    local MESH_HEAD    = "rbxassetid://1095708"
    local MESH_KORBLOX = "rbxassetid://101851696"
    local TEX_KORBLOX  = "rbxassetid://101851254"
    local KORBLOX_COLOR = Color3.fromRGB(64, 64, 64)

    local function applyHeadless(head)
        for _, c in ipairs(head:GetChildren()) do
            if c:IsA("SpecialMesh") and tostring(c.MeshId or ""):find("1095708", 1, true) then
                c:Destroy()
            end
        end
        head.Transparency = 1
        head.CanCollide = false
        local face = head:FindFirstChild("face")
        if face then face:Destroy() end
        local sm = Instance.new("SpecialMesh")
        sm.MeshType = Enum.MeshType.FileMesh
        sm.MeshId = MESH_HEAD
        sm.Scale = Vector3.new(0.001, 0.001, 0.001)
        sm.Parent = head
        head:GetPropertyChangedSignal("Transparency"):Connect(function()
            if head.Transparency ~= 1 then head.Transparency = 1 end
        end)
    end

    local function restoreHeadless(head)
        for _, c in ipairs(head:GetChildren()) do
            if c:IsA("SpecialMesh") and tostring(c.MeshId or ""):find("1095708", 1, true) then
                c:Destroy()
            end
        end
        head.Transparency = 0
    end

    local function applyKorbloxR15(char)
        local upper = char:FindFirstChild("RightUpperLeg")
        if not upper then return end
        for _, name in ipairs({ "RightUpperLeg", "RightLowerLeg", "RightFoot" }) do
            local p = char:FindFirstChild(name)
            if p then p.Transparency = 1 p.LocalTransparencyModifier = 1 end
        end
        local part = Instance.new("Part")
        part.Name = "KorbloxLeg"
        part.Size = Vector3.new(1, 2, 1)
        part.Anchored = false
        part.CanCollide = false
        part.Massless = true
        part.Color = KORBLOX_COLOR
        part.Parent = char

        local sm = Instance.new("SpecialMesh", part)
        sm.MeshType = Enum.MeshType.FileMesh
        sm.MeshId = MESH_KORBLOX
        sm.TextureId = TEX_KORBLOX
        sm.Scale = Vector3.one

        local weld = Instance.new("Weld", part)
        weld.Part0 = upper
        weld.Part1 = part
        weld.C0 = CFrame.new(0, -0.8, 0)
    end

    local function restoreKorblox(char)
        local k = char:FindFirstChild("KorbloxLeg")
        if k then k:Destroy() end
        for _, name in ipairs({ "RightUpperLeg", "RightLowerLeg", "RightFoot" }) do
            local p = char:FindFirstChild(name)
            if p then p.Transparency = 0 p.LocalTransparencyModifier = 0 end
        end
    end

    local function rebuild()
        local char = localPlayer.Character
        if not char then return end
        local head = char:FindFirstChild("Head")
        local hum  = char:FindFirstChildOfClass("Humanoid")
        if head then
            if values.FakeHeadless then applyHeadless(head) else restoreHeadless(head) end
        end
        if hum then
            if values.FakeKorblox and hum.RigType == Enum.HumanoidRigType.R15 then
                applyKorbloxR15(char)
            else
                restoreKorblox(char)
            end
        end
    end

    Tabs.visual:Toggle({
        Title = "Fake Korblox", Value = false, Flag = "FakeKorblox",
        Callback = function(on) values.FakeKorblox = on rebuild() end,
    })

    Tabs.visual:Toggle({
        Title = "Fake Headless", Value = false, Flag = "FakeHeadless",
        Callback = function(on) values.FakeHeadless = on rebuild() end,
    })

    localPlayer.CharacterAdded:Connect(function()
        task.wait(0.5)
        if values.FakeHeadless or values.FakeKorblox then rebuild() end
    end)

    -- REMOVE STUFF
    local coinDestroyConns = {}

    local function attachCoinListener(coin)
        if coinDestroyConns[coin] then return end
        coinDestroyConns[coin] = coin.Touched:Connect(function(hit)
            if not values.destroyCoins then return end
            local parent = hit.Parent
            if parent and Players:GetPlayerFromCharacter(parent) then
                if coinDestroyConns[coin] then
                    coinDestroyConns[coin]:Disconnect()
                    coinDestroyConns[coin] = nil
                end
                task.wait(0.1)
                if coin and coin.Parent then coin:Destroy() end
            end
        end)
    end

    Tabs.visual:Toggle({
        Title = "Remove Dead Body", Value = false, Flag = "removeRaggy",
        Callback = function(on)
            values.removeRaggy = on
            if on then
                for _, d in ipairs(workspace:GetDescendants()) do
                    if d:IsA("Model") and (d.Name == "Raggy" or d.Name == "GlitchProof") then
                        d:Destroy()
                    end
                end
            end
        end,
    })

    Tabs.visual:Toggle({
        Title = "Remove Coins", Value = false, Flag = "destroyCoins",
        Callback = function(on)
            values.destroyCoins = on
            if on then
                local cc = workspace:FindFirstChild("CoinContainer", true)
                if cc then
                    for _, c in ipairs(cc:GetChildren()) do
                        if c.Name == "Coin_Server" and c:IsA("BasePart") then attachCoinListener(c) end
                    end
                    if conns.coinContainerConn then conns.coinContainerConn:Disconnect() end
                    conns.coinContainerConn = cc.ChildAdded:Connect(function(c)
                        if c.Name == "Coin_Server" and c:IsA("BasePart") then attachCoinListener(c) end
                    end)
                end
            else
                for c, conn in pairs(coinDestroyConns) do
                    pcall(function() conn:Disconnect() end)
                    coinDestroyConns[c] = nil
                end
                if conns.coinContainerConn then
                    conns.coinContainerConn:Disconnect()
                    conns.coinContainerConn = nil
                end
            end
        end,
    })

    Tabs.visual:Toggle({
        Title = "Remove Shadows", Value = false, Flag = "removeShadow",
        Callback = function(on)
            values.removeShadow = on
            Lighting.GlobalShadows = not on
        end,
    })

    Tabs.visual:Toggle({
        Title = "Remove Accessories", Value = false, Flag = "removeAccessories",
        Callback = function(on)
            values.removeAccessories = on
            if on then
                for _, p in ipairs(Players:GetPlayers()) do
                    if p ~= localPlayer and p.Character then
                        for _, c in ipairs(p.Character:GetChildren()) do
                            if c:IsA("Accessory") then c:Destroy() end
                        end
                    end
                end
            end
        end,
    })

    Workspace.ChildAdded:Connect(function()
        if values.removeRaggy then
            for _, d in ipairs(workspace:GetDescendants()) do
                if d:IsA("Model") and (d.Name == "Raggy" or d.Name == "GlitchProof") then
                    d:Destroy()
                end
            end
        end
    end)
end

--=====================================================================
-- МОДУЛЬ 26: OTHER (Spectator / Round Timer / FPS-Ping / Expose Roles)
--=====================================================================
MODULES["Other"] = function()
    Tabs.other:Toggle({
        Title = "Show My Role", Value = false, Flag = "nb",
        Callback = function(on) values.nb = on end,
    })

    if Fade then
        Fade.OnClientEvent:Connect(function(data)
            if type(data) ~= "table" or not values.nb then return end
            local info = data[localPlayer.Name]
            if type(info) ~= "table" then return end
            if info.Role == "Innocent" then
                sendnotification("Your role: Innocent", 6)
            elseif info.Role == "Murderer" then
                sendnotification("Your role: Murderer", 6)
            elseif info.Role == "Sheriff" then
                sendnotification("Your role: Sheriff", 6)
            end
        end)
    end

    Tabs.other:Toggle({
        Title = "Show Round Timer", Value = false, Flag = "showtimer",
        Callback = function(on) values.showtimer = on end,
    })

    task.spawn(function()
        while true do
            task.wait(1)
            if values.showtimer then
                local tp = workspace:FindFirstChild("RoundTimerPart")
                local t = tp and tp:GetAttribute("Time")
                if type(t) == "number" and t > 0 then
                    local m = math.floor(t / 60)
                    local s = math.floor(t % 60)
                    print(("Round end in: %d:%02d"):format(m, s))
                end
            end
        end
    end)

    Tabs.character:Toggle({
        Title = "Show FPS & Ping", Value = false, Flag = "showpingfps",
        Callback = function(on) values.showpingfps = on end,
    })

    task.spawn(function()
        local frameCount, fpsTimer = 0, 0
        local fps, ping = 0, 0
        while true do
            local dt = RunService.RenderStepped:Wait()
            frameCount = frameCount + 1
            fpsTimer = fpsTimer + dt
            if fpsTimer >= 0.5 then
                fps = math.floor(frameCount / fpsTimer + 0.5)
                frameCount = 0
                fpsTimer = 0
                local ok, p = pcall(function()
                    return Stats.Network.ServerStatsItem["Data Ping"]:GetValue()
                end)
                if ok then ping = math.floor(p) end
                if values.showpingfps then
                    print(("FPS: %d | Ping: %dms"):format(fps, ping))
                end
            end
        end
    end)

    -- Spectator
    currentview = nil
    currentviewThread = nil

    function _G.stopView()
        currentview = nil
        currentviewThread = nil
        pcall(function()
            local h = localPlayer.Character and localPlayer.Character:FindFirstChild("Humanoid")
            if h then workspace.CurrentCamera.CameraSubject = h end
        end)
        sendnotification("Stopped viewing", 3)
    end

    function _G.startView(target)
        if currentviewThread then currentview = nil currentviewThread = nil end
        if not (target and target.Character and target.Character:FindFirstChild("Humanoid")) then
            sendnotification("Target not found", 3)
            return
        end
        currentview = target
        currentviewThread = task.spawn(function()
            while currentview == target do
                if target.Parent and target.Character and target.Character:FindFirstChild("Humanoid") then
                    workspace.CurrentCamera.CameraSubject = target.Character.Humanoid
                    task.wait(0.3)
                else
                    pcall(function()
                        workspace.CurrentCamera.CameraSubject = localPlayer.Character:WaitForChild("Humanoid")
                    end)
                    currentview = nil
                    sendnotification("Target lost", 3)
                    break
                end
            end
        end)
    end

    function _G.viewGunDrop(part)
        currentview = part
        currentviewThread = task.spawn(function()
            while currentview == part do
                if part and part.Parent then
                    workspace.CurrentCamera.CameraSubject = part
                    task.wait(0.3)
                else
                    pcall(function()
                        workspace.CurrentCamera.CameraSubject = localPlayer.Character:WaitForChild("Humanoid")
                    end)
                    currentview = nil
                    break
                end
            end
        end)
    end

    Tabs.other:Button({
        Title = "View Murderer",
        Callback = function() _G.startView(findMurder()) end,
    })
    Tabs.other:Button({
        Title = "View Sheriff",
        Callback = function() _G.startView(findSheriff()) end,
    })
    Tabs.other:Button({
        Title = "Stop View",
        Callback = _G.stopView,
    })

    -- Auto Expose Roles
    function _G.RevealRoles()
        local chans = TextChatService:WaitForChild("TextChannels"):GetChildren()
        for _, ch in ipairs(chans) do
            if ch.Name ~= "RBXSystem" then
                local m = findMurder()
                local s = findSheriff()
                local mName = m and m.Name or "Not yet"
                local sName = s and s.Name or "Not yet"
                pcall(function()
                    ch:SendAsync(("Murderer : %s and Sheriff : %s"):format(mName, sName))
                end)
            end
        end
    end

    Tabs.other:Toggle({
        Title = "Auto Expose Roles", Value = false, Flag = "autoExposeRoles",
        Callback = function(on)
            values.autoExposeRoles = on
            if on then _G.RevealRoles() end
        end,
    })

    Tabs.other:Button({
        Title = "Expose Roles Now",
        Callback = _G.RevealRoles,
    })

    Tabs.other:Toggle({
        Title = "Murderer Notify", Value = false, Flag = "murdnotify",
        Callback = function(on) values.murdnotify = on end,
    })
    Tabs.other:Toggle({
        Title = "Sheriff Notify", Value = false, Flag = "shernotify",
        Callback = function(on) values.shernotify = on end,
    })
    Tabs.other:Toggle({
        Title = "Gun Drop Notify", Value = false, Flag = "gunDropNotify",
        Callback = function(on) values.gn = on end,
    })

    if Fade then
        Fade.OnClientEvent:Connect(function(data)
            if type(data) ~= "table" then return end
            for name, info in pairs(data) do
                if type(info) == "table" then
                    if info.Role == "Murderer" and not info.Dead and not info.Killed and values.murdnotify then
                        sendnotification("Murderer is " .. tostring(name) .. " — good luck!", 10)
                    end
                    if info.Role == "Sheriff" and not info.Dead and not info.Killed and values.shernotify then
                        sendnotification("Sheriff is " .. tostring(name) .. " — good luck!", 10)
                    end
                end
            end
        end)
    end

    Tabs.other:Button({
        Title = "Dev Console",
        Callback = function()
            pcall(function() game.StarterGui:SetCore("DevConsoleVisible", true) end)
        end,
    })

    Tabs.other:Button({
        Title = "Rejoin",
        Callback = function()
            pcall(function()
                TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, localPlayer)
            end)
        end,
    })

    Tabs.other:Button({
        Title = "Server Hop",
        Callback = function()
            pcall(function() TeleportService:Teleport(game.PlaceId, localPlayer) end)
        end,
    })

    Tabs.other:Toggle({
        Title = "Mute Radios", Value = false, Flag = "MuteRadiosEnabled",
        Callback = function(on)
            values.MuteRadiosEnabled = on
            for _, p in ipairs(Players:GetPlayers()) do
                if p ~= localPlayer and p.Character then
                    local radio = p.Character:FindFirstChild("Radio")
                    local s = radio and radio:FindFirstChildOfClass("Sound")
                    if s then s.Volume = on and 0 or 0.5 end
                end
            end
        end,
    })

    Tabs.other:Toggle({
        Title = "Hide Chat", Value = false, Flag = "hideChat",
        Callback = function(on)
            pcall(function()
                local bar = CoreGui:FindFirstChild("chatInputBar", true)
                if bar then bar.Visible = not on end
            end)
        end,
    })
end

--=====================================================================
-- МОДУЛЬ 27: CONFIG SYSTEM
--=====================================================================
MODULES["ConfigSystem"] = function()
    if type(writefile) ~= "function" or type(readfile) ~= "function" then
        warn("[SNPWARE] Config system disabled — writefile/readfile недоступны.")
        return
    end

    local CONFIG_DIR     = "SNPWARE/configs"
    local LAST_FILE      = "SNPWARE/configs/_last.txt"
    local CONFIG_VERSION = 1

    pcall(function() makefolder("SNPWARE") end)
    pcall(function() makefolder(CONFIG_DIR) end)

    local function safeName(name)
        name = tostring(name or "default")
        name = name:gsub("[^%w_%-%s%.]", "")
        name = name:gsub("%s+", "_")
        if name == "" then name = "default" end
        return name
    end

    local function configPath(name)
        return CONFIG_DIR .. "/" .. safeName(name) .. ".json"
    end

    local function encodeValue(v)
        local ty = typeof(v)
        if ty == "Color3"    then return { __type = "Color3", r = v.R, g = v.G, b = v.B } end
        if ty == "Vector3"   then return { __type = "Vector3", x = v.X, y = v.Y, z = v.Z } end
        if ty == "Vector2"   then return { __type = "Vector2", x = v.X, y = v.Y } end
        if ty == "CFrame"    then local p = v.Position return { __type = "CFrame", x = p.X, y = p.Y, z = p.Z } end
        if ty == "EnumItem"  then return { __type = "EnumItem", enum = tostring(v.EnumType), name = v.Name } end
        if ty == "Instance"  then return nil end
        return v
    end

    local function encodeTable(t, seen)
        if type(t) ~= "table" then return encodeValue(t) end
        seen = seen or {}
        if seen[t] then return nil end
        seen[t] = true
        local out = {}
        for k, v in pairs(t) do
            local tv = type(v)
            if tv ~= "function" and tv ~= "thread" and typeof(v) ~= "RBXScriptConnection" then
                if tv == "table" then out[k] = encodeTable(v, seen)
                else out[k] = encodeValue(v) end
            end
        end
        return out
    end

    local function decodeTable(t)
        if type(t) ~= "table" then return t end
        if t.__type then
            if t.__type == "Color3"   then return Color3.new(t.r, t.g, t.b) end
            if t.__type == "Vector3"  then return Vector3.new(t.x, t.y, t.z) end
            if t.__type == "Vector2"  then return Vector2.new(t.x, t.y) end
            if t.__type == "CFrame"   then return CFrame.new(t.x, t.y, t.z) end
            if t.__type == "EnumItem" then
                local ok, item = pcall(function() return Enum[t.enum][t.name] end)
                return ok and item or nil
            end
        end
        local out = {}
        for k, v in pairs(t) do out[k] = decodeTable(v) end
        return out
    end

    local function buildSnapshot()
        return {
            __version = CONFIG_VERSION, __time = os.time(), __place = game.PlaceId,
            values       = encodeTable(values),
            valueslider  = encodeTable(valueslider),
            valuestrings = encodeTable(valuestrings),
            valuekeys    = encodeTable(valuekeys),
            valuecolors  = encodeTable(valuecolors),
            dropdownval  = encodeTable(dropdownval),
            buttonParams = encodeTable(buttonParams),
        }
    end

    local function applySnapshot(snap)
        if type(snap) ~= "table" then return false, "invalid file" end
        local function merge(target, source)
            if type(source) ~= "table" then return end
            for k, v in pairs(source) do
                target[k] = decodeTable(v)
            end
        end
        merge(values,       snap.values)
        merge(valueslider,  snap.valueslider)
        merge(valuestrings, snap.valuestrings)
        merge(valuekeys,    snap.valuekeys)
        merge(valuecolors,  snap.valuecolors)
        merge(dropdownval,  snap.dropdownval)
        merge(buttonParams, snap.buttonParams)
        _G.values       = values
        _G.valueslider  = valueslider
        _G.valuestrings = valuestrings
        _G.valuekeys    = valuekeys
        _G.valuecolors  = valuecolors
        _G.dropdownval  = dropdownval
        _G.buttonParams = buttonParams
        return true
    end

    local function pushToUI()
        local pending = Window and Window.PendingFlags
        if type(pending) ~= "table" then return end
        for flag, item in pairs(pending) do
            if type(item) == "table" and type(item.Set) == "function" then
                local v = values[flag] or valueslider[flag] or valuestrings[flag]
                       or valuekeys[flag] or dropdownval[flag]
                if v ~= nil then
                    pcall(item.Set, item, v, true, false)
                end
            end
        end
        if _G.hubButtonSync then
            for id in pairs(buttonParams) do
                pcall(_G.hubButtonSync, id)
            end
        end
    end

    local function saveConfig(name)
        name = safeName(name)
        local snap = buildSnapshot()
        local ok, json = pcall(function() return HttpService:JSONEncode(snap) end)
        if not ok then return false, "encode failed" end
        local ok2, err = pcall(writefile, configPath(name), json)
        if not ok2 then return false, tostring(err) end
        pcall(writefile, LAST_FILE, name)
        return true, name
    end

    local function loadConfig(name)
        name = safeName(name)
        local path = configPath(name)
        if not (isfile and isfile(path)) then return false, "not found" end
        local ok, raw = pcall(readfile, path)
        if not ok or type(raw) ~= "string" or raw == "" then return false, "read failed" end
        local ok2, data = pcall(function() return HttpService:JSONDecode(raw) end)
        if not ok2 or type(data) ~= "table" then return false, "decode failed" end
        local ok3, err = applySnapshot(data)
        if not ok3 then return false, err end
        pcall(writefile, LAST_FILE, name)
        pushToUI()
        return true, name
    end

    local function deleteConfig(name)
        name = safeName(name)
        local path = configPath(name)
        if not (isfile and isfile(path)) then return false, "not found" end
        if type(delfile) ~= "function" then return false, "delfile unavailable" end
        local ok = pcall(delfile, path)
        if ok and isfile(LAST_FILE) then
            local cur = readfile(LAST_FILE)
            if cur == name then pcall(delfile, LAST_FILE) end
        end
        return ok
    end

    local function listConfigs()
        local out = {}
        if type(listfiles) ~= "function" then return out end
        local ok, files = pcall(listfiles, CONFIG_DIR)
        if not ok or type(files) ~= "table" then return out end
        for _, f in ipairs(files) do
            local name = f:match("([^/\\]+)%.json$")
            if name and name ~= "_last" then out[#out + 1] = name end
        end
        table.sort(out)
        return out
    end

    local function lastConfigName()
        if not (isfile and isfile(LAST_FILE)) then return nil end
        local ok, name = pcall(readfile, LAST_FILE)
        if ok and type(name) == "string" and name ~= "" then return name end
        return nil
    end

    _G.hubSaveConfig   = saveConfig
    _G.hubLoadConfig   = loadConfig
    _G.hubDeleteConfig = deleteConfig
    _G.hubListConfigs  = listConfigs

    _G.hubConfigLoading      = false
    _G.hubConfigMuteAutofarm = false
    _G.hubConfigAutosave     = true

    Tabs.settings:Section({ Title = "Configuration" })

    local currentConfig = lastConfigName() or "default"
    _G.hubConfigName = currentConfig

    local nameInput = Tabs.settings:Input({
        Title = "Config Name",
        Type = "Input",
        Placeholder = "myconfig",
        Value = currentConfig,
        Flag = "configName",
        Callback = function(v)
            currentConfig = safeName(v)
            _G.hubConfigName = currentConfig
        end,
    })

    local function refreshList()
        local list = listConfigs()
        if #list == 0 then list = { "<no configs>" } end
        return list
    end

    local configDropdown
    configDropdown = Tabs.settings:Dropdown({
        Title = "Saved Configs",
        Values = refreshList(),
        Value = currentConfig,
        AllowNone = false,
        SearchBarEnabled = true,
        Flag = "configList",
        Callback = function(v)
            if not v or v == "<no configs>" then return end
            currentConfig = safeName(v)
            _G.hubConfigName = currentConfig
            if nameInput and nameInput.Set then
                pcall(nameInput.Set, nameInput, currentConfig)
            end
        end,
    })

    Tabs.settings:Button({
        Title = "Save Config",
        Callback = function()
            local ok, name = saveConfig(currentConfig)
            if ok then
                sendnotification("Config saved: " .. name, 4)
                if configDropdown and configDropdown.Refresh then
                    pcall(configDropdown.Refresh, configDropdown, refreshList())
                end
            else
                sendnotification("Save failed: " .. tostring(name), 4)
            end
        end,
    })

    Tabs.settings:Button({
        Title = "Load Config",
        Callback = function()
            _G.hubConfigLoading = true
            local ok, name = loadConfig(currentConfig)
            task.delay(0.5, function() _G.hubConfigLoading = false end)
            if ok then
                sendnotification("Config loaded: " .. name, 4)
            else
                sendnotification("Load failed: " .. tostring(name), 4)
            end
        end,
    })

    Tabs.settings:Button({
        Title = "Delete Config",
        Callback = function()
            local ok, err = deleteConfig(currentConfig)
            if ok then
                sendnotification("Config deleted: " .. currentConfig, 4)
                if configDropdown and configDropdown.Refresh then
                    pcall(configDropdown.Refresh, configDropdown, refreshList())
                end
            else
                sendnotification("Delete failed: " .. tostring(err), 4)
            end
        end,
    })

    Tabs.settings:Button({
        Title = "Refresh List",
        Callback = function()
            if configDropdown and configDropdown.Refresh then
                pcall(configDropdown.Refresh, configDropdown, refreshList())
                sendnotification("Config list refreshed", 3)
            end
        end,
    })

    Tabs.settings:Toggle({
        Title = "Autosave on Exit",
        Value = true,
        Flag = "configAutosave",
        Callback = function(on) _G.hubConfigAutosave = on end,
    })

    task.spawn(function()
        task.wait(2)
        local last = lastConfigName()
        if last then
            _G.hubConfigLoading = true
            local ok, err = loadConfig(last)
            task.wait(0.3)
            _G.hubConfigLoading = false
            if ok then
                print("[SNPWARE] Auto-loaded config: " .. last)
            else
                warn("[SNPWARE] Autoload failed: " .. tostring(err))
            end
        end
    end)

    if Window and type(Window.OnClose) == "function" then
        Window:OnClose(function()
            if _G.hubConfigAutosave ~= false and _G.hubConfigName then
                pcall(saveConfig, _G.hubConfigName)
            end
        end)
    end

    print("[SNPWARE] Config system ready. Dir: " .. CONFIG_DIR)
end

--=====================================================================
-- 13. ФИНАЛЬНЫЙ ЗАПУСК
--=====================================================================
local LOAD_ORDER = {
    "Protection", "Movement", "Noclip", "ESP",
    "NameESP", "ExtraESP", "XRay",
    "SilentAim", "SilentAimHook", "SilentAimKnife",
    "Aimbot", "KnifeAura", "ThrowAura", "KillAllSafeTp",
    "Fling", "Bang", "TrollMisc",
    "Emotes", "HubButtons", "AutoFarm",
    "BackgroundSkybox", "ThemeLanguage", "CloseParticles",
    "FovStretchFps", "HitboxKorbloxRemove", "Other",
    "ConfigSystem",
}

for _, name in ipairs(LOAD_ORDER) do
    if MODULES[name] then
        loadModule(name, MODULES[name])
    end
end

print("[SNPWARE] Hub fully loaded. Press RightControl to open menu.")


