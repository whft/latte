local __DARKLUA_BUNDLE_MODULES = {cache = {}}

do
    do
        local __modImpl = function()
            return {
                players = game:GetService('Players'),
                run_service = game:GetService('RunService'),
                user_input = game:GetService('UserInputService'),
                workspace = game:GetService('Workspace'),
                replicated_storage = game:GetService('ReplicatedStorage'),
                virtual_input = game:GetService('VirtualInputManager'),
                virtual_user = game:GetService('VirtualUser'),
                lighting = game:GetService('Lighting'),
                core_gui = game:GetService('CoreGui'),
                http_service = game:GetService('HttpService'),
            }
        end

        function __DARKLUA_BUNDLE_MODULES.a()
            local v = __DARKLUA_BUNDLE_MODULES.cache.a

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.a = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            return {
                display_name = 'latte',
                races = {
                    Race1 = {
                        name = 'City Highway Race',
                        map = 'Tokyo',
                    },
                    Race2 = {
                        name = 'Rainbow Bridge Sprint',
                        map = 'Tokyo',
                    },
                    Race3 = {
                        name = 'Doro Sprint',
                        map = 'Tokyo',
                    },
                    Race4 = {
                        name = 'Rainbow Rinkai Doro Sprint',
                        map = 'Tokyo',
                    },
                    Race5 = {
                        name = 'Interstate 80 Sprint',
                        map = 'Boneville',
                    },
                    Race6 = {
                        name = 'Cross-Country Sprint',
                        map = 'Boneville',
                    },
                    Race7 = {
                        name = 'Salt Flats Drag',
                        map = 'Boneville',
                    },
                    Race8 = {
                        name = 'Salt Flats Grand Prix',
                        map = 'Boneville',
                    },
                    Race9 = {
                        name = 'Salt Flats MotoGP',
                        map = 'Boneville',
                    },
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
                checkpoint_snap_y_offset = 3,
                use_client_checkpoint_snap = true,
                zero_velocity_after_snap = true,
                car_fly_speed = 160,
                car_fly_speed_min = 20,
                car_fly_speed_max = 500,
                car_fly_velocity_cap = 8000,
                tune_reapply_interval_seconds = 0.12,
            }
        end

        function __DARKLUA_BUNDLE_MODULES.b()
            local v = __DARKLUA_BUNDLE_MODULES.cache.b

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.b = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            local config = __DARKLUA_BUNDLE_MODULES.b()
            local state = {
                speed_multiplier = config.speed_multiplier_default,
                steering_sensitivity = config.steering_default,
                teleport_chain = false,
                auto_queue_solo = false,
                auto_queue_with_players = false,
                selected_race_id = 'Race5',
                car_noclip = false,
                auto_noclip_while_racing = true,
                anti_afk = false,
                wait_before_finish = true,
                finish_wait_time = 120,
                disable_traffic = false,
                webhook_url = '',
                session_total_money = 0,
                rainbow_car = false,
                car_material = 'Plastic',
                car_color = Color3.fromRGB(255, 255, 255),
                car_transparency = 0,
                infinite_nitro = false,
                player_esp = false,
                aspect_ratio = 100,
                motion_blur = false,
                brightness = {
                    enabled = false,
                    value = 3,
                },
                time_of_day = {
                    enabled = false,
                    value = 12,
                },
                center_panel = false,
                saturation = {
                    enabled = false,
                    value = 0,
                },
                exposure = {
                    enabled = false,
                    value = -0.5,
                },
                ambient = {
                    enabled = false,
                    color = Color3.fromRGB(0, 0, 0),
                },
                apply_speed_mods = false,
                apply_steer_mods = false,
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
                    selected = 'Jungle',
                    custom = {
                        bk = '',
                        dn = '',
                        ft = '',
                        lf = '',
                        rt = '',
                        up = '',
                    },
                },
                fog = {
                    enabled = false,
                    color = Color3.fromRGB(128, 128, 128),
                    start = 0,
                    finish = 800,
                },
            }
            local ge = (getgenv)()

            if ge._latte_state then
                return ge._latte_state
            end

            ge._latte_state = state

            return state
        end

        function __DARKLUA_BUNDLE_MODULES.c()
            local v = __DARKLUA_BUNDLE_MODULES.cache.c

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.c = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            local services = __DARKLUA_BUNDLE_MODULES.a()

            return services.players.LocalPlayer
        end

        function __DARKLUA_BUNDLE_MODULES.d()
            local v = __DARKLUA_BUNDLE_MODULES.cache.d

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.d = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            return {
                toggle_menu = Enum.KeyCode.Home,
                teleport_checkpoint = Enum.KeyCode.H,
                speed_up = Enum.KeyCode.RightBracket,
                speed_down = Enum.KeyCode.LeftBracket,
                instant_brake = Enum.KeyCode.X,
            }
        end

        function __DARKLUA_BUNDLE_MODULES.e()
            local v = __DARKLUA_BUNDLE_MODULES.cache.e

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.e = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            local local_player = __DARKLUA_BUNDLE_MODULES.d()
            local vehicle = {}

            function vehicle.get_seat()
                local char = local_player.Character
                local hum = char and char:FindFirstChildOfClass('Humanoid')
                local seat = hum and hum.SeatPart

                if seat and seat:IsA('VehicleSeat') then
                    local car = seat:FindFirstAncestorWhichIsA('Model')

                    if car then
                        return car, seat
                    end
                end

                return nil, nil
            end
            function vehicle.in_drive_seat()
                local hum = local_player.Character and local_player.Character:FindFirstChildOfClass('Humanoid')
                local s = hum and hum.SeatPart

                return s ~= nil and s:IsA('VehicleSeat') and s.Name == 'DriveSeat'
            end
            function vehicle.drive_seat_cframe(car)
                if not car then
                    return nil
                end

                local seat = car:FindFirstChild('DriveSeat', true)

                if seat and seat:IsA('VehicleSeat') then
                    return seat.CFrame
                end

                local hum = local_player.Character and local_player.Character:FindFirstChildOfClass('Humanoid')
                local sp = hum and hum.SeatPart

                if sp and sp:IsA('VehicleSeat') then
                    return sp.CFrame
                end

                return nil
            end
            function vehicle.zero_velocity(car)
                for _, d in car:GetDescendants()do
                    if d:IsA('BasePart') then
                        d.AssemblyLinearVelocity = Vector3.zero
                        d.AssemblyAngularVelocity = Vector3.zero
                    end
                end
            end

            return vehicle
        end

        function __DARKLUA_BUNDLE_MODULES.f()
            local v = __DARKLUA_BUNDLE_MODULES.cache.f

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.f = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            local services = __DARKLUA_BUNDLE_MODULES.a()
            local modules = services.replicated_storage:WaitForChild('Modules')

            return {
                client_race = (require(modules.Client.ClientRace)),
                races = (require(modules.Shared.Races.Races)),
                network = (require(modules.Modules.Network)),
                race_db = (require(modules.DB.RaceDB)),
            }
        end

        function __DARKLUA_BUNDLE_MODULES.g()
            local v = __DARKLUA_BUNDLE_MODULES.cache.g

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.g = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            local services = __DARKLUA_BUNDLE_MODULES.a()
            local config = __DARKLUA_BUNDLE_MODULES.b()
            local game_modules = __DARKLUA_BUNDLE_MODULES.g()
            local data = {}
            local display_names = {}
            local watched_root = nil
            local added_conn = nil
            local removed_conn = nil

            function data.merge_static_names()
                for id, row in pairs(game_modules.race_db.Races)do
                    if type(row) == 'table' and row.Name then
                        display_names[id] = row.Name
                    end
                end
                for id, row in pairs(config.races)do
                    if type(row) == 'table' and row.name then
                        display_names[id] = row.name
                    end
                end
            end
            function data.refresh_workspace_names()
                local root = services.workspace:FindFirstChild('Races')

                if not root then
                    return
                end

                for _, child in root:GetChildren()do
                    if child:IsA('Folder') then
                        local cfg = child:FindFirstChild('Config')
                        local rn = cfg and cfg:FindFirstChild('RaceName')

                        if rn and rn:IsA('StringValue') and rn.Value ~= '' then
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
                local root = services.workspace:FindFirstChild('Races')

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
            function data.display_name(id)
                local raw = display_names[id]

                if raw and raw ~= '' then
                    return raw
                end

                return id
            end
            function data.list_selectable_ids()
                local seen = {}
                local ordered = {}
                local root = services.workspace:FindFirstChild('Races')

                if root then
                    for _, c in root:GetChildren()do
                        if c:IsA('Folder') and c:FindFirstChild('QueueRegion') and not seen[c.Name] then
                            seen[c.Name] = true

                            table.insert(ordered, c.Name)
                        end
                    end
                end

                for id in pairs(config.races)do
                    if not seen[id] then
                        seen[id] = true

                        table.insert(ordered, id)
                    end
                end

                table.sort(ordered)

                return ordered
            end
            function data.build_dropdown(ids)
                local labels = {}
                local label_to_id = {}
                local used = {}

                for _, id in ipairs(ids)do
                    local base = data.display_name(id)
                    local label = base

                    if used[label] then
                        label = base .. ' (' .. id .. ')'
                    end

                    used[label] = true
                    label_to_id[label] = id

                    table.insert(labels, label)
                end

                return labels, label_to_id
            end

            return data
        end

        function __DARKLUA_BUNDLE_MODULES.h()
            local v = __DARKLUA_BUNDLE_MODULES.cache.h

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.h = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            local config = __DARKLUA_BUNDLE_MODULES.b()
            local state = __DARKLUA_BUNDLE_MODULES.c()
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
            local baselines = {}
            local last_script = nil
            local find_module = function(car)
                local m = car:FindFirstChild('A-Chassis Tune', true) or car:FindFirstChild('Tuner', true)

                if m and m:IsA('ModuleScript') then
                    return m
                end

                return nil
            end
            local capture = function(script, t)
                local b = {}

                for key in POWER_KEYS do
                    if type(t[key]) == 'number' then
                        b[key] = t[key]
                    end
                end
                for key in STEER_KEYS do
                    if type(t[key]) == 'number' then
                        b[key] = t[key]
                    end
                end

                baselines[script] = b
            end
            local restore = function(script, t)
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

                if not ok or typeof(t) ~= 'table' then
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

                local car = last_script:FindFirstAncestorWhichIsA('Model')

                if car then
                    local update = car:FindFirstChild('UpdateTune', true)

                    if update and update:IsA('RemoteEvent') and typeof(getconnections) == 'function' then
                        for _, c in ipairs(getconnections(update.OnClientEvent))do
                            pcall(function()
                                c:Function(t)
                            end)
                        end
                    end
                end
            end
            function tune.bind(car)
                if not (state.apply_speed_mods or state.apply_steer_mods) then
                    return
                end

                local script = find_module(car)

                if not script then
                    return
                end

                local ok, t = pcall(require, script)

                if not ok or typeof(t) ~= 'table' then
                    return
                end
                if last_script and last_script ~= script then
                    local prev_ok, prev = pcall(require, last_script)

                    if prev_ok and typeof(prev) == 'table' then
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

                    if ok and typeof(t) == 'table' then
                        restore(last_script, t)
                    end
                end

                last_script = nil
            end
            function tune.has_binding()
                return last_script ~= nil
            end
            function tune.set_speed(v)
                state.speed_multiplier = v

                tune.reapply()
            end
            function tune.set_steering(v)
                state.steering_sensitivity = math.clamp(v, config.steering_min, config.steering_max)

                tune.reapply()
            end
            function tune.nudge_speed(delta)
                tune.set_speed(state.speed_multiplier + delta)
            end

            return tune
        end

        function __DARKLUA_BUNDLE_MODULES.i()
            local v = __DARKLUA_BUNDLE_MODULES.cache.i

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.i = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            local vehicle = __DARKLUA_BUNDLE_MODULES.f()
            local brake = {}

            function brake.fire()
                local car, seat = vehicle.get_seat()

                if car and seat then
                    seat.AssemblyLinearVelocity = Vector3.zero
                    seat.AssemblyAngularVelocity = Vector3.zero
                end
            end

            return brake
        end

        function __DARKLUA_BUNDLE_MODULES.j()
            local v = __DARKLUA_BUNDLE_MODULES.cache.j

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.j = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            local local_player = __DARKLUA_BUNDLE_MODULES.d()
            local state = __DARKLUA_BUNDLE_MODULES.c()
            local webhook = {}
            local send = function(data)
                local url = state.webhook_url

                if url == '' then
                    return
                end

                local embed = {
                    title = 'Race Completed!',
                    description = '> You have finished a race in **Midnight Chasers**.',
                    color = 0xed4245,
                    fields = {
                        {
                            name = 'Placement',
                            value = '```' .. (data.place or 'Unknown') .. '```',
                            inline = true,
                        },
                        {
                            name = 'Time',
                            value = '```' .. (data.time or '00:00.000') .. '```',
                            inline = true,
                        },
                        {
                            name = 'Total Earned',
                            value = '```$' .. (data.total or '0') .. '```',
                            inline = false,
                        },
                        {
                            name = 'Base Money',
                            value = '```$' .. (data.base or '0') .. '```',
                            inline = true,
                        },
                        {
                            name = 'Bonus (Place)',
                            value = '```$' .. (data.bonus or '0') .. '```',
                            inline = true,
                        },
                        {
                            name = '2x Cash',
                            value = '```$' .. (data.double or '0') .. '```',
                            inline = true,
                        },
                        {
                            name = 'VIP Bonus',
                            value = '```$' .. (data.vip or '0') .. '```',
                            inline = true,
                        },
                        {
                            name = 'Session Total',
                            value = '```$' .. tostring(state.session_total_money) .. '```',
                            inline = false,
                        },
                    },
                    footer = {
                        text = 'latte \u{2022} ' .. os.date('%X'),
                    },
                }
                local payload = {
                    embeds = {embed},
                }
                local ok, hs = pcall(game.GetService, game, 'HttpService')

                if not ok then
                    return
                end

                local json = hs:JSONEncode(payload)
                local request_fn = (http_request) or (request) or ((syn) and (syn).request) or ((http) and (http).request)

                if request_fn then
                    pcall(request_fn, {
                        Url = url,
                        Method = 'POST',
                        Headers = {
                            ['Content-Type'] = 'application/json',
                        },
                        Body = json,
                    })
                end
            end

            webhook.send = send

            function webhook.send_test()
                send({
                    place = '#1',
                    time = '02:18.244',
                    base = '8,750',
                    bonus = '3,937',
                    double = '12,687',
                    vip = '6,343',
                    total = '25,374',
                })
            end

            local active = false
            local last_gui = nil

            function webhook.start_tracker()
                active = true

                task.spawn(function()
                    while active do
                        task.wait(1)

                        if not active then
                            break
                        end

                        local gui = local_player:FindFirstChild('PlayerGui')

                        if not gui then
                            continue
                        end

                        local results = gui:FindFirstChild('RaceResults', true) or gui:FindFirstChild('Results', true)

                        if results and (results).Visible and results ~= last_gui then
                            last_gui = results

                            task.wait(1)

                            local data = {
                                base = '0',
                                place = 'N/A',
                                bonus = '0',
                                double = '0',
                                vip = '0',
                                total = '0',
                                time = '00:00.000',
                            }

                            pcall(function()
                                for _, v in (results):GetDescendants()do
                                    if not v:IsA('TextLabel') then
                                        continue
                                    end

                                    local t = (v).Text

                                    if string.find(t, ':') and #t >= 5 and string.find(t, '%.') then
                                        data.time = t
                                    elseif string.find(t, '#') then
                                        data.place = t
                                    elseif string.find(t, '%$') then
                                        local num = string.gsub(t, '[^%d]', '')
                                        local val = tonumber(num) or 0
                                        local pn = v.Parent and v.Parent.Name or ''

                                        if string.find(pn, 'Total') or string.find(t, 'Total') then
                                            data.total = t
                                            state.session_total_money = state.session_total_money + val
                                        elseif string.find(pn, 'Base') or string.find(t, 'Base') then
                                            data.base = t
                                        elseif string.find(pn, 'Place') or string.find(t, 'Place') then
                                            data.bonus = t
                                        elseif string.find(pn, 'Cash') or string.find(t, 'Cash') then
                                            data.double = t
                                        elseif string.find(pn, 'VIP') or string.find(t, 'VIP') then
                                            data.vip = t
                                        end
                                    end
                                end
                            end)
                            send(data)
                        elseif not results or not (results).Visible then
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
        end

        function __DARKLUA_BUNDLE_MODULES.k()
            local v = __DARKLUA_BUNDLE_MODULES.cache.k

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.k = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            local services = __DARKLUA_BUNDLE_MODULES.a()
            local state = __DARKLUA_BUNDLE_MODULES.c()
            local configs = {}
            local FOLDER = 'latte/configs'

            function configs.init()
                if not isfolder('latte') then
                    makefolder('latte')
                end
                if not isfolder(FOLDER) then
                    makefolder(FOLDER)
                end
            end
            function configs.list()
                local files = listfiles(FOLDER)
                local names = {}

                for _, path in files do
                    local name = path:gsub(FOLDER .. '/', ''):gsub('.json', '')

                    table.insert(names, name)
                end

                return names
            end
            function configs.save(name)
                if name == '' then
                    return false, 'Name cannot be empty'
                end

                local path = FOLDER .. '/' .. name .. '.json'
                local ok, data = pcall(function()
                    return services.http_service:JSONEncode(state)
                end)

                if not ok then
                    return false, 'Failed to encode state: ' .. tostring(data)
                end

                local ok2, err = pcall(function()
                    writefile(path, data)
                end)

                if not ok2 then
                    return false, 'Failed to write file: ' .. tostring(err)
                end

                return true
            end
            function configs.load(name)
                local path = FOLDER .. '/' .. name .. '.json'

                if not isfile(path) then
                    return false, 'File not found'
                end

                local ok, content = pcall(function()
                    return readfile(path)
                end)

                if not ok then
                    return false, 'Failed to read file: ' .. tostring(content)
                end

                local ok2, data = pcall(function()
                    return services.http_service:JSONDecode(content)
                end)

                if not ok2 then
                    return false, 'Failed to decode JSON: ' .. tostring(data)
                end

                for k, v in data do
                    if type(v) == 'table' and type(state[k]) == 'table' then
                        for k2, v2 in v do
                            state[k][k2] = v2
                        end
                    else
                        state[k] = v
                    end
                end

                return true
            end
            function configs.delete(name)
                local path = FOLDER .. '/' .. name .. '.json'

                if not isfile(path) then
                    return false, 'File not found'
                end

                local ok, err = pcall(function()
                    delfile(path)
                end)

                if not ok then
                    return false, 'Failed to delete file: ' .. tostring(err)
                end

                return true
            end

            return configs
        end

        function __DARKLUA_BUNDLE_MODULES.l()
            local v = __DARKLUA_BUNDLE_MODULES.cache.l

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.l = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            local state = __DARKLUA_BUNDLE_MODULES.c()
            local services = __DARKLUA_BUNDLE_MODULES.a()
            local local_player = __DARKLUA_BUNDLE_MODULES.d()
            local vehicle = __DARKLUA_BUNDLE_MODULES.f()
            local race_data = __DARKLUA_BUNDLE_MODULES.h()
            local tune = __DARKLUA_BUNDLE_MODULES.i()
            local brake = __DARKLUA_BUNDLE_MODULES.j()
            local webhook = __DARKLUA_BUNDLE_MODULES.k()
            local configs = __DARKLUA_BUNDLE_MODULES.l()
            local ui = {}
            local lib = nil
            local load_lib = function()
                print('Latte: Fetching UI library...')

                local url = 
[[https://raw.githubusercontent.com/whft/latte/refs/heads/main/Library.lua]]
                local body
                local ok, err = pcall(function()
                    return game:HttpGet(url, true)
                end)

                if not ok or not err then
                    warn('Latte: Failed to fetch library: ' .. tostring(err))

                    return
                end

                body = err

                print('Latte: Parsing UI library...')

                local fn, parse_err = loadstring(body, '@Library')

                if not fn then
                    warn('Latte: Failed to parse library: ' .. tostring(parse_err))

                    return
                end

                print('Latte: Initializing UI library...')

                local ok2, lib_err = pcall(fn)

                if not ok2 then
                    warn('Latte: Failed to execute library: ' .. tostring(lib_err))

                    return
                end

                lib = lib_err

                print('Latte: UI library loaded successfully')
            end
            local cc = function(signal, cb)
                if not signal then
                    return
                end

                local ok, err = pcall(function()
                    signal:Connect(function(...)
                        local args = {...}

                        if type(args[1]) == 'table' and #args[1] == 1 then
                            args[1] = args[1][1]
                        end

                        local cbok, cberr = pcall(cb, unpack(args))

                        if not cbok then
                            warn('Latte: UI callback error: ' .. tostring(cberr))
                        end
                    end)
                end)

                if not ok then
                    warn('Latte: Signal connect failed: ' .. tostring(err))
                end
            end

            function ui.build(unload_fn)
                (getgenv)().script_name = 'latte'
                (getgenv)().script_version = '1.0'
                (getgenv)().custom_folder = 'latte'
                (getgenv)()._latte = unload_fn

                configs.init()
                pcall(function()
                    if not isfolder('latte') then
                        makefolder('latte')
                    end
                    if not isfolder('latte/assets') then
                        makefolder('latte/assets')
                    end

                    local base_url = 'https://raw.githubusercontent.com/whft/latte/main/assets/'
                    local assets = {
                        ['latte_logo.png'] = base_url .. 'latte_logo.png',
                    }

                    for name, url in assets do
                        if not isfile('latte/assets/' .. name) then
                            pcall(function()
                                writefile('latte/assets/' .. name, game:HttpGet(url))
                            end)
                        end
                    end
                end)
                load_lib()

                local race_ids = race_data.list_selectable_ids()

                if #race_ids == 0 then
                    table.insert(race_ids, 'Race5')
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

                local farm = lib['menu'].create_group('farm')

                farm:create_tab('race')

                local solo_sec = farm:create_section('race', 'solo race', 1, 0.5, 0)
                local race_dd = solo_sec:create_element({
                    name = 'race to run',
                }, {
                    dropdown = {
                        flag = 'latte_race',
                        options = race_labels,
                        default = default_label,
                        multi = false,
                        requires_one = true,
                    },
                })

                cc(race_dd.on_dropdown_change, function(v)
                    local rid = label_to_id[v]

                    state.selected_race_id = rid or 'Race5'
                end)

                local solo_toggle = solo_sec:create_element({
                    name = 'auto queue solo',
                }, {
                    toggle = {
                        flag = 'latte_solo',
                        default = false,
                    },
                })

                cc(solo_toggle.on_toggle_change, function(v)
                    state.auto_queue_solo = v
                end)

                local players_toggle = solo_sec:create_element({
                    name = 'auto queue with players',
                }, {
                    toggle = {
                        flag = 'latte_queue_players',
                        default = false,
                    },
                })

                cc(players_toggle.on_toggle_change, function(v)
                    state.auto_queue_with_players = v
                end)

                local afk_sec = farm:create_section('race', 'anti afk', 1, 0.15, 0.5)
                local afk_toggle = afk_sec:create_element({
                    name = 'anti afk',
                }, {
                    toggle = {
                        flag = 'latte_afk',
                        default = false,
                    },
                })

                cc(afk_toggle.on_toggle_change, function(v)
                    state.anti_afk = v
                end)

                local cp_sec = farm:create_section('race', 'checkpoint route', 1, 0.35, 0.65)
                local chain_toggle = cp_sec:create_element({
                    name = 'auto teleport checkpoints',
                }, {
                    toggle = {
                        flag = 'latte_chain',
                        default = false,
                    },
                })

                cc(chain_toggle.on_toggle_change, function(v)
                    state.teleport_chain = v
                end)

                local wait_toggle = cp_sec:create_element({
                    name = 'wait before finish',
                }, {
                    toggle = {
                        flag = 'latte_wait_finish',
                        default = true,
                    },
                })

                cc(wait_toggle.on_toggle_change, function(v)
                    state.wait_before_finish = v
                end)

                local wait_slider = cp_sec:create_element({
                    name = 'finish wait time',
                }, {
                    slider = {
                        flag = 'latte_finish_wait',
                        min = 0,
                        max = 300,
                        default = 120,
                        suffix = 's',
                        decimals = 1,
                    },
                })

                cc(wait_slider.on_slider_change, function(v)
                    state.finish_wait_time = v
                end)

                local vis = lib['menu'].create_group('visuals')

                vis:create_tab('world')

                local esp_sec = vis:create_section('world', 'esp', 1, 0.1, 0)
                local esp_toggle = esp_sec:create_element({
                    name = 'name esp',
                }, {
                    toggle = {
                        flag = 'latte_esp',
                        default = false,
                    },
                })

                cc(esp_toggle.on_toggle_change, function(v)
                    state.player_esp = v
                end)

                local light_sec = vis:create_section('world', 'lighting', 1, 0.35, 0.1)
                local tod_el = light_sec:create_element({
                    name = 'time of day',
                }, {
                    toggle = {
                        flag = 'latte_tod_e',
                        default = false,
                    },
                    slider = {
                        flag = 'latte_tod',
                        min = 0,
                        max = 24,
                        default = 12,
                        decimals = 1,
                    },
                })

                cc(tod_el.on_toggle_change, function(v)
                    state.time_of_day.enabled = v
                end)
                cc(tod_el.on_slider_change, function(v)
                    state.time_of_day.value = v
                end)

                local bright_el = light_sec:create_element({
                    name = 'brightness',
                }, {
                    toggle = {
                        flag = 'latte_bright_e',
                        default = false,
                    },
                    slider = {
                        flag = 'latte_bright',
                        min = 0,
                        max = 10,
                        default = 2,
                        decimals = 1,
                    },
                })

                cc(bright_el.on_toggle_change, function(v)
                    state.brightness.enabled = v
                end)
                cc(bright_el.on_slider_change, function(v)
                    state.brightness.value = v
                end)

                local sat_el = light_sec:create_element({
                    name = 'saturation',
                }, {
                    toggle = {
                        flag = 'latte_sat_e',
                        default = false,
                    },
                    slider = {
                        flag = 'latte_sat',
                        min = -1,
                        max = 1,
                        default = 0,
                        decimals = 2,
                    },
                })

                cc(sat_el.on_toggle_change, function(v)
                    state.saturation.enabled = v
                end)
                cc(sat_el.on_slider_change, function(v)
                    state.saturation.value = v
                end)

                local exp_el = light_sec:create_element({
                    name = 'exposure',
                }, {
                    toggle = {
                        flag = 'latte_exp_e',
                        default = false,
                    },
                    slider = {
                        flag = 'latte_exp',
                        min = -2,
                        max = 2,
                        default = 0,
                        decimals = 2,
                    },
                })

                cc(exp_el.on_toggle_change, function(v)
                    state.exposure.enabled = v
                end)
                cc(exp_el.on_slider_change, function(v)
                    state.exposure.value = v
                end)

                local ambient_el = light_sec:create_element({
                    name = 'ambient',
                }, {
                    toggle = {
                        flag = 'latte_amb_e',
                        default = false,
                    },
                    colorpicker = {
                        flag = 'latte_ambient',
                        default = Color3.fromRGB(0, 0, 0),
                    },
                })

                cc(ambient_el.on_toggle_change, function(v)
                    state.ambient.enabled = v
                end)
                cc(ambient_el.on_color_change, function(v)
                    state.ambient.color = v
                end)

                local atmo_sec = vis:create_section('world', 'atmosphere', 1, 0.45, 0.45)
                local atmo_el = atmo_sec:create_element({
                    name = 'atmosphere',
                }, {
                    toggle = {
                        flag = 'latte_atmo_e',
                        default = false,
                    },
                    colorpicker = {
                        flag = 'latte_atmo_col',
                        default = Color3.fromRGB(255, 255, 255),
                    },
                })

                cc(atmo_el.on_toggle_change, function(v)
                    state.atmosphere.enabled = v
                end)
                cc(atmo_el.on_color_change, function(v)
                    state.atmosphere.color = v
                end)
                cc(atmo_sec:create_element({
                    name = 'density',
                }, {
                    slider = {
                        flag = 'latte_atmo_dens',
                        min = 0,
                        max = 1,
                        default = 0.395,
                        decimals = 3,
                    },
                }).on_slider_change, function(v)
                    state.atmosphere.density = v
                end)
                cc(atmo_sec:create_element({
                    name = 'decay',
                }, {
                    slider = {
                        flag = 'latte_atmo_decay',
                        min = 0,
                        max = 1,
                        default = 0.1,
                        decimals = 3,
                    },
                }).on_slider_change, function(v)
                    state.atmosphere.decay = v
                end)
                cc(atmo_sec:create_element({
                    name = 'glare',
                }, {
                    slider = {
                        flag = 'latte_atmo_glare',
                        min = 0,
                        max = 10,
                        default = 0,
                        decimals = 1,
                    },
                }).on_slider_change, function(v)
                    state.atmosphere.glare = v
                end)
                cc(atmo_sec:create_element({
                    name = 'haze',
                }, {
                    slider = {
                        flag = 'latte_atmo_haze',
                        min = 0,
                        max = 10,
                        default = 0,
                        decimals = 1,
                    },
                }).on_slider_change, function(v)
                    state.atmosphere.haze = v
                end)

                local sky_sec = vis:create_section('world', 'skybox presets', 2, 0.2, 0)
                local sky_changer = sky_sec:create_element({
                    name = 'skybox preset',
                }, {
                    toggle = {
                        flag = 'latte_sky',
                        default = false,
                    },
                    dropdown = {
                        flag = 'latte_sky_sel',
                        options = {
                            'Jungle',
                            'Blossom',
                            'Red night',
                            'Purple default',
                            'Foggy',
                            'Custom',
                        },
                        default = 'Jungle',
                    },
                })

                cc(sky_changer.on_toggle_change, function(v)
                    state.skybox.enabled = v
                end)
                cc(sky_changer.on_dropdown_change, function(v)
                    state.skybox.selected = v
                end)

                local custom_sky_sec = vis:create_section('world', 'custom skybox', 2, 0.45, 0.2)
                local add_sky_face = function(name, flag, key)
                    local el = custom_sky_sec:create_element({name = name}, {
                        textbox = {
                            flag = flag,
                            default = '',
                        },
                    })

                    cc(el.on_textbox_change, function(v)
                        state.skybox.custom[key] = v
                    end)
                end

                add_sky_face('back url', 'latte_sky_bk', 'bk')
                add_sky_face('down url', 'latte_sky_dn', 'dn')
                add_sky_face('front url', 'latte_sky_ft', 'ft')
                add_sky_face('left url', 'latte_sky_lf', 'lf')
                add_sky_face('right url', 'latte_sky_rt', 'rt')
                add_sky_face('up url', 'latte_sky_up', 'up')

                local fog_sec = vis:create_section('world', 'fog settings', 2, 0.25, 0.65)
                local fog_changer = fog_sec:create_element({
                    name = 'fog',
                }, {
                    toggle = {
                        flag = 'latte_fog',
                        default = false,
                    },
                    colorpicker = {
                        flag = 'latte_fog_color',
                        default = Color3.fromRGB(128, 128, 128),
                    },
                })

                cc(fog_changer.on_toggle_change, function(v)
                    state.fog.enabled = v
                end)
                cc(fog_changer.on_color_change, function(v)
                    state.fog.color = v
                end)
                cc(fog_sec:create_element({
                    name = 'fog start',
                }, {
                    slider = {
                        flag = 'latte_fog_s',
                        min = 0,
                        max = 10000,
                        default = 0,
                    },
                }).on_slider_change, function(v)
                    state.fog.start = v
                end)
                cc(fog_sec:create_element({
                    name = 'fog end',
                }, {
                    slider = {
                        flag = 'latte_fog_e',
                        min = 0,
                        max = 10000,
                        default = 800,
                    },
                }).on_slider_change, function(v)
                    state.fog.finish = v
                end)

                local hud_sec = vis:create_section('world', 'hud & effects', 2, 0.2, 0.9)

                cc(hud_sec:create_element({
                    name = 'center panel',
                }, {
                    toggle = {
                        flag = 'latte_panel',
                        default = false,
                    },
                }).on_toggle_change, function(v)
                    state.center_panel = v
                end)
                cc(hud_sec:create_element({
                    name = 'aspect ratio',
                }, {
                    slider = {
                        flag = 'latte_ar',
                        min = 10,
                        max = 200,
                        default = 100,
                        suffix = '%',
                    },
                }).on_slider_change, function(v)
                    state.aspect_ratio = v
                end)
                cc(hud_sec:create_element({
                    name = 'motion blur',
                }, {
                    toggle = {
                        flag = 'latte_blur',
                        default = false,
                    },
                }).on_toggle_change, function(v)
                    state.motion_blur = v
                end)

                local mods = lib['menu'].create_group('mods')

                mods:create_tab('car')

                local tune_sec = mods:create_section('car', 'tuning', 1, 0.35, 0)
                local power_toggle = tune_sec:create_element({
                    name = 'apply power mods',
                }, {
                    toggle = {
                        flag = 'latte_power',
                        default = false,
                    },
                })

                cc(power_toggle.on_toggle_change, function(v)
                    state.apply_speed_mods = v

                    tune.reapply()
                end)

                local steer_toggle = tune_sec:create_element({
                    name = 'apply steering mods',
                }, {
                    toggle = {
                        flag = 'latte_steer',
                        default = false,
                    },
                })

                cc(steer_toggle.on_toggle_change, function(v)
                    state.apply_steer_mods = v

                    tune.reapply()
                end)

                local speed_slider = tune_sec:create_element({
                    name = 'speed multiplier',
                }, {
                    slider = {
                        flag = 'latte_speed',
                        min = 0.1,
                        max = 50,
                        default = state.speed_multiplier,
                        suffix = 'x',
                        decimals = 1,
                    },
                })

                cc(speed_slider.on_slider_change, function(v)
                    tune.set_speed(v)
                end)

                local steer_slider = tune_sec:create_element({
                    name = 'steering multiplier',
                }, {
                    slider = {
                        flag = 'latte_steer_mult',
                        min = 0.1,
                        max = 5,
                        default = state.steering_sensitivity,
                        suffix = 'x',
                        decimals = 2,
                    },
                })

                cc(steer_slider.on_slider_change, function(v)
                    tune.set_steering(v)
                end)

                local world_sec = mods:create_section('car', 'world', 1, 0.2, 0.35)
                local traffic_toggle = world_sec:create_element({
                    name = 'disable traffic',
                }, {
                    toggle = {
                        flag = 'latte_traffic',
                        default = false,
                    },
                })

                cc(traffic_toggle.on_toggle_change, function(v)
                    state.disable_traffic = v
                end)

                local noclip_toggle = world_sec:create_element({
                    name = 'disable car collisions',
                }, {
                    toggle = {
                        flag = 'latte_noclip',
                        default = false,
                    },
                })

                cc(noclip_toggle.on_toggle_change, function(v)
                    state.car_noclip = v
                end)

                local col_sec = mods:create_section('car', 'noclip', 1, 0.15, 0.55)
                local auto_noclip = col_sec:create_element({
                    name = 'auto noclip while racing',
                }, {
                    toggle = {
                        flag = 'latte_auto_noclip',
                        default = true,
                    },
                })

                cc(auto_noclip.on_toggle_change, function(v)
                    state.auto_noclip_while_racing = v
                end)

                local brake_btn = col_sec:create_element({
                    name = 'instant brake (x)',
                }, {
                    button = {confirmation = false},
                })

                cc(brake_btn.on_clicked, function()
                    brake.fire()
                end)

                local cust_sec = mods:create_section('car', 'customization', 1, 0.3, 0.7)
                local rainbow_toggle = cust_sec:create_element({
                    name = 'rainbow car',
                }, {
                    toggle = {
                        flag = 'latte_rainbow',
                        default = false,
                    },
                })

                cc(rainbow_toggle.on_toggle_change, function(v)
                    state.rainbow_car = v
                end)

                local car_color_picker = cust_sec:create_element({
                    name = 'car color',
                }, {
                    colorpicker = {
                        color_flag = 'latte_car_color',
                        default_color = Color3.fromRGB(255, 255, 255),
                        transparency_flag = 'latte_car_trans',
                        default_transparency = 0,
                    },
                })

                cc(car_color_picker.on_color_change, function(v)
                    state.car_color = v
                end)
                cc(car_color_picker.on_transparency_change, function(v)
                    state.car_transparency = v
                end)

                local mat_dd = cust_sec:create_element({
                    name = 'car material',
                }, {
                    dropdown = {
                        flag = 'latte_material',
                        options = {
                            'Plastic',
                            'SmoothPlastic',
                            'Neon',
                            'ForceField',
                            'Glass',
                            'Metal',
                            'DiamondPlate',
                        },
                        default = 'Plastic',
                        multi = false,
                        requires_one = true,
                    },
                })

                cc(mat_dd.on_dropdown_change, function(v)
                    state.car_material = v
                end)

                local nitro_toggle = cust_sec:create_element({
                    name = 'infinite nitro',
                }, {
                    toggle = {
                        flag = 'latte_nitro',
                        default = false,
                    },
                })

                cc(nitro_toggle.on_toggle_change, function(v)
                    state.infinite_nitro = v
                end)

                local tp = lib['menu'].create_group('teleport')

                tp:create_tab('players')

                local tp_sec = tp:create_section('players', 'teleport to player', 1, 1, 0)
                local player_labels = {}
                local player_label_to_name = {}
                local update_player_list = function()
                    table.clear(player_labels)
                    table.clear(player_label_to_name)

                    for _, p in services.players:GetPlayers()do
                        if p ~= local_player then
                            local lbl = p.DisplayName .. ' (@' .. p.Name .. ')'

                            table.insert(player_labels, lbl)

                            player_label_to_name[lbl] = p.Name
                        end
                    end

                    if #player_labels == 0 then
                        table.insert(player_labels, 'no other players')
                    end
                end

                update_player_list()

                local selected_player = nil
                local player_dd = tp_sec:create_element({
                    name = 'select player',
                }, {
                    dropdown = {
                        flag = 'latte_player',
                        options = player_labels,
                        default = player_labels[1],
                        multi = false,
                        requires_one = true,
                    },
                })

                cc(player_dd.on_dropdown_change, function(v)
                    selected_player = player_label_to_name[v]
                end)

                local refresh_btn = tp_sec:create_element({
                    name = 'refresh list',
                }, {
                    button = {confirmation = false},
                })

                cc(refresh_btn.on_clicked, function()
                    update_player_list()
                    pcall(function()
                        player_dd:set_options(player_labels)
                    end)
                end)

                local tp_btn = tp_sec:create_element({
                    name = 'teleport',
                }, {
                    button = {confirmation = false},
                })

                cc(tp_btn.on_clicked, function()
                    if not selected_player then
                        return
                    end

                    local target = services.players:FindFirstChild(selected_player)

                    if not target or not (target).Character then
                        return
                    end

                    local thrp = ((target).Character:FindFirstChild('HumanoidRootPart'))

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
                        local hrp = local_player.Character and (local_player.Character:FindFirstChild('HumanoidRootPart'))

                        if hrp then
                            hrp.CFrame = tcf
                        end
                    end
                end)

                local overview = lib['menu'].create_group('settings')

                overview:create_tab('settings')

                local web_sec = overview:create_section('settings', 'webhook', 1, 0.4, 0)
                local web_url = web_sec:create_element({
                    name = 'webhook url',
                }, {
                    textbox = {
                        flag = 'latte_webhook',
                        default = '',
                    },
                })

                cc(web_url.on_textbox_change, function(v)
                    state.webhook_url = v
                end)

                local test_btn = web_sec:create_element({
                    name = 'test webhook',
                }, {
                    button = {confirmation = false},
                })

                cc(test_btn.on_clicked, function()
                    webhook.send_test()
                end)

                local reset_btn = web_sec:create_element({
                    name = 'reset session total',
                }, {
                    button = {confirmation = false},
                })

                cc(reset_btn.on_clicked, function()
                    state.session_total_money = 0
                end)

                local config_sec = overview:create_section('settings', 'configurations', 1, 0.6, 0.4)
                local config_list = configs.list()

                if #config_list == 0 then
                    table.insert(config_list, 'none')
                end

                local selected_config = ''
                local config_dd = config_sec:create_element({
                    name = 'select config',
                }, {
                    dropdown = {
                        flag = 'latte_config_sel',
                        options = config_list,
                        default = config_list[1],
                        multi = false,
                        requires_one = true,
                    },
                })

                cc(config_dd.on_dropdown_change, function(v)
                    selected_config = v
                end)

                local config_name = config_sec:create_element({
                    name = 'config name',
                }, {
                    textbox = {
                        flag = 'latte_config_name',
                        default = '',
                    },
                })
                local new_name = ''

                cc(config_name.on_textbox_change, function(v)
                    new_name = v
                end)

                local refresh_configs = function()
                    local list = configs.list()

                    if #list == 0 then
                        table.insert(list, 'none')
                    end

                    pcall(function()
                        config_dd:set_options(list)
                    end)
                end
                local save_btn = config_sec:create_element({
                    name = 'save config',
                }, {
                    button = {confirmation = false},
                })

                cc(save_btn.on_clicked, function()
                    local target = new_name ~= '' and new_name or selected_config

                    if target == '' or target == 'none' then
                        return
                    end

                    local ok, err = configs.save(target)

                    if ok then
                        print('Latte: Saved config: ' .. target)
                        refresh_configs()
                    else
                        warn('Latte: Failed to save config: ' .. tostring(err))
                    end
                end)

                local load_btn = config_sec:create_element({
                    name = 'load config',
                }, {
                    button = {confirmation = false},
                })

                cc(load_btn.on_clicked, function()
                    if selected_config == '' or selected_config == 'none' then
                        return
                    end

                    local ok, err = configs.load(selected_config)

                    if ok then
                        print('Latte: Loaded config: ' .. selected_config)
                    else
                        warn('Latte: Failed to load config: ' .. tostring(err))
                    end
                end)

                local delete_btn = config_sec:create_element({
                    name = 'delete config',
                }, {
                    button = {confirmation = false},
                })

                cc(delete_btn.on_clicked, function()
                    if selected_config == '' or selected_config == 'none' then
                        return
                    end

                    local ok, err = configs.delete(selected_config)

                    if ok then
                        print('Latte: Deleted config: ' .. selected_config)
                        refresh_configs()
                    else
                        warn('Latte: Failed to delete config: ' .. tostring(err))
                    end
                end)
            end
            function ui.unload()
                lib = nil
            end

            return ui
        end

        function __DARKLUA_BUNDLE_MODULES.m()
            local v = __DARKLUA_BUNDLE_MODULES.cache.m

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.m = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            local config = __DARKLUA_BUNDLE_MODULES.b()
            local local_player = __DARKLUA_BUNDLE_MODULES.d()
            local game_modules = __DARKLUA_BUNDLE_MODULES.g()
            local vehicle = __DARKLUA_BUNDLE_MODULES.f()
            local checkpoints = {}
            local index_from_name = function(name)
                if type(name) ~= 'string' then
                    return nil
                end

                local direct = tonumber(name)

                if direct then
                    return direct
                end

                local a = string.match(name, '^Checkpoint[_]?(%d+)$')

                if a then
                    return tonumber(a)
                end

                local b = string.match(name, '^CP(%d+)$')

                if b then
                    return tonumber(b)
                end

                return nil
            end
            local is_finish_name = function(name)
                if type(name) ~= 'string' then
                    return false
                end

                local low = string.lower(name)

                return low == 'finish' or low == 'finishline' or low == 'finish_line' or low == 'end' or low == 'goal'
            end
            local max_index = function(holder)
                if not holder then
                    return 0
                end

                local n = 0

                for _, ch in holder:GetChildren()do
                    local i = index_from_name(ch.Name)

                    if i and i > n then
                        n = i
                    end
                end

                return n
            end
            local find_finish = function(holder)
                if not holder then
                    return nil
                end

                for _, ch in holder:GetChildren()do
                    if is_finish_name(ch.Name) then
                        return ch
                    end
                end
                for _, ch in holder:GetDescendants()do
                    if is_finish_name(ch.Name) then
                        return ch
                    end
                end

                return nil
            end
            local find_with_index = function(holder, target)
                for _, ch in holder:GetChildren()do
                    if index_from_name(ch.Name) == target then
                        return ch
                    end
                end
                for _, ch in holder:GetDescendants()do
                    if index_from_name(ch.Name) == target then
                        return ch
                    end
                end

                return nil
            end

            function checkpoints.racer_entry()
                local race = game_modules.client_race.ClientRace

                if not race then
                    return nil, nil
                end

                local entry = race.Racers:FindFirstChild(local_player.Name)

                return race, entry
            end
            function checkpoints.is_racing(race)
                if not race or not race.Folder then
                    return false
                end

                local st = race.Folder:FindFirstChild('State')

                if not st or not st:IsA('StringValue') then
                    return false
                end

                return string.lower(st.Value) == 'racing'
            end
            function checkpoints.next_instance(race, entry)
                local folder = race.Folder

                if not folder then
                    return nil
                end

                local holder = folder:FindFirstChild('Checkpoints')

                if not holder then
                    return nil
                end

                local cur = tonumber(entry:GetAttribute('Checkpoint')) or 0
                local found = find_with_index(holder, cur + 1)

                if found then
                    return found
                end
                if cur >= max_index(holder) and max_index(holder) > 0 then
                    return find_finish(holder)
                end

                return nil
            end
            function checkpoints.current_instance(race, entry)
                local folder = race.Folder

                if not folder then
                    return nil
                end

                local holder = folder:FindFirstChild('Checkpoints')

                if not holder then
                    return nil
                end

                local cur = tonumber(entry:GetAttribute('Checkpoint')) or 0

                return find_with_index(holder, cur)
            end
            function checkpoints.is_next_finish(race, entry)
                local folder = race.Folder

                if not folder then
                    return false
                end

                local holder = folder:FindFirstChild('Checkpoints')

                if not holder then
                    return false
                end

                local cur = tonumber(entry:GetAttribute('Checkpoint')) or 0
                local m = max_index(holder)

                return cur >= m and m > 0 and find_finish(holder) ~= nil
            end
            function checkpoints.target_cframe_from(inst)
                if not inst then
                    return nil
                end
                if inst:IsA('BasePart') then
                    return inst.CFrame
                end
                if inst:IsA('Model') then
                    local ok, cf = pcall(function()
                        return inst:GetBoundingBox()
                    end)

                    if ok and cf then
                        return cf
                    end

                    return inst:GetPivot()
                end
                if inst:IsA('Folder') then
                    local sum = Vector3.zero
                    local n = 0

                    for _, d in inst:GetDescendants()do
                        if d:IsA('BasePart') then
                            sum = sum + d.Position
                            n = n + 1
                        end
                    end

                    if n == 0 then
                        return nil
                    end

                    return CFrame.new(sum / n)
                end

                return nil
            end
            function checkpoints.target_cframe(race, entry)
                return checkpoints.target_cframe_from(checkpoints.next_instance(race, entry))
            end
            function checkpoints.target_position(race, entry)
                local cf = checkpoints.target_cframe(race, entry)

                return cf and cf.Position or nil
            end
            function checkpoints.snap_to_cframe(target)
                local car, seat = vehicle.get_seat()

                if not car or not seat then
                    return
                end

                local pivot = car:GetPivot()
                local seat_w = seat.CFrame
                local yoff = config.checkpoint_snap_y_offset
                local center = target.Position
                local lv = target.LookVector
                local flat = Vector3.new(lv.X, 0, lv.Z)

                if flat.Magnitude < 0.12 then
                    flat = Vector3.new(0, 0, -1)
                else
                    flat = flat.Unit
                end

                local pos = center + Vector3.new(0, yoff, 0)
                local target_seat = CFrame.lookAt(pos, pos + flat * 10)
                local new_pivot = target_seat * seat_w:Inverse() * pivot

                pcall(function()
                    car:PivotTo(new_pivot)
                end)

                if config.zero_velocity_after_snap then
                    vehicle.zero_velocity(car)
                end
            end
            function checkpoints.snap_to_next(race, entry)
                if not config.use_client_checkpoint_snap then
                    return
                end

                local cf = checkpoints.target_cframe(race, entry)

                if cf then
                    checkpoints.snap_to_cframe(cf)
                end
            end
            function checkpoints.snap_to_current(race, entry)
                if not config.use_client_checkpoint_snap then
                    return
                end

                local cf = checkpoints.target_cframe_from(checkpoints.current_instance(race, entry))

                if cf then
                    checkpoints.snap_to_cframe(cf)
                end
            end

            return checkpoints
        end

        function __DARKLUA_BUNDLE_MODULES.n()
            local v = __DARKLUA_BUNDLE_MODULES.cache.n

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.n = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            local config = __DARKLUA_BUNDLE_MODULES.b()
            local local_player = __DARKLUA_BUNDLE_MODULES.d()
            local game_modules = __DARKLUA_BUNDLE_MODULES.g()
            local vehicle = __DARKLUA_BUNDLE_MODULES.f()
            local checkpoints = __DARKLUA_BUNDLE_MODULES.n()
            local teleport = {}
            local last_manual = -math.huge
            local last_chain = -math.huge
            local finish_wait_until = nil

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

                game_modules.network.FireServer('TeleportCheckpoint')
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

            local chain_gap = function()
                local cd = config.teleport_cooldown_seconds
                local rate = config.teleport_every_seconds > 0 and config.teleport_every_seconds or config.teleport_chain_interval

                return math.max(cd, rate)
            end

            function teleport.try_chain(state)
                local race, entry = checkpoints.racer_entry()

                if not race or not entry then
                    finish_wait_until = nil

                    return
                end
                if not checkpoints.is_racing(race) then
                    last_chain = -math.huge
                    finish_wait_until = nil

                    return
                end

                local car, seat = vehicle.get_seat()

                if not car or not seat then
                    return
                end

                local now = os.clock()

                if checkpoints.is_next_finish(race, entry) then
                    if state.wait_before_finish then
                        if not finish_wait_until then
                            finish_wait_until = now + state.finish_wait_time
                        end
                        if now < (finish_wait_until or 0) then
                            return
                        end
                    end

                    finish_wait_until = nil
                else
                    finish_wait_until = nil
                end

                local gap = chain_gap()

                if gap > 0 and (now - last_chain) < gap then
                    return
                end

                last_chain = now
                last_manual = now

                game_modules.network.FireServer('TeleportCheckpoint')
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
            function teleport.hold_snap_if_chaining(state)
                if not state.teleport_chain then
                    return
                end

                local race, entry = checkpoints.racer_entry()

                if not race or not entry or not checkpoints.is_racing(race) then
                    return
                end

                local gap = chain_gap()

                if gap <= 0 then
                    return
                end
                if finish_wait_until ~= nil then
                    checkpoints.snap_to_current(race, entry)
                elseif os.clock() - last_chain < gap then
                    checkpoints.snap_to_next(race, entry)
                end
            end
            function teleport.reset()
                last_manual = -config.teleport_cooldown_seconds
                last_chain = -math.huge
                finish_wait_until = nil
            end

            return teleport
        end

        function __DARKLUA_BUNDLE_MODULES.o()
            local v = __DARKLUA_BUNDLE_MODULES.cache.o

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.o = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            local services = __DARKLUA_BUNDLE_MODULES.a()
            local config = __DARKLUA_BUNDLE_MODULES.b()
            local automation = {}

            function automation.allowed()
                if not config.allow_client_automation then
                    return false
                end
                if config.require_studio_for_automation and not services.run_service:IsStudio() then
                    return false
                end

                return true
            end

            return automation
        end

        function __DARKLUA_BUNDLE_MODULES.p()
            local v = __DARKLUA_BUNDLE_MODULES.cache.p

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.p = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            local config = __DARKLUA_BUNDLE_MODULES.b()
            local local_player = __DARKLUA_BUNDLE_MODULES.d()
            local game_modules = __DARKLUA_BUNDLE_MODULES.g()
            local vehicle = __DARKLUA_BUNDLE_MODULES.f()
            local automation = __DARKLUA_BUNDLE_MODULES.p()
            local checkpoints = __DARKLUA_BUNDLE_MODULES.n()
            local state = __DARKLUA_BUNDLE_MODULES.c()
            local chain = {}
            local last_chain = -1E9
            local finish_wait_until = nil
            local gap_seconds = function()
                local cd = config.teleport_cooldown_seconds
                local rate = config.teleport_chain_interval

                return math.max(cd, rate)
            end

            function chain.step()
                if not state.teleport_chain then
                    return
                end
                if not automation.allowed() then
                    return
                end

                local race = game_modules.client_race.ClientRace

                if not race then
                    finish_wait_until = nil

                    return
                end

                local entry = race.Racers and race.Racers:FindFirstChild(local_player.Name)

                if not entry then
                    finish_wait_until = nil

                    return
                end
                if not checkpoints.is_racing(race) then
                    last_chain = -1E9
                    finish_wait_until = nil

                    return
                end

                local car, seat = vehicle.get_seat()

                if not car or not seat then
                    return
                end

                local now = os.clock()

                if checkpoints.is_next_finish(race, entry) then
                    if state.wait_before_finish then
                        if not finish_wait_until then
                            finish_wait_until = now + state.finish_wait_time
                        end
                        if now < finish_wait_until then
                            return
                        end
                    end

                    finish_wait_until = nil
                else
                    finish_wait_until = nil
                end

                local g = gap_seconds()

                if g > 0 and (now - last_chain) < g then
                    return
                end

                last_chain = now

                game_modules.network.FireServer('TeleportCheckpoint')
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

                local g = gap_seconds()

                if g <= 0 then
                    return
                end
                if finish_wait_until ~= nil then
                    checkpoints.snap_to_current(race, entry)
                elseif os.clock() - last_chain < g then
                    checkpoints.snap_to_next(race, entry)
                end
            end
            function chain.reset()
                last_chain = -1E9
                finish_wait_until = nil
            end

            return chain
        end

        function __DARKLUA_BUNDLE_MODULES.q()
            local v = __DARKLUA_BUNDLE_MODULES.cache.q

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.q = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            local services = __DARKLUA_BUNDLE_MODULES.a()
            local state = __DARKLUA_BUNDLE_MODULES.c()
            local traffic = {}

            function traffic.step()
                if not state.disable_traffic then
                    return
                end

                local npcs = services.workspace:FindFirstChild('NPCVehicles')

                if not npcs then
                    return
                end

                local vehicles = npcs:FindFirstChild('Vehicles')

                if vehicles then
                    vehicles:ClearAllChildren()
                end
            end

            return traffic
        end

        function __DARKLUA_BUNDLE_MODULES.r()
            local v = __DARKLUA_BUNDLE_MODULES.cache.r

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.r = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            local services = __DARKLUA_BUNDLE_MODULES.a()
            local config = __DARKLUA_BUNDLE_MODULES.b()
            local local_player = __DARKLUA_BUNDLE_MODULES.d()
            local game_modules = __DARKLUA_BUNDLE_MODULES.g()
            local vehicle = __DARKLUA_BUNDLE_MODULES.f()
            local checkpoints = __DARKLUA_BUNDLE_MODULES.n()
            local queue = {}
            local last_solo = -math.huge
            local last_with_players = -math.huge
            local players_teleported_once = false

            function queue.try_solo(state)
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

                if rid == '' then
                    return
                end

                local now = os.clock()

                if now - last_solo < config.solo_queue_cooldown_seconds then
                    return
                end

                last_solo = now

                game_modules.network.FireServer('StartSoloRace', rid)
            end

            local queue_region = function(rid)
                local races_root = services.workspace:FindFirstChild('Races')

                if not races_root then
                    return nil, 0
                end

                local race_folder = races_root:FindFirstChild(rid)

                if not race_folder then
                    return nil, 0
                end

                local qr = race_folder:FindFirstChild('QueueRegion')

                if qr and qr:IsA('BasePart') then
                    local radius = math.max(qr.Size.Y, qr.Size.Z) / 2

                    return qr.Position, radius
                end

                return nil, 0
            end

            function queue.try_with_players(state)
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
        end

        function __DARKLUA_BUNDLE_MODULES.s()
            local v = __DARKLUA_BUNDLE_MODULES.cache.s

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.s = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            local automation = __DARKLUA_BUNDLE_MODULES.p()
            local game_modules = __DARKLUA_BUNDLE_MODULES.g()
            local vehicle = __DARKLUA_BUNDLE_MODULES.f()
            local checkpoints = __DARKLUA_BUNDLE_MODULES.n()
            local noclip = {}
            local baselines = {}
            local bound = nil
            local restore = function()
                for p, was in baselines do
                    if p and p.Parent then
                        p.CanCollide = was
                    end
                end

                table.clear(baselines)

                bound = nil
            end
            local want_active = function(state)
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

            function noclip.step(state)
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

                for _, d in car:GetDescendants()do
                    if d:IsA('BasePart') then
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
        end

        function __DARKLUA_BUNDLE_MODULES.t()
            local v = __DARKLUA_BUNDLE_MODULES.cache.t

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.t = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            local services = __DARKLUA_BUNDLE_MODULES.a()
            local local_player = __DARKLUA_BUNDLE_MODULES.d()
            local state = __DARKLUA_BUNDLE_MODULES.c()
            local anti_afk = {}
            local conn = nil

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
        end

        function __DARKLUA_BUNDLE_MODULES.u()
            local v = __DARKLUA_BUNDLE_MODULES.cache.u

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.u = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            local services = __DARKLUA_BUNDLE_MODULES.a()
            local local_player = __DARKLUA_BUNDLE_MODULES.d()
            local state = __DARKLUA_BUNDLE_MODULES.c()
            local esp = {}
            local tags = {}
            local destroy_all = function()
                for _, t in tags do
                    t:Destroy()
                end

                table.clear(tags)
            end
            local has_printed_running = false

            function esp.step()
                if not state.player_esp then
                    if has_printed_running then
                        print('Latte: ESP disabled')

                        has_printed_running = false
                    end

                    destroy_all()

                    return
                end
                if not has_printed_running then
                    print('Latte: ESP loop active, checking players...')

                    has_printed_running = true
                end

                local players = services.players:GetPlayers()

                for _, p in ipairs(players)do
                    if p == local_player then
                        continue
                    end

                    local char = p.Character
                    local head = char and char:FindFirstChild('Head')

                    if not head or not head:IsA('BasePart') then
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

                        tag = Instance.new('BillboardGui')
                        tag.Name = 'LatteEsp'
                        tag.Size = UDim2.fromOffset(150, 50)
                        tag.StudsOffset = Vector3.new(0, 2, 0)
                        tag.AlwaysOnTop = true
                        tag.Adornee = head

                        local label = Instance.new('TextLabel')

                        label.Name = 'TextLabel'
                        label.Parent = tag
                        label.BackgroundTransparency = 1
                        label.Size = UDim2.fromScale(1, 1)
                        label.TextColor3 = Color3.new(1, 1, 1)
                        label.TextStrokeTransparency = 0
                        label.TextSize = 14
                        label.Font = Enum.Font.GothamBold
                        tag.Parent = services.core_gui:FindFirstChild('RobloxGui') or local_player:FindFirstChildOfClass('PlayerGui')
                        tags[p.Name] = tag

                        print('Latte: Created ESP tag for ' .. p.Name)
                    end

                    tag.Adornee = head

                    local hrp = local_player.Character and (local_player.Character:FindFirstChild('HumanoidRootPart'))
                    local dist = hrp and (hrp.Position - head.Position).Magnitude or 0
                    local label = (tag:FindFirstChild('TextLabel'))

                    if label then
                        label.Text = string.format('%s\n[%d m]', p.DisplayName, math.floor(dist))
                    end
                end
            end
            function esp.unload()
                destroy_all()
            end

            return esp
        end

        function __DARKLUA_BUNDLE_MODULES.v()
            local v = __DARKLUA_BUNDLE_MODULES.cache.v

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.v = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            return {
                Jungle = {
                    bk = 'http://www.roblox.com/asset/?id=214399891',
                    dn = 'http://www.roblox.com/asset/?id=214399887',
                    ft = 'http://www.roblox.com/asset/?id=214399894',
                    lf = 'http://www.roblox.com/asset/?id=214405668',
                    rt = 'http://www.roblox.com/asset/?id=214399899',
                    up = 'http://www.roblox.com/asset/?id=214399889',
                },
                Blossom = {
                    bk = 'http://www.roblox.com/asset/?id=271042516',
                    dn = 'http://www.roblox.com/asset/?id=271077243',
                    ft = 'http://www.roblox.com/asset/?id=271042556',
                    lf = 'http://www.roblox.com/asset/?id=271042310',
                    rt = 'http://www.roblox.com/asset/?id=271042467',
                    up = 'http://www.roblox.com/asset/?id=271077958',
                },
                ['Red night'] = {
                    bk = 'http://www.roblox.com/Asset/?ID=401664839',
                    dn = 'http://www.roblox.com/Asset/?ID=401664862',
                    ft = 'http://www.roblox.com/Asset/?ID=401664960',
                    lf = 'http://www.roblox.com/Asset/?ID=401664881',
                    rt = 'http://www.roblox.com/Asset/?ID=401664901',
                    up = 'http://www.roblox.com/Asset/?ID=401664936',
                },
                ['Purple default'] = {
                    bk = 'http://www.roblox.com/asset/?id=13694952867',
                    dn = 'http://www.roblox.com/asset/?id=13694968325',
                    ft = 'http://www.roblox.com/asset/?id=13694980654',
                    lf = 'http://www.roblox.com/asset/?id=13694998113',
                    rt = 'http://www.roblox.com/asset/?id=13695002700',
                    up = 'http://www.roblox.com/asset/?id=13695007103',
                },
                Foggy = {
                    bk = 'rbxassetid://1370717244',
                    dn = 'rbxassetid://1370717336',
                    ft = 'rbxassetid://1370717438',
                    lf = 'rbxassetid://1370717567',
                    rt = 'rbxassetid://1370717698',
                    up = 'rbxassetid://1370717782',
                },
            }
        end

        function __DARKLUA_BUNDLE_MODULES.w()
            local v = __DARKLUA_BUNDLE_MODULES.cache.w

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.w = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            local services = __DARKLUA_BUNDLE_MODULES.a()
            local state = __DARKLUA_BUNDLE_MODULES.c()
            local skyboxes = __DARKLUA_BUNDLE_MODULES.w()
            local world = {}
            local TAG_ATMOSPHERE = 'LatteAtmosphere'
            local TAG_COLOR_CORRECTION = 'LatteColorCorrection'

            function world.apply()
                local lighting = services.lighting

                if state.time_of_day.enabled then
                    lighting.ClockTime = state.time_of_day.value
                end
                if state.brightness.enabled then
                    lighting.Brightness = state.brightness.value
                end

                local cc = (lighting:FindFirstChild(TAG_COLOR_CORRECTION))

                if not cc then
                    cc = Instance.new('ColorCorrectionEffect')
                    cc.Name = TAG_COLOR_CORRECTION
                    cc.Parent = lighting
                end
                if state.saturation.enabled then
                    cc.Saturation = state.saturation.value
                end
                if state.exposure.enabled then
                    cc.ExposureCompensation = state.exposure.value
                end
                if state.ambient.enabled then
                    lighting.Ambient = state.ambient.color
                end

                local atmo = (lighting:FindFirstChild(TAG_ATMOSPHERE))

                if state.atmosphere.enabled then
                    if not atmo then
                        atmo = Instance.new('Atmosphere')
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
                if state.skybox.enabled then
                    local sky = lighting:FindFirstChildOfClass('Sky') or Instance.new('Sky')

                    sky.Parent = lighting

                    local data = state.skybox.selected == 'Custom' and state.skybox.custom or skyboxes[state.skybox.selected]

                    if data then
                        sky.SkyboxBk = data.bk or ''
                        sky.SkyboxDn = data.dn or ''
                        sky.SkyboxFt = data.ft or ''
                        sky.SkyboxLf = data.lf or ''
                        sky.SkyboxRt = data.rt or ''
                        sky.SkyboxUp = data.up or ''
                    end
                end
                if state.fog.enabled then
                    lighting.FogColor = state.fog.color
                    lighting.FogStart = state.fog.start
                    lighting.FogEnd = state.fog.finish
                end
            end
            function world.unload()
                local lighting = services.lighting

                for _, name in {TAG_ATMOSPHERE, TAG_COLOR_CORRECTION}do
                    local inst = lighting:FindFirstChild(name)

                    if inst then
                        inst:Destroy()
                    end
                end
                for _, v in lighting:GetChildren()do
                    if v:IsA('Sky') then
                        v:Destroy()
                    end
                end
            end

            return world
        end

        function __DARKLUA_BUNDLE_MODULES.x()
            local v = __DARKLUA_BUNDLE_MODULES.cache.x

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.x = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            local services = __DARKLUA_BUNDLE_MODULES.a()
            local local_player = __DARKLUA_BUNDLE_MODULES.d()
            local state = __DARKLUA_BUNDLE_MODULES.c()
            local hud = {}
            local panel = nil
            local info_label = nil
            local build = function()
                panel = Instance.new('ScreenGui')
                panel.Name = 'LatteHud'
                panel.Parent = services.core_gui

                local outer = Instance.new('Frame')

                outer.Size = UDim2.fromOffset(240, 70)
                outer.Position = UDim2.new(0.5, -120, 0.05, 0)
                outer.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                outer.BorderSizePixel = 0
                outer.Parent = panel

                local mid = Instance.new('Frame')

                mid.Size = UDim2.new(1, -2, 1, -2)
                mid.Position = UDim2.fromOffset(1, 1)
                mid.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                mid.BorderSizePixel = 0
                mid.Parent = outer

                local inner = Instance.new('Frame')

                inner.Size = UDim2.new(1, -2, 1, -2)
                inner.Position = UDim2.fromOffset(1, 1)
                inner.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                inner.BorderSizePixel = 0
                inner.Parent = mid

                local main = Instance.new('Frame')

                main.Size = UDim2.new(1, -2, 1, -2)
                main.Position = UDim2.fromOffset(1, 1)
                main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                main.BorderSizePixel = 0
                main.Parent = inner

                local accent = Instance.new('Frame')

                accent.Size = UDim2.new(1, 0, 0, 1)
                accent.BackgroundColor3 = Color3.fromRGB(255, 174, 233)
                accent.BorderSizePixel = 0
                accent.Parent = main

                local title = Instance.new('TextLabel')

                title.Size = UDim2.new(1, -10, 0, 20)
                title.Position = UDim2.fromOffset(5, 5)
                title.BackgroundTransparency = 1
                title.Text = 'latte'
                title.TextColor3 = Color3.fromRGB(255, 174, 233)
                title.TextSize = 13
                title.Font = Enum.Font.Code
                title.TextXAlignment = Enum.TextXAlignment.Left
                title.Parent = main
                info_label = Instance.new('TextLabel')
                info_label.Size = UDim2.new(1, -10, 1, -25)
                info_label.Position = UDim2.fromOffset(5, 25)
                info_label.BackgroundTransparency = 1
                info_label.TextColor3 = Color3.fromRGB(226, 226, 226)
                info_label.TextSize = 13
                info_label.Font = Enum.Font.Code
                info_label.TextXAlignment = Enum.TextXAlignment.Left
                info_label.TextYAlignment = Enum.TextYAlignment.Top
                info_label.Parent = main
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
                    info_label.Text = string.format('FPS: %d | PING: %dms | MONEY: $%d', fps, ping, state.session_total_money)
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
        end

        function __DARKLUA_BUNDLE_MODULES.y()
            local v = __DARKLUA_BUNDLE_MODULES.cache.y

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.y = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            local services = __DARKLUA_BUNDLE_MODULES.a()
            local local_player = __DARKLUA_BUNDLE_MODULES.d()
            local state = __DARKLUA_BUNDLE_MODULES.c()
            local effects = {}
            local TAG_BLUR = 'LatteMotionBlur'

            function effects.step()
                if state.aspect_ratio ~= 100 then
                    local cam = services.workspace.CurrentCamera

                    if cam then
                        cam.CFrame = cam.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, state.aspect_ratio / 100, 0, 0, 0, 1)
                    end
                end

                local lighting = services.lighting
                local blur = (lighting:FindFirstChild(TAG_BLUR))

                if state.motion_blur then
                    if not blur then
                        blur = Instance.new('BlurEffect')
                        blur.Name = TAG_BLUR
                        blur.Parent = lighting
                    end

                    local hrp = local_player.Character and (local_player.Character:FindFirstChild('HumanoidRootPart'))
                    local v = hrp and hrp.AssemblyLinearVelocity.Magnitude or 0

                    blur.Size = math.clamp(v / 10, 0, 20)
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
        end

        function __DARKLUA_BUNDLE_MODULES.z()
            local v = __DARKLUA_BUNDLE_MODULES.cache.z

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.z = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            local state = __DARKLUA_BUNDLE_MODULES.c()
            local vehicle = __DARKLUA_BUNDLE_MODULES.f()
            local nitro = {}

            function nitro.step()
                if not state.infinite_nitro then
                    return
                end

                local car = vehicle.get_seat()

                if not car then
                    return
                end

                local max = car:GetAttribute('MaxNitrous') or 100

                car:SetAttribute('Nitrous', max)
            end

            return nitro
        end

        function __DARKLUA_BUNDLE_MODULES.A()
            local v = __DARKLUA_BUNDLE_MODULES.cache.A

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.A = v
            end

            return v.c
        end
    end
    do
        local __modImpl = function()
            local state = __DARKLUA_BUNDLE_MODULES.c()
            local vehicle = __DARKLUA_BUNDLE_MODULES.f()
            local customize = {}

            function customize.step()
                local car = vehicle.get_seat()

                if not car then
                    return
                end

                local color = state.car_color

                if state.rainbow_car then
                    color = Color3.fromHSV((tick() % 5) / 5, 1, 1)
                end

                local material = ((Enum.Material))[state.car_material]

                if not material then
                    return
                end

                for _, v in car:GetDescendants()do
                    if v:IsA('BasePart') then
                        v.Color = color
                        v.Material = material
                        v.Transparency = state.car_transparency or 0
                    end
                end
            end

            return customize
        end

        function __DARKLUA_BUNDLE_MODULES.B()
            local v = __DARKLUA_BUNDLE_MODULES.cache.B

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.B = v
            end

            return v.c
        end
    end
end

local services = __DARKLUA_BUNDLE_MODULES.a()
local config = __DARKLUA_BUNDLE_MODULES.b()
local state = __DARKLUA_BUNDLE_MODULES.c()
local local_player = __DARKLUA_BUNDLE_MODULES.d()
local hotkeys = __DARKLUA_BUNDLE_MODULES.e()
local ui = __DARKLUA_BUNDLE_MODULES.m()
local teleport = __DARKLUA_BUNDLE_MODULES.o()
local race_data = __DARKLUA_BUNDLE_MODULES.h()
local chain = __DARKLUA_BUNDLE_MODULES.q()
local traffic = __DARKLUA_BUNDLE_MODULES.r()
local queue = __DARKLUA_BUNDLE_MODULES.s()
local noclip = __DARKLUA_BUNDLE_MODULES.t()
local anti_afk = __DARKLUA_BUNDLE_MODULES.u()
local webhook = __DARKLUA_BUNDLE_MODULES.k()
local esp = __DARKLUA_BUNDLE_MODULES.v()
local world = __DARKLUA_BUNDLE_MODULES.x()
local hud = __DARKLUA_BUNDLE_MODULES.y()
local effects = __DARKLUA_BUNDLE_MODULES.z()
local nitro = __DARKLUA_BUNDLE_MODULES.A()
local customize = __DARKLUA_BUNDLE_MODULES.B()
local tune = __DARKLUA_BUNDLE_MODULES.i()
local brake = __DARKLUA_BUNDLE_MODULES.j()
local vehicle = __DARKLUA_BUNDLE_MODULES.f()
local ge = (getgenv)()

if ge.LatteStarted then
    if ge.LatteUnload then
        ge.LatteUnload()
    end
end

ge.LatteStarted = true

local active = true
local conn_set = {
    _conns = {},
    add = function(self, c)
        table.insert(self._conns, c)
    end,
    clear = function(self)
        for _, c in self._conns do
            c:Disconnect()
        end

        table.clear(self._conns)
    end,
}
local unload = function()
    print('Latte: Unloading script...')

    active = false

    conn_set:clear()
    pcall(function()
        ui.unload()
    end)
    pcall(function()
        esp.unload()
    end)
    pcall(function()
        tune.unload()
    end)
    pcall(function()
        anti_afk.unload()
    end)

    ge.LatteStarted = nil
    ge.LatteUnload = nil

    print('Latte: Unloaded')
end
local on_character_added = function(char)
    pcall(function()
        noclip.on_character(char)
        teleport.on_character(char)
    end)
end
local start = function()
    print('Latte: start() called')
    race_data.merge_static_names()
    race_data.refresh_workspace_names()
    race_data.bind_watcher()

    if not services.workspace:FindFirstChild('Races') then
        conn_set:add(services.workspace.ChildAdded:Connect(function(ch)
            if ch.Name == 'Races' then
                race_data.refresh_workspace_names()
                race_data.bind_watcher()
            end
        end))
    end

    teleport.reset()
    webhook.start_tracker()
    anti_afk.bind()
    print('Latte: Building UI...')

    local ok, err = pcall(function()
        ui.build(unload)
    end)

    if not ok then
        warn('Latte: UI build failed: ' .. tostring(err))
    else
        print('Latte: UI build finished')
    end

    conn_set:add(services.user_input.InputBegan:Connect(function(
        input,
        processed
    )
        if not active or processed then
            return
        end
        if input.KeyCode == hotkeys.teleport_checkpoint then
            teleport.try_manual()
        elseif input.KeyCode == hotkeys.speed_up then
            tune.nudge_speed(config.speed_multiplier_step)
        elseif input.KeyCode == hotkeys.speed_down then
            tune.nudge_speed(-config.speed_multiplier_step)
        elseif input.KeyCode == hotkeys.instant_brake then
            brake.fire()
        end
    end))

    if local_player.Character then
        on_character_added(local_player.Character)
    end

    conn_set:add(local_player.CharacterAdded:Connect(on_character_added))
    print('Latte: Starting automation loop')
    task.spawn(function()
        while active do
            task.wait(0.2)

            if not active then
                break
            end

            pcall(function()
                queue.try_solo(state)
            end)
            pcall(function()
                queue.try_with_players(state)
            end)

            if state.teleport_chain then
                pcall(function()
                    chain.step()
                end)
            end
        end

        print('Latte: Automation loop stopped')
    end)
    print('Latte: Starting tune reapply loop')
    task.spawn(function()
        local interval = config.tune_reapply_interval_seconds

        while active do
            task.wait(interval)

            if not active then
                break
            end
            if tune.has_binding() and (state.apply_speed_mods or state.apply_steer_mods) then
                if vehicle.in_drive_seat() then
                    pcall(function()
                        tune.reapply()
                    end)
                end
            end
        end

        print('Latte: Tune reapply loop stopped')
    end)
    print('Latte: Starting render loop')
    conn_set:add(services.run_service.RenderStepped:Connect(function(_dt)
        if not active then
            return
        end

        pcall(function()
            traffic.step()
        end)
        pcall(function()
            noclip.step(state)
        end)
        pcall(function()
            chain.hold_snap()
        end)
        pcall(function()
            esp.step()
        end)
        pcall(function()
            customize.step()
        end)
        pcall(function()
            nitro.step()
        end)
        pcall(function()
            world.apply()
        end)
        pcall(function()
            hud.step()
        end)
        pcall(function()
            effects.step()
        end)
    end))
    print('Latte: Render loop connected')

    ge.LatteUnload = unload
end

task.defer(start)
