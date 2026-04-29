-- Latte Script Hub - Compiled Distribution
local _vfs = {}
_vfs["init.luau"] = [===[local services = require("@core/services")

local GAME_MAP = {
    -- Midnight Chasers
    [13822562292] = "midnight",
    [139048751758942] = "midnight",
    [133327835421432] = "midnight",
    [121510074321001] = "midnight",
    [78559386987387] = "midnight",

    -- Arsenal
    [286090429] = "arsenal",
    [112464274410705] = "arsenal",
    [79137385850056] = "arsenal",
    [95645135481640] = "arsenal",
    [98283919607281] = "arsenal",

    -- Rivals
    [17625359962] = "rivals",
    [129604661913557] = "rivals",
    [133215910299950] = "rivals",
    [117398147513099] = "rivals",
    [18126510175] = "rivals",
    [71874690745115] = "rivals",

    -- Fallen Survival
    [10228136016] = "fallen_survival",
    [103772067213324] = "fallen_survival",
    [13800717766] = "fallen_survival",
    [16296634952] = "fallen_survival",
    [16849012343] = "fallen_survival",
    [15479377118] = "fallen_survival",
    [15334341098] = "fallen_survival",
    [117057165696692] = "fallen_survival",

    -- Jailbreak
    [606849621] = "jailbreak",
    [108098425719662] = "jailbreak",
    [8990888133] = "jailbreak",
    [17190408132] = "jailbreak",
    [9780994092] = "jailbreak",
    [17190407811] = "jailbreak",

    -- Sniper Duels
    [109397169461300] = "sniper_duels",
    [99744266684189] = "sniper_duels",
    [71550370264914] = "sniper_duels",
    [87638278358672] = "sniper_duels",

    -- Phantom Forces
    [292439477] = "phantom_forces",
    [1342733496] = "phantom_forces",
    [15829941479] = "phantom_forces",

    -- BedWars
    [6872265039] = "bedwars",
    [16008862571] = "bedwars",
    [8444591321] = "bedwars",
    [8560631822] = "bedwars",
    [6872274481] = "bedwars",
}

local function get_game_key()
    local place_id = game.PlaceId
    local game_id = game.GameId

    return GAME_MAP[place_id] or GAME_MAP[game_id]
end

local game_key = get_game_key() or "universal"

local ok, mod = pcall(function()
    return require("./games/" .. game_key .. "/init")
end)

if ok and mod then
    mod.start()
else
    warn("Latte: Failed to load module for " .. game_key .. ": " .. tostring(mod))
end
]===]
_vfs["init"] = _vfs["init.luau"]
_vfs["init"] = _vfs["init.luau"]
_vfs["core/config.luau"] = [===[return {
    display_name = "latte",
    races = {
        Race1 = { name = "City Highway Race", map = "Tokyo" },
        Race2 = { name = "Rainbow Bridge Sprint", map = "Tokyo" },
        Race3 = { name = "Doro Sprint", map = "Tokyo" },
        Race4 = { name = "Rainbow Rinkai Doro Sprint", map = "Tokyo" },
        Race5 = { name = "Interstate 80 Sprint", map = "Boneville" },
        Race6 = { name = "Cross-Country Sprint", map = "Boneville" },
        Race7 = { name = "Salt Flats Drag", map = "Boneville" },
        Race8 = { name = "Salt Flats Grand Prix", map = "Boneville" },
        Race9 = { name = "Salt Flats MotoGP", map = "Boneville" },
    },
    teleport_cooldown_seconds = 5,
    speed_multiplier_default = 1,
    speed_multiplier_step = 0.05,
    speed_multiplier_min = 0.5,
    speed_multiplier_max = 1000,
    apply_speed_to_chassis = true,
    steering_default = 1,
    steering_min = 0.25,
    steering_max = 1000,
    apply_steering_tune = true,
    solo_queue_cooldown_seconds = 3,
    allow_client_automation = true,
    require_studio_for_automation = false,
    teleport_every_seconds = 2.5,
    teleport_every_seconds_min = 0.35,
    teleport_every_seconds_max = 45,
    teleport_chain_interval = 2.5,
    checkpoint_dwell_seconds = 2.5,
    auto_drive_v1_steer_pulse = 0.08,
    auto_drive_v2_steer_pulse = 0.04,
    auto_drive_min_throttle_distance = 40,
    checkpoint_snap_y_offset = 1,
    use_client_checkpoint_snap = true,
    zero_velocity_after_snap = true,
    car_fly_speed = 160,
    car_fly_speed_min = 20,
    car_fly_speed_max = 500,
    car_fly_velocity_cap = 8000,
    tune_reapply_interval_seconds = 0.12,
}
]===]
_vfs["core/config"] = _vfs["core/config.luau"]
_vfs["@core/config"] = _vfs["core/config.luau"]
_vfs["core/hotkeys.luau"] = [===[return {
    toggle_menu = Enum.KeyCode.Home,
    teleport_checkpoint = Enum.KeyCode.H,
    speed_up = Enum.KeyCode.RightBracket,
    speed_down = Enum.KeyCode.LeftBracket,
    instant_brake = Enum.KeyCode.X,
}
]===]
_vfs["core/hotkeys"] = _vfs["core/hotkeys.luau"]
_vfs["@core/hotkeys"] = _vfs["core/hotkeys.luau"]
_vfs["core/player.luau"] = [===[local services = require("@core/services")

return services.players.LocalPlayer
]===]
_vfs["core/player"] = _vfs["core/player.luau"]
_vfs["@core/player"] = _vfs["core/player.luau"]
_vfs["core/services.luau"] = [===[return {
    players = game:GetService("Players"),
    run_service = game:GetService("RunService"),
    user_input = game:GetService("UserInputService"),
    workspace = game:GetService("Workspace"),
    replicated_storage = game:GetService("ReplicatedStorage"),
    virtual_input = game:GetService("VirtualInputManager"),
    virtual_user = game:GetService("VirtualUser"),
    lighting = game:GetService("Lighting"),
    core_gui = game:GetService("CoreGui"),
    http_service = game:GetService("HttpService"),
}
]===]
_vfs["core/services"] = _vfs["core/services.luau"]
_vfs["@core/services"] = _vfs["core/services.luau"]
_vfs["core/state.luau"] = [===[local config = require("@core/config")

export type Atmosphere = {
    enabled: boolean,
    color: Color3,
    decay: Color3,
    density: number,
    glare: number,
    haze: number,
}

export type Skybox = {
    enabled: boolean,
    selected: string,
    custom: { bk: string, dn: string, ft: string, lf: string, rt: string, up: string },
}

export type Fog = {
    enabled: boolean,
    color: Color3,
    start: number,
    finish: number,
}

export type State = {
    speed_multiplier: number,
    steering_sensitivity: number,
    teleport_chain: boolean,
    auto_queue_solo: boolean,
    auto_queue_with_players: boolean,
    selected_race_id: string,
    car_noclip: boolean,
    auto_noclip_while_racing: boolean,
    anti_afk: boolean,
    wait_before_finish: boolean,
    finish_wait_time: number,
    disable_traffic: boolean,
    disable_traffic_collisions: boolean,
    webhook_url: string,
    session_total_money: number,
    car_customization_enabled: boolean,
    rainbow_car: boolean,
    instant_brake_enabled: boolean,
    car_material: string,
    car_color: Color3,
    car_transparency: number,
    infinite_nitro: boolean,
    player_esp: boolean,
    aspect_ratio: number,
    motion_blur: boolean,
    motion_blur_intensity: number,
    brightness: { enabled: boolean, value: number },
    time_of_day: { enabled: boolean, value: number },
    center_panel: boolean,
    saturation: { enabled: boolean, value: number },
    exposure: { enabled: boolean, value: number },
    ambient: { enabled: boolean, color: Color3 },
    atmosphere: Atmosphere,
    skybox: Skybox,
    fog: Fog,
    apply_speed_mods: boolean,
    apply_steer_mods: boolean,
    hide_screen: boolean,
    hide_screen_mode: string,
    finish_sound_enabled: boolean,
    finish_sound_mode: string,
    auto_load_config: string,
    -- Vape V4 Modules (BedWars)
    killaura_enabled: boolean,
    killaura_range: number,
    velocity_enabled: boolean,
    velocity_horizontal: number,
    velocity_vertical: number,
    reach_enabled: boolean,
    reach_distance: number,
    autoclicker_enabled: boolean,
    aimassist_enabled: boolean,
    speed_enabled: boolean,
    speed_value: number,
    fly_enabled: boolean,
    scaffold_enabled: boolean,
    antifall_enabled: boolean,
    spider_enabled: boolean,
    phase_enabled: boolean,
    autobridge_enabled: boolean,
    cheststealer_enabled: boolean,
    autobuy_enabled: boolean,
    autopearl_enabled: boolean,
    autoplay_enabled: boolean,
    fastbreak_enabled: boolean,
    fastbreak_speed: number,
    nuker_enabled: boolean,
    nametags_enabled: boolean,
    tracers_enabled: boolean,
    fullbright_enabled: boolean,
    -- NEW Advanced Features
    bedaura_enabled: boolean,
    bedaura_range: number,
    autokit_enabled: boolean,
    autoshoot_enabled: boolean,
    bow_aura_enabled: boolean,
    inf_fly_enabled: boolean,
    auto_toxic_enabled: boolean,
    auto_report_enabled: boolean,
    -- EVEN MORE Features
    target_strafe_enabled: boolean,
    spinbot_enabled: boolean,
    staff_detector_enabled: boolean,
    auto_heal_enabled: boolean,
    auto_pot_enabled: boolean,
    auto_armor_enabled: boolean,
    auto_tool_enabled: boolean,
    infinite_reach_enabled: boolean,
}

local state: State = {
    speed_multiplier = config.speed_multiplier_default,
    steering_sensitivity = config.steering_default,
    teleport_chain = false,
    auto_queue_solo = false,
    auto_queue_with_players = false,
    selected_race_id = "Race5",
    car_noclip = false,
    auto_noclip_while_racing = false,
    anti_afk = false,
    wait_before_finish = false,
    finish_wait_time = 3,
    disable_traffic = false,
    disable_traffic_collisions = false,
    webhook_url = "",
    session_total_money = 0,
    car_customization_enabled = false,
    rainbow_car = false,
    instant_brake_enabled = false,
    car_material = "Plastic",
    car_color = Color3.fromRGB(255, 255, 255),
    car_transparency = 0,
    infinite_nitro = false,
    player_esp = false,
    aspect_ratio = 100,
    motion_blur = false,
    motion_blur_intensity = 1,
    brightness = { enabled = false, value = 3 },
    time_of_day = { enabled = false, value = 12 },
    center_panel = false,
    saturation = { enabled = false, value = 0 },
    exposure = { enabled = false, value = -0.5 },
    ambient = { enabled = false, color = Color3.fromRGB(0, 0, 0) },
    apply_speed_mods = false,
    apply_steer_mods = false,
    hide_screen = false,
    hide_screen_mode = "Black",
    finish_sound_enabled = false,
    finish_sound_mode = "latte",
    auto_load_config = "",
    atmosphere = {
        enabled = false,
        color = Color3.fromRGB(238, 147, 237),
        decay = Color3.fromRGB(255, 255, 255),
        density = 0.4,
        glare = 10,
        haze = 10,
    },
    skybox = {
        enabled = false,
        selected = "Jungle",
        custom = { bk = "", dn = "", ft = "", lf = "", rt = "", up = "" },
    },
    fog = {
        enabled = false,
        color = Color3.fromRGB(128, 128, 128),
        start = 0,
        finish = 800,
    },
    -- Vape V4 Defaults
    killaura_enabled = false,
    killaura_range = 18,
    velocity_enabled = false,
    velocity_horizontal = 0,
    velocity_vertical = 0,
    reach_enabled = false,
    reach_distance = 3,
    autoclicker_enabled = false,
    aimassist_enabled = false,
    speed_enabled = false,
    speed_value = 23,
    fly_enabled = false,
    scaffold_enabled = false,
    antifall_enabled = false,
    spider_enabled = false,
    phase_enabled = false,
    autobridge_enabled = false,
    cheststealer_enabled = false,
    autobuy_enabled = false,
    autopearl_enabled = false,
    autoplay_enabled = false,
    fastbreak_enabled = false,
    fastbreak_speed = 0.25,
    nuker_enabled = false,
    nametags_enabled = false,
    tracers_enabled = false,
    fullbright_enabled = false,
    -- NEW Advanced Defaults
    bedaura_enabled = false,
    bedaura_range = 25,
    autokit_enabled = false,
    autoshoot_enabled = false,
    bow_aura_enabled = false,
    inf_fly_enabled = false,
    auto_toxic_enabled = false,
    auto_report_enabled = false,
    -- EVEN MORE Defaults
    target_strafe_enabled = false,
    spinbot_enabled = false,
    staff_detector_enabled = false,
    auto_heal_enabled = false,
    auto_pot_enabled = false,
    auto_armor_enabled = false,
    auto_tool_enabled = false,
    infinite_reach_enabled = false,
}

local ge = (getgenv :: any)()
if ge._latte_state then
    return ge._latte_state
end

ge._latte_state = state
return state
]===]
_vfs["core/state"] = _vfs["core/state.luau"]
_vfs["@core/state"] = _vfs["core/state.luau"]
_vfs["games/arsenal/init.luau"] = [===[local arsenal = {}

function arsenal.start()
    warn("Latte: Arsenal support is not yet implemented.")
    -- This is where the Arsenal UI and modules would be loaded
end

return arsenal
]===]
_vfs["games/arsenal/init"] = _vfs["games/arsenal/init.luau"]
_vfs["@games/arsenal/init"] = _vfs["games/arsenal/init.luau"]
_vfs["games/arsenal/ui.luau"] = [===[local ui = {}

function ui.build(unload_fn: () -> ())
    -- Arsenal UI building logic using the shared Panduh framework
end

function ui.unload()
    -- Arsenal UI unloading logic
end

return ui
]===]
_vfs["games/arsenal/ui"] = _vfs["games/arsenal/ui.luau"]
_vfs["@games/arsenal/ui"] = _vfs["games/arsenal/ui.luau"]
_vfs["games/bedwars/init.luau"] = [===[local state = require("@core/state")
local ui = require("./ui")
local remotes = require("./modules/remotes")

-- Modules
local killaura = require("./modules/combat/killaura")
local speed = require("./modules/movement/speed")
local fly = require("./modules/movement/fly")
local bedaura = require("./modules/world/bedaura")

local bedwars = {}

function bedwars.start()
    print("Latte: BedWars module starting...")
    
    -- Initialize Remotes
    local success = remotes.init()
    if not success then
        warn("Latte: BedWars remotes initialization failed!")
    end

    -- Build UI
    ui.build(function()
        bedwars.stop()
    end)

    -- COMBAT LOOP
    task.spawn(function()
        while task.wait(0.1) do
            local success, err = pcall(function()
                if state.killaura_enabled then
                    killaura.step(state)
                end
            end)
            if not success then warn("Latte: Killaura Error: " .. tostring(err)) end
        end
    end)

    -- MOVEMENT & WORLD TOGGLE WATCHER
    task.spawn(function()
        local last_speed = false
        local last_fly = false
        local last_bedaura = false
        
        while task.wait(0.2) do
            -- Speed
            if state.speed_enabled ~= last_speed then
                last_speed = state.speed_enabled
                pcall(function() speed.toggle(last_speed, state) end)
            end
            
            -- Fly
            if state.fly_enabled ~= last_fly then
                last_fly = state.fly_enabled
                pcall(function() fly.toggle(last_fly, state) end)
            end

            -- BedAura
            if state.bedaura_enabled ~= last_bedaura then
                last_bedaura = state.bedaura_enabled
                pcall(function()
                    if last_bedaura then bedaura.start(state) else bedaura.stop() end
                end)
            end
        end
    end)

    print("Latte: BedWars Module Fully Loaded!")
end

function bedwars.stop()
    print("Latte: Unloading BedWars...")
    pcall(ui.unload)
    pcall(bedaura.stop)
    pcall(speed.toggle, false, state)
    pcall(fly.toggle, false, state)
end

return bedwars
]===]
_vfs["games/bedwars/init"] = _vfs["games/bedwars/init.luau"]
_vfs["@games/bedwars/init"] = _vfs["games/bedwars/init.luau"]
_vfs["games/bedwars/ui.luau"] = [===[local state = require("@core/state")
local services = require("@core/services")
local local_player = require("@core/player")
local webhook = require("@modules/automation/webhook")
local configs = require("@modules/automation/configs")

local velocity = require("./modules/combat/velocity")
local reach = require("./modules/combat/reach")

local ui = {}
local lib: any = nil

local function load_lib()
    local url = "https://raw.githubusercontent.com/whft/latte/refs/heads/main/Library.lua"
    local ok, res = pcall(function() return game:HttpGet(url, true) end)
    if ok then
        local fn, err = loadstring(res, "@Library")
        if fn then lib = fn() end
    end
end

local function cc(signal: any, cb: (...any) -> ())
    if not signal then return end
    signal:Connect(function(...)
        local args = { ... }
        if type(args[1]) == "table" and #args[1] == 1 then args[1] = args[1][1] end
        pcall(cb, unpack(args))
    end)
end

function ui.build(unload_fn: () -> ())
    load_lib()
    if not lib then return end

    (getgenv :: any)()._latte = unload_fn

    -- COMBAT
    local combat = lib["menu"].create_group("combat")
    combat:create_tab("combat")
    
    local aura_sec = combat:create_section("combat", "killaura", 1, 0.25, 0)
    cc(aura_sec:create_element({ name = "enabled" }, { toggle = { flag = "v4_aura", default = false } }).on_toggle_change, function(v) state.killaura_enabled = v end)
    cc(aura_sec:create_element({ name = "range" }, { slider = { flag = "v4_aura_r", min = 8, max = 25, default = 18 } }).on_slider_change, function(v) state.killaura_range = v end)

    local velo_sec = combat:create_section("combat", "velocity", 1, 0.2, 0.25)
    cc(velo_sec:create_element({ name = "enabled" }, { toggle = { flag = "v4_velo", default = false } }).on_toggle_change, function(v) velocity.toggle(v, state) end)
    cc(velo_sec:create_element({ name = "horizontal" }, { slider = { flag = "v4_velo_h", min = 0, max = 100, default = 0, suffix = "%" } }).on_slider_change, function(v) state.velocity_horizontal = v end)
    cc(velo_sec:create_element({ name = "vertical" }, { slider = { flag = "v4_velo_v", min = 0, max = 100, default = 0, suffix = "%" } }).on_slider_change, function(v) state.velocity_vertical = v end)

    local reach_sec = combat:create_section("combat", "reach", 1, 0.15, 0.45)
    cc(reach_sec:create_element({ name = "enabled" }, { toggle = { flag = "v4_reach", default = false } }).on_toggle_change, function(v) state.reach_enabled = v; reach.update(state) end)
    cc(reach_sec:create_element({ name = "distance" }, { slider = { flag = "v4_reach_d", min = 0, max = 12, default = 3, decimals = 1 } }).on_slider_change, function(v) state.reach_distance = v; reach.update(state) end)

    local strafe_sec = combat:create_section("combat", "target strafe", 1, 0.15, 0.6)
    cc(strafe_sec:create_element({ name = "enabled" }, { toggle = { flag = "v4_strafe", default = false } }).on_toggle_change, function(v) state.target_strafe_enabled = v end)

    local anti_sec = combat:create_section("combat", "anti-aim", 1, 0.25, 0.75)
    cc(anti_sec:create_element({ name = "spin bot" }, { toggle = { flag = "v4_spin", default = false } }).on_toggle_change, function(v) state.spinbot_enabled = v end)

    -- BLATANT
    local blatant = lib["menu"].create_group("blatant")
    blatant:create_tab("movement")
    
    local move_sec = blatant:create_section("movement", "speed", 1, 0.25, 0)
    cc(move_sec:create_element({ name = "enabled" }, { toggle = { flag = "v4_speed", default = false } }).on_toggle_change, function(v) state.speed_enabled = v end)
    cc(move_sec:create_element({ name = "value" }, { slider = { flag = "v4_speed_v", min = 16, max = 100, default = 23 } }).on_slider_change, function(v) state.speed_value = v end)

    local fly_sec = blatant:create_section("movement", "flight", 1, 0.25, 0.25)
    cc(fly_sec:create_element({ name = "enabled" }, { toggle = { flag = "v4_fly", default = false } }).on_toggle_change, function(v) state.fly_enabled = v end)
    cc(fly_sec:create_element({ name = "infinite fly" }, { toggle = { flag = "v4_inf_fly", default = false } }).on_toggle_change, function(v) state.inf_fly_enabled = v end)

    local scaf_sec = blatant:create_section("movement", "scaffold", 1, 0.15, 0.5)
    cc(scaf_sec:create_element({ name = "enabled" }, { toggle = { flag = "v4_scaf", default = false } }).on_toggle_change, function(v) state.scaffold_enabled = v end)

    local world_blatant = blatant:create_section("movement", "bedaura / nuker", 1, 0.2, 0.65)
    cc(world_blatant:create_element({ name = "enabled" }, { toggle = { flag = "v4_bedaura", default = false } }).on_toggle_change, function(v) state.bedaura_enabled = v end)
    cc(world_blatant:create_element({ name = "range" }, { slider = { flag = "v4_bedaura_r", min = 5, max = 30, default = 25 } }).on_slider_change, function(v) state.bedaura_range = v end)

    local wall_sec = blatant:create_section("movement", "world", 1, 0.15, 0.85)
    cc(wall_sec:create_element({ name = "spider" }, { toggle = { flag = "v4_spider", default = false } }).on_toggle_change, function(v) state.spider_enabled = v end)
    cc(wall_sec:create_element({ name = "phase" }, { toggle = { flag = "v4_phase", default = false } }).on_toggle_change, function(v) state.phase_enabled = v end)

    -- WORLD
    local world = lib["menu"].create_group("world")
    world:create_tab("world")
    
    local break_sec = world:create_section("world", "mining", 1, 0.25, 0)
    cc(break_sec:create_element({ name = "fast break" }, { toggle = { flag = "v4_fbreak", default = false } }).on_toggle_change, function(v) state.fastbreak_enabled = v end)
    cc(break_sec:create_element({ name = "auto tool" }, { toggle = { flag = "v4_atool", default = false } }).on_toggle_change, function(v) state.auto_tool_enabled = v end)

    local kit_sec = world:create_section("world", "automation", 1, 0.5, 0.25)
    cc(kit_sec:create_element({ name = "auto kit" }, { toggle = { flag = "v4_kit", default = false } }).on_toggle_change, function(v) state.autokit_enabled = v end)
    cc(kit_sec:create_element({ name = "auto armor" }, { toggle = { flag = "v4_aarmor", default = false } }).on_toggle_change, function(v) state.auto_armor_enabled = v end)
    cc(kit_sec:create_element({ name = "auto heal" }, { toggle = { flag = "v4_aheal", default = false } }).on_toggle_change, function(v) state.auto_heal_enabled = v end)
    cc(kit_sec:create_element({ name = "auto pot" }, { toggle = { flag = "v4_apot", default = false } }).on_toggle_change, function(v) state.auto_pot_enabled = v end)

    local util_sec = world:create_section("world", "utility", 1, 0.25, 0.75)
    cc(util_sec:create_element({ name = "chest stealer" }, { toggle = { flag = "v4_chest", default = false } }).on_toggle_change, function(v) state.cheststealer_enabled = v end)
    cc(util_sec:create_element({ name = "auto buy" }, { toggle = { flag = "v4_buy", default = false } }).on_toggle_change, function(v) state.autobuy_enabled = v end)

    -- VISUALS
    local vis = lib["menu"].create_group("visuals")
    vis:create_tab("visuals")
    local esp_sec = vis:create_section("visuals", "esp", 1, 0.5, 0)
    cc(esp_sec:create_element({ name = "player esp" }, { toggle = { flag = "v4_esp", default = false } }).on_toggle_change, function(v) state.player_esp = v end)
    cc(esp_sec:create_element({ name = "nametags" }, { toggle = { flag = "v4_tags", default = false } }).on_toggle_change, function(v) state.nametags_enabled = v end)
    cc(esp_sec:create_element({ name = "tracers" }, { toggle = { flag = "v4_tracers", default = false } }).on_toggle_change, function(v) state.tracers_enabled = v end)
    
    local world_vis = vis:create_section("visuals", "world", 1, 0.3, 0.5)
    cc(world_vis:create_element({ name = "fullbright" }, { toggle = { flag = "v4_bright", default = false } }).on_toggle_change, function(v) state.fullbright_enabled = v end)
    cc(world_vis:create_element({ name = "staff detector" }, { toggle = { flag = "v4_staff", default = false } }).on_toggle_change, function(v) state.staff_detector_enabled = v end)

    -- SETTINGS
    local sett = lib["menu"].create_group("settings")
    sett:create_tab("settings")
    local web_sec = sett:create_section("settings", "webhook", 1, 0.4, 0)
    cc(web_sec:create_element({ name = "webhook url" }, { textbox = { flag = "v4_webhook", default = "" } }).on_textbox_change, function(v) state.webhook_url = v end)
end

function ui.unload()
    velocity.toggle(false, state)
    reach.update({ reach_enabled = false })
end

return ui
]===]
_vfs["games/bedwars/ui"] = _vfs["games/bedwars/ui.luau"]
_vfs["@games/bedwars/ui"] = _vfs["games/bedwars/ui.luau"]
_vfs["games/bedwars/modules/remotes.luau"] = [===[local services = require("@core/services")
local lplr = require("@core/player")

local remotes = {}
local bedwars = {}

local function dumpRemote(tab)
    local ind
    for i, v in tab do
        if v == 'Client' then
            ind = i
            break
        end
    end
    return ind and tab[ind + 1] or ''
end

local function safeRequire(path)
    local success, res = pcall(require, path)
    return success and res or nil
end

function remotes.init()
    local KnitInit, Knit
    print("Latte: Searching for Knit...")
    
    local timeout = 0
    repeat
        KnitInit, Knit = pcall(function()
            local ts = lplr.PlayerScripts:FindFirstChild("TS")
            if not ts then return nil end
            local knit_mod = ts:FindFirstChild("knit")
            if not knit_mod then return nil end
            local setup = require(knit_mod).setup
            if not setup then return nil end
            
            -- Scan all upvalues for the true Knit table (one that has .Controllers)
            for i = 1, 32 do
                local val = debug.getupvalue(setup, i)
                if type(val) == "table" and val.Controllers then
                    return val
                end
            end
            return nil
        end)
        if KnitInit and Knit then break end
        task.wait(0.1)
        timeout += 0.1
    until timeout > 10

    if not Knit then
        warn("Latte: Failed to find Knit Controllers")
        return false
    end
    
    print("Latte: Knit Controllers found!")

    -- Defensively check for Knit.Start
    if Knit.Start and type(Knit.Start) == "function" then
        pcall(function()
            if not debug.getupvalue(Knit.Start, 1) then
                repeat task.wait() until debug.getupvalue(Knit.Start, 1)
            end
        end)
    end

    local rs = services.replicated_storage
    
    -- DEFENSIVE DEPENDENCY GRABBING
    bedwars.Knit = Knit
    
    local fw_mod = safeRequire(rs['rbxts_include']['node_modules']['@flamework'].core.out)
    if fw_mod then bedwars.Flamework = fw_mod.Flamework end

    local client_mod = safeRequire(rs.TS.remotes)
    if client_mod and client_mod.default then bedwars.Client = client_mod.default.Client end

    local store_mod = safeRequire(lplr.PlayerScripts.TS.ui.store)
    if store_mod then bedwars.Store = store_mod.ClientStore end

    local item_meta_mod = safeRequire(rs.TS.item['item-meta'])
    if item_meta_mod and item_meta_mod.getItemMeta then
        pcall(function() bedwars.ItemMeta = debug.getupvalue(item_meta_mod.getItemMeta, 1) end)
    end

    local block_engine_mod = safeRequire(rs['rbxts_include']['node_modules']['@easy-games']['block-engine'].out)
    if block_engine_mod then bedwars.BlockController = block_engine_mod.BlockEngine end

    local client_block_mod = safeRequire(lplr.PlayerScripts.TS.lib['block-engine']['client-block-engine'])
    if client_block_mod then bedwars.BlockEngine = client_block_mod.ClientBlockEngine end

    -- GRAB REMOTES
    local remoteTargets = {
        AttackEntity = { "SwordController", "sendServerRequest" },
        DropItem = { "ItemDropController", "dropItemInHand" },
        ConsumeItem = { "ConsumeController", "onEnable" },
        FireProjectile = { "ProjectileController", "launchProjectileWithValues" }
    }

    for name, path in remoteTargets do
        pcall(function()
            local controller = Knit.Controllers[path[1]]
            if not controller then return end
            local func = controller[path[2]]
            if type(func) == "function" then
                local remote = dumpRemote(debug.getconstants(func))
                if remote ~= '' then
                    remotes[name] = remote
                    print("Latte: Grabbed " .. name .. ": " .. remote)
                end
            end
        end)
    end

    -- Special case for EquipItem (Flamework/Entity)
    pcall(function()
        local inv_mod = safeRequire(rs.TS.entity.entities['inventory-entity'])
        if inv_mod and inv_mod.InventoryEntity and inv_mod.InventoryEntity.equipItem then
            local remote = dumpRemote(debug.getconstants(debug.getproto(inv_mod.InventoryEntity.equipItem, 3)))
            if remote ~= '' then remotes.EquipItem = remote end
        end
    end)

    print("Latte: BedWars dependencies initialized!")
    return true
end

function remotes.get(name)
    return remotes[name]
end

function remotes.call(name, ...)
    if not bedwars.Client or not remotes[name] then return end
    return bedwars.Client:Get(remotes[name]):CallServer(...)
end

function remotes.fire(name, ...)
    if not bedwars.Client or not remotes[name] then return end
    return bedwars.Client:Get(remotes[name]):FireServer(...)
end

return {
    remotes = remotes,
    bedwars = bedwars,
    init = remotes.init
}
]===]
_vfs["games/bedwars/modules/remotes"] = _vfs["games/bedwars/modules/remotes.luau"]
_vfs["@games/bedwars/modules/remotes"] = _vfs["games/bedwars/modules/remotes.luau"]
_vfs["games/bedwars/modules/blatant/scaffold.luau"] = [===[local services = require("@core/services")
local lplr = require("@core/player")
local remotes_mod = require("../remotes")

local scaffold = {}

function scaffold.step(state)
    if not state.scaffold_enabled then return end
    
    local char = lplr.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    if not root then return end

    local bedwars = remotes_mod.bedwars
    if not bedwars.BlockController then return end

    -- Logic to find the block position below player in movement direction
    local moveDir = root.AssemblyLinearVelocity * Vector3.new(1, 0, 1)
    if moveDir.Magnitude < 0.1 then 
        moveDir = root.CFrame.LookVector * Vector3.new(1, 0, 1)
    end
    
    local pos = root.Position + (moveDir.Unit * 3) - Vector3.new(0, 4, 0)
    local blockPos = bedwars.BlockController:getBlockPosition(pos)
    
    -- Check if block exists, if not, place it
    -- Note: This requires the BlockPlacement remote which we grabbed in remotes.luau
    if not bedwars.BlockController:getStore():getBlockAt(blockPos) then
        -- Placeholder for placement logic (calls remote)
    end
end

return scaffold
]===]
_vfs["games/bedwars/modules/blatant/scaffold"] = _vfs["games/bedwars/modules/blatant/scaffold.luau"]
_vfs["@games/bedwars/modules/blatant/scaffold"] = _vfs["games/bedwars/modules/blatant/scaffold.luau"]
_vfs["games/bedwars/modules/combat/killaura.luau"] = [===[local services = require("@core/services")
local lplr = require("@core/player")
local remotes_mod = require("../remotes")

local killaura = {}

local function get_nearest_target(range)
    local nearest = nil
    local minDist = range

    for _, player in services.players:GetPlayers() do
        if player ~= lplr and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            if player.Team ~= lplr.Team then
                local dist = (lplr.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
                if dist < minDist then
                    minDist = dist
                    nearest = player
                end
            end
        end
    end
    return nearest
end

function killaura.step(state)
    if not state.killaura_enabled then return end
    
    local bedwars = remotes_mod.bedwars
    local target = get_nearest_target(state.killaura_range or 18)
    
    if target then
        local weapon = lplr.Character and lplr.Character:FindFirstChild("HandInvItem")
        if weapon and weapon.Value then
            -- Animation
            if bedwars.SwordController then
                bedwars.SwordController:playSwordEffect(bedwars.ItemMeta[weapon.Value.Name])
            end

            -- Attack
            remotes_mod.fire("AttackEntity", {
                entityInstance = target.Character,
                validate = {
                    selfPosition = { value = lplr.Character.HumanoidRootPart.Position },
                    targetPosition = { value = target.Character.HumanoidRootPart.Position }
                },
                weapon = weapon.Value
            })
        end
    end
end

return killaura
]===]
_vfs["games/bedwars/modules/combat/killaura"] = _vfs["games/bedwars/modules/combat/killaura.luau"]
_vfs["@games/bedwars/modules/combat/killaura"] = _vfs["games/bedwars/modules/combat/killaura.luau"]
_vfs["games/bedwars/modules/combat/reach.luau"] = [===[local remotes_mod = require("../remotes")

local reach = {}

function reach.update(state)
    local bedwars = remotes_mod.bedwars
    if not bedwars.CombatConstant then return end
    
    if state.reach_enabled then
        bedwars.CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = (state.reach_distance or 18) + 2
    else
        bedwars.CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = 14.4
    end
end

return reach
]===]
_vfs["games/bedwars/modules/combat/reach"] = _vfs["games/bedwars/modules/combat/reach.luau"]
_vfs["@games/bedwars/modules/combat/reach"] = _vfs["games/bedwars/modules/combat/reach.luau"]
_vfs["games/bedwars/modules/combat/velocity.luau"] = [===[local remotes_mod = require("../remotes")

local velocity = {}
local old_knockback = nil

function velocity.toggle(enabled, state)
    local bedwars = remotes_mod.bedwars
    if not bedwars.KnockbackUtil then return end

    if enabled then
        if not old_knockback then
            old_knockback = bedwars.KnockbackUtil.applyKnockback
            bedwars.KnockbackUtil.applyKnockback = function(root, mass, dir, knockback, ...)
                local horiz = state.velocity_horizontal or 0
                local vert = state.velocity_vertical or 0
                
                if horiz == 0 and vert == 0 then return end
                
                knockback = knockback or {}
                knockback.horizontal = (knockback.horizontal or 1) * (horiz / 100)
                knockback.vertical = (knockback.vertical or 1) * (vert / 100)
                
                return old_knockback(root, mass, dir, knockback, ...)
            end
        end
    else
        if old_knockback then
            bedwars.KnockbackUtil.applyKnockback = old_knockback
            old_knockback = nil
        end
    end
end

return velocity
]===]
_vfs["games/bedwars/modules/combat/velocity"] = _vfs["games/bedwars/modules/combat/velocity.luau"]
_vfs["@games/bedwars/modules/combat/velocity"] = _vfs["games/bedwars/modules/combat/velocity.luau"]
_vfs["games/bedwars/modules/movement/fly.luau"] = [===[local services = require("@core/services")
local lplr = require("@core/player")

local fly = {}
local connection
local bv, bg

function fly.toggle(enabled, state)
    if not enabled then
        if connection then connection:Disconnect(); connection = nil end
        if bv then bv:Destroy(); bv = nil end
        if bg then bg:Destroy(); bg = nil end
        return
    end

    connection = services.run_service.Heartbeat:Connect(function()
        if not state.fly_enabled then return end
        local char = lplr.Character
        local root = char and char:FindFirstChild("HumanoidRootPart")
        if not root then return end

        if not bv then
            bv = Instance.new("BodyVelocity")
            bv.MaxForce = Vector3.new(1e6, 1e6, 1e6)
            bv.Parent = root
        end

        local move_dir = char.Humanoid.MoveDirection
        local fly_speed = state.speed_value or 50
        
        local y_vel = 0
        if services.input_service:IsKeyDown(Enum.KeyCode.Space) then
            y_vel = fly_speed
        elseif services.input_service:IsKeyDown(Enum.KeyCode.LeftShift) then
            y_vel = -fly_speed
        end

        bv.Velocity = (move_dir * fly_speed) + Vector3.new(0, y_vel, 0)
        
        -- Anti-Fall logic if fly is enabled
        root.Velocity = Vector3.new(root.Velocity.X, 0, root.Velocity.Z)
    end)
end

return fly
]===]
_vfs["games/bedwars/modules/movement/fly"] = _vfs["games/bedwars/modules/movement/fly.luau"]
_vfs["@games/bedwars/modules/movement/fly"] = _vfs["games/bedwars/modules/movement/fly.luau"]
_vfs["games/bedwars/modules/movement/speed.luau"] = [===[local services = require("@core/services")
local lplr = require("@core/player")

local speed = {}
local connection

function speed.toggle(enabled, state)
    if not enabled then
        if connection then connection:Disconnect(); connection = nil end
        return
    end

    connection = services.run_service.Heartbeat:Connect(function(dt)
        if not state.speed_enabled then return end
        local char = lplr.Character
        local root = char and char:FindFirstChild("HumanoidRootPart")
        local hum = char and char:FindFirstChild("Humanoid")
        
        if root and hum and hum.MoveDirection.Magnitude > 0 then
            local move_dir = hum.MoveDirection
            local vel = move_dir * state.speed_value
            root.Velocity = Vector3.new(vel.X, root.Velocity.Y, vel.Z)
        end
    end)
end

return speed
]===]
_vfs["games/bedwars/modules/movement/speed"] = _vfs["games/bedwars/modules/movement/speed.luau"]
_vfs["@games/bedwars/modules/movement/speed"] = _vfs["games/bedwars/modules/movement/speed.luau"]
_vfs["games/bedwars/modules/utility/autobridge.luau"] = [===[local services = require("@core/services")
local lplr = require("@core/player")
local remotes_mod = require("../remotes")

local autobridge = {}

function autobridge.step(state)
    if not state.autobridge_enabled then return end
    
    local char = lplr.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    if not root then return end

    -- Check if we are moving
    if root.AssemblyLinearVelocity.Magnitude < 2 then return end

    local pos = root.Position + (root.CFrame.LookVector * 3) - Vector3.new(0, 4, 0)
    local blockPos = remotes_mod.bedwars.BlockController:getBlockPosition(pos)
    
    -- Logic to place block at blockPos if empty
    -- (This usually involves calling the block placement remote)
end

return autobridge
]===]
_vfs["games/bedwars/modules/utility/autobridge"] = _vfs["games/bedwars/modules/utility/autobridge.luau"]
_vfs["@games/bedwars/modules/utility/autobridge"] = _vfs["games/bedwars/modules/utility/autobridge.luau"]
_vfs["games/bedwars/modules/world/bedaura.luau"] = [===[local services = require("@core/services")
local lplr = require("@core/player")
local remotes = require("../remotes")

local bedaura = {}
local connection

function bedaura.start(state)
    connection = services.run_service.Heartbeat:Connect(function()
        if not state.bedaura_enabled then return end
        
        local char = lplr.Character
        if not char then return end
        local root = char:FindFirstChild("HumanoidRootPart")
        if not root then return end

        -- Search for beds
        for _, obj in ipairs(workspace:GetDescendants()) do
            if obj.Name == "bed" and obj:IsA("BasePart") then
                local dist = (obj.Position - root.Position).Magnitude
                if dist <= (state.bedaura_range or 25) then
                    -- Check if it's enemy bed (BedWars attribute)
                    local team = obj:GetAttribute("Team")
                    if team ~= lplr:GetAttribute("Team") then
                        -- Fire break remote
                        remotes.fire("DamageBlock", {
                            blockPosition = services.replicated_storage.TS.lib.util["block-util"]:getBlockPosition(obj.Position)
                        })
                    end
                end
            end
        end
    end)
end

function bedaura.stop()
    if connection then connection:Disconnect(); connection = nil end
end

return bedaura
]===]
_vfs["games/bedwars/modules/world/bedaura"] = _vfs["games/bedwars/modules/world/bedaura.luau"]
_vfs["@games/bedwars/modules/world/bedaura"] = _vfs["games/bedwars/modules/world/bedaura.luau"]
_vfs["games/bedwars/modules/world/fastbreak.luau"] = [===[local remotes_mod = require("../remotes")

local fastbreak = {}

function fastbreak.step(state)
    local bedwars = remotes_mod.bedwars
    if not bedwars.BlockBreakController then return end
    
    local breaker = bedwars.BlockBreakController.blockBreaker
    if not breaker then return end

    if state.fastbreak_enabled then
        breaker:setCooldown(state.fastbreak_speed or 0.2)
    else
        breaker:setCooldown(0.3)
    end
end

return fastbreak
]===]
_vfs["games/bedwars/modules/world/fastbreak"] = _vfs["games/bedwars/modules/world/fastbreak.luau"]
_vfs["@games/bedwars/modules/world/fastbreak"] = _vfs["games/bedwars/modules/world/fastbreak.luau"]
_vfs["games/fallen_survival/init.luau"] = [===[local game_module = {}

function game_module.start()
    warn('Latte: Support for ' + 'fallen_survival' + ' is coming soon!')
    local ui = require('./ui')
    ui.build(function() end)
end

return game_module
]===]
_vfs["games/fallen_survival/init"] = _vfs["games/fallen_survival/init.luau"]
_vfs["@games/fallen_survival/init"] = _vfs["games/fallen_survival/init.luau"]
_vfs["games/fallen_survival/ui.luau"] = [===[local ui = {}

function ui.build(unload_fn)
    -- Placeholder
end

function ui.unload()
end

return ui
]===]
_vfs["games/fallen_survival/ui"] = _vfs["games/fallen_survival/ui.luau"]
_vfs["@games/fallen_survival/ui"] = _vfs["games/fallen_survival/ui.luau"]
_vfs["games/jailbreak/init.luau"] = [===[local game_module = {}

function game_module.start()
    warn('Latte: Support for ' + 'jailbreak' + ' is coming soon!')
    local ui = require('./ui')
    ui.build(function() end)
end

return game_module
]===]
_vfs["games/jailbreak/init"] = _vfs["games/jailbreak/init.luau"]
_vfs["@games/jailbreak/init"] = _vfs["games/jailbreak/init.luau"]
_vfs["games/jailbreak/ui.luau"] = [===[local ui = {}

function ui.build(unload_fn)
    -- Placeholder
end

function ui.unload()
end

return ui
]===]
_vfs["games/jailbreak/ui"] = _vfs["games/jailbreak/ui.luau"]
_vfs["@games/jailbreak/ui"] = _vfs["games/jailbreak/ui.luau"]
_vfs["games/midnight/init.luau"] = [===[local services = require("@core/services")
local config = require("@core/config")
local state = require("@core/state")
local local_player = require("@core/player")
local hotkeys = require("@core/hotkeys")

local ui = require("../ui")
local teleport = require("./modules/race/teleport")
local race_data = require("./modules/race/data")
local chain = require("./modules/race/chain")
local traffic = require("./modules/automation/traffic")
local queue = require("./modules/race/queue")
local noclip = require("./modules/car/noclip")
local anti_afk = require("@modules/automation/anti_afk")
local webhook = require("@modules/automation/webhook")
local esp = require("@modules/visual/esp")
local world = require("@modules/visual/world")
local screen = require("./modules/visual/screen")
local hud = require("./modules/visual/hud")
local effects = require("./modules/visual/effects")
local nitro = require("./modules/car/nitro")
local customize = require("./modules/car/customize")
local tune = require("./modules/car/tune")
local brake = require("./modules/car/brake")
local vehicle = require("@shared/vehicle")
local configs = require("@modules/automation/configs")
local fly = require("./modules/car/fly")
local auto_drive = require("./modules/race/auto_drive")

local ge = (getgenv :: any)()

local active = true
local conn_set = {
    _conns = {} :: { [number]: RBXScriptConnection },
    add = function(self, c: RBXScriptConnection)
        table.insert(self._conns, c)
    end,
    clear = function(self)
        for _, c in self._conns do
            c:Disconnect()
        end
        table.clear(self._conns)
    end,
}

local function unload()
    active = false
    conn_set:clear()

    pcall(function() ui.unload() end)
    pcall(function() esp.unload() end)
    pcall(function() tune.unload() end)
    pcall(function() anti_afk.unload() end)
    pcall(function() webhook.unload() end)

    ge.LatteStarted = nil
    ge.LatteUnload = nil
end

local function on_character_added(char: Model)
    pcall(function()
        noclip.on_character(char)
        teleport.on_character(char)
    end)
end

local function start()
    -- prepare race data
    race_data.merge_static_names()
    race_data.refresh_workspace_names()
    race_data.bind_watcher()

    -- prepare configs
    configs.init()
    local auto = configs.get_autoload()
    if auto ~= "" then
        configs.load(auto)
    end

    -- watch for Races folder appearing later
    if not services.workspace:FindFirstChild("Races") then
        conn_set:add(services.workspace.ChildAdded:Connect(function(ch)
            if ch.Name == "Races" then
                race_data.refresh_workspace_names()
                race_data.bind_watcher()
            end
        end))
    end

    -- reset teleport state
    teleport.reset()

    -- start webhook tracker
    webhook.start_tracker()

    -- bind anti-afk
    anti_afk.bind()

    -- init screen overlay
    screen.init()

    -- build the UI
    local ok, err = pcall(function()
        ui.build(unload)
    end)
    if not ok then
        warn("Latte: UI build failed: " .. tostring(err))
    end

    -- input handling (hotkeys)
    conn_set:add(services.user_input.InputBegan:Connect(function(input, processed)
        if not active or processed then
            return
        end
        if input.KeyCode == hotkeys.teleport_checkpoint then
            teleport.try_manual()
        elseif input.KeyCode == hotkeys.speed_up then
            tune.nudge_speed(config.speed_multiplier_step)
        elseif input.KeyCode == hotkeys.speed_down then
            tune.nudge_speed(-config.speed_multiplier_step)
        end
    end))

    -- character added
    if local_player.Character then
        on_character_added(local_player.Character)
    end
    conn_set:add(local_player.CharacterAdded:Connect(on_character_added))

    -- automation loop (queuing + chain teleport)
    task.spawn(function()
        while active do
            task.wait(0.2)
            if not active then break end

            pcall(function() queue.try_solo(state) end)
            pcall(function() queue.try_with_players(state) end)
            if state.teleport_chain then
                pcall(function() chain.step() end)
            end
        end
    end)

    -- tune reapply loop
    task.spawn(function()
        local interval = config.tune_reapply_interval_seconds
        while active do
            task.wait(interval)
            if not active then break end
            if tune.has_binding() and (state.apply_speed_mods or state.apply_steer_mods) then
                local car, seat = vehicle.get_seat()
                if car and seat then
                    pcall(function() tune.reapply() end)
                end
            end
        end
    end)

    -- render loop
    conn_set:add(services.run_service.RenderStepped:Connect(function(_dt: number)
        if not active then return end

        pcall(function() traffic.step() end)
        pcall(function() noclip.step(state) end)
        pcall(function() chain.hold_snap() end)

        pcall(function()
            local car = vehicle.get_seat()
            if car then
                if (state.apply_speed_mods or state.apply_steer_mods) and not tune.has_binding() then
                    tune.bind(car)
                elseif tune.has_binding() and tune.get_bound_car() ~= car then
                    tune.unbind()
                    tune.bind(car)
                end
            else
                if tune.has_binding() then
                    tune.unbind()
                end
            end
        end)
        pcall(function()
            if state.instant_brake_enabled then
                brake.fire()
            end
        end)

        -- visuals per-frame
        pcall(function() esp.step() end)
        pcall(function() customize.step() end)
        pcall(function() nitro.step() end)
        pcall(function() world.apply() end)
        pcall(function()
            local blur = services.lighting:FindFirstChild("LatteMotionBlur")
            if state.motion_blur then
                if not blur then
                    blur = Instance.new("BlurEffect")
                    blur.Name = "LatteMotionBlur"
                    blur.Parent = services.lighting
                end
                local hrp = local_player.Character and local_player.Character:FindFirstChild("HumanoidRootPart")
                local velocity = hrp and (hrp :: BasePart).AssemblyLinearVelocity.Magnitude or 0
                (blur :: BlurEffect).Size = math.clamp((velocity / 10) * state.motion_blur_intensity, 0, 24)
            else
                if blur then
                    blur:Destroy()
                end
            end
        end)
        pcall(function() hud.step() end)
        pcall(function() effects.step() end)
    end))

    ge.LatteUnload = unload
end

return {
    start = start,
    unload = unload
}
]===]
_vfs["games/midnight/init"] = _vfs["games/midnight/init.luau"]
_vfs["@games/midnight/init"] = _vfs["games/midnight/init.luau"]
_vfs["games/midnight/ui.luau"] = [===[local state = require("@core/state")

local services = require("@core/services")
local local_player = require("@core/player")

local vehicle = require("@shared/vehicle")
local race_data = require("./modules/race/data")

local tune = require("./modules/car/tune")
local brake = require("./modules/car/brake")
local webhook = require("@modules/automation/webhook")
local configs = require("@modules/automation/configs")

local ui = {}

local lib: any = nil
local panduh_destroy: (() -> ())? = nil

local function load_lib()
    -- print("Latte: Fetching UI library...")
    local url = "https://raw.githubusercontent.com/whft/latte/refs/heads/main/Library.lua"
    local body
    local ok, err = pcall(function()
        return game:HttpGet(url, true)
    end)

    if not ok or not err then
        warn("Latte: Failed to fetch library: " .. tostring(err))
        return
    end
    body = err

    -- print("Latte: Parsing UI library...")
    local fn, parse_err = loadstring(body, "@Library")
    if not fn then
        warn("Latte: Failed to parse library: " .. tostring(parse_err))
        return
    end

    -- print("Latte: Initializing UI library...")
    local ok2, lib_err = pcall(fn)
    if not ok2 then
        warn("Latte: Failed to execute library: " .. tostring(lib_err))
        return
    end

    lib = lib_err
    -- print("Latte: UI library loaded successfully")
end

local function cc(signal: any, cb: (...any) -> ())
    if not signal then
        return
    end
    local ok, err = pcall(function()
        signal:Connect(function(...)
            local args = { ... }
            if type(args[1]) == "table" and #args[1] == 1 then
                args[1] = args[1][1]
            end
            local cbok, cberr = pcall(cb, unpack(args))
            if not cbok then
                warn("Latte: UI callback error: " .. tostring(cberr))
            end
        end)
    end)
    if not ok then
        warn("Latte: Signal connect failed: " .. tostring(err))
    end
end

function ui.build(unload_fn: () -> ())
    (getgenv :: any)().script_name = "latte"
    (getgenv :: any)().script_version = "private"
    (getgenv :: any)().custom_folder = "latte"

    configs.init()
    pcall(function()
        if not isfolder("latte") then
            makefolder("latte")
        end
        if not isfolder("latte/assets") then
            makefolder("latte/assets")
        end

        local base_url = "https://raw.githubusercontent.com/whft/latte/main/assets/"

        local assets = {
            ["latte_logo.png"] = base_url .. "latte_logo.png",
            ["kick.png"] = base_url .. "kick.png",
            ["break.ogg"] = base_url .. "break.ogg",
            ["latte.ogg"] = base_url .. "latte.ogg",
            ["mc bow.ogg"] = base_url .. "mc%20bow.ogg",
            ["neverlose.ogg"] = base_url .. "neverlose.ogg",
            ["primordial.ogg"] = base_url .. "primordial.ogg",
            ["rust.ogg"] = base_url .. "rust.ogg",
            ["scar.ogg"] = base_url .. "scar.ogg",
            ["sexy.ogg"] = base_url .. "sexy.ogg",
            ["skeet.ogg"] = base_url .. "skeet.ogg",
            ["sparkle.ogg"] = base_url .. "sparkle.ogg",
        }

        for name, url in assets do
            if not isfile("latte/assets/" .. name) then
                pcall(function()
                    writefile("latte/assets/" .. name, game:HttpGet(url))
                end)
            end
        end
    end)

    load_lib()

    panduh_destroy = (getgenv :: any)()._latte;
    (getgenv :: any)()._latte = unload_fn

    local race_ids = race_data.list_selectable_ids()
    if #race_ids == 0 then
        table.insert(race_ids, "Race5")
    end
    local default_id = race_ids[1]
    for _, id in race_ids do
        if id == state.selected_race_id then
            default_id = id
            break
        end
    end
    state.selected_race_id = default_id
    local race_labels, label_to_id = race_data.build_dropdown(race_ids)
    local default_label = race_labels[1]
    for i, id in race_ids do
        if id == default_id then
            default_label = race_labels[i]
            break
        end
    end

    -- farm
    local farm = lib["menu"].create_group("farm")
    farm:create_tab("race")

    local solo_sec = farm:create_section("race", "autofarm", 1, 0.5, 0)
    local race_dd = solo_sec:create_element({ name = "race to run" }, {
        dropdown = {
            flag = "latte_race",
            options = race_labels,
            default = default_label,
            multi = false,
            requires_one = true,
        },
    })
    cc(race_dd.on_dropdown_change, function(v: any)
        local rid = label_to_id[v]
        state.selected_race_id = rid or "Race5"
    end)
    local solo_toggle = solo_sec:create_element(
        { name = "auto queue solo" },
        { toggle = { flag = "latte_solo", default = false } }
    )
    cc(solo_toggle.on_toggle_change, function(v: boolean)
        state.auto_queue_solo = v
    end)
    local players_toggle = solo_sec:create_element(
        { name = "auto queue with players" },
        { toggle = { flag = "latte_queue_players", default = false } }
    )
    cc(players_toggle.on_toggle_change, function(v: boolean)
        state.auto_queue_with_players = v
    end)
    local auto_noclip = solo_sec:create_element(
        { name = "auto noclip while racing" },
        { toggle = { flag = "latte_auto_noclip", default = false } }
    )
    cc(auto_noclip.on_toggle_change, function(v: boolean)
        state.auto_noclip_while_racing = v
    end)

    local afk_sec = farm:create_section("race", "anti afk", 1, 0.15, 0.5)
    local afk_toggle = afk_sec:create_element(
        { name = "anti afk" },
        { toggle = { flag = "latte_afk", default = false } }
    )
    cc(afk_toggle.on_toggle_change, function(v: boolean)
        state.anti_afk = v
    end)

    local cp_sec = farm:create_section("race", "checkpoint route", 1, 0.35, 0.65)
    local chain_toggle = cp_sec:create_element(
        { name = "auto teleport checkpoints" },
        { toggle = { flag = "latte_chain", default = false } }
    )
    cc(chain_toggle.on_toggle_change, function(v: boolean)
        state.teleport_chain = v
    end)
    local wait_toggle = cp_sec:create_element(
        { name = "wait before finish" },
        { toggle = { flag = "latte_wait_finish", default = false } }
    )
    cc(wait_toggle.on_toggle_change, function(v: boolean)
        state.wait_before_finish = v
    end)
    local wait_slider = cp_sec:create_element({ name = "finish wait time" }, {
        slider = { flag = "latte_finish_wait", min = 0, max = 300, default = 3, suffix = "s", decimals = 1 },
    })
    cc(wait_slider.on_slider_change, function(v: number)
        state.finish_wait_time = v
    end)
    local sound_toggle = cp_sec:create_element(
        { name = "finish notification sound" },
        { toggle = { flag = "latte_finish_sound", default = false } }
    )
    cc(sound_toggle.on_toggle_change, function(v: boolean)
        state.finish_sound_enabled = v
    end)
    local sound_mode = cp_sec:create_element({ name = "finish sound mode" }, {
        dropdown = {
            flag = "latte_sound_mode",
            options = {
                "break",
                "latte",
                "mc bow",
                "neverlose",
                "primordial",
                "rust",
                "scar",
                "sexy",
                "skeet",
                "sparkle",
            },
            default = "latte",
        },
    })
    cc(sound_mode.on_dropdown_change, function(v: string)
        state.finish_sound_mode = v
        pcall(function()
            local path = "latte/assets/" .. v .. ".ogg"
            if isfile(path) then
                local s = Instance.new("Sound")
                s.SoundId = (getcustomasset :: any)(path)
                s.Volume = 2
                s.Parent = game:GetService("SoundService")
                s:Play()
                task.delay(5, function()
                    s:Destroy()
                end)
            end
        end)
    end)

    -- visuals
    local vis = lib["menu"].create_group("visuals")
    vis:create_tab("world")

    local esp_sec = vis:create_section("world", "esp", 1, 0.11, 0)
    local esp_toggle = esp_sec:create_element(
        { name = "name esp" },
        { toggle = { flag = "latte_esp", default = false } }
    )
    cc(esp_toggle.on_toggle_change, function(v: boolean)
        state.player_esp = v
    end)

    -- Column 1
    local light_sec = vis:create_section("world", "lighting", 1, 0.44, 0.11)
    local tod_el = light_sec:create_element({ name = "time of day" }, {
        toggle = { flag = "latte_tod_e", default = false },
        slider = { flag = "latte_tod", min = 0, max = 24, default = 12, decimals = 1 },
    })
    cc(tod_el.on_toggle_change, function(v: boolean)
        state.time_of_day.enabled = v
    end)
    cc(tod_el.on_slider_change, function(v: number)
        state.time_of_day.value = v
    end)

    local bright_el = light_sec:create_element({ name = "brightness" }, {
        toggle = { flag = "latte_bright_e", default = false },
        slider = { flag = "latte_bright", min = 0, max = 10, default = 2, decimals = 1 },
    })
    cc(bright_el.on_toggle_change, function(v: boolean)
        state.brightness.enabled = v
    end)
    cc(bright_el.on_slider_change, function(v: number)
        state.brightness.value = v
    end)

    local sat_el = light_sec:create_element({ name = "saturation" }, {
        toggle = { flag = "latte_sat_e", default = false },
        slider = { flag = "latte_sat", min = -1, max = 1, default = 0, decimals = 2 },
    })
    cc(sat_el.on_toggle_change, function(v: boolean)
        state.saturation.enabled = v
    end)
    cc(sat_el.on_slider_change, function(v: number)
        state.saturation.value = v
    end)

    local exp_el = light_sec:create_element({ name = "exposure" }, {
        toggle = { flag = "latte_exp_e", default = false },
        slider = { flag = "latte_exp", min = -10, max = 10, default = 0, decimals = 1 },
    })
    cc(exp_el.on_toggle_change, function(v: boolean)
        state.exposure.enabled = v
    end)
    cc(exp_el.on_slider_change, function(v: number)
        state.exposure.value = v
    end)

    local ambient_el = light_sec:create_element({ name = "ambient" }, {
        toggle = { flag = "latte_amb_e", default = false },
        colorpicker = {
            color_flag = "latte_ambient",
            default_color = Color3.fromRGB(0, 0, 0),
            transparency_flag = "latte_amb_trans",
            default_transparency = 0,
        },
    })
    cc(ambient_el.on_toggle_change, function(v: boolean)
        state.ambient.enabled = v
    end)
    cc(ambient_el.on_color_change, function(v: Color3)
        state.ambient.color = v
    end)

    local atmo_sec = vis:create_section("world", "atmosphere", 1, 0.45, 0.55)
    local atmo_el = atmo_sec:create_element({ name = "atmosphere" }, {
        toggle = { flag = "latte_atmo_e", default = false },
        colorpicker = {
            color_flag = "latte_atmo_col",
            default_color = Color3.fromRGB(255, 255, 255),
            transparency_flag = "latte_atmo_trans",
            default_transparency = 0,
        },
    })
    cc(atmo_el.on_toggle_change, function(v: boolean)
        state.atmosphere.enabled = v
    end)
    cc(atmo_el.on_color_change, function(v: Color3)
        state.atmosphere.color = v
    end)

    cc(
        atmo_sec:create_element({ name = "density" }, {
            slider = { flag = "latte_atmo_dens", min = 0, max = 1, default = 0.395, decimals = 3 },
        }).on_slider_change,
        function(v: number)
            state.atmosphere.density = v
        end
    )

    cc(
        atmo_sec:create_element({ name = "decay" }, {
            colorpicker = {
                color_flag = "latte_atmo_decay_c",
                default_color = Color3.fromRGB(255, 255, 255),
                transparency_flag = "latte_atmo_decay_t",
                default_transparency = 0,
            },
        }).on_color_change,
        function(v: Color3)
            state.atmosphere.decay = v
        end
    )

    cc(
        atmo_sec:create_element({ name = "glare" }, {
            slider = { flag = "latte_atmo_glare", min = 0, max = 10, default = 0, decimals = 1 },
        }).on_slider_change,
        function(v: number)
            state.atmosphere.glare = v
        end
    )

    cc(
        atmo_sec:create_element({ name = "haze" }, {
            slider = { flag = "latte_atmo_haze", min = 0, max = 10, default = 0, decimals = 1 },
        }).on_slider_change,
        function(v: number)
            state.atmosphere.haze = v
        end
    )

    -- Column 2
    local sky_sec = vis:create_section("world", "skybox presets", 2, 0.15, 0)
    local sky_changer = sky_sec:create_element({ name = "skybox preset" }, {
        toggle = { flag = "latte_sky", default = false },
        dropdown = {
            flag = "latte_sky_sel",
            options = { "Jungle", "Blossom", "Red night", "Purple default", "Foggy", "Custom" },
            default = "Jungle",
        },
    })
    cc(sky_changer.on_toggle_change, function(v: boolean)
        state.skybox.enabled = v
    end)
    cc(sky_changer.on_dropdown_change, function(v: string)
        state.skybox.selected = v
    end)

    local fog_sec = vis:create_section("world", "fog settings", 2, 0.25, 0.15)
    local fog_changer = fog_sec:create_element({ name = "fog" }, {
        toggle = { flag = "latte_fog", default = false },
        colorpicker = {
            color_flag = "latte_fog_color",
            default_color = Color3.fromRGB(128, 128, 128),
            transparency_flag = "latte_fog_trans",
            default_transparency = 0,
        },
    })
    cc(fog_changer.on_toggle_change, function(v: boolean)
        state.fog.enabled = v
    end)
    cc(fog_changer.on_color_change, function(v: Color3)
        state.fog.color = v
    end)

    cc(
        fog_sec:create_element({ name = "fog start" }, {
            slider = { flag = "latte_fog_s", min = 0, max = 10000, default = 0 },
        }).on_slider_change,
        function(v: number)
            state.fog.start = v
        end
    )

    cc(
        fog_sec:create_element({ name = "fog end" }, {
            slider = { flag = "latte_fog_e", min = 0, max = 10000, default = 800 },
        }).on_slider_change,
        function(v: number)
            state.fog.finish = v
        end
    )

    local hud_sec = vis:create_section("world", "hud & effects", 2, 0.3, 0.40)
    cc(
        hud_sec:create_element({ name = "center panel" }, { toggle = { flag = "latte_panel", default = false } }).on_toggle_change,
        function(v: boolean)
            state.center_panel = v
        end
    )
    cc(
        hud_sec:create_element(
            { name = "aspect ratio" },
            { slider = { flag = "latte_ar", min = 10, max = 125, default = 100, suffix = "%" } }
        ).on_slider_change,
        function(v: number)
            state.aspect_ratio = v
        end
    )
    cc(
        hud_sec:create_element({ name = "motion blur" }, { toggle = { flag = "latte_blur", default = false } }).on_toggle_change,
        function(v: boolean)
            state.motion_blur = v
        end
    )
    cc(
        hud_sec:create_element(
            { name = "motion blur intensity" },
            { slider = { flag = "latte_blur_int", min = 0, max = 50, default = 10, suffix = "x" } }
        ).on_slider_change,
        function(v: number)
            state.motion_blur_intensity = v / 10
        end
    )

    local screen_sec = vis:create_section("world", "screen", 2, 0.2, 0.70)
    local hide_toggle = screen_sec:create_element(
        { name = "hide screen" },
        { toggle = { flag = "latte_hide_screen", default = false } }
    )
    cc(hide_toggle.on_toggle_change, function(v: boolean)
        state.hide_screen = v
    end)
    local hide_mode = screen_sec:create_element({ name = "mode" }, {
        dropdown = {
            flag = "latte_hide_mode",
            options = { "Black", "White", "Sakura" },
            default = "Black",
        },
    })
    cc(hide_mode.on_dropdown_change, function(v: string)
        state.hide_screen_mode = v
    end)

    -- mods
    local mods = lib["menu"].create_group("mods")
    mods:create_tab("car")

    local tune_sec = mods:create_section("car", "tuning", 1, 0.35, 0)
    local power_toggle = tune_sec:create_element(
        { name = "apply power mods" },
        { toggle = { flag = "latte_power", default = false } }
    )
    cc(power_toggle.on_toggle_change, function(v: boolean)
        state.apply_speed_mods = v
        tune.reapply()
    end)
    local steer_toggle = tune_sec:create_element(
        { name = "apply steering mods" },
        { toggle = { flag = "latte_steer", default = false } }
    )
    cc(steer_toggle.on_toggle_change, function(v: boolean)
        state.apply_steer_mods = v
        tune.reapply()
    end)
    local speed_slider = tune_sec:create_element({ name = "speed multiplier" }, {
        slider = {
            flag = "latte_speed",
            min = 0.1,
            max = 50,
            default = state.speed_multiplier,
            suffix = "x",
            decimals = 1,
        },
    })
    cc(speed_slider.on_slider_change, function(v: number)
        tune.set_speed(v)
    end)
    local steer_slider = tune_sec:create_element({ name = "steering multiplier" }, {
        slider = {
            flag = "latte_steer_mult",
            min = 0.1,
            max = 5,
            default = state.steering_sensitivity,
            suffix = "x",
            decimals = 2,
        },
    })
    cc(steer_slider.on_slider_change, function(v: number)
        tune.set_steering(v)
    end)

    local world_sec = mods:create_section("car", "world", 1, 0.2, 0.35)
    local traffic_toggle = world_sec:create_element(
        { name = "disable traffic" },
        { toggle = { flag = "latte_traffic", default = false } }
    )
    cc(traffic_toggle.on_toggle_change, function(v: boolean)
        state.disable_traffic = v
    end)
    local traffic_col_toggle = world_sec:create_element(
        { name = "disable traffic collisions" },
        { toggle = { flag = "latte_traffic_col", default = false } }
    )
    cc(traffic_col_toggle.on_toggle_change, function(v: boolean)
        state.disable_traffic_collisions = v
    end)
    local noclip_toggle = world_sec:create_element(
        { name = "disable car collisions" },
        { toggle = { flag = "latte_noclip", default = false } }
    )
    cc(noclip_toggle.on_toggle_change, function(v: boolean)
        state.car_noclip = v
    end)

    local handling_sec = mods:create_section("car", "handling", 2, 0.25, 0)
    local brake_toggle = handling_sec:create_element(
        { name = "instant brake" },
        { toggle = { flag = "latte_brake", default = false } }
    )
    cc(brake_toggle.on_toggle_change, function(v: boolean)
        state.instant_brake_enabled = v
    end)
    local nitro_toggle = handling_sec:create_element(
        { name = "infinite nitro" },
        { toggle = { flag = "latte_nitro", default = false } }
    )
    cc(nitro_toggle.on_toggle_change, function(v: boolean)
        state.infinite_nitro = v
    end)

    local cust_sec = mods:create_section("car", "customization", 1, 0.3, 0.55)
    local car_cust_toggle = cust_sec:create_element(
        { name = "car customization" },
        { toggle = { flag = "latte_car_cust", default = false } }
    )
    cc(car_cust_toggle.on_toggle_change, function(v: boolean)
        state.car_customization_enabled = v
    end)
    local rainbow_toggle = cust_sec:create_element(
        { name = "rainbow car" },
        { toggle = { flag = "latte_rainbow", default = false } }
    )
    cc(rainbow_toggle.on_toggle_change, function(v: boolean)
        state.rainbow_car = v
    end)
    local car_color_picker = cust_sec:create_element({ name = "car color" }, {
        colorpicker = {
            color_flag = "latte_car_color",
            default_color = Color3.fromRGB(255, 255, 255),
            transparency_flag = "latte_car_trans",
            default_transparency = 0,
        },
    })
    cc(car_color_picker.on_color_change, function(v: Color3)
        state.car_color = v
    end)
    cc(car_color_picker.on_transparency_change, function(v: number)
        state.car_transparency = v
    end)
    local mat_dd = cust_sec:create_element({ name = "car material" }, {
        dropdown = {
            flag = "latte_material",
            options = {
                "Plastic",
                "SmoothPlastic",
                "Neon",
                "ForceField",
                "Glass",
                "Ice",
                "Wood",
                "WoodPlanks",
                "Slate",
                "Concrete",
                "Granite",
                "Brick",
                "Pebble",
                "Sand",
                "Fabric",
                "Marble",
                "Metal",
                "DiamondPlate",
                "Cobblestone",
                "CorrodedMetal",
                "Foil",
                "Salt",
                "Rust",
                "Mud",
                "Grass",
                "LeafyGrass",
                "Snow",
                "Basalt",
                "CrackedLava",
                "GlacialIce",
                "Ground",
                "Rock",
                "Asphalt",
                "Sandstone",
                "Limestone",
                "Plaster",
                "Cardboard",
                "Carpet",
                "CeramicTiles",
                "ClayRoofTiles",
                "RoofShingles",
                "Leather",
                "Rubber",
            },
            default = "Plastic",
            multi = false,
            requires_one = true,
        },
    })
    cc(mat_dd.on_dropdown_change, function(v: any)
        state.car_material = v
    end)

    -- teleport
    local tp = lib["menu"].create_group("teleport")
    tp:create_tab("players")
    local tp_sec = tp:create_section("players", "teleport to player", 1, 1, 0)

    local player_labels: { string } = {}
    local player_label_to_name: { [string]: string } = {}
    local function update_player_list()
        table.clear(player_labels)
        table.clear(player_label_to_name)
        for _, p in services.players:GetPlayers() do
            if p ~= local_player then
                local lbl = p.DisplayName .. " (@" .. p.Name .. ")"
                table.insert(player_labels, lbl)
                player_label_to_name[lbl] = p.Name
            end
        end
        if #player_labels == 0 then
            table.insert(player_labels, "no other players")
        end
    end
    update_player_list()

    local selected_player: string? = nil
    local player_dd = tp_sec:create_element({ name = "select player" }, {
        dropdown = {
            flag = "latte_player",
            options = player_labels,
            default = player_labels[1],
            multi = false,
            requires_one = true,
        },
    })
    cc(player_dd.on_dropdown_change, function(v: any)
        selected_player = player_label_to_name[v]
    end)
    local refresh_btn = tp_sec:create_element({ name = "refresh list" }, { button = { confirmation = false } })
    cc(refresh_btn.on_clicked, function()
        update_player_list()
        pcall(function()
            player_dd:set_options(player_labels)
            player_dd:set_dropdown(player_labels[1])
        end)
    end)
    local tp_btn = tp_sec:create_element({ name = "teleport" }, { button = { confirmation = false } })
    cc(tp_btn.on_clicked, function()
        if not selected_player then
            return
        end
        local target = services.players:FindFirstChild(selected_player)
        if not target or not (target :: Player).Character then
            return
        end
        local thrp = (target :: Player).Character:FindFirstChild("HumanoidRootPart") :: BasePart?
        if not thrp then
            return
        end
        local tcf = thrp.CFrame * CFrame.new(0, 0, -10)
        local car, seat = vehicle.get_seat()
        if car and seat then
            car:PivotTo(tcf)
            seat.AssemblyLinearVelocity = Vector3.zero
            seat.AssemblyAngularVelocity = Vector3.zero
        else
            local hrp = local_player.Character
                and local_player.Character:FindFirstChild("HumanoidRootPart") :: BasePart?
            if hrp then
                hrp.CFrame = tcf
            end
        end
    end)

    -- settings
    local overview = lib["menu"].create_group("settings")
    overview:create_tab("settings")

    local web_sec = overview:create_section("settings", "webhook", 1, 0.4, 0)
    local web_url = web_sec:create_element(
        { name = "webhook url" },
        { textbox = { flag = "latte_webhook", default = "" } }
    )
    cc(web_url.on_textbox_change, function(v: string)
        state.webhook_url = v
    end)
    local paste_btn = web_sec:create_element({ name = "paste from clipboard" }, { button = { confirmation = false } })
    cc(paste_btn.on_clicked, function()
        pcall(function()
            if typeof(getclipboard) == "function" then
                local text = getclipboard()
                if text and typeof(text) == "string" then
                    web_url:set_textbox(text)
                    state.webhook_url = text
                end
            end
        end)
    end)
    local test_btn = web_sec:create_element({ name = "test webhook" }, { button = { confirmation = false } })
    cc(test_btn.on_clicked, function()
        webhook.send_test()
    end)
    local reset_btn = web_sec:create_element({ name = "reset session total" }, { button = { confirmation = false } })
    cc(reset_btn.on_clicked, function()
        state.session_total_money = 0
    end)

    local config_sec = overview:create_section("settings", "configurations", 1, 0.6, 0.4)
    local config_list = configs.list()
    if #config_list == 0 then
        table.insert(config_list, "none")
    end

    local selected_config = ""
    local config_dd = config_sec:create_element({ name = "select config" }, {
        dropdown = {
            flag = "latte_config_sel",
            options = config_list,
            default = config_list[1],
            multi = false,
            requires_one = true,
        },
    })
    cc(config_dd.on_dropdown_change, function(v: string)
        selected_config = v
    end)

    local config_name = config_sec:create_element({ name = "config name" }, {
        textbox = { flag = "latte_config_name", default = "" },
    })
    local new_name = ""
    cc(config_name.on_textbox_change, function(v: string)
        new_name = v
    end)

    local function refresh_configs()
        local list = configs.list()
        if #list == 0 then
            table.insert(list, "none")
        end
        pcall(function()
            config_dd:set_options(list)
        end)
    end

    local refresh_btn = config_sec:create_element({ name = "refresh list" }, { button = { confirmation = false } })
    cc(refresh_btn.on_clicked, function()
        refresh_configs()
    end)

    local save_btn = config_sec:create_element({ name = "save config" }, { button = { confirmation = false } })
    cc(save_btn.on_clicked, function()
        local target = new_name ~= "" and new_name or selected_config
        if target == "" or target == "none" then
            return
        end
        local ok, err = configs.save(target)
        if ok then
            -- print("Latte: Saved config: " .. target)
            refresh_configs()
        else
            warn("Latte: Failed to save config: " .. tostring(err))
        end
    end)

    local load_btn = config_sec:create_element({ name = "load config" }, { button = { confirmation = false } })
    cc(load_btn.on_clicked, function()
        if selected_config == "" or selected_config == "none" then
            return
        end
        local ok, err = configs.load(selected_config)
        if ok then
            -- print("Latte: Loaded config: " .. selected_config)
        else
            warn("Latte: Failed to load config: " .. tostring(err))
        end
    end)

    local autoload_btn = config_sec:create_element({ name = "set as auto-load" }, { button = { confirmation = false } })
    cc(autoload_btn.on_clicked, function()
        if selected_config == "" or selected_config == "none" then
            return
        end
        configs.set_autoload(selected_config)
        -- print("Latte: Set auto-load to: " .. selected_config)
    end)

    local clear_autoload_btn = config_sec:create_element(
        { name = "clear auto-load" },
        { button = { confirmation = false } }
    )
    cc(clear_autoload_btn.on_clicked, function()
        configs.set_autoload("")
        -- print("Latte: Cleared auto-load")
    end)

    local delete_btn = config_sec:create_element({ name = "delete config" }, { button = { confirmation = false } })
    cc(delete_btn.on_clicked, function()
        if selected_config == "" or selected_config == "none" then
            return
        end
        local ok, err = configs.delete(selected_config)
        if ok then
            -- print("Latte: Deleted config: " .. selected_config)
            refresh_configs()
        else
            warn("Latte: Failed to delete config: " .. tostring(err))
        end
    end)
end

function ui.unload()
    if panduh_destroy then
        pcall(panduh_destroy)
    end
    lib = nil
end

return ui
]===]
_vfs["games/midnight/ui"] = _vfs["games/midnight/ui.luau"]
_vfs["@games/midnight/ui"] = _vfs["games/midnight/ui.luau"]
_vfs["games/midnight/modules/automation/traffic.luau"] = [===[local services = require("@core/services")
local state = require("@core/state")

local traffic = {}

function traffic.step()
    local npcs = services.workspace:FindFirstChild("NPCVehicles")
    if not npcs then
        return
    end
    local vehicles = npcs:FindFirstChild("Vehicles")
    if not vehicles then
        return
    end

    if state.disable_traffic then
        vehicles:ClearAllChildren()
        return
    end

    if state.disable_traffic_collisions then
        for _, v in vehicles:GetDescendants() do
            if v:IsA("BasePart") and v.CanCollide then
                v.CanCollide = false
            end
        end
    end
end

return traffic
]===]
_vfs["games/midnight/modules/automation/traffic"] = _vfs["games/midnight/modules/automation/traffic.luau"]
_vfs["@games/midnight/modules/automation/traffic"] = _vfs["games/midnight/modules/automation/traffic.luau"]
_vfs["games/midnight/modules/car/brake.luau"] = [===[local vehicle = require("@shared/vehicle")

local brake = {}

function brake.fire()
    local car, seat = vehicle.get_seat()
    if car and seat then
        seat.AssemblyLinearVelocity = Vector3.zero
        seat.AssemblyAngularVelocity = Vector3.zero
    end
end

return brake
]===]
_vfs["games/midnight/modules/car/brake"] = _vfs["games/midnight/modules/car/brake.luau"]
_vfs["@games/midnight/modules/car/brake"] = _vfs["games/midnight/modules/car/brake.luau"]
_vfs["games/midnight/modules/car/customize.luau"] = [===[local state = require("@core/state")
local vehicle = require("@shared/vehicle")

local customize = {}

local original_colors: { [BasePart]: Color3 } = {}
local original_materials: { [BasePart]: Enum.Material } = {}
local last_car: Model? = nil

function customize.step()
    local car = vehicle.get_seat()
    if not car then
        return
    end

    if last_car ~= car then
        table.clear(original_colors)
        table.clear(original_materials)
        last_car = car
    end

    if not state.car_customization_enabled then
        for part, color in original_colors do
            if part and part.Parent then
                part.Color = color
            end
        end
        for part, mat in original_materials do
            if part and part.Parent then
                part.Material = mat
            end
        end
        return
    end

    local color = state.car_color
    if state.rainbow_car then
        color = Color3.fromHSV((tick() % 5) / 5, 1, 1)
    end
    local material = (Enum.Material :: any)[state.car_material]

    for _, v in car:GetDescendants() do
        if v:IsA("BasePart") and v.Transparency < 0.5 then
            if original_colors[v] == nil then
                original_colors[v] = v.Color
                original_materials[v] = v.Material
            end
            v.Color = color
            if material then
                v.Material = material
            end
        end
    end
end

return customize
]===]
_vfs["games/midnight/modules/car/customize"] = _vfs["games/midnight/modules/car/customize.luau"]
_vfs["@games/midnight/modules/car/customize"] = _vfs["games/midnight/modules/car/customize.luau"]
_vfs["games/midnight/modules/car/fly.luau"] = [===[local services = require("@core/services")
local config = require("@core/config")
local local_player = require("@core/player")
local state = require("@core/state")
local vehicle = require("@shared/vehicle")
local game_modules = require("@shared/game_modules")
local checkpoints = require("@midnight/race/checkpoints")

local fly = {}

function fly.step_free(dt: number)
    local car, seat = vehicle.get_seat()
    if not car or not seat then
        return
    end
    local cam = services.workspace.CurrentCamera
    if not cam then
        return
    end
    local lv = cam.CFrame.LookVector
    local flat = Vector3.new(lv.X, 0, lv.Z)
    if flat.Magnitude > 1e-3 then
        flat = flat.Unit
    else
        flat = Vector3.new(0, 0, -1)
    end
    local move = Vector3.zero
    if services.user_input:IsKeyDown(Enum.KeyCode.W) then
        move += flat
    end
    if services.user_input:IsKeyDown(Enum.KeyCode.S) then
        move -= flat
    end
    local right = flat:Cross(Vector3.yAxis)
    if right.Magnitude > 1e-3 then
        right = right.Unit
        if services.user_input:IsKeyDown(Enum.KeyCode.D) then
            move += right
        end
        if services.user_input:IsKeyDown(Enum.KeyCode.A) then
            move -= right
        end
    end
    if services.user_input:IsKeyDown(Enum.KeyCode.Space) then
        move += Vector3.yAxis
    end
    if services.user_input:IsKeyDown(Enum.KeyCode.LeftShift) then
        move -= Vector3.yAxis
    end

    local base = config.car_fly_speed
    local cap = base * state.speed_multiplier
    local vmax = config.car_fly_velocity_cap
    cap = math.clamp(cap, config.car_fly_speed_min, vmax)

    if move.Magnitude > 1e-4 then
        seat.AssemblyLinearVelocity = move.Unit * cap
    else
        local v = seat.AssemblyLinearVelocity
        local damp = math.clamp(1 - dt * 4, 0, 1)
        seat.AssemblyLinearVelocity = Vector3.new(v.X * damp, v.Y * damp * 0.96, v.Z * damp)
    end
end

function fly.step_guided()
    local race = game_modules.client_race.ClientRace
    if not race then
        return
    end
    local entry = race.Racers and race.Racers:FindFirstChild(local_player.Name)
    if not entry or not checkpoints.is_racing(race) then
        return
    end
    local car, seat = vehicle.get_seat()
    if not car or not seat then
        return
    end
    local target = checkpoints.target_position(race, entry)
    if not target then
        return
    end
    local flat = Vector3.new(target.X - seat.Position.X, 0, target.Z - seat.Position.Z)
    local dy = target.Y - seat.Position.Y
    if flat.Magnitude < 8 then
        local v = seat.AssemblyLinearVelocity
        seat.AssemblyLinearVelocity = Vector3.new(v.X * 0.88, v.Y * 0.88, v.Z * 0.88)
        return
    end
    local hori = flat.Unit
    local yfac = math.clamp(dy * 0.06, -0.85, 0.85)
    local move = hori + Vector3.new(0, yfac, 0)
    if move.Magnitude < 1e-4 then
        return
    end
    move = move.Unit
    local base = config.car_fly_speed
    local vmax = config.car_fly_velocity_cap
    local cap = math.clamp(base * state.speed_multiplier, config.car_fly_speed_min, vmax)
    seat.AssemblyLinearVelocity = move * cap
end

return fly
]===]
_vfs["games/midnight/modules/car/fly"] = _vfs["games/midnight/modules/car/fly.luau"]
_vfs["@games/midnight/modules/car/fly"] = _vfs["games/midnight/modules/car/fly.luau"]
_vfs["games/midnight/modules/car/nitro.luau"] = [===[local state = require("@core/state")
local vehicle = require("@shared/vehicle")

local nitro = {}

function nitro.step()
    if not state.infinite_nitro then
        return
    end
    local car = vehicle.get_seat()
    if not car then
        return
    end
    local max = car:GetAttribute("MaxNitrous") or 100
    car:SetAttribute("Nitrous", max)
end

return nitro
]===]
_vfs["games/midnight/modules/car/nitro"] = _vfs["games/midnight/modules/car/nitro.luau"]
_vfs["@games/midnight/modules/car/nitro"] = _vfs["games/midnight/modules/car/nitro.luau"]
_vfs["games/midnight/modules/car/noclip.luau"] = [===[local automation = require("@shared/automation")
local game_modules = require("@shared/game_modules")
local vehicle = require("@shared/vehicle")
local checkpoints = require("@midnight/race/checkpoints")

local noclip = {}

local baselines: { [BasePart]: boolean } = {}
local bound: Model? = nil

local function restore()
    for p, was in baselines do
        if p and p.Parent then
            p.CanCollide = was
        end
    end
    table.clear(baselines)
    bound = nil
end

local function want_active(state: { car_noclip: boolean, auto_noclip_while_racing: boolean }): boolean
    if not automation.allowed() then
        return false
    end
    if state.car_noclip then
        return true
    end
    if state.auto_noclip_while_racing then
        local race = game_modules.client_race.ClientRace
        return race ~= nil and checkpoints.is_racing(race)
    end
    return false
end

function noclip.step(state: { car_noclip: boolean, auto_noclip_while_racing: boolean })
    if not want_active(state) then
        restore()
        return
    end
    local car = vehicle.get_seat()
    if not car then
        restore()
        return
    end
    if bound and bound ~= car then
        restore()
    end
    bound = car
    for _, d in car:GetDescendants() do
        if d:IsA("BasePart") then
            if baselines[d] == nil then
                baselines[d] = d.CanCollide
            end
            d.CanCollide = false
        end
    end
end

function noclip.unload()
    restore()
end

return noclip
]===]
_vfs["games/midnight/modules/car/noclip"] = _vfs["games/midnight/modules/car/noclip.luau"]
_vfs["@games/midnight/modules/car/noclip"] = _vfs["games/midnight/modules/car/noclip.luau"]
_vfs["games/midnight/modules/car/tune.luau"] = [===[local config = require("@core/config")
local state = require("@core/state")

local tune = {}

local POWER_KEYS = {
    Horsepower = true,
    E_Horsepower = true,
    E_Torque = true,
    Torque = true,
    Engine_Horsepower = true,
}
local STEER_KEYS = {
    SteerSpeed = true,
    SteerRatio = true,
    MinSteer = true,
    MaxSteer = true,
    SteerDecay = true,
}

local baselines: { [ModuleScript]: { [string]: number } } = {}
local last_script: ModuleScript? = nil

local function find_module(car: Model): ModuleScript?
    local m = car:FindFirstChild("A-Chassis Tune", true) or car:FindFirstChild("Tuner", true)
    if m and m:IsA("ModuleScript") then
        return m
    end
    return nil
end

local function capture(script: ModuleScript, t: { [string]: number })
    local b = {}
    for key in POWER_KEYS do
        if type(t[key]) == "number" then
            b[key] = t[key]
        end
    end
    for key in STEER_KEYS do
        if type(t[key]) == "number" then
            b[key] = t[key]
        end
    end
    baselines[script] = b
end

local function restore(script: ModuleScript, t: { [string]: number })
    local b = baselines[script]
    if not b or not t then
        return
    end
    for key, base in b do
        t[key] = base
    end
end

function tune.reapply()
    if not last_script then
        return
    end
    if not (state.apply_speed_mods or state.apply_steer_mods) then
        return
    end
    local ok, t = pcall(require, last_script)
    if not ok or typeof(t) ~= "table" then
        return
    end
    restore(last_script, t)
    local b = baselines[last_script]
    if not b then
        return
    end
    for key, base in b do
        if POWER_KEYS[key] and state.apply_speed_mods then
            t[key] = base * state.speed_multiplier
        elseif STEER_KEYS[key] and state.apply_steer_mods then
            t[key] = base * state.steering_sensitivity
        end
    end
    local car = last_script:FindFirstAncestorWhichIsA("Model")
    if car then
        local update = car:FindFirstChild("UpdateTune", true)
        if update and update:IsA("RemoteEvent") and typeof(getconnections) == "function" then
            for _, c in ipairs(getconnections(update.OnClientEvent)) do
                pcall(function()
                    c:Function(t)
                end)
            end
        end
    end
end

function tune.bind(car: Model)
    if not (state.apply_speed_mods or state.apply_steer_mods) then
        return
    end
    local script = find_module(car)
    if not script then
        return
    end
    local ok, t = pcall(require, script)
    if not ok or typeof(t) ~= "table" then
        return
    end
    if last_script and last_script ~= script then
        local prev_ok, prev = pcall(require, last_script)
        if prev_ok and typeof(prev) == "table" then
            restore(last_script, prev)
        end
    end
    last_script = script
    if not baselines[script] then
        capture(script, t)
    end
    tune.reapply()
end

function tune.unbind()
    if last_script then
        local ok, t = pcall(require, last_script)
        if ok and typeof(t) == "table" then
            restore(last_script, t)
        end
    end
    last_script = nil
end

function tune.has_binding(): boolean
    return last_script ~= nil
end

function tune.get_bound_car(): Model?
    if last_script then
        return last_script:FindFirstAncestorWhichIsA("Model")
    end
    return nil
end

function tune.set_speed(v: number)
    state.speed_multiplier = v
    tune.reapply()
end

function tune.set_steering(v: number)
    state.steering_sensitivity = math.clamp(v, config.steering_min, config.steering_max)
    tune.reapply()
end

function tune.nudge_speed(delta: number)
    tune.set_speed(state.speed_multiplier + delta)
end

return tune
]===]
_vfs["games/midnight/modules/car/tune"] = _vfs["games/midnight/modules/car/tune.luau"]
_vfs["@games/midnight/modules/car/tune"] = _vfs["games/midnight/modules/car/tune.luau"]
_vfs["games/midnight/modules/race/auto_drive.luau"] = [===[local services = require("@core/services")
local config = require("@core/config")
local local_player = require("@core/player")
local automation = require("@shared/automation")
local vehicle = require("@shared/vehicle")
local checkpoints = require("@midnight/race/checkpoints")

local auto_drive = {}

local virtual_down: { [Enum.KeyCode]: boolean } = {
    [Enum.KeyCode.W] = false,
    [Enum.KeyCode.A] = false,
    [Enum.KeyCode.D] = false,
}
local steer_pulse_accum = 0

local function send(k: Enum.KeyCode, down: boolean)
    services.virtual_input:SendKeyEvent(down, k, false, nil)
    virtual_down[k] = down
end

function auto_drive.release_all()
    for k, down in virtual_down do
        if down then
            services.virtual_input:SendKeyEvent(false, k, false, nil)
            virtual_down[k] = false
        end
    end
end

function auto_drive.step(dt: number, use_v2: boolean)
    if not automation.allowed() then
        return
    end
    local race, entry = checkpoints.racer_entry()
    if not race or not entry or not checkpoints.is_racing(race) then
        auto_drive.release_all()
        return
    end
    local hum = local_player.Character and local_player.Character:FindFirstChildOfClass("Humanoid")
    local seat = hum and hum.SeatPart
    if not seat or not seat:IsA("VehicleSeat") then
        auto_drive.release_all()
        return
    end
    local car = seat:FindFirstAncestorWhichIsA("Model")
    local target = checkpoints.target_position(race, entry)
    if not target then
        send(Enum.KeyCode.W, true)
        return
    end
    local cf = vehicle.drive_seat_cframe(car)
    if not cf then
        return
    end
    local fwd = Vector3.new(cf.LookVector.X, 0, cf.LookVector.Z)
    if fwd.Magnitude < 1e-3 then
        return
    end
    fwd = fwd.Unit
    local to_t = Vector3.new(target.X - cf.Position.X, 0, target.Z - cf.Position.Z)
    if to_t.Magnitude < 1e-2 then
        send(Enum.KeyCode.W, false)
        send(Enum.KeyCode.A, false)
        send(Enum.KeyCode.D, false)
        return
    end
    to_t = to_t.Unit
    local cross = fwd.X * to_t.Z - fwd.Z * to_t.X
    local dot = math.clamp(fwd:Dot(to_t), -1, 1)
    local angle = math.deg(math.acos(dot))
    local pulse = use_v2 and config.auto_drive_v2_steer_pulse or config.auto_drive_v1_steer_pulse
    steer_pulse_accum += dt
    local pulse_on = steer_pulse_accum % (pulse * 2) < pulse
    local flat = (cf.Position - target) * Vector3.new(1, 0, 1)
    send(Enum.KeyCode.W, flat.Magnitude > config.auto_drive_min_throttle_distance)
    if math.abs(cross) < 0.05 and angle < 8 then
        send(Enum.KeyCode.A, false)
        send(Enum.KeyCode.D, false)
        return
    end
    if use_v2 then
        if cross > 0 then
            send(Enum.KeyCode.A, pulse_on)
            send(Enum.KeyCode.D, false)
        else
            send(Enum.KeyCode.D, pulse_on)
            send(Enum.KeyCode.A, false)
        end
    else
        if cross > 0 then
            send(Enum.KeyCode.A, true)
            send(Enum.KeyCode.D, false)
        else
            send(Enum.KeyCode.D, true)
            send(Enum.KeyCode.A, false)
        end
    end
end

return auto_drive
]===]
_vfs["games/midnight/modules/race/auto_drive"] = _vfs["games/midnight/modules/race/auto_drive.luau"]
_vfs["@games/midnight/modules/race/auto_drive"] = _vfs["games/midnight/modules/race/auto_drive.luau"]
_vfs["games/midnight/modules/race/chain.luau"] = [===[local config = require("@core/config")
local local_player = require("@core/player")
local game_modules = require("@shared/game_modules")
local vehicle = require("@shared/vehicle")
local automation = require("@shared/automation")
local checkpoints = require("@midnight/race/checkpoints")
local state = require("@core/state")

local chain = {}

local last_chain = -1e9
local finish_reached_at: number? = nil

function chain.step()
    if not state.teleport_chain then
        return
    end
    if not automation.allowed() then
        return
    end

    local race = game_modules.client_race.ClientRace
    if not race then
        finish_reached_at = nil
        return
    end
    local entry = race.Racers and race.Racers:FindFirstChild(local_player.Name)
    if not entry then
        finish_reached_at = nil
        return
    end
    if not checkpoints.is_racing(race) then
        last_chain = -1e9
        finish_reached_at = nil
        return
    end

    local car, seat = vehicle.get_seat()
    if not car or not seat then
        return
    end

    local now = os.clock()
    local g = config.teleport_chain_interval

    local is_finish = checkpoints.is_next_finish(race, entry)
    if is_finish and state.wait_before_finish then
        if not finish_reached_at then
            finish_reached_at = now
        end
        if now - finish_reached_at < state.finish_wait_time then
            return
        end
    end

    if g > 0 and (now - last_chain) < g then
        return
    end

    -- time to collect!
    last_chain = now
    finish_reached_at = nil

    game_modules.network.FireServer("TeleportCheckpoint")
    task.defer(function()
        local r = game_modules.client_race.ClientRace
        local e = r and r.Racers:FindFirstChild(local_player.Name)
        if r and e then
            checkpoints.snap_to_next(r, e)
        end
    end)
end

function chain.hold_snap()
    if not automation.allowed() then
        return
    end
    if not state.teleport_chain then
        return
    end
    local race = game_modules.client_race.ClientRace
    if not race then
        return
    end
    local entry = race.Racers and race.Racers:FindFirstChild(local_player.Name)
    if not entry then
        return
    end
    if not checkpoints.is_racing(race) then
        return
    end
    local g = config.teleport_chain_interval
    if g <= 0 then
        return
    end
    if finish_reached_at ~= nil then
        checkpoints.snap_to_current(race, entry)
    elseif os.clock() - last_chain < g then
        checkpoints.snap_to_next(race, entry)
    end
end

function chain.reset()
    last_chain = -1e9
    finish_reached_at = nil
end

return chain
]===]
_vfs["games/midnight/modules/race/chain"] = _vfs["games/midnight/modules/race/chain.luau"]
_vfs["@games/midnight/modules/race/chain"] = _vfs["games/midnight/modules/race/chain.luau"]
_vfs["games/midnight/modules/race/checkpoints.luau"] = [===[local config = require("@core/config")
local local_player = require("@core/player")
local game_modules = require("@shared/game_modules")
local vehicle = require("@shared/vehicle")

local checkpoints = {}

local function index_from_name(name: string?): number?
    if type(name) ~= "string" then
        return nil
    end
    local direct = tonumber(name)
    if direct then
        return direct
    end
    local a = string.match(name, "^Checkpoint[_]?(%d+)$")
    if a then
        return tonumber(a)
    end
    local b = string.match(name, "^CP(%d+)$")
    if b then
        return tonumber(b)
    end
    return nil
end

local function is_finish_name(name: string?): boolean
    if type(name) ~= "string" then
        return false
    end
    local low = string.lower(name)
    return low == "finish" or low == "finishline" or low == "finish_line" or low == "end" or low == "goal"
end

local function max_index(holder: Instance?): number
    if not holder then
        return 0
    end
    local n = 0
    for _, ch in holder:GetDescendants() do
        local i = index_from_name(ch.Name)
        if i and i > n then
            n = i
        end
    end
    return n
end

local function find_finish(holder: Instance?): Instance?
    if not holder then
        return nil
    end
    for _, ch in holder:GetChildren() do
        if is_finish_name(ch.Name) then
            return ch
        end
    end
    for _, ch in holder:GetDescendants() do
        if is_finish_name(ch.Name) then
            return ch
        end
    end
    return nil
end

local function find_with_index(holder: Instance, target: number): Instance?
    for _, ch in holder:GetChildren() do
        if index_from_name(ch.Name) == target then
            return ch
        end
    end
    for _, ch in holder:GetDescendants() do
        if index_from_name(ch.Name) == target then
            return ch
        end
    end
    return nil
end

function checkpoints.racer_entry(): (any?, Instance?)
    local race = game_modules.client_race.ClientRace
    if not race then
        return nil, nil
    end
    local entry = race.Racers:FindFirstChild(local_player.Name)
    return race, entry
end

function checkpoints.is_racing(race: any?): boolean
    if not race or not race.Folder then
        return false
    end
    local st = race.Folder:FindFirstChild("State")
    if not st or not st:IsA("StringValue") then
        return false
    end
    return string.lower(st.Value) == "racing"
end

function checkpoints.next_instance(race: any, entry: Instance): Instance?
    local folder = race.Folder
    if not folder then
        return nil
    end
    local holder = folder:FindFirstChild("Checkpoints")
    if not holder then
        return nil
    end
    local cur = tonumber(entry:GetAttribute("Checkpoint")) or 0

    local best_idx = 1e9
    local best_inst = nil

    for _, ch in holder:GetDescendants() do
        local i = index_from_name(ch.Name)
        if i and i > cur and i < best_idx then
            best_idx = i
            best_inst = ch
        end
    end

    if best_inst then
        return best_inst
    end

    local m = max_index(holder)
    if cur >= m and m > 0 then
        return find_finish(holder)
    end
    return nil
end

function checkpoints.current_instance(race: any, entry: Instance): Instance?
    local folder = race.Folder
    if not folder then
        return nil
    end
    local holder = folder:FindFirstChild("Checkpoints")
    if not holder then
        return nil
    end
    local cur = tonumber(entry:GetAttribute("Checkpoint")) or 0
    return find_with_index(holder, cur)
end

function checkpoints.is_next_finish(race: any, entry: Instance): boolean
    local folder = race.Folder
    if not folder then
        return false
    end
    local holder = folder:FindFirstChild("Checkpoints")
    if not holder then
        return false
    end
    local cur = tonumber(entry:GetAttribute("Checkpoint")) or 0
    local m = max_index(holder)
    return cur >= m and m > 0 and find_finish(holder) ~= nil
end

local TRIGGER_NAMES = { "Checkpoint", "Touch", "Trigger", "Pad", "Ring", "Goal", "Target", "Center" }

function checkpoints.target_cframe_from(inst: Instance?): CFrame?
    if not inst then
        return nil
    end

    if inst:IsA("Model") or inst:IsA("Folder") then
        for _, name in TRIGGER_NAMES do
            local found = inst:FindFirstChild(name, true)
            if found and found:IsA("BasePart") then
                return found.CFrame
            end
        end
    end

    if inst:IsA("BasePart") then
        return inst.CFrame
    end
    if inst:IsA("Model") then
        local ok, cf = pcall(function()
            return inst:GetBoundingBox()
        end)
        if ok and cf then
            return cf
        end
        return inst:GetPivot()
    end
    if inst:IsA("Folder") then
        local sum = Vector3.zero
        local n = 0
        for _, d in inst:GetDescendants() do
            if d:IsA("BasePart") then
                sum += d.Position
                n += 1
            end
        end
        if n == 0 then
            return nil
        end
        return CFrame.new(sum / n)
    end
    return nil
end

function checkpoints.target_cframe(race: any, entry: Instance): CFrame?
    return checkpoints.target_cframe_from(checkpoints.next_instance(race, entry))
end

function checkpoints.target_position_from(inst: Instance?): Vector3?
    local cf = checkpoints.target_cframe_from(inst)
    return cf and cf.Position or nil
end

function checkpoints.target_position(race: any, entry: Instance): Vector3?
    return checkpoints.target_position_from(checkpoints.next_instance(race, entry))
end

function checkpoints.snap_to_cframe(target: CFrame, look_target: Vector3?)
    local car, seat = vehicle.get_seat()
    if not car or not seat then
        return
    end
    local pivot = car:GetPivot()
    local seat_w = seat.CFrame

    local flat
    if look_target then
        local dir = (look_target - target.Position)
        flat = Vector3.new(dir.X, 0, dir.Z)
    else
        local car_lv = seat_w.LookVector
        flat = Vector3.new(car_lv.X, 0, car_lv.Z)
    end

    if not flat or flat.Magnitude < 0.1 then
        flat = Vector3.new(0, 0, -1)
    else
        flat = flat.Unit
    end

    local yoff = config.checkpoint_snap_y_offset
    local center = target.Position

    local pos = center + Vector3.new(0, yoff, 0) + (flat * 2)
    local target_seat = CFrame.lookAt(pos, pos + flat * 10)

    local new_pivot = target_seat * seat_w:Inverse() * pivot
    pcall(function()
        car:PivotTo(new_pivot)
    end)
    if config.zero_velocity_after_snap then
        vehicle.zero_velocity(car)
        -- stronger nudge for finish line
        seat.AssemblyLinearVelocity = seat.CFrame.LookVector * 2
    end
end

function checkpoints.snap_to_next(race: any, entry: Instance)
    if not config.use_client_checkpoint_snap then
        return
    end
    local next_inst = checkpoints.next_instance(race, entry)
    if not next_inst then
        return
    end
    local cf = checkpoints.target_cframe_from(next_inst)
    if not cf then
        return
    end

    -- Find the one AFTER next to get a look direction
    local cur = tonumber(entry:GetAttribute("Checkpoint")) or 0
    local next_idx = index_from_name(next_inst.Name) or (cur + 1)

    local folder = race.Folder
    local holder = folder and folder:FindFirstChild("Checkpoints")
    local look_pos = nil

    if holder then
        local best_future_idx = 1e9
        local best_future_inst = nil
        for _, ch in holder:GetDescendants() do
            local i = index_from_name(ch.Name)
            if i and i > next_idx and i < best_future_idx then
                best_future_idx = i
                best_future_inst = ch
            end
        end
        if best_future_inst then
            look_pos = checkpoints.target_position_from(best_future_inst)
        else
            local finish = find_finish(holder)
            if finish and next_inst ~= finish then
                look_pos = checkpoints.target_position_from(finish)
            end
        end
    end

    checkpoints.snap_to_cframe(cf, look_pos)
end

function checkpoints.snap_to_current(race: any, entry: Instance)
    if not config.use_client_checkpoint_snap then
        return
    end
    local cf = checkpoints.target_cframe_from(checkpoints.current_instance(race, entry))
    if cf then
        checkpoints.snap_to_cframe(cf)
    end
end

return checkpoints
]===]
_vfs["games/midnight/modules/race/checkpoints"] = _vfs["games/midnight/modules/race/checkpoints.luau"]
_vfs["@games/midnight/modules/race/checkpoints"] = _vfs["games/midnight/modules/race/checkpoints.luau"]
_vfs["games/midnight/modules/race/data.luau"] = [===[local services = require("@core/services")
local config = require("@core/config")
local game_modules = require("@shared/game_modules")

local data = {}

local display_names: { [string]: string } = {}
local watched_root: Instance? = nil
local added_conn: RBXScriptConnection? = nil
local removed_conn: RBXScriptConnection? = nil

function data.merge_static_names()
    for id, row in pairs(game_modules.race_db.Races) do
        if type(row) == "table" and row.Name then
            display_names[id] = row.Name
        end
    end
    for id, row in pairs(config.races) do
        if type(row) == "table" and row.name then
            display_names[id] = row.name
        end
    end
end

function data.refresh_workspace_names()
    local root = services.workspace:FindFirstChild("Races")
    if not root then
        return
    end
    for _, child in root:GetChildren() do
        if child:IsA("Folder") then
            local cfg = child:FindFirstChild("Config")
            local rn = cfg and cfg:FindFirstChild("RaceName")
            if rn and rn:IsA("StringValue") and rn.Value ~= "" then
                display_names[child.Name] = rn.Value
            end
        end
    end
end

function data.unbind_watchers()
    if added_conn then
        added_conn:Disconnect()
        added_conn = nil
    end
    if removed_conn then
        removed_conn:Disconnect()
        removed_conn = nil
    end
    watched_root = nil
end

function data.bind_watcher()
    local root = services.workspace:FindFirstChild("Races")
    if not root or watched_root == root then
        return
    end
    data.unbind_watchers()
    watched_root = root
    added_conn = root.ChildAdded:Connect(function()
        task.defer(data.refresh_workspace_names)
    end)
    removed_conn = root.ChildRemoved:Connect(function()
        task.defer(data.refresh_workspace_names)
    end)
end

function data.display_name(id: string): string
    local raw = display_names[id]
    if raw and raw ~= "" then
        return raw
    end
    return id
end

function data.list_selectable_ids(): { string }
    local seen: { [string]: boolean } = {}
    local ordered: { string } = {}
    local root = services.workspace:FindFirstChild("Races")
    if root then
        for _, c in root:GetChildren() do
            if c:IsA("Folder") and c:FindFirstChild("QueueRegion") and not seen[c.Name] then
                seen[c.Name] = true
                table.insert(ordered, c.Name)
            end
        end
    end
    for id in pairs(config.races) do
        if not seen[id] then
            seen[id] = true
            table.insert(ordered, id)
        end
    end
    table.sort(ordered)
    return ordered
end

function data.build_dropdown(ids: { string }): ({ string }, { [string]: string })
    local labels: { string } = {}
    local label_to_id: { [string]: string } = {}
    local used: { [string]: boolean } = {}
    for _, id in ipairs(ids) do
        local base = data.display_name(id)
        local label = base
        if used[label] then
            label = base .. " (" .. id .. ")"
        end
        used[label] = true
        label_to_id[label] = id
        table.insert(labels, label)
    end
    return labels, label_to_id
end

return data
]===]
_vfs["games/midnight/modules/race/data"] = _vfs["games/midnight/modules/race/data.luau"]
_vfs["@games/midnight/modules/race/data"] = _vfs["games/midnight/modules/race/data.luau"]
_vfs["games/midnight/modules/race/queue.luau"] = [===[local services = require("@core/services")
local config = require("@core/config")
local local_player = require("@core/player")
local game_modules = require("@shared/game_modules")
local vehicle = require("@shared/vehicle")
local checkpoints = require("@midnight/race/checkpoints")

local queue = {}

local last_solo = -math.huge
local last_with_players = -math.huge
local players_teleported_once = false

local STATIC_QUEUES = {
    Race7 = Vector3.new(-10756.5, 18, 3086.5), -- Salt Flats Drag
    Race8 = Vector3.new(-12056, 18, 5130), -- Salt Flats Grand Prix
    Race9 = Vector3.new(-11056, 18, 4130), -- Salt Flats MotoGP
}

function queue.try_solo(state: { auto_queue_solo: boolean, selected_race_id: string })
    if not state.auto_queue_solo then
        return
    end
    if game_modules.client_race.IsInRace then
        return
    end
    if game_modules.races.GetRaceFromPlayer(local_player) then
        return
    end
    if not vehicle.in_drive_seat() then
        return
    end
    local rid = state.selected_race_id
    if rid == "" then
        return
    end
    local now = os.clock()
    if now - last_solo < config.solo_queue_cooldown_seconds then
        return
    end
    last_solo = now

    -- Fire standard solo race
    game_modules.network.FireServer("StartSoloRace", rid)

    -- If it's a drag race, also try DragRace remote if it exists in the game
    local name = string.lower(rid)
    if string.find(name, "drag") or rid == "Race7" then
        pcall(function()
            game_modules.network.FireServer("StartDragRace", rid)
        end)
    end
end

local function queue_region(rid: string): (Vector3?, number)
    local races_root = services.workspace:FindFirstChild("Races")
    if races_root then
        local race_folder = races_root:FindFirstChild(rid)
        if race_folder then
            local qr = race_folder:FindFirstChild("QueueRegion")
            if qr and qr:IsA("BasePart") then
                local radius = math.max(qr.Size.Y, qr.Size.Z) / 2
                return qr.Position, radius
            end
        end
    end
    -- Fallback to static positions
    if STATIC_QUEUES[rid] then
        return STATIC_QUEUES[rid], 15 -- Default 15 radius
    end
    return nil, 0
end

function queue.try_with_players(state: { auto_queue_with_players: boolean, selected_race_id: string })
    if not state.auto_queue_with_players then
        players_teleported_once = false
        return
    end
    if checkpoints.is_racing(game_modules.client_race.ClientRace) then
        return
    end
    if game_modules.races.GetRaceFromPlayer(local_player) then
        return
    end
    local now = os.clock()
    if now - last_with_players < 0.5 then
        return
    end
    last_with_players = now
    local pos, radius = queue_region(state.selected_race_id)
    if not pos then
        return
    end
    local car, seat = vehicle.get_seat()
    if not car or not seat then
        return
    end
    local dx = seat.Position.X - pos.X
    local dz = seat.Position.Z - pos.Z
    local flat_dist = math.sqrt(dx * dx + dz * dz)
    if players_teleported_once and flat_dist <= radius then
        return
    end
    local target = pos + Vector3.new(0, 4, 0)
    local pivot = car:GetPivot()
    local seat_w = seat.CFrame
    local new_seat = CFrame.new(target)
    local new_pivot = new_seat * seat_w:Inverse() * pivot
    pcall(function()
        car:PivotTo(new_pivot)
    end)
    vehicle.zero_velocity(car)
    players_teleported_once = true
end

return queue
]===]
_vfs["games/midnight/modules/race/queue"] = _vfs["games/midnight/modules/race/queue.luau"]
_vfs["@games/midnight/modules/race/queue"] = _vfs["games/midnight/modules/race/queue.luau"]
_vfs["games/midnight/modules/race/teleport.luau"] = [===[local config = require("@core/config")
local local_player = require("@core/player")
local game_modules = require("@shared/game_modules")
local vehicle = require("@shared/vehicle")
local checkpoints = require("@midnight/race/checkpoints")

local teleport = {}

local last_manual = -math.huge
local last_chain = -math.huge
local finish_reached_at: number? = nil

function teleport.try_manual()
    local race, entry = checkpoints.racer_entry()
    if not race or not entry or not checkpoints.is_racing(race) then
        return
    end
    local car, seat = vehicle.get_seat()
    if not car or not seat then
        return
    end
    local now = os.clock()
    if now - last_manual < config.teleport_cooldown_seconds then
        return
    end
    last_manual = now
    last_chain = now
    game_modules.network.FireServer("TeleportCheckpoint")
    task.defer(function()
        local r = game_modules.client_race.ClientRace
        if not r then
            return
        end
        local e = r.Racers:FindFirstChild(local_player.Name)
        if e then
            checkpoints.snap_to_next(r, e)
        end
    end)
end

function teleport.try_chain(state: { wait_before_finish: boolean, finish_wait_time: number, teleport_chain: boolean })
    local race, entry = checkpoints.racer_entry()
    if not race or not entry then
        finish_reached_at = nil
        return
    end
    if not checkpoints.is_racing(race) then
        last_chain = -math.huge
        finish_reached_at = nil
        return
    end
    local car, seat = vehicle.get_seat()
    if not car or not seat then
        return
    end

    local now = os.clock()
    local is_finish = checkpoints.is_next_finish(race, entry)
    if is_finish and state.wait_before_finish then
        if not finish_reached_at then
            finish_reached_at = now
        end
        if now - finish_reached_at < state.finish_wait_time then
            return
        end
    end

    local gap = config.teleport_chain_interval
    if gap > 0 and (now - last_chain) < gap then
        return
    end

    last_chain = now
    last_manual = now
    finish_reached_at = nil

    game_modules.network.FireServer("TeleportCheckpoint")
    task.defer(function()
        local r = game_modules.client_race.ClientRace
        local e = r and r.Racers:FindFirstChild(local_player.Name)
        if r and e then
            checkpoints.snap_to_next(r, e)
        end
    end)
end

function teleport.hold_snap_if_chaining(state: { teleport_chain: boolean })
    if not state.teleport_chain then
        return
    end
    local race, entry = checkpoints.racer_entry()
    if not race or not entry or not checkpoints.is_racing(race) then
        return
    end
    local gap = config.teleport_chain_interval
    if gap <= 0 then
        return
    end
    if finish_reached_at ~= nil then
        checkpoints.snap_to_current(race, entry)
    elseif os.clock() - last_chain < gap then
        checkpoints.snap_to_next(race, entry)
    end
end

function teleport.reset()
    last_manual = -config.teleport_cooldown_seconds
    last_chain = -math.huge
    finish_reached_at = nil
end

return teleport
]===]
_vfs["games/midnight/modules/race/teleport"] = _vfs["games/midnight/modules/race/teleport.luau"]
_vfs["@games/midnight/modules/race/teleport"] = _vfs["games/midnight/modules/race/teleport.luau"]
_vfs["games/midnight/modules/visual/effects.luau"] = [===[local services = require("@core/services")
local local_player = require("@core/player")
local state = require("@core/state")

local effects = {}

local TAG_BLUR = "LatteMotionBlur"

function effects.step()
    if state.aspect_ratio ~= 100 then
        local cam = services.workspace.CurrentCamera
        if cam then
            cam.CFrame = cam.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, state.aspect_ratio / 100, 0, 0, 0, 1)
        end
    end

    local lighting = services.lighting
    local blur = lighting:FindFirstChild(TAG_BLUR) :: BlurEffect?
    if state.motion_blur then
        if not blur then
            blur = Instance.new("BlurEffect")
            blur.Name = TAG_BLUR
            blur.Parent = lighting
        end
        local hrp = local_player.Character and local_player.Character:FindFirstChild("HumanoidRootPart") :: BasePart?
        local v = hrp and hrp.AssemblyLinearVelocity.Magnitude or 0
        blur.Size = math.clamp((v / 10) * state.motion_blur_intensity, 0, 56)
    elseif blur then
        blur:Destroy()
    end
end

function effects.unload()
    local blur = services.lighting:FindFirstChild(TAG_BLUR)
    if blur then
        blur:Destroy()
    end
end

return effects
]===]
_vfs["games/midnight/modules/visual/effects"] = _vfs["games/midnight/modules/visual/effects.luau"]
_vfs["@games/midnight/modules/visual/effects"] = _vfs["games/midnight/modules/visual/effects.luau"]
_vfs["games/midnight/modules/visual/hud.luau"] = [===[local services = require("@core/services")
local local_player = require("@core/player")
local state = require("@core/state")

local hud = {}

local panel: ScreenGui? = nil
local info_label: TextLabel? = nil

local function build()
    panel = Instance.new("ScreenGui")
    panel.Name = "LatteHud"
    panel.Parent = services.core_gui

    local outer = Instance.new("Frame")
    outer.Size = UDim2.fromOffset(300, 24)
    outer.Position = UDim2.new(0.5, -150, 0, 15)
    outer.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    outer.BorderSizePixel = 0
    outer.Parent = panel

    local outer_corner = Instance.new("UICorner")
    outer_corner.CornerRadius = UDim.new(0, 4)
    outer_corner.Parent = outer

    local inner = Instance.new("Frame")
    inner.Size = UDim2.new(1, -2, 1, -2)
    inner.Position = UDim2.fromOffset(1, 1)
    inner.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    inner.BorderSizePixel = 0
    inner.Parent = outer

    local inner_corner = Instance.new("UICorner")
    inner_corner.CornerRadius = UDim.new(0, 4)
    inner_corner.Parent = inner

    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(255, 174, 233)
    stroke.Transparency = 0.8
    stroke.Thickness = 1
    stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    stroke.Parent = outer

    info_label = Instance.new("TextLabel")
    info_label.Size = UDim2.new(1, 0, 1, 0)
    info_label.Position = UDim2.fromOffset(0, 0)
    info_label.BackgroundTransparency = 1
    info_label.TextColor3 = Color3.fromRGB(255, 255, 255)
    info_label.TextSize = 12
    info_label.Font = Enum.Font.GothamBold
    info_label.TextXAlignment = Enum.TextXAlignment.Center
    info_label.TextYAlignment = Enum.TextYAlignment.Center
    info_label.Parent = inner
end

function hud.step()
    if not state.center_panel then
        if panel then
            panel:Destroy()
            panel = nil
            info_label = nil
        end
        return
    end
    if not panel then
        build()
    end
    local fps = math.floor(1 / services.run_service.RenderStepped:Wait())
    local ping = math.floor(local_player:GetNetworkPing() * 1000)
    if info_label then
        info_label.Text =
            string.format("latte | FPS: %d | PING: %dms | MONEY: $%d", fps, ping, state.session_total_money)
    end
end

function hud.unload()
    if panel then
        panel:Destroy()
        panel = nil
        info_label = nil
    end
end

return hud
]===]
_vfs["games/midnight/modules/visual/hud"] = _vfs["games/midnight/modules/visual/hud.luau"]
_vfs["@games/midnight/modules/visual/hud"] = _vfs["games/midnight/modules/visual/hud.luau"]
_vfs["games/midnight/modules/visual/screen.luau"] = [===[local local_player = require("@core/player")
local state = require("@core/state")

local screen = {}

local gui: ScreenGui? = nil
local frame: Frame? = nil
local image: ImageLabel? = nil

local ASSETS = {
    kick = "https://raw.githubusercontent.com/whft/latte/main/assets/kick.png",
}

local function update()
    if not gui then
        gui = Instance.new("ScreenGui")
        gui.Name = "LatteScreenOverlay"
        gui.IgnoreGuiInset = true
        gui.DisplayOrder = -10
        gui.Enabled = false

        frame = Instance.new("Frame")
        frame.Size = UDim2.fromScale(1, 1)
        frame.BorderSizePixel = 0
        frame.Parent = gui

        image = Instance.new("ImageLabel")
        image.Size = UDim2.fromScale(1, 1)
        image.BackgroundTransparency = 1
        image.BorderSizePixel = 0
        image.Parent = frame

        -- Handle protected GUI if available
        local ok, protect = pcall(function()
            return (get_hidden_gui or gethui)()
        end)
        if ok and protect then
            gui.Parent = protect
        else
            gui.Parent = local_player:WaitForChild("PlayerGui")
        end
    end

    if state.hide_screen then
        gui.Enabled = true
        if state.hide_screen_mode == "Black" then
            frame.BackgroundColor3 = Color3.new(0, 0, 0)
            frame.BackgroundTransparency = 0
            image.Visible = false
        elseif state.hide_screen_mode == "White" then
            frame.BackgroundColor3 = Color3.new(1, 1, 1)
            frame.BackgroundTransparency = 0
            image.Visible = false
        elseif state.hide_screen_mode == "Sakura" then
            frame.BackgroundTransparency = 1
            image.Visible = true
            local path = "latte/assets/kick.png"
            if isfile(path) then
                image.Image = (getcustomasset :: any)(path)
            end
        end
    else
        gui.Enabled = false
    end
end

function screen.init()
    task.spawn(function()
        while true do
            task.wait(0.5)
            update()
        end
    end)
end

return screen
]===]
_vfs["games/midnight/modules/visual/screen"] = _vfs["games/midnight/modules/visual/screen.luau"]
_vfs["@games/midnight/modules/visual/screen"] = _vfs["games/midnight/modules/visual/screen.luau"]
_vfs["games/phantom_forces/init.luau"] = [===[local game_module = {}

function game_module.start()
    warn('Latte: Support for ' + 'phantom_forces' + ' is coming soon!')
    local ui = require('./ui')
    ui.build(function() end)
end

return game_module
]===]
_vfs["games/phantom_forces/init"] = _vfs["games/phantom_forces/init.luau"]
_vfs["@games/phantom_forces/init"] = _vfs["games/phantom_forces/init.luau"]
_vfs["games/phantom_forces/ui.luau"] = [===[local ui = {}

function ui.build(unload_fn)
    -- Placeholder
end

function ui.unload()
end

return ui
]===]
_vfs["games/phantom_forces/ui"] = _vfs["games/phantom_forces/ui.luau"]
_vfs["@games/phantom_forces/ui"] = _vfs["games/phantom_forces/ui.luau"]
_vfs["games/rivals/init.luau"] = [===[local game_module = {}

function game_module.start()
    warn('Latte: Support for ' + 'rivals' + ' is coming soon!')
    local ui = require('./ui')
    ui.build(function() end)
end

return game_module
]===]
_vfs["games/rivals/init"] = _vfs["games/rivals/init.luau"]
_vfs["@games/rivals/init"] = _vfs["games/rivals/init.luau"]
_vfs["games/rivals/ui.luau"] = [===[local ui = {}

function ui.build(unload_fn)
    -- Placeholder
end

function ui.unload()
end

return ui
]===]
_vfs["games/rivals/ui"] = _vfs["games/rivals/ui.luau"]
_vfs["@games/rivals/ui"] = _vfs["games/rivals/ui.luau"]
_vfs["games/sniper_duels/init.luau"] = [===[local game_module = {}

function game_module.start()
    warn('Latte: Support for ' + 'sniper_duels' + ' is coming soon!')
    local ui = require('./ui')
    ui.build(function() end)
end

return game_module
]===]
_vfs["games/sniper_duels/init"] = _vfs["games/sniper_duels/init.luau"]
_vfs["@games/sniper_duels/init"] = _vfs["games/sniper_duels/init.luau"]
_vfs["games/sniper_duels/ui.luau"] = [===[local ui = {}

function ui.build(unload_fn)
    -- Placeholder
end

function ui.unload()
end

return ui
]===]
_vfs["games/sniper_duels/ui"] = _vfs["games/sniper_duels/ui.luau"]
_vfs["@games/sniper_duels/ui"] = _vfs["games/sniper_duels/ui.luau"]
_vfs["games/universal/init.luau"] = [===[local game_module = {}

function game_module.start()
    warn('Latte: Running Universal version')
    local ui = require('./ui')
    ui.build(function() end)
end

return game_module
]===]
_vfs["games/universal/init"] = _vfs["games/universal/init.luau"]
_vfs["@games/universal/init"] = _vfs["games/universal/init.luau"]
_vfs["games/universal/ui.luau"] = [===[local ui = {}

function ui.build(unload_fn)
    -- Universal UI (ESP, World, etc)
end

function ui.unload()
end

return ui
]===]
_vfs["games/universal/ui"] = _vfs["games/universal/ui.luau"]
_vfs["@games/universal/ui"] = _vfs["games/universal/ui.luau"]
_vfs["modules/automation/anti_afk.luau"] = [===[local services = require("@core/services")
local local_player = require("@core/player")
local state = require("@core/state")

local anti_afk = {}

local conn: RBXScriptConnection? = nil

function anti_afk.bind()
    if conn then
        return
    end
    conn = local_player.Idled:Connect(function()
        if state.anti_afk then
            services.virtual_user:CaptureController()
            services.virtual_user:ClickButton2(Vector2.new(0, 0))
        end
    end)
end

function anti_afk.unload()
    if conn then
        conn:Disconnect()
        conn = nil
    end
end

return anti_afk
]===]
_vfs["modules/automation/anti_afk"] = _vfs["modules/automation/anti_afk.luau"]
_vfs["@modules/automation/anti_afk"] = _vfs["modules/automation/anti_afk.luau"]
_vfs["modules/automation/configs.luau"] = [===[local services = require("@core/services")
local state = require("@core/state")

local configs = {}

local FOLDER = "latte/configs"

function configs.init()
    if not isfolder("latte") then
        makefolder("latte")
    end
    if not isfolder(FOLDER) then
        makefolder(FOLDER)
    end
end

function configs.list()
    local files = listfiles(FOLDER)
    local names = {}
    for _, path in files do
        local name = path:gsub(FOLDER .. "/", ""):gsub(".json", "")
        table.insert(names, name)
    end
    return names
end

function configs.save(name: string)
    if name == "" then
        return false, "Name cannot be empty"
    end
    local path = FOLDER .. "/" .. name .. ".json"

    local ok, data = pcall(function()
        return services.http_service:JSONEncode(state)
    end)

    if not ok then
        return false, "Failed to encode state: " .. tostring(data)
    end

    local ok2, err = pcall(function()
        writefile(path, data)
    end)

    if not ok2 then
        return false, "Failed to write file: " .. tostring(err)
    end

    return true
end

function configs.load(name: string)
    local path = FOLDER .. "/" .. name .. ".json"
    if not isfile(path) then
        return false, "File not found"
    end

    local ok, content = pcall(function()
        return readfile(path)
    end)

    if not ok then
        return false, "Failed to read file: " .. tostring(content)
    end

    local ok2, data = pcall(function()
        return services.http_service:JSONDecode(content)
    end)

    if not ok2 then
        return false, "Failed to decode JSON: " .. tostring(data)
    end

    -- Deep merge into state
    for k, v in data do
        if type(v) == "table" and type(state[k]) == "table" then
            for k2, v2 in v do
                state[k][k2] = v2
            end
        else
            state[k] = v
        end
    end

    return true
end

function configs.delete(name: string)
    local path = FOLDER .. "/" .. name .. ".json"
    if not isfile(path) then
        return false, "File not found"
    end

    local ok, err = pcall(function()
        delfile(path)
    end)

    if not ok then
        return false, "Failed to delete file: " .. tostring(err)
    end

    return true
end

function configs.get_autoload()
    local path = "latte/data.dat"
    if isfile(path) then
        return readfile(path)
    end
    return ""
end

function configs.set_autoload(name: string)
    local path = "latte/data.dat"
    if name == "" or name == "none" then
        if isfile(path) then
            delfile(path)
        end
    else
        writefile(path, name)
    end
end

return configs
]===]
_vfs["modules/automation/configs"] = _vfs["modules/automation/configs.luau"]
_vfs["@modules/automation/configs"] = _vfs["modules/automation/configs.luau"]
_vfs["modules/automation/webhook.luau"] = [===[local local_player = require("@core/player")
local state = require("@core/state")

local webhook = {}

local function send(data: { [string]: string })
    local url = state.webhook_url
    if url == "" then
        return
    end
    local embed = {
        title = "Race Completed!",
        description = "> You have finished a race in **Midnight Chasers**.",
        color = 0xffaee9,
        thumbnail = {
            url = "https://raw.githubusercontent.com/whft/latte/main/assets/latte_logo.png",
        },
        fields = {
            { name = "Placement", value = "```" .. (data.place or "Unknown") .. "```", inline = true },
            { name = "Time", value = "```" .. (data.time or "00:00.000") .. "```", inline = true },
            { name = "Total Earned", value = "```$" .. (data.total or "0") .. "```", inline = false },
            { name = "Base Money", value = "```$" .. (data.base or "0") .. "```", inline = true },
            { name = "Bonus (Place)", value = "```$" .. (data.bonus or "0") .. "```", inline = true },
            { name = "2x Cash", value = "```$" .. (data.double or "0") .. "```", inline = true },
            { name = "VIP Bonus", value = "```$" .. (data.vip or "0") .. "```", inline = true },
            { name = "Session Total", value = "```$" .. tostring(state.session_total_money) .. "```", inline = false },
        },
        footer = { text = "latte • " .. os.date("%X") },
    }
    local payload = { embeds = { embed } }
    local ok, hs = pcall(game.GetService, game, "HttpService")
    if not ok then
        return
    end
    local json = hs:JSONEncode(payload)
    local request_fn = (http_request :: any)
        or (request :: any)
        or ((syn :: any) and (syn :: any).request)
        or ((http :: any) and (http :: any).request)
    if request_fn then
        pcall(request_fn, {
            Url = url,
            Method = "POST",
            Headers = { ["Content-Type"] = "application/json" },
            Body = json,
        })
    end
end

webhook.send = send

function webhook.send_test()
    send({
        place = "#1",
        time = "02:18.244",
        base = "8,750",
        bonus = "3,937",
        double = "12,687",
        vip = "6,343",
        total = "25,374",
    })
end

local active = false
local last_gui: GuiObject? = nil
local last_sent = 0

function webhook.start_tracker()
    active = true
    task.spawn(function()
        while active do
            task.wait(1)
            if not active then
                break
            end
            local gui = local_player:FindFirstChild("PlayerGui")
            if not gui then
                continue
            end
            local results = gui:FindFirstChild("RaceResults", true) or gui:FindFirstChild("Results", true)
            local is_visible = results and (results :: any).Visible
            local now = os.clock()

            if is_visible and results ~= last_gui and (now - last_sent) > 10 then
                last_gui = results :: any
                last_sent = now

                -- Polling loop to wait for data to populate
                local data = {
                    base = "0",
                    place = "N/A",
                    bonus = "0",
                    double = "0",
                    vip = "0",
                    total = "0",
                    time = "00:00.000",
                }

                local function get_money(v: TextLabel)
                    local t = v.Text
                    if string.find(t, "%$") then
                        return t
                    end
                    -- Check siblings if this is just a label
                    for _, sibling in v.Parent:GetChildren() do
                        if sibling:IsA("TextLabel") and sibling ~= v and string.find(sibling.Text, "%$") then
                            return sibling.Text
                        end
                    end
                    return nil
                end

                local start_scrape = os.clock()
                while (os.clock() - start_scrape) < 4 do
                    pcall(function()
                        for _, v in (results :: Instance):GetDescendants() do
                            if not v:IsA("TextLabel") then
                                continue
                            end
                            local t = (v :: TextLabel).Text
                            local low = string.lower(t)

                            -- Time / Place
                            if string.find(t, ":") and #t >= 5 and string.find(t, "%.") then
                                data.time = t
                            elseif string.find(t, "#") then
                                data.place = t
                            end

                            -- Money fields
                            if string.find(low, "total") and not string.find(low, "session") then
                                local val = get_money(v :: TextLabel)
                                if val and val ~= "0" then
                                    data.total = val
                                end
                            elseif string.find(low, "base") then
                                local val = get_money(v :: TextLabel)
                                if val then
                                    data.base = val
                                end
                            elseif string.find(low, "bonus") or string.find(low, "place") then
                                if not string.find(t, "#") then
                                    local val = get_money(v :: TextLabel)
                                    if val then
                                        data.bonus = val
                                    end
                                end
                            elseif string.find(low, "cash") or string.find(low, "2x") then
                                local val = get_money(v :: TextLabel)
                                if val then
                                    data.double = val
                                end
                            elseif string.find(low, "vip") then
                                local val = get_money(v :: TextLabel)
                                if val then
                                    data.vip = val
                                end
                            end
                        end
                    end)

                    if data.total ~= "0" and data.place ~= "N/A" then
                        break
                    end
                    task.wait(0.2)
                end

                pcall(function()
                    local raw_total = string.gsub(data.total, "[^%d]", "")
                    state.session_total_money += (tonumber(raw_total) or 0)
                end)

                send(data)

                -- Play victory sound
                if state.finish_sound_enabled then
                    pcall(function()
                        local path = "latte/assets/" .. state.finish_sound_mode .. ".ogg"
                        if isfile(path) then
                            local s = Instance.new("Sound")
                            s.SoundId = (getcustomasset :: any)(path)
                            s.Volume = 2
                            s.Parent = game:GetService("SoundService")
                            s:Play()
                            task.delay(5, function()
                                s:Destroy()
                            end)
                        end
                    end)
                end

                -- Auto-close logic
                task.wait(10)
                pcall(function()
                    for _, v in (results :: Instance):GetDescendants() do
                        if v:IsA("GuiButton") and v.Visible then
                            local bt = string.lower(v.Name .. (v:IsA("TextButton") and v.Text or ""))
                            if
                                string.find(bt, "close")
                                or string.find(bt, "done")
                                or string.find(bt, "exit")
                                or string.find(bt, "continue")
                            then
                                local input = game:GetService("VirtualInputManager")
                                local pos = v.AbsolutePosition + (v.AbsoluteSize / 2)
                                -- Try clicking it
                                pcall(function()
                                    if (v :: any).MouseButton1Click then
                                        for _, connection in getconnections((v :: any).MouseButton1Click) do
                                            connection:Fire()
                                        end
                                    end
                                end)
                                -- Also try physical click just in case
                                input:SendMouseButtonEvent(pos.X, pos.Y + 36, 0, true, game, 1)
                                task.wait(0.1)
                                input:SendMouseButtonEvent(pos.X, pos.Y + 36, 0, false, game, 1)
                                break
                            end
                        end
                    end
                end)
            elseif not results or not (results :: any).Visible then
                last_gui = nil
            end
        end
    end)
end

function webhook.unload()
    active = false
    last_gui = nil
end

return webhook
]===]
_vfs["modules/automation/webhook"] = _vfs["modules/automation/webhook.luau"]
_vfs["@modules/automation/webhook"] = _vfs["modules/automation/webhook.luau"]
_vfs["modules/movement/speed.luau"] = [===[local services = require("@core/services")
local lplr = require("@core/player")

local speed = {}

function speed.step(state)
    if not state.speed_enabled then return end
    
    local char = lplr.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    local hum = char and char:FindFirstChild("Humanoid")
    if not root or not hum then return end

    local moveDir = hum.MoveDirection
    if moveDir.Magnitude > 0 then
        local velocity = moveDir * (state.speed_value or 20)
        root.AssemblyLinearVelocity = Vector3.new(velocity.X, root.AssemblyLinearVelocity.Y, velocity.Z)
    end
end

return speed
]===]
_vfs["modules/movement/speed"] = _vfs["modules/movement/speed.luau"]
_vfs["@modules/movement/speed"] = _vfs["modules/movement/speed.luau"]
_vfs["modules/visual/esp.luau"] = [===[local services = require("@core/services")
local local_player = require("@core/player")
local state = require("@core/state")

local esp = {}

local tags: { [string]: BillboardGui } = {}

local function destroy_all()
    for _, t in tags do
        t:Destroy()
    end
    table.clear(tags)
end

local has_printed_running = false
function esp.step()
    if not state.player_esp then
        if has_printed_running then
            -- print("Latte: ESP disabled")
            has_printed_running = false
        end
        destroy_all()
        return
    end

    if not has_printed_running then
        -- print("Latte: ESP loop active, checking players...")
        has_printed_running = true
    end

    local players = services.players:GetPlayers()
    for _, p in ipairs(players) do
        if p == local_player then
            continue
        end

        local char = p.Character
        local head = char and char:FindFirstChild("Head")

        if not head or not head:IsA("BasePart") then
            if tags[p.Name] then
                tags[p.Name]:Destroy()
                tags[p.Name] = nil
            end
            continue
        end

        local tag = tags[p.Name]
        if not tag or not tag.Parent then
            if tag then
                tag:Destroy()
            end

            tag = Instance.new("BillboardGui")
            tag.Name = "LatteEsp"
            tag.Size = UDim2.fromOffset(150, 50)
            tag.StudsOffset = Vector3.new(0, 2, 0)
            tag.AlwaysOnTop = true
            tag.Adornee = head

            local label = Instance.new("TextLabel")
            label.Name = "TextLabel"
            label.Parent = tag
            label.BackgroundTransparency = 1
            label.Size = UDim2.fromScale(1, 1)
            label.TextColor3 = Color3.new(1, 1, 1)
            label.TextStrokeTransparency = 0
            label.TextSize = 14
            label.Font = Enum.Font.GothamBold

            tag.Parent = services.core_gui:FindFirstChild("RobloxGui")
                or local_player:FindFirstChildOfClass("PlayerGui")
            tags[p.Name] = tag
            -- print("Latte: Created ESP tag for " .. p.Name)
        end

        tag.Adornee = head
        local hrp = local_player.Character and local_player.Character:FindFirstChild("HumanoidRootPart") :: BasePart?
        local dist = hrp and (hrp.Position - head.Position).Magnitude or 0
        local label = tag:FindFirstChild("TextLabel") :: TextLabel?
        if label then
            label.Text = string.format("%s\n[%d m]", p.DisplayName, math.floor(dist))
        end
    end
end

function esp.unload()
    destroy_all()
end

return esp
]===]
_vfs["modules/visual/esp"] = _vfs["modules/visual/esp.luau"]
_vfs["@modules/visual/esp"] = _vfs["modules/visual/esp.luau"]
_vfs["modules/visual/skyboxes.luau"] = [===[return {
    Jungle = {
        bk = "http://www.roblox.com/asset/?id=214399891",
        dn = "http://www.roblox.com/asset/?id=214399887",
        ft = "http://www.roblox.com/asset/?id=214399894",
        lf = "http://www.roblox.com/asset/?id=214405668",
        rt = "http://www.roblox.com/asset/?id=214399899",
        up = "http://www.roblox.com/asset/?id=214399889",
    },
    Blossom = {
        bk = "http://www.roblox.com/asset/?id=271042516",
        dn = "http://www.roblox.com/asset/?id=271077243",
        ft = "http://www.roblox.com/asset/?id=271042556",
        lf = "http://www.roblox.com/asset/?id=271042310",
        rt = "http://www.roblox.com/asset/?id=271042467",
        up = "http://www.roblox.com/asset/?id=271077958",
    },
    ["Red night"] = {
        bk = "http://www.roblox.com/Asset/?ID=401664839",
        dn = "http://www.roblox.com/Asset/?ID=401664862",
        ft = "http://www.roblox.com/Asset/?ID=401664960",
        lf = "http://www.roblox.com/Asset/?ID=401664881",
        rt = "http://www.roblox.com/Asset/?ID=401664901",
        up = "http://www.roblox.com/Asset/?ID=401664936",
    },
    ["Purple default"] = {
        bk = "http://www.roblox.com/asset/?id=13694952867",
        dn = "http://www.roblox.com/asset/?id=13694968325",
        ft = "http://www.roblox.com/asset/?id=13694980654",
        lf = "http://www.roblox.com/asset/?id=13694998113",
        rt = "http://www.roblox.com/asset/?id=13695002700",
        up = "http://www.roblox.com/asset/?id=13695007103",
    },
    Foggy = {
        bk = "rbxassetid://1370717244",
        dn = "rbxassetid://1370717336",
        ft = "rbxassetid://1370717438",
        lf = "rbxassetid://1370717567",
        rt = "rbxassetid://1370717698",
        up = "rbxassetid://1370717782",
    },
}
]===]
_vfs["modules/visual/skyboxes"] = _vfs["modules/visual/skyboxes.luau"]
_vfs["@modules/visual/skyboxes"] = _vfs["modules/visual/skyboxes.luau"]
_vfs["modules/visual/world.luau"] = [===[local services = require("@core/services")
local state = require("@core/state")
local skyboxes = require("@modules/visual/skyboxes")

local world = {}

local TAG_ATMOSPHERE = "LatteAtmosphere"
local TAG_COLOR_CORRECTION = "LatteColorCorrection"

local default_ambient = services.lighting.Ambient
local default_fog_color = services.lighting.FogColor
local default_fog_start = services.lighting.FogStart
local default_fog_end = services.lighting.FogEnd
local default_clock_time = services.lighting.ClockTime
local default_brightness = services.lighting.Brightness

function world.apply()
    local lighting = services.lighting
    if state.time_of_day.enabled then
        lighting.ClockTime = state.time_of_day.value
    else
        lighting.ClockTime = default_clock_time
    end
    if state.brightness.enabled then
        lighting.Brightness = state.brightness.value
    else
        lighting.Brightness = default_brightness
    end

    local cc = lighting:FindFirstChild(TAG_COLOR_CORRECTION) :: ColorCorrectionEffect?
    if not cc then
        cc = Instance.new("ColorCorrectionEffect")
        cc.Name = TAG_COLOR_CORRECTION
        cc.Parent = lighting
    end
    if state.saturation.enabled then
        cc.Saturation = state.saturation.value
    else
        cc.Saturation = 0
    end

    if state.exposure.enabled then
        lighting.ExposureCompensation = state.exposure.value
    else
        lighting.ExposureCompensation = 0
    end

    if state.ambient.enabled then
        lighting.Ambient = state.ambient.color
    else
        lighting.Ambient = default_ambient
    end

    local atmo = lighting:FindFirstChild(TAG_ATMOSPHERE) :: Atmosphere?
    if state.atmosphere.enabled then
        if not atmo then
            atmo = Instance.new("Atmosphere")
            atmo.Name = TAG_ATMOSPHERE
            atmo.Parent = lighting
        end
        atmo.Color = state.atmosphere.color
        atmo.Decay = state.atmosphere.decay
        atmo.Density = state.atmosphere.density
        atmo.Glare = state.atmosphere.glare
        atmo.Haze = state.atmosphere.haze
    elseif atmo then
        atmo:Destroy()
    end

    if state.fog.enabled and not state.atmosphere.enabled then
        local default_atmo = lighting:FindFirstChildOfClass("Atmosphere")
        if default_atmo then
            default_atmo:Destroy()
        end
    end

    if state.skybox.enabled then
        local sky = lighting:FindFirstChildOfClass("Sky") or Instance.new("Sky")
        sky.Parent = lighting
        local data = state.skybox.selected == "Custom" and state.skybox.custom or skyboxes[state.skybox.selected]
        if data then
            sky.SkyboxBk = data.bk or ""
            sky.SkyboxDn = data.dn or ""
            sky.SkyboxFt = data.ft or ""
            sky.SkyboxLf = data.lf or ""
            sky.SkyboxRt = data.rt or ""
            sky.SkyboxUp = data.up or ""
        end
    end

    if state.fog.enabled then
        lighting.FogColor = state.fog.color
        lighting.FogStart = state.fog.start
        lighting.FogEnd = state.fog.finish
    else
        lighting.FogColor = default_fog_color
        lighting.FogStart = default_fog_start
        lighting.FogEnd = default_fog_end
    end
end

function world.unload()
    local lighting = services.lighting
    for _, name in { TAG_ATMOSPHERE, TAG_COLOR_CORRECTION } do
        local inst = lighting:FindFirstChild(name)
        if inst then
            inst:Destroy()
        end
    end
    for _, v in lighting:GetChildren() do
        if v:IsA("Sky") then
            v:Destroy()
        end
    end
end

return world
]===]
_vfs["modules/visual/world"] = _vfs["modules/visual/world.luau"]
_vfs["@modules/visual/world"] = _vfs["modules/visual/world.luau"]
_vfs["shared/automation.luau"] = [===[local services = require("@core/services")
local config = require("@core/config")

local automation = {}

function automation.allowed(): boolean
    if not config.allow_client_automation then
        return false
    end
    if config.require_studio_for_automation and not services.run_service:IsStudio() then
        return false
    end
    return true
end

return automation
]===]
_vfs["shared/automation"] = _vfs["shared/automation.luau"]
_vfs["@shared/automation"] = _vfs["shared/automation.luau"]
_vfs["shared/connections.luau"] = [===[local set = {}
set.__index = set

export type ConnectionSet = typeof(setmetatable({} :: { list: { RBXScriptConnection } }, set))

function set.new(): ConnectionSet
    return setmetatable({ list = {} }, set)
end

function set.add(self: ConnectionSet, conn: RBXScriptConnection)
    table.insert(self.list, conn)
    return conn
end

function set.disconnect_all(self: ConnectionSet)
    for _, c in self.list do
        c:Disconnect()
    end
    table.clear(self.list)
end

return set
]===]
_vfs["shared/connections"] = _vfs["shared/connections.luau"]
_vfs["@shared/connections"] = _vfs["shared/connections.luau"]
_vfs["shared/cooldown.luau"] = [===[local cooldown = {}

export type Cooldown = {
    last: number,
    gap: number,
}

function cooldown.new(gap: number): Cooldown
    return { last = -math.huge, gap = gap }
end

function cooldown.ready(self: Cooldown): boolean
    return os.clock() - self.last >= self.gap
end

function cooldown.fire(self: Cooldown)
    self.last = os.clock()
end

function cooldown.reset(self: Cooldown)
    self.last = -math.huge
end

return cooldown
]===]
_vfs["shared/cooldown"] = _vfs["shared/cooldown.luau"]
_vfs["@shared/cooldown"] = _vfs["shared/cooldown.luau"]
_vfs["shared/game_modules.luau"] = [===[local services = require("@core/services")

local modules = services.replicated_storage:WaitForChild("Modules")

return {
    client_race = require(modules.Client.ClientRace) :: any,
    races = require(modules.Shared.Races.Races) :: any,
    network = require(modules.Modules.Network) :: any,
    race_db = require(modules.DB.RaceDB) :: any,
}
]===]
_vfs["shared/game_modules"] = _vfs["shared/game_modules.luau"]
_vfs["@shared/game_modules"] = _vfs["shared/game_modules.luau"]
_vfs["shared/vehicle.luau"] = [===[local local_player = require("@core/player")

local vehicle = {}

function vehicle.get_seat(): (Model?, VehicleSeat?)
    local char = local_player.Character
    local hum = char and char:FindFirstChildOfClass("Humanoid")
    local seat = hum and hum.SeatPart
    if seat and seat:IsA("VehicleSeat") then
        local car = seat:FindFirstAncestorWhichIsA("Model")
        if car then
            return car, seat
        end
    end
    return nil, nil
end

function vehicle.in_drive_seat(): boolean
    local hum = local_player.Character and local_player.Character:FindFirstChildOfClass("Humanoid")
    local s = hum and hum.SeatPart
    return s ~= nil and s:IsA("VehicleSeat") and s.Name == "DriveSeat"
end

function vehicle.drive_seat_cframe(car: Model?): CFrame?
    if not car then
        return nil
    end
    local seat = car:FindFirstChild("DriveSeat", true)
    if seat and seat:IsA("VehicleSeat") then
        return seat.CFrame
    end
    local hum = local_player.Character and local_player.Character:FindFirstChildOfClass("Humanoid")
    local sp = hum and hum.SeatPart
    if sp and sp:IsA("VehicleSeat") then
        return sp.CFrame
    end
    return nil
end

function vehicle.zero_velocity(car: Model)
    for _, d in car:GetDescendants() do
        if d:IsA("BasePart") then
            d.AssemblyLinearVelocity = Vector3.zero
            d.AssemblyAngularVelocity = Vector3.zero
        end
    end
end

return vehicle
]===]
_vfs["shared/vehicle"] = _vfs["shared/vehicle.luau"]
_vfs["@shared/vehicle"] = _vfs["shared/vehicle.luau"]

local _cache = {}
local _vfs_require -- forward decl

local function resolve_path(current_path, target_path)
    if not target_path:find("^%.") then return target_path end
    
    local parts = current_path:split("/")
    table.remove(parts) -- remove filename
    
    local target_parts = target_path:split("/")
    for _, part in ipairs(target_parts) do
        if part == ".." then
            table.remove(parts)
        elseif part ~= "." then
            table.insert(parts, part)
        end
    end
    return table.concat(parts, "/")
end

_vfs_require = function(path, caller_path)
    local resolved = resolve_path(caller_path or "root/init", path)
    if _cache[resolved] then return _cache[resolved] end
    
    local source = _vfs[resolved] or _vfs[resolved..".luau"] or _vfs[resolved..".lua"]
    if not source then
        error("Could not find module: " .. tostring(path) .. " (resolved as " .. tostring(resolved) .. ")")
    end
    
    local fn, err = loadstring(source, resolved)
    if not fn then error(err) end
    
    local env = setmetatable({
        require = function(new_path)
            return _vfs_require(new_path, resolved)
        end
    }, {
        __index = getfenv(0)
    })
    setfenv(fn, env)
    
    local res = fn()
    _cache[resolved] = res
    return res
end

-- Start Entry Point
_vfs_require("init")
