
local place_id = game.PlaceId

local main_dh_ids = {
    [2788229376] = true,
    [83022801532074] = true,
    [7213786345] = true
}

local midnight_ids = {
    [13822562292] = true, [139048751758942] = true, [133327835421432] = true, [121510074321001] = true, [78559386987387] = true,
    [286090429] = true, [112464274410705] = true, [79137385850056] = true, [95645135481640] = true, [98283919607281] = true,
    [17625359962] = true, [129604661913557] = true, [133215910299950] = true, [117398147513099] = true, [18126510175] = true, [71874690745115] = true,
    [10228136016] = true, [103772067213324] = true, [13800717766] = true, [16296634952] = true, [16849012343] = true, [15479377118] = true, [15334341098] = true, [117057165696692] = true,
    [606849621] = true, [108098425719662] = true, [8990888133] = true, [17190408132] = true, [9780994092] = true, [17190407811] = true,
    [109397169461300] = true, [99744266684189] = true, [71550370264914] = true, [87638278358672] = true,
    [292439477] = true, [1342733496] = true, [15829941479] = true,
    [6872265039] = true, [16008862571] = true, [8444591321] = true, [8560631822] = true, [6872274481] = true,
}

if main_dh_ids[place_id] then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/whft/latte/main/dahood/main/source.lua"))()
elseif midnight_ids[place_id] then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/whft/latte/main/hub/Source.lua"))()
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/whft/latte/main/dahood/copies/source.lua"))()
end
