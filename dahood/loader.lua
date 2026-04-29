
local place_id = game.PlaceId
local main_ids = {
    [2788229376] = true, 
    [83022801532074] = true, 
    [7213786345] = true 
}

if main_ids[place_id] then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/whft/latte/main/dahood/main/source.lua"))()
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/whft/latte/main/dahood/copies/source.lua"))()
end
