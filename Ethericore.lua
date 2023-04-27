-- Ethericore 4.0 build by 11:11--
client.log(" Ethericore.lua succesfully loaded ", color.new(145, 197, 56), "Ethericore.lua", true)
client.log(" Build : Paid stable ", color.new(145, 197, 56), "Ethericore.lua", true)
client.log(" My social network: ", color.new(145, 197, 56), "Ethericore.lua", true)
client.log(" YouTube - @odinatset_odinatset ", color.new(145, 197, 56), "Ethericore.lua", true)
client.log(" Telegram - @odinatset_odinatset ", color.new(145, 197, 56), "Ethericore.lua", true)
client.log(" TikTok - @odinatsetodinatset ", color.new(145, 197, 56), "Ethericore.lua", true)
client.log(" Steam - @odinatset_odinatset ", color.new(145, 197, 56), "Ethericore.lua", true)
client.log(" Discord - 11 11#8401 ", color.new(145, 197, 56), "Ethericore.lua", true)
ui.add_label("                                    ")
ui.add_label("                 Info of lua:       ")
ui.add_label("         Ethericore 4.0 build       ")
ui.add_label("         Data build: 28.04.22       ")
ui.add_label("         Version: Paid stable       ")
ui.add_label("                                    ")

local size_x, size_y = render.get_screen()
local s_x, s_y = render.get_screen()

local main_color = color.new(163, 146, 243)
local cheat_color = ui.get("Profile", "General", "Global settings", "Menu accent color")


local pixel= render.create_font("Smallest Pixel-7", 11, 500, bit.bor(font_flags.outline))
local font4 = render.create_font("Tahoma", 13, 500, bit.bor(font_flags.dropshadow, font_flags.antialias));
local font3 = render.create_font("Tahoma", 13, 300, bit.bor(font_flags.outline))
local font5 = render.create_font("Verdana", 12, 100, bit.bor(font_flags.dropshadow, font_flags.antialias))
local small_fonts = render.create_font("Small Fonts", 13, 500, bit.bor(font_flags.dropshadow, font_flags.antialias));
local small_fonts2 = render.create_font("Small Fonts", 12, 500, bit.bor(font_flags.dropshadow, font_flags.antialias));
local Size_X, Size_Y = render.get_screen( )
local Verdana = render.create_font("Lucida Console", 12, 500, bit.bor(font_flags.dropshadow, font_flags.antialias));
local Verdanas = render.create_font("Lucida Console", 11, 500, bit.bor(font_flags.dropshadow, font_flags.antialias));
local Verdanaz = render.create_font("Lucida Console", 9, 500, bit.bor(font_flags.dropshadow, font_flags.antialias));
local Verdanaa = render.create_font("Lucida Console", 12, 500, bit.bor(font_flags.dropshadow, font_flags.antialias));


render.fonts = {
    verdana_11px = render.create_font("Verdana", 12, 500, bit.bor(font_flags.dropshadow, font_flags.antialias));
}

render.screen = {
    w = 0,
    h = 0
}

render.center_screen = {
    w = 0,
    h = 0
}

render.update = function()
    local screen_size_x, screen_size_y = render.get_screen()

    render.screen.w = screen_size_x
    render.screen.h = screen_size_y

    render.center_screen.w = screen_size_x / 2
    render.center_screen.h = screen_size_y / 2
end



local function round(num, numDecimalPlaces)
    local mult = 10^(numDecimalPlaces or 0)
    return math.floor(num * mult + 0.5) / mult
end

ui.add_label("")
ui.add_label("      </> ethericore tank aa ")
ui.add_label("")
local tank_aa = ui.add_checkbox("ethericore tank aa (ported from otv4)");
local slider_rangeaa = ui.add_slider("range aa", 0, 60)
local slider_time = ui.add_slider("yaw switch speed", 1, 5)
local presetaa = ui.add_button("random preset on tank aa")


presetaa:add_callback(function()
    slider_rangeaa:set(math.random(1, 60))
    slider_time:set(math.random(1, 5))
end)


local timer = 0
callbacks.register("post_move", function()
    if tank_aa:get() then

        timer = timer +1

        local range = slider_rangeaa:get()

        local body_yaw = ui.get("Rage", "Anti-aim", "General", "Body yaw limit")
        local fake_yaw = ui.get("Rage", "Anti-aim", "General", "Fake yaw limit")

        if(timer > 1) then
            body_yaw:set(range-(range*1))
            fake_yaw:set(-60)
        end

        if(timer > 2 + slider_time:get()) then
            body_yaw:set(70)
            fake_yaw:set(60)

            if(timer > 1 + slider_time:get() + 1) then
                timer = 0
            end

        end
    end
end)

ui.add_label("")
ui.add_label("    </> ethericore anti aim exploits ")
ui.add_label("")

    ffi.cdef[[
    typedef void*(__thiscall* get_client_entity_t)(void*, int);
    typedef uintptr_t (__thiscall* GetClientEntity_4242425_t)(void*, int);

    typedef struct
    {
        float x;
        float y;
        float z;
    } Vector_t;

    
    typedef struct
    {
        char    pad0[0x60]; // 0x00
        void* pEntity; // 0x60
        void* pActiveWeapon; // 0x64
        void* pLastActiveWeapon; // 0x68
        float        flLastUpdateTime; // 0x6C
        int            iLastUpdateFrame; // 0x70
        float        flLastUpdateIncrement; // 0x74
        float        flEyeYaw; // 0x78
        float        flEyePitch; // 0x7C
        float        flGoalFeetYaw; // 0x80
        float        flLastFeetYaw; // 0x84
        float        flMoveYaw; // 0x88
        float        flLastMoveYaw; // 0x8C // changes when moving/jumping/hitting ground
        float        flLeanAmount; // 0x90
        char    pad1[0x4]; // 0x94
        float        flFeetCycle; // 0x98 0 to 1
        float        flMoveWeight; // 0x9C 0 to 1
        float        flMoveWeightSmoothed; // 0xA0
        float        flDuckAmount; // 0xA4
        float        flHitGroundCycle; // 0xA8
        float        flRecrouchWeight; // 0xAC
        Vector_t        vecOrigin; // 0xB0
        Vector_t        vecLastOrigin;// 0xBC
        Vector_t        vecVelocity; // 0xC8
        Vector_t        vecVelocityNormalized; // 0xD4
        Vector_t        vecVelocityNormalizedNonZero; // 0xE0
        float        flVelocityLenght2D; // 0xEC
        float        flJumpFallVelocity; // 0xF0
        float        flSpeedNormalized; // 0xF4 // clamped velocity from 0 to 1
        float        flRunningSpeed; // 0xF8
        float        flDuckingSpeed; // 0xFC
        float        flDurationMoving; // 0x100
        float        flDurationStill; // 0x104
        bool        bOnGround; // 0x108
        bool        bHitGroundAnimation; // 0x109
        char    pad2[0x2]; // 0x10A
        float        flNextLowerBodyYawUpdateTime; // 0x10C
        float        flDurationInAir; // 0x110
        float        flLeftGroundHeight; // 0x114
        float        flHitGroundWeight; // 0x118 // from 0 to 1, is 1 when standing
        float        flWalkToRunTransition; // 0x11C // from 0 to 1, doesnt change when walking or crouching, only running
        char    pad3[0x4]; // 0x120
        float        flAffectedFraction; // 0x124 // affected while jumping and running, or when just jumping, 0 to 1
        char    pad4[0x208]; // 0x128
        float        flMinBodyYaw; // 0x330
        float        flMaxBodyYaw; // 0x334
        float        flMinPitch; //0x338
        float        flMaxPitch; // 0x33C
        int            iAnimsetVersion; // 0x340
    } CCSGOPlayerAnimationState_534535_t;
]]


local menu = {
    misc = {
        animation_breaker = ui.add_dropdown("ethericore custom animations", {"forward legs", "backward legs", "forward run animation", "no animations", "crab", "forward run in air", "crab in air"}),
        breakarm = ui.add_checkbox("static animation arms"),
        staticair = ui.add_checkbox("static legs in air"),
        ducari = ui.add_checkbox("break local model")
    }
}

local entity_list_ptr = ffi.cast("void***", client.create_interface("client.dll", "VClientEntityList003"))
local get_client_entity_fn = ffi.cast("GetClientEntity_4242425_t", entity_list_ptr[0][3])
local  get_entity_address = function(ent_index)
        local addr = get_client_entity_fn(entity_list_ptr, ent_index)
        return addr
    end
local localplayer = entity_list.get_client_entity(engine.get_local_player())

callbacks.register("post_anim_update", function(e)
local J = entity_list.get_client_entity( engine.get_local_player( ))
if menu.misc.animation_breaker:get() == 0 then
    ui.get("Misc", "General", "Movement", "Leg movement"):set(2)
    e:get_prop("DT_BaseAnimating", "m_flPoseParameter"):set_float_index(0, 0.5) --forward legs
elseif menu.misc.animation_breaker:get() == 1 then
    ui.get("Misc", "General", "Movement", "Leg movement"):set(2)
    e:get_prop("DT_BaseAnimating", "m_flPoseParameter"):set_float_index(0, 1) --backward legs
elseif menu.misc.animation_breaker:get() == 2 then
    ui.get("Misc", "General", "Movement", "Leg movement"):set(1)
    e:get_prop("DT_BaseAnimating", "m_flPoseParameter"):set_float_index(7, 0) --forward run animation
elseif menu.misc.animation_breaker:get() == 3 then
    ui.get("Misc", "General", "Movement", "Leg movement"):set(1)
    e:get_prop("DT_BaseAnimating", "m_flPoseParameter"):set_float_index(8, 0) --no animations
    e:get_prop("DT_BaseAnimating", "m_flPoseParameter"):set_float_index(9, 0) --no animations
    e:get_prop("DT_BaseAnimating", "m_flPoseParameter"):set_float_index(10, 0) --no animations
elseif menu.misc.animation_breaker:get() == 4 then
    ui.get("Misc", "General", "Movement", "Leg movement"):set(1)
    e:get_prop("DT_BaseAnimating", "m_flPoseParameter"):set_float_index(7, 0.8) --crab
elseif J and client.is_alive and menu.misc.animation_breaker:get() == 5 then
    ui.get("Misc", "General", "Movement", "Leg movement"):set(1)
    e:get_prop("DT_BaseAnimating", "m_flPoseParameter"):set_float_index(7, 0) --forward run animation
    ffi.cast("CCSGOPlayerAnimationState_534535_t**", get_entity_address(J:index()) + 0x9960)[0].flAffectedFraction = 1 --anim in air
elseif J and client.is_alive and menu.misc.animation_breaker:get() == 6 then
    ui.get("Misc", "General", "Movement", "Leg movement"):set(1)
    e:get_prop("DT_BaseAnimating", "m_flPoseParameter"):set_float_index(7, 0.8) --crab
    ffi.cast("CCSGOPlayerAnimationState_534535_t**", get_entity_address(J:index()) + 0x9960)[0].flAffectedFraction = 1 --anim in air
end

if menu.misc.ducari:get() then
    e:get_prop("DT_BaseAnimating", "m_flModelScale"):set_float_index(0, 0.5) --ModelScale
else
 e:get_prop("DT_BaseAnimating", "m_flModelScale"):set_float_index(0, 1)
end

if menu.misc.breakarm:get() then
    e:get_prop("DT_BaseAnimating", "m_flPoseParameter"):set_float_index(14, 1) --break arm
    e:get_prop("DT_BaseAnimating", "m_flPoseParameter"):set_float_index(15, 1) --break arm
end


if menu.misc.staticair:get() then
    e:get_prop("DT_BaseAnimating", "m_flPoseParameter"):set_float_index(6, 1) --static legs in air
end
end)

pitchexploit = ui.add_checkbox("static defensive pitch")
pitchexploitkey = ui.add_cog("Bind defensive pitch", false, true)
local PreviousSimulationTime = 0
local DifferenceOfSimulation = 0
function SimulationDifference()
   local LocalPlayer = entity_list.get_client_entity(engine.get_local_player())
   local CurrentSimulationTime = LocalPlayer:get_prop("DT_BaseAnimating", "m_flSimulationTime"):get_int()
   local Difference = CurrentSimulationTime - (PreviousSimulationTime + 0.75)
   PreviousSimulationTime = CurrentSimulationTime
   DifferenceOfSimulation = Difference
   return DifferenceOfSimulation
end
local function DeffensivePitch()
    local b = ui.get("Rage", "Anti-aim", "General", "Pitch")
    if pitchexploit:get() then
        if pitchexploitkey:get_key() == true then
            if SimulationDifference() <= -1 then
                b:set(2)
            else
                if math.floor(global_vars.curtime * 26) % 16 == 0 and client.choked_commands() < 2 then
                    b:set(2)
                else
                    b:set(1)
                end
            end
        else
            b:set(1)
        end
    end
end
callbacks.register("paint", DeffensivePitch);


ui.add_label("")
ui.add_label("   </> ethericore anti aim preset")
ui.add_label("")
local enable_antiaim = ui.add_checkbox("ethericore anti aim preset")
local roll_disable = ui.add_checkbox("disable roll in preset (if roll banned)")

local cstrike = {
    cmd = nil,
    roll = 0
}

cstrike.update = function(pdr_cmd)
    cstrike.cmd = pdr_cmd
    cstrike.roll = pdr_cmd.viewangles.z
end

local globals = {
    local_player = nil,
    alive = nil,
    weapon = nil,
    weapon_type = nil,
    view_angles = nil,
    on_ground = nil
}

globals.update = function()
    globals.local_player = entity_list.get_client_entity(engine.get_local_player())
    globals.alive = client.is_alive()
    globals.weapon = entity_list.get_client_entity(globals.local_player:get_prop("DT_BaseCombatCharacter", "m_hActiveWeapon"))
    globals.weapon_type = globals.weapon:get_prop("DT_BaseAttributableItem", "m_iItemDefinitionIndex"):get_int()
    globals.view_angles = engine.get_view_angles()
end

cstrike.weapons = {
    deagle = 1,
    duals = 2,
    fiveseven = 3,
    glock = 4,
    awp = 9,
    g3sg1 = 11,
    tect9 = 30,
    p2000 = 32,
    p250 = 36,
    scar20 = 38,
    ssg08 = 40,
    revolver = 64,
    usp = 262205
}

cstrike.get_health = function(entity)
    if entity then
        local health = entity:get_prop("DT_BasePlayer", "m_iHealth"):get_int()
        return math.round(health)
    end

    return nil
end

cstrike.get_velocity = function(entity)
	if entity then
		local x = entity:get_prop("DT_BasePlayer", "m_vecVelocity[0]"):get_float()
		local y = entity:get_prop("DT_BasePlayer", "m_vecVelocity[1]"):get_float()

		return math.round(math.sqrt(x * x + y * y))
	end
end

cstrike.is_alive = function(entity)
    if entity then
        local health = cstrike.get_health(entity)
        if health > 0 then
            return true
        end
    end

    return false
end

cstrike.is_standing = function(entity)
	if entity then
		local is_moving = cstrike.is_moving(entity)
		if not is_moving then
			return true
		end
	end

	return false
end

cstrike.is_slowwalking = function(entity)
    if entity then
		if ui.get("Misc", "General", "Movement", "Slow motion key"):get_key() then
			return true
		end
    end

    return false
end


cstrike.is_crouching = function(entity)
    if entity then
        if cstrike.cmd:has_flag(4) then
            return true
        end
    end

    return false
end

cstrike.is_fake_ducking = function(entity)
    if entity then
        local duck_speed = entity:get_prop("DT_BasePlayer", "m_flDuckSpeed"):get_float()
        local duck_amount = entity:get_prop("DT_BasePlayer", "m_flDuckAmount"):get_float()

        if duck_speed == 8 and duck_amount > 0 and not cstrike.cmd:has_flag(1) then
            return true
        end
    end

    return false
end

cstrike.is_inair = function(entity)
	if entity then
        local local_player = entity_list.get_client_entity(engine.get_local_player())
		local ground_entity = local_player:get_prop("DT_BasePlayer", "m_hGroundEntity"):get_int()

		if ground_entity == -1 then
			return true
		end
	end

	return false
end

cstrike.is_moving = function(entity)
    local local_player = entity_list.get_client_entity(engine.get_local_player())
	if entity then
        local velocity = cstrike.get_velocity(entity)
		if velocity > 4 and not cstrike.is_inair(local_player)  then
			return true
		end
	end
    return false
end

cstrike.is_scoped = function(entity)
    if entity then
        local scoped = entity:get_prop("DT_CSPlayer", "m_bIsScoped"):get_int()
        if scoped == 1 then
            return true
        end
    end

    return false
end


math.radian_to_degree = function(radian)
    return radian * 180 / math.pi
end

math.degree_to_radian = function(degree)
    return degree * math.pi / 180
end

math.round = function(x)
    return x % 1 >= 0.5 and math.ceil(x) or math.floor(x)
end

math.normalize = function(angle)
    while angle < -180 do
        angle = angle + 360
    end

    while angle > 180 do
        angle = angle - 360
    end

    return angle
end

math.angle_to_vector = function(angle)
    local pitch = angle.x
    local yaw = angle.y

    return vector.new(math.cos(math.pi / 180 * pitch) * math.cos(math.pi / 180 * yaw), math.cos(math.pi / 180 * pitch) * math.sin(math.pi / 180 * yaw), -math.sin(math.pi / 180 * pitch))
end

math.calculate_angles = function(from, to)
	local sub = { 
		x = to.x - from.x, 
		y = to.y - from.y, 
		z = to.z - from.z 
	}

	local hyp = math.sqrt( sub.x * sub.x * 2 + sub.y * sub.y * 2 )

	local yaw = math.radian_to_degree( math.atan2( sub.y, sub.x ) );
	local pitch = math.radian_to_degree( -math.atan2( sub.z, hyp ) )

    return QAngle.new(pitch, yaw, 0)
end

math.calculate_fov = function(from, to, angles)
    local calculated = math.calculate_angles(from, to)

    local yaw_delta = angles.yaw - calculated.yaw;
    local pitch_delta = angles.pitch - calculated.pitch;

    if ( yaw_delta > 180 ) then
      yaw_delta = yaw_delta - 360
    end

    if ( yaw_delta < -180 ) then
      yaw_delta = yaw_delta + 360
    end

    return math.sqrt( yaw_delta * yaw_delta * 2 + pitch_delta * pitch_delta * 2 );
end
local utils = {}

utils.clamp = function(v, min, max)
    local num = v
    num = num < min and min or num
    num = num > max and max or num
    
    return num
end

utils.fluctuate = function(min, max)
    local used = false
    local ret = 0

    if used then
        ret = math.random(min, max)
        used = false
    else
        ret = math.random(min, max)
        used = true
    end

    return ret
end

utils.get_crosshair_target = function()
    if not globals.local_player then
        return
    end

    local data = {
        target = nil,
        fov = 180
    }

    local players = entity_list.get_all("CCSPlayer")
end
local antiaim = {}

antiaim.run = function()
    if not enable_antiaim:get() then
        return
    end

    local fake_yaw_type = ui.get("Rage", "Anti-aim", "General", "Fake yaw type")
    local body_yaw_limit = ui.get("Rage", "Anti-aim", "General", "Body yaw limit")
    local fake_yaw_limit = ui.get("Rage", "Anti-aim", "General", "Fake yaw limit")

    local yaw_jitter = ui.get("Rage", "Anti-aim", "General", "Yaw jitter")
    local yaw_jitter_conditions = ui.get("Rage", "Anti-aim", "General", "Yaw jitter conditions")
    local yaw_jitter_type = ui.get("Rage", "Anti-aim", "General", "Yaw jitter type")
    local yaw_jitter_range = ui.get("Rage", "Anti-aim", "General", "Yaw jitter range")

    local fake_yaw_direction = ui.get("Rage", "Anti-aim", "General", "Fake yaw direction")
    local yaw_additive = ui.get("Rage", "Anti-aim", "General", "Yaw additive")

    local body_roll = ui.get("Rage", "Anti-aim", "General", "Body roll")
    local body_roll_amount = ui.get("Rage", "Anti-aim", "General", "Body roll amount")
    local inverter_state = ui.get("Rage", "Anti-aim", "General", "Anti-aim invert")


    if cstrike.is_standing(globals.local_player) or cstrike.is_slowwalking(globals.local_player) then

        if roll_disable:get() then
            fake_yaw_direction:set(0)
            yaw_jitter:set(true)
            yaw_jitter_conditions:set("Standing", true)
            yaw_jitter_conditions:set("Walking", true)
            yaw_jitter_type:set(2)
            yaw_jitter_range:set(-35)
            body_yaw_limit:set(57)
            fake_yaw_limit:set(57)
            fake_yaw_type:set(1)
        else
            fake_yaw_direction:set(0)
            yaw_jitter:set(false)
            body_yaw_limit:set(60)
            fake_yaw_limit:set(60)
            fake_yaw_type:set(0)
            inverter_state:set_key(false)
        end

        if roll_disable:get() then
            body_roll:set(0)
        else
            body_roll:set(4)
        end
        if roll_disable:get() then
            yaw_additive:set(0)
        else
        if inverter_state:get_key( ) == false then
            body_roll_amount:set( -50 )
        else
            body_roll_amount:set( 50 )
        end
    end
    end

    if (cstrike.is_inair(globals.local_player) and not cstrike.is_moving(globals.local_player)) then 
        yaw_additive:set(0)
        yaw_jitter:set(true)
        yaw_jitter_conditions:set("In air", true)
        yaw_jitter_type:set(2)
        yaw_jitter_range:set(-27)
        fake_yaw_type:set(1)
        body_yaw_limit:set(55)
        fake_yaw_direction:set(0)
        body_roll:set(0)
    end

    if (not cstrike.is_slowwalking(globals.local_player) and cstrike.is_moving(globals.local_player)) then        
        yaw_additive:set(0)
        yaw_jitter:set(true)
        yaw_jitter_conditions:set("Moving", true)
        yaw_jitter_type:set(2)
        yaw_jitter_range:set(-37)
        fake_yaw_type:set(1)
        body_yaw_limit:set(60)
        fake_yaw_direction:set(0)
        body_roll:set(0)
    end

    if  (not cstrike.is_inair(globals.local_player) and cstrike.is_crouching(globals.local_player)) then
        yaw_additive:set(0)
        yaw_jitter:set(true)
        yaw_jitter_conditions:set("Moving", true)
        yaw_jitter_type:set(2)
        yaw_jitter_range:set(-27)
        fake_yaw_type:set(1)
        body_yaw_limit:set(60)
        fake_yaw_direction:set(0)
        body_roll:set(0)

        if roll_disable:get() then
            body_roll:set(0)
        else
            body_roll:set(4)
        end

        if inverter_state:get_key( ) == false then
            body_roll_amount:set( -50 )
        else
            body_roll_amount:set( 50 )
        end
    end
end

antiaim.handle_visibility = function()
    local state = enable_antiaim:get()
    local rol = roll_disable:get()

end
local on_post_move = function(cmd)
    globals.update()
    cstrike.update(cmd)

    antiaim.run()
end

callbacks.register("post_move", on_post_move)

ui.add_label("")
ui.add_label("    </> ethericore anti aim other")
ui.add_label("")
local Custom_Slow_motion = ui.add_checkbox("ethericore custom slow walk")
local Custom_Slow_motion_item = ui.add_slider("slow walk speed", 1, 100)
local Random_Custom_Slow_motion = ui.add_checkbox("random speed slow walk")
local Max_Custom_Slow_motion_item = ui.add_slider("max speed slow walk", 1, 100)
local Min_Custom_Slow_motion_item = ui.add_slider("minimum speed slow walk", 1, 100)
local Switching_speed = ui.add_slider_float("switch sw speed", 0.0, 1.0)

render.update = function()
    local screen_size_x, screen_size_y = render.get_screen()

    render.screen.w = screen_size_x
    render.screen.h = screen_size_y

    render.center_screen.w = screen_size_x / 2
    render.center_screen.h = screen_size_y / 2
end

local speed = 0
callbacks.register("paint", function()
    if not engine.is_connected() then
        speed = 0
    end

    Custom_Slow_motion_item:set_visible(Custom_Slow_motion:get())
    Custom_Slow_motion_item:set_visible(Custom_Slow_motion:get())
    Random_Custom_Slow_motion:set_visible(Custom_Slow_motion:get())

    Max_Custom_Slow_motion_item:set_visible(Custom_Slow_motion:get() and Random_Custom_Slow_motion:get())
    Min_Custom_Slow_motion_item:set_visible(Custom_Slow_motion:get() and Random_Custom_Slow_motion:get())
    Switching_speed:set_visible(Custom_Slow_motion:get() and Random_Custom_Slow_motion:get())

end)
local function Slowmotion_velocity(cmd, speed)
    if speed <= 0 then
        return
    end
    local min_speed = math.sqrt((cmd.forwardmove * cmd.forwardmove) + (cmd.sidemove * cmd.sidemove))
    if min_speed <= 0 then
        return
    end
    if cmd.in_duck == 1 then
        speed = speed * 2.94117647
    end
    if min_speed <= speed then
        return
    end
    local speedfactor = speed / min_speed
    cmd.forwardmove = cmd.forwardmove * speedfactor
    cmd.sidemove = cmd.sidemove * speedfactor
end

local function CustomSlowmotion(cmd)
    if Custom_Slow_motion:get() then
        local Custom_Slow_motion_item = Custom_Slow_motion_item:get()
        if Custom_Slow_motion_item >= 100 then
            return
        end
        if ui.get("Misc", "General", "Movement", "Slow motion key"):get_key() then
            Slowmotion_velocity(cmd, Custom_Slow_motion_item)
        end
    end
end

local function CustomS_lowmotion()
    if Random_Custom_Slow_motion:get() then
        if global_vars.curtime >= speed then
            Custom_Slow_motion_item:set(
                math.random(Max_Custom_Slow_motion_item:get(), Min_Custom_Slow_motion_item:get()))
            speed = global_vars.curtime + Switching_speed:get()
        end
    end
end

callbacks.register("post_move", function(cmd)
    CustomSlowmotion(cmd)
    CustomS_lowmotion()
end)

local cstrike = {
    cmd = nil,
    roll = 0
}

cstrike.update = function(pdr_cmd)
    cstrike.cmd = pdr_cmd
    cstrike.roll = pdr_cmd.viewangles.z
end

local globals = {
    local_player = nil,
    alive = nil,
    weapon = nil,
    weapon_type = nil,
    view_angles = nil,
    on_ground = nil
}

globals.update = function()
    globals.local_player = entity_list.get_client_entity(engine.get_local_player())
    globals.alive = client.is_alive()
    globals.weapon = entity_list.get_client_entity(globals.local_player:get_prop("DT_BaseCombatCharacter",
        "m_hActiveWeapon"))
    globals.weapon_type = globals.weapon:get_prop("DT_BaseAttributableItem", "m_iItemDefinitionIndex"):get_int()
    globals.view_angles = engine.get_view_angles()
end

cstrike.weapons = {
    deagle = 1,
    duals = 2,
    fiveseven = 3,
    glock = 4,
    awp = 9,
    g3sg1 = 11,
    tect9 = 30,
    p2000 = 32,
    p250 = 36,
    scar20 = 38,
    ssg08 = 40,
    revolver = 64,
    usp = 262205
}

cstrike.get_health = function(entity)
    if entity then
        local health = entity:get_prop("DT_BasePlayer", "m_iHealth"):get_int()
        return math.round(health)
    end

    return nil
end

cstrike.get_velocity = function(entity)
    if entity then
        local x = entity:get_prop("DT_BasePlayer", "m_vecVelocity[0]"):get_float()
        local y = entity:get_prop("DT_BasePlayer", "m_vecVelocity[1]"):get_float()

        return math.round(math.sqrt(x * x + y * y))
    end
end

cstrike.is_alive = function(entity)
    if entity then
        local health = cstrike.get_health(entity)
        if health > 0 then
            return true
        end
    end

    return false
end

cstrike.is_standing = function(entity)
    if entity then
        local is_moving = cstrike.is_moving(entity)
        if not is_moving then
            return true
        end
    end

    return false
end

cstrike.is_slowwalking = function(entity)
    if entity then
        if ui.get("Misc", "General", "Movement", "Slow motion key"):get_key() then
            return true
        end
    end

    return false
end

cstrike.is_crouching = function(entity)
    if entity then
        if cstrike.cmd:has_flag(4) then
            return true
        end
    end

    return false
end

cstrike.is_fake_ducking = function(entity)
    if entity then
        local duck_speed = entity:get_prop("DT_BasePlayer", "m_flDuckSpeed"):get_float()
        local duck_amount = entity:get_prop("DT_BasePlayer", "m_flDuckAmount"):get_float()

        if duck_speed == 8 and duck_amount > 0 and not cstrike.cmd:has_flag(1) then
            return true
        end
    end

    return false
end

cstrike.is_inair = function(entity)
    if entity then
        local local_player = entity_list.get_client_entity(engine.get_local_player())
        local ground_entity = local_player:get_prop("DT_BasePlayer", "m_hGroundEntity"):get_int()

        if ground_entity == -1 then
            return true
        end
    end

    return false
end

cstrike.is_moving = function(entity)
    local local_player = entity_list.get_client_entity(engine.get_local_player())
    if entity then
        local velocity = cstrike.get_velocity(entity)
        if velocity > 4 and not cstrike.is_inair(local_player) then
            return true
        end
    end
    return false
end

cstrike.is_moving2 = function(entity)
    if entity then
        local velocity = cstrike.get_velocity(entity)
        if velocity > 4 then
            return true
        end
    end
    return false
end

cstrike.is_scoped = function(entity)
    if entity then
        local scoped = entity:get_prop("DT_CSPlayer", "m_bIsScoped"):get_int()
        if scoped == 1 then
            return true
        end
    end

    return false
end

math.round = function(x)
    return x % 1 >= 0.5 and math.ceil(x) or math.floor(x)
end

local fake_limit = ui.get("Rage", "Anti-aim", "General", "Fake yaw limit")
local inverted_fake_limit = ui.get("Rage", "Anti-aim", "General", "Fake yaw limit")

callbacks.register("paint", function()
    local random = math.random(60)

    if not anti_aim.inverted() then
        fake_limit:set(random)
    end

    if anti_aim.inverted() then
        inverted_fake_limit:set(random)
    end
end)

local enable_auto_strafer_fix = ui.add_checkbox("ethericore angle strafe fix")
enable_auto_strafer_fix:set(false)                                 
local auto_strafer_fix_slider = ui.add_slider("sharpness auto strafe", 0, 100)
auto_strafer_fix_slider:set(30)                   

    if enable_auto_strafer_fix:get() == true then

        local get_velocity_x = get_local_player:get_prop("DT_CSPlayer", "m_vecVelocity[0]"):get_float()
        local get_velocity_y = get_local_player:get_prop("DT_CSPlayer", "m_vecVelocity[1]"):get_float()
        local velocity = math.sqrt((get_velocity_x * get_velocity_x) + (get_velocity_y * get_velocity_y))
        local turn_speed = auto_strafer_fix_slider:get()

        if velocity >= turn_speed then

            get_auto_strafer:set(true)

        else

            get_auto_strafer:set(false)

        end

    end



ui.add_label("")
ui.add_label("    </> ethericore rage system ")
ui.add_label("")

local tickbase_boost = ui.add_checkbox("ethericore recharge boost")
tickbase_boost:set(false)


local cmd_ticks = cvar.find_var("sv_maxusrcmdprocessticks")


function TickbaseBoost()
    if tickbase_boost:get() == true then
       cmd_ticks:set_value_int(19)          
    else
          cmd_ticks:set_value_int(16)  
    end    
end


callbacks.register("post_move", TickbaseBoost)


local enable = ui.add_checkbox ("ethericore anti brute resolver")

local function resolve(player)
plist_set(player, "Correction active", false)


plist_set(player, "Force body yaw", true)
plist_get(player, "Force body yaw", math.random)(-60,60)




resolve(player)


end


local function resolver(target)
plist_set(target, "Correction active", false)


plist_set(target, "Anti-aim Bruteforce resolver", true)
plist_get(target, "Anti-aim Bruteforce resolver", math.random)(0,1)

resolve(info.target)


end



resolver = ui.add_checkbox("ethericore random yaw resolver")

local angles = {

     [1] = -60,
     [2] = 0,
     [3] = 60,

}
local last_angle = 3
local new_angle = 1
local switch1 = false
local switch2 = false
local i = 3
local function resolve(player)
    plist.set(player, "Correction active", false)        
    plist.set(player, "Force body yaw", true)

    if last_angle == new_angle and switch1 then
        new_angle = -angles[i]
        if switch2 == true then
            switch1 = not switch1
        end
    else
        if i < #angles then
            i = i + 1
        else
            i = 3
        end
        new_angle = angles[i]
    end
    plist.set(player, "Force body yaw value", new_angle)
    last_angle = new_angle
    switch2 = false
end 



local disable_lc_checkbox = ui.add_checkbox( "ethericore predict system" );


local cl_lagcompensation = cvar.find_var( "cl_lagcompensation" );


local TEAM_TERRORIST = 2;
local TEAM_CT = 3;

local function get_player_team( player )
    local m_iTeamNum = player:get_prop( "DT_BaseEntity", "m_iTeamNum" );

    return m_iTeamNum:get_int( );
end

-- https://github.com/perilouswithadollarsign/cstrike15_src/blob/f82112a2388b841d72cb62ca48ab1846dfcc11c8/game/shared/cstrike15/cs_gamerules.cpp#L15238
local function IsConnectedUserInfoChangeAllowed( player )
    local team_num = get_player_team( player );

    if team_num == TEAM_TERRORIST or team_num == TEAM_CT then
        return false;
    end

    return true;
end


local previous_dlc_state = disable_lc_checkbox:get( );


local changing_from_team = false;
local previous_team_num = -1;
local team_swap_time = -1;

local function on_paint( )
    
    local local_player_idx = engine.get_local_player( );

    
    local local_player = entity_list.get_client_entity( local_player_idx );

    
    if not engine.is_connected( ) or IsConnectedUserInfoChangeAllowed( local_player ) then
        
        cl_lagcompensation:set_value_int( disable_lc_checkbox:get( ) and 0 or 1 );

        
        if changing_from_team and global_vars.curtime > team_swap_time then
            
            engine.execute_client_cmd( "jointeam " .. tostring( previous_team_num ) .. " 1" );

            
            changing_from_team = false;
        end
    else
        
        if disable_lc_checkbox:get( ) ~= previous_dlc_state then
            
            previous_team_num = get_player_team( local_player );

           
            engine.execute_client_cmd( "spectate" );

           
            
            changing_from_team = true;
            team_swap_time = global_vars.curtime + 1.5;

          
            previous_dlc_state = disable_lc_checkbox:get( );
        end
    end
end


local function init( )
    callbacks.register( "paint", on_paint );
end
init( );


local tickbase_boost1 = ui.add_checkbox("ethericore peek helper")
tickbase_boost1:set(false)



local idealtick = {
    autopeek_state = 0, 
    doubletap_state = 0,
    doubletap_key_state = 0,
    freestanding_state = 0,
    active = true
}
local idealtick_combo = ui.add_multi_dropdown("ethericore peek helper", { "enable dt on turn auto peek" })
local idealtick_key = ui.add_cog("Ethericore peek helper", false, true)
local get_key_state = function(var)
    local _, state = var:get_key()
    return state
end
local refs = {
    doubletap = ui.get("Rage", "Exploits", "General", "Enabled"),
    doubletap_key = ui.get("Rage", "Exploits", "General", "Double tap key"),
    autopeek = ui.get("Misc", "General", "Movement", "Auto peek"),
    autopeek_key = ui.get("Misc", "General", "Movement", "Auto peek key"),
    freestanding_key = ui.get("Rage", "Anti-aim", "General", "Freestanding key")
}
idealtick.run = function()
    if idealtick_key:get_key() then
        if idealtick.active then
            idealtick.autopeek_state = refs.autopeek_key:get_key()
            idealtick.doubletap_key_state = refs.doubletap_key:get_key()
            idealtick.freestanding_state = refs.freestanding_key:get_key()
            idealtick.active = false
        end
        if idealtick_combo:get("Freestanding") then
            refs.freestanding_key:set_key(true)
        end
        refs.doubletap:set(true)
        refs.doubletap_key:set_key(true)
        refs.autopeek_key:set_key(true)
    else
        if not idealtick.active then
            refs.autopeek_key:set_key(idealtick.autopeek_state)
            refs.doubletap_key:set_key(idealtick.doubletap_key_state)
            refs.freestanding_key:set_key(idealtick.freestanding_state)
            idealtick.active = true
        end
    end
end
callbacks.register("paint", idealtick.run)


ui.add_label("")
ui.add_label("           </> visuals cheat ")
ui.add_label("")

local disable_blur_checkbox = ui.add_checkbox( "disable blur in panorama" );


local disable_blur = cvar.find_var("@panorama_disable_blur");


local function on_paint()
    disable_blur:set_value_int((disable_blur_checkbox:get() and 1 or 0 ));
end


callbacks.register( "paint", on_paint );


local screen_x, screen_y = render.get_screen()
local meff= {}

local Menu_effects = ui.add_checkbox("ethericore effects of menu ")
local Menu_effects_color = ui.add_cog("effects color", true, false)
local Menu_effects_line_color = ui.add_cog("effects line color", true, false)

meff.nod = 275
meff.cde = 175
meff.speed = 29
meff.alpha = vector2d.new(0.75, 1)
meff.size = vector2d.new(1, 2)
meff.velocity = vector2d.new(-2, 2)
meff.dots = ffi.new("float[" .. meff.nod ..  "][6]")

function meff_Generate(value)
    meff.dots = {}
    for i = 0, value-1 do
        local pes = ffi.new("float[?]", 6)
        pes[0] = math.random(0, screen_x)
        pes[1] = math.random(0, screen_y)
        pes[2] = math.random(meff.alpha.x, meff.alpha.y)
        pes[3] = math.random(meff.size.y, meff.size.y)
        pes[4] = math.random(meff.velocity.x, meff.velocity.y) * meff.speed
        pes[5] = math.random(meff.velocity.x, meff.velocity.y) * meff.speed       
        meff.dots[i] = pes
    end
end

meff.c_velocity = ffi.new("float[?]", 2)
meff.cos = ffi.new("float[?]", 10)
meff.screen_size = ffi.new("float[?]", 2)

meff.screen_size[0] = screen_x
meff.screen_size[1] = screen_y

function meff_handle()
    if not Menu_effects:get() or not ui.is_open() then
        return
    end
    
    local mouse_pos_x, mouse_pos_y = input.mouse_position()
    
    meff.cos[0] = mouse_pos_x
    meff.cos[1] = mouse_pos_y
    
    local frame_time = global_vars.frametime   
    
    local r = math.floor(math.sin(frame_time * 1) * 127 + 128)
    local g = math.floor(math.sin(frame_time * 1.5 + 2) * 127 + 128)
    local b = math.floor(math.sin(frame_time * 1.5 + 4) * 127 + 128)
    
    local color = Menu_effects_color:get_color()   
    local color_1 = Menu_effects_line_color:get_color()

    for i = 0, meff.nod-1 do
        local current_element = meff.dots[i]
        meff.c_velocity[0] = current_element[4] * frame_time
        meff.c_velocity[1] = current_element[5] * frame_time
        if current_element[0] + meff.c_velocity[0] > meff.screen_size[0] or current_element[0] + meff.c_velocity[0] < 0 then
            meff.dots[i][4] = -current_element[4]
            meff.c_velocity[0] = -meff.c_velocity[0]
        end
        if current_element[1] + meff.c_velocity[1] > meff.screen_size[1] or current_element[1] + meff.c_velocity[1] < 0 then
            meff.dots[i][5] = -current_element[5]
            meff.c_velocity[1] = -meff.c_velocity[1]
        end
        meff.dots[i][0] = current_element[0] + meff.c_velocity[0]
        meff.dots[i][1] = current_element[1] + meff.c_velocity[1]
        render.circle_filled(current_element[0], current_element[1], current_element[3], 7, color)
        for i = 0, 9, 2 do
            local current_distance = math.abs(current_element[0] - meff.cos[i]) + math.abs(current_element[1] - meff.cos[i+1])
            if current_distance < meff.cde then
                render.line(meff.cos[i], meff.cos[i+1], current_element[0], current_element[1], color_1)               
                break
            end
        end
    end
end

meff_Generate(meff.nod)

callbacks.register("paint", meff_handle)


local checkboxmenu = ui.add_checkbox("rainbow menu")

local accent_color = ui.get("Profile","General","Global Settings","Menu accent color")
function on_paint()
    if not checkboxmenu:get() then
        return
    end
    accent_color:set_color(
        color.new(
            math.floor((math.sin(global_vars.realtime * 1) * 127) + 128),
            math.floor((math.sin((global_vars.realtime * 1) + 2) * 127) + 128),
            math.floor((math.sin((global_vars.realtime * 1) + 4) * 127) + 128),
            255
        )
    )
end
callbacks.register("paint", on_paint)

local keybinds = ui.add_checkbox("ethericore keybinds")
local keybinds_style = ui.add_dropdown("keybinds style", {"standart", "standart + fade", "solus 1.0", "solus 2.0"})
local kb_rectangle_color_text = ui.add_label("background color")
local kb_rectangle_color = ui.add_cog("Accent color for keybinds angle", true, false)
kb_rectangle_color:set_color(color.new(0, 0, 0, 170))
local kb_pos_x = ui.add_slider("ethericore keybinds x", 0, size_x)
local kb_pos_y = ui.add_slider("ethericore keybinds y", 0, size_y)


local small_fonts = render.create_font("Small Fonts", 13, 500, bit.bor(font_flags.dropshadow, font_flags.antialias));

local small_fonts2 = render.create_font("Small Fonts", 12, 500, bit.bor(font_flags.dropshadow, font_flags.antialias));



callbacks.register("paint", function()
    if keybinds:get() == true then

        local x_pos, y_pos = kb_pos_x:get(), kb_pos_y:get()

        local kb_double_tap = ui.get("Rage", "Exploits", "General", "Double tap key")
        local kb_body_aim = ui.get("Rage", "Aimbot", "Accuracy", "Force body-aim key")
        local kb_fake_duck = ui.get("Rage", "Anti-aim", "Fake-lag", "Fake duck key")
        local kb_dmg_ovr = ui.get("Rage", "Aimbot", "General", "Minimum damage override key")
        local kb_force_safe = ui.get("Rage", "Aimbot", "General", "Force safety key")
        local kb_roll_reso = ui.get("Rage", "Aimbot", "General", "Roll resolver")
        local kb_hide_shots = ui.get("Rage", "Exploits", "General", "Hide shots key")
        local kb_third_person = ui.get("Visuals", "General", "Other group", "Third person key")
        local kb_slow_motion = ui.get("Misc", "General", "Movement", "Slow motion key")
        local kb_auto_peek = ui.get("Misc", "General", "Movement", "Auto peek key")
        local kb_freestanding = ui.get("Rage", "Anti-aim", "General", "Freestanding key")
        local kb_manual_left = ui.get("Rage", "Anti-aim", "General", "Manual left key")
        local kb_manual_right = ui.get("Rage", "Anti-aim", "General", "Manual right key")
        local kb_manual_back = ui.get("Rage", "Anti-aim", "General", "Manual backwards key")

        local kb_i = {}

        if kb_double_tap:get_key() then
            table.insert(kb_i, {text = "Double tap", color = color.new(255,255,255,255)})
        end

        if kb_hide_shots:get_key() then
            table.insert(kb_i, {text = "Hide shots", color = color.new(255,255,255,255)})
        end

        if kb_fake_duck:get_key() then
            table.insert(kb_i, {text = "Fake duck", color = color.new(255,255,255,255)})
        end
      
         if kb_dmg_ovr:get_key() then
            table.insert(kb_i, {text = "Override damage", color = color.new(255,255,255,255)})
        end
        
        if kb_body_aim:get_key() then
            table.insert(kb_i, {text = "Force body", color = color.new(255,255,255,255)})
        end

        if kb_third_person:get_key() then
            table.insert(kb_i, {text = "Thirdperson", color = color.new(255,255,255,255)})
        end
      
        if kb_force_safe:get_key() then
            table.insert(kb_i, {text = "Force safe", color = color.new(255,255,255,255)})
        end

        if kb_roll_reso:get_key() then
            table.insert(kb_i, {text = "Roll resolver", color = color.new(255,255,255,255)})
        end

        if kb_slow_motion:get_key() then
            table.insert(kb_i, {text = "Slow walk", color = color.new(255,255,255,255)})
        end

        if kb_auto_peek:get_key() then
            table.insert(kb_i, {text = "Auto peek", color = color.new(255,255,255,255)})
        end

        if kb_manual_left:get_key() then
            table.insert(kb_i, {text = "Manual yaw left", color = color.new(255,255,255,255)})
        end

        if kb_manual_back:get_key() then
            table.insert(kb_i, {text = "Manual yaw back", color = color.new(255,255,255,255)})
        end

        if kb_manual_right:get_key() then
            table.insert(kb_i, {text = "Manual yaw right", color = color.new(255,255,255,255)})
        end

        if kb_freestanding:get_key() then
            table.insert(kb_i, {text = "Freestand", color = color.new(255,255,255,255)})
        end


        
        render.rectangle_filled(x_pos + 0, y_pos + 0, 166, 21, kb_rectangle_color:get_color())

        if keybinds_style:get() == 0 then
            render.rectangle_filled(x_pos + 0, y_pos + 0, 166, 2, cheat_color:get_color())
        end

        if keybinds_style:get() == 1 then
            render.gradient(x_pos - 1, y_pos + 0, 83, 2, color.new(0, 0, 0, 0), cheat_color:get_color(), true)
            render.gradient(x_pos + 82, y_pos + 0, 85, 2, cheat_color:get_color(), color.new(0, 0, 0, 0), true)
        end

        if keybinds_style:get() == 2 then
            render.rectangle_filled(x_pos + 0, y_pos + 0, 166, 2, cheat_color:get_color())
            render.gradient(x_pos + 0, y_pos + 2, 2, 19, cheat_color:get_color(), color.new(0, 0, 0, 0), false)
            render.gradient(x_pos + 164, y_pos + 2, 2, 19, cheat_color:get_color(), color.new(0, 0, 0, 0), false)
        end

        if keybinds_style:get() == 3 then
            
            render.gradient(x_pos + 0, y_pos + 0, 80, 2, cheat_color:get_color(), color.new(0, 0, 0, 0), true)
            render.gradient(x_pos + 86, y_pos + 0, 80, 2, color.new(0, 0, 0, 0), cheat_color:get_color(), true)

            
            render.rectangle_filled(x_pos - 0, y_pos + 2, 2, 17, cheat_color:get_color()) 
            render.rectangle_filled(x_pos + 164, y_pos + 2, 2, 17, cheat_color:get_color()) 

            
            render.gradient(x_pos + 0, y_pos + 19, 80, 2, cheat_color:get_color(), color.new(0, 0, 0, 0), true)
            render.gradient(x_pos + 86, y_pos + 19, 80, 2, color.new(0, 0, 0, 0), cheat_color:get_color(), true)
        end

        small_fonts2:text(x_pos + 62, y_pos + 5, color.new(255, 255, 255, 255), "Keybinds");

        for idx = 1, #kb_i do
            local kb_i = kb_i[idx]
            
            small_fonts2:text(x_pos + 2, y_pos + 10 + idx * 15, kb_i.color, kb_i.text)
            small_fonts2:text(x_pos + 144, y_pos + 10 + idx * 15, kb_i.color, "[on]")
        end
    end
end)

ui.add_label("")
ui.add_label("            </> visuals world ")
ui.add_label("")
ui.add_label(" fog in world ")
local fog_color_label = ui.add_label("fog color ")
local fog_color_cog = ui.add_cog("fog color", true, false)
local fog_distance_start = ui.add_slider("fog start distance", 0, 5000)
local fog_distance_end = ui.add_slider("fog end distance", 0, 5000)
local fog_density = ui.add_slider("fog density", 0, 100)


local c_fog_override = cvar.find_var("fog_override")
local c_fog_color = cvar.find_var("fog_color")
local c_fog_end = cvar.find_var("fog_end")
local c_fog_start = cvar.find_var("fog_start")
c_fog_maxdensity = cvar.find_var("fog_maxdensity")

callbacks.register("paint", function()
    if (engine.get_local_player() ~= nil and engine.in_game() ~= nil and client.map_name() ~= nil) then
       local color = fog_color_cog:get_color()
       local rgb = tostring(color:r()) .. " " .. tostring(color:g()) .. " " .. tostring(color:b())

        if(c_fog_override ~= 1) then
            c_fog_override:set_value_int(1)
        end

        if(c_fog_color ~= fog_color) then
            c_fog_color:set_value_string(rgb)
        end

        if(c_fog_end ~= fog_distance_end:get()) then
            c_fog_start:set_value_int(fog_distance_start:get())
            c_fog_end:set_value_int(fog_distance_end:get())
        end

        if(c_fog_maxdensity ~= fog_density:get() / 100) then
            c_fog_maxdensity:set_value_float(fog_density:get() / 100)
        end

    end
end)

ui.add_label("")
ui.add_label("bloom")
local bloomscale = ui.add_slider("bloom scale on map", 0, 100)    


local bloomenz = cvar.find_var("mat_bloom_scalefactor_scalar")

callbacks.register("paint", function()
    if (engine.get_local_player() ~= nil and engine.in_game() ~= nil and client.map_name() ~= nil) then
     
        if(enablebloom ~= 1) then    
bloomenz:set_value_int(bloomscale:get())
        end



    end
end)

local skybox_var = cvar.find_var("sv_skyname")
ui.add_label("")
local skybox_text = ui.add_textbox("custom skybox name")
local skybox_button = ui.add_button("apply custom skybox")
ui.add_label("")
local set_skybox = function()
    local skybox_name = skybox_text:get()
    if skybox_name == "" then
        return
    end

    skybox_var:set_value_string(skybox_name)
end

skybox_button:add_callback(set_skybox)

callbacks.register('player_connect_full', function()
    set_skybox()
end)


local world_hitmarker_dmg = ui.add_checkbox( "ethericore hitmarker" );

local markers = { }

function on_paint( )
    if not world_hitmarker_dmg:get( ) then
        return
    end

    local step = 255.0 / 1.0 * global_vars.frametime;
    local step_move = 30.0 / 1.5 * global_vars.frametime;
    local multiplicator = 0.3;

    for idx = 1, #markers do
        local marker = markers[ idx ];

        if marker == nil then
            return
        end

        marker.moved = marker.moved - step_move;

        if marker.create_time + 0.5 <= global_vars.curtime then
            marker.alpha = marker.alpha - step;
        end

        if marker.alpha > 0 then
            local screen_position = vector2d.new( 0, 0 );

            if render.world_to_screen( marker.world_position, screen_position ) then
                small_fonts:text( screen_position.x + 8, screen_position.y - 12 + marker.moved, color.new( 54, 255, 0, marker.alpha ), "-" .. marker.dmg );
            end
        else
            table.remove( markers, idx );
        end
    end
end

function on_hitmarker( damage, position )
    table.insert( markers, {
        dmg = damage,
        world_position = vector.new( position.x, position.y, position.z ), 
        create_time = global_vars.curtime,
        moved = 0.0,
        alpha = 255.0
    } );
end

callbacks.register( "on_hitmarker", on_hitmarker );
callbacks.register( "paint", on_paint );


local bz = ui.add_checkbox("confetti of zeus shot");
local bA = cvar.find_var("sv_party_mode");
local function ad()
	bA:set_value_int((bz:get() and 1) or 0);
end
local function af()
	callbacks.register("paint", ad);
end
af();


local enable = ui.add_checkbox("knife on left hand")

callbacks.register("paint", function()

    local lp_wep = entity_list.get_client_entity(entity_list.get_client_entity(engine.get_local_player()):get_prop("DT_BaseCombatCharacter", "m_hActiveWeapon"))
    local knife = lp_wep:class_id() == 107

    if enable:get() then
        if knife then
            engine.execute_client_cmd("cl_righthand 0")
        elseif not knife then
            engine.execute_client_cmd("cl_righthand 1")
        end
    end

end)


local cstrike = {}

cstrike.is_scoped = function(entity)
    if entity then
        local scoped = entity:get_prop("DT_CSPlayer", "m_bIsScoped"):get_int()
        if scoped == 1 then
            return true
        end
    end

    return false
end

local viewmodel_in_scope = ui.add_checkbox("viewmodel on scope")


local on_paint = function()

    local fov_cs_debug = cvar.find_var("fov_cs_debug")

    if not viewmodel_in_scope:get() then
        fov_cs_debug:set_value_int(0)
        return
    end

    local local_player = entity_list.get_client_entity(engine.get_local_player())
    if not local_player then
        return
    end

    if cstrike.is_scoped(local_player) then
        fov_cs_debug:set_value_int(90)
    else
        fov_cs_debug:set_value_int(0)
    end
end

callbacks.register("paint", on_paint)

local viewmodel_modifier_box = ui.add_checkbox("custom pos hands")
local viewmodel_modifier_fov = ui.add_slider_float("camera fov", 50.0, 65.0)
local viewmodel_modifier_x = ui.add_slider_float("hands x", -2.0, 2.0)
local viewmodel_modifier_y = ui.add_slider_float("hands y", -2.0, 2.0)
local viewmodel_modifier_z = ui.add_slider_float("hands z", -2.0, 2.0)

callbacks.register("paint", function()
    if viewmodel_modifier_box:get() then
        cvar.find_var("viewmodel_fov"):set_value_float(viewmodel_modifier_fov:get())
        cvar.find_var("viewmodel_offset_x"):set_value_float(viewmodel_modifier_x:get())
        cvar.find_var("viewmodel_offset_y"):set_value_float(viewmodel_modifier_y:get())
        cvar.find_var("viewmodel_offset_z"):set_value_float(viewmodel_modifier_z:get())
    end

    if viewmodel_modifier_box:get() == false then
        cvar.find_var("viewmodel_fov"):set_value_float(0.0)
        cvar.find_var("viewmodel_offset_x"):set_value_float(0.0)
        cvar.find_var("viewmodel_offset_y"):set_value_float(0.0)
        cvar.find_var("viewmodel_offset_z"):set_value_float(0.0)
    end
end)


ui.add_label("")
ui.add_label("       </> gamesense style ind ")
ui.add_label("")
local verdana = render.create_font("Verdana", 18, 800, font_flags.dropshadow);
local screen_width, screen_height = render.get_screen();
local base_position_y = (screen_height / 1.5);
local position_x = 0;
local position_y = 0;
local v_enable_exploits = ui.get( "Rage", "Exploits", "General", "Enabled" );
local v_doubletap       = ui.get( "Rage", "Exploits", "General", "Double tap key" );
local v_dmg_override    = ui.get_rage( "General", "Minimum damage override key" );
local v_fake_duck       = ui.get( "Rage", "Anti-aim", "Fake-lag", "Fake duck key" );
local v_hide_shots      = ui.get( "Rage", "Exploits", "General", "Hide shots key" );
local lv_anti_exploit       = ui.add_checkbox("anti defensive");
local lv_dmg_override       = ui.add_checkbox("override minimum damage");
local lv_dmg_override_s     = ui.add_multi_dropdown("override minimum damage type", {"show default damage", "show override minimum damage"});
local lv_fake_duck          = ui.add_checkbox("fake duck");
local lv_hide_shots         = ui.add_checkbox("hide shots");
local lv_doubletap_type = ui.add_dropdown("double tap type", {"-", "bar slide", "percentage (%)"});
local g_col_disabled = color.new(123, 104, 238);
local g_col_enabled  = color.new(255, 240, 245);

local function blendColors( a, b, multiplier )
    return color.new(
        a:r( ) + ( multiplier * ( b:r( ) - a:r( ) ) ),
        a:g( ) + ( multiplier * ( b:g( ) - a:g( ) ) ),
        a:b( ) + ( multiplier * ( b:b( ) - a:b( ) ) ),
        a:a( ) + ( multiplier * ( b:a( ) - a:a( ) ) )
    );
end
local function getMinimumDamage( var )
    local minimum_damage = var:get();
    if minimum_damage == 0 then
        return "auto";
    elseif minimum_damage > 100 then
        return string.format("hp+%d", minimum_damage - 100);
    else
        return tostring(minimum_damage);
    end
end
local function drawAntiExploit()
    if not lv_anti_exploit:get() then
        return
    end
    if not cvar.find_var( "cl_lagcompensation" ):get_bool() then
        verdana:text( position_x, position_y, g_col_enabled, "AX");
    
        position_y = position_y + 16;
    end
end
local function drawDamageOverride()
    if not lv_dmg_override:get() then
        return
    end
    local is_overriding = v_dmg_override:get_key();
    if is_overriding or lv_dmg_override_s:get("Show disabled") then
        if lv_dmg_override_s:get("Show minimum damage") then
            local mindmg_value    = ui.get_rage( "General", "Minimum damage" );
            local mindmg_value_o  = ui.get_rage( "General", "Minimum damage override" );
            local v = getMinimumDamage(is_overriding and mindmg_value_o or mindmg_value);
            verdana:text(position_x, position_y, is_overriding and g_col_enabled or g_col_disabled, string.format("DMG: %s", v));
        else
            verdana:text(position_x, position_y, is_overriding and g_col_enabled or g_col_disabled, "DMG OVERRIDE");
        end
        position_y = position_y + 16;
    end
end
local function drawDoubletap()
    if not v_enable_exploits:get() then
        return
    end
    if not v_doubletap:get_key() then
        return
    end
    local doubletap_value = exploits.process_ticks() / 14;
    local doubletap_color = blendColors(g_col_disabled, g_col_enabled, doubletap_value);
    local text = "";
    local type = lv_doubletap_type:get();
    if type == 1 then
        render.rectangle_filled(position_x, position_y, 2, 2, color.new(0,0,0,255));

        verdana:text( position_x, position_y, doubletap_color, "DT");
        position_y = position_y + 18;

        local bar_width = verdana:get_size("DT");
        render.rectangle_filled(position_x, position_y, bar_width, 6, color.new(0, 0, 0, 180));
        render.rectangle_filled(position_x, position_y, bar_width * doubletap_value, 5, doubletap_color);
        render.rectangle(position_x, position_y, bar_width, 6, color.new(0, 0, 0, 255));
    elseif type == 2 then

        verdana:text( position_x, position_y, doubletap_color, string.format("DT (%d%s)", math.floor(doubletap_value * 100), "%"));
    end
end
local function drawFakeduck()
    if not lv_fake_duck:get() then
        return
    end
    if v_fake_duck:get_key() then
        local local_player = entity_list.get_client_entity( engine.get_local_player( ) );
        local duck_amount = local_player:get_prop( "DT_BasePlayer", "m_flDuckAmount" ):get_float( );
        
        verdana:text(position_x, position_y, blendColors(g_col_disabled, g_col_enabled, duck_amount), "FD");
        position_y = position_y + 16;
    end
end
local function drawHideShots()
    if not lv_hide_shots:get() then
        return
    end
    if not v_hide_shots:get_key() then
        return
    end
    local hs_color = blendColors(g_col_disabled, g_col_enabled, v_doubletap:get_key() and 0 or 1);
    verdana:text(position_x, position_y, hs_color, "HS");
    position_y = position_y + 16;
end
local function onPaint()
    if not client.is_alive() then
        return
    end
    position_x = 10;
    position_y = base_position_y;
    drawAntiExploit();
    drawDamageOverride();
    drawFakeduck();
    drawHideShots();
    drawDoubletap();
end
callbacks.register("paint", onPaint);

ui.add_label("")
ui.add_label("           </> other settings ")
ui.add_label("")

local dist_ref = ui.add_slider("third person distance", 0, 200)
local get_cam_idealdist = cvar.find_var("cam_idealdist")

callbacks.register("paint", function()
   get_cam_idealdist:set_value_int(dist_ref:get())
end)
local thunder = ui.add_checkbox("rain weather sounds")
local sv_cheats = cvar.find_var("sv_cheats")

local sounds = {
    "ambient\\playonce\\weather\\thunder4.wav",
    "ambient\\playonce\\weather\\thunder5.wav",
    "ambient\\playonce\\weather\\thunder6.wav",
    "ambient\\playonce\\weather\\thunder_distant_01.wav",
    "ambient\\playonce\\weather\\thunder_distant_02.wav",
    "ambient\\playonce\\weather\\thunder_distant_06.wav"
}

local delay = global_vars.realtime + math.random(3, 15)

function on_post_move(cmd)
    if not thunder:get() then
        return
    end

    if global_vars.realtime >= delay then
        sv_cheats:set_value_int(1)
        engine.execute_client_cmd("playgamesound " .. sounds[math.random(1, 6)])
        delay = global_vars.realtime + math.random(3, 15)
    end
end

callbacks.register("post_move", on_post_move)

 killsay = ui.add_checkbox("ethericore trashtalk")

function on_player_death(event)
    if killsay:get() then

        local phrases = {
        "l2p брат",
        "ало ты мапу лузаешь дура очнись",
        "ty4clip",
        "тише чурка, тише",
        "АХАХА ЕБАТЬ У ТЕБЯ ЧЕРЕПНАЯ КОРОБКА ПРЯМ КАК [XML-RPC] No-Spread 24/7 | aim_ag_texture_2 ONLY!",
        "попущенj",
        "$$$ 1 TAP UFF YA $$$",
        "че боксер да? красавчик",
        "хартьфу те в ебало помойник ты ебанный",
        "бум уебище, упало",
        "cya in hell",
        "idk i think you are just bad",
        "240KG PROFESSIONAL?",
        "лови ракету хач ебаный",
        "депортирован в ад к матери шлюхе",
        "не противник",
        "деградант с маленькой писькой?) сука, я уже закатываюсь с того как ебу твою мать",
        "бошка взорвалась от моего наплыва",
        "деградант с маленькой писькой?) иди соси мне хуй, пока даю",
        "ЗАПРЕТИ МНЕ НОСИТЬ СТОН АЙЛЕНД, Я В НЕМ КАК СКАЛА ВСЕ МЕНЯ В НЕМ БОЯТСЯ",
        "ты че в светлое будущее там попрыгал))",
        "не забудь прописать /repair и имя твоей матери",
        "выйди нахуй отсюда пока я тебе шею не свернул",
        "ты походу на член своего отца пересмотрел",
        "куда летишь",
        "ало это из мчс у вас мать сгорела",
        "ало епта дерьмо отлетело",
        "тебе мой хуй в горло не влазит ты что забыл ?",
        "опять шляпа слетела, анти-попадайки не помогли ?",
        "анально наказан",
        "мой хуй выбил страйк зубам твоей матери",
        "бэктрекед to africa дегенерат)",
        "сейчас в попу, потом в ротик",
        "еще один гудок с твоей платформы, и твой зубной состав двинется",
        "упал отжался",
        "лови билетик на рейс main menu -> spectators",
        "а у вас походу умирать это семейное))))))))))",
        "бля пиздос может рефнешь???",
        "але а противники то где???",
        "нихуя ты там как самолет отлетел ХАХАХХАХАХАХАХХХААХАА",
        "ньюкамыча опустили и затрештолкали)))",
        "*DEAD* пофикси нищ",
        "минет делай ханыга",
        "не хотелось даже руки об тебя марать нищ сука",
        "братец, тут уже нихуя не поможет",
        "получил по башке",
    	"1.",
		"ez",
		"ahah",
		"этот мув",
		"нормас",
		"норм",
		"впенил идиота",
		"всочнярил хуесоса",
		"ты мне в ширинку дышишь",
		"слава украини",
		"куда спрятался",
		"меня не убить",
		"опозорился",
		"разъебончик",
		"на здоровье",
		"stay ethericore.lua",
		"попущеный",
		"бля боже",
		"ahah",
		"оммг",
		"...",
		"учись играть",
		"хочешь бля мб поучиься играть у меня???",
		"мэлстрой бы не одобрил",
		"слишком просто для меня (◕‿◕)",
		"ХАХАХАХА (⌣̀_⌣́) ЗАПЕН",
		"я уже матёрый в этом деле",
		"никсвар>all",
		"0 ошибок",
		"stay ethericore шлюха •_•)",
		"всочнярил гавноеда",
		"лол, иди скиллуху треннируй, нубас",
		"униженный инвалид ты мне в ширинку дышишь",
		"найс аккаунт [̲̅$̲̅(̲̅1̅)̲̅$̲̅]",
		"нюхай пэнсел,баклан",
		"ethericore gang",
		"колики болики",
		"Ethericore.LUA НА СЕРВЕРЕ, ВСЕМ ОТОЙТИ НА БЕЗОПАСНОЕ РАССТОЯНИЕ",
		"У ПАРНЯ АА ОТ СКИТА ОТКАЗАЛИ КАК КЛАНТЕГ godeless УВИДЕЛИ ХАХАХАХАХА",
		"впитывай и терпи",
		"видно ты без Ethericore.lua, пора прикупить сыночек",
		"УВОЛЕН by Ethericore.lua",
		"нл сегодня подкован",
		"пацан попутал берега и был пропенен",
		"зазевался и понюхал беброчки ( ͡ʘ ͜ʖ ͡ʘ)",
		"утро начинается с пули от етерикор.луа",
		"не снимай подгузник, просто отодвинь его в сторону",
		"промолчишь?",
		"нежелательный окурок был наказан",
		"hs",
		"♛альфач на сервере♛",
		"ХАХАХАХА (；⌣̀_⌣́) ЗАПЕН",
		"все оправдания в пэнсел",
		"1.",
		"чел с кфг от резольвера, козяву глотаешь?",
		"немного напрудонил",
		"что за красота, среди это массовки",
		"огузок надристал со своей плеши",
		"прилоскал косматого ~(˘▾˘~)",
		"слава богу я юзаю ethericore beta",
		"почухал попу пальчиком",
		"ну ты зверь",
		"вкусно?",
		"понюхай попу носиком, прикинься киса пёсиком",
		"куда спрятался, мама научила из шкафа подглядывать?",
		"меня не убить - superior slow walk unhsble",
		"парни, я и пёрнуть не успеваю, вы уже нюхаете",
		"чит оклемался можно и попенить",
		"ботик, ты про ethericore.lua слыхал чето?",
		"опа, чит прогрел",
		"проучен.",
		"на виражике шлепок дал небольшой",
		"Malik163#6401 добавь в др, ищу друзей",
		"11:11 показывает наглежа (◣_◢)",
		"опять один за тиммейтов всю работу сделал",
		"у кого скит предлогаю заснуть в попу пробку - ощущения те же, даже приятнее",
		"ты не умёха, гайды от REZTOP HvH посмотри",
		"я уже матёрый в этом деле",
		"тусня пошла (⌒‿⌒)",
		"опозорил чуханчика",
		"я подкован в этом",
		"мочканул наивного",
		"крем из писюхи ッ",
		"Принцесса огорошена (o_O)",
		"люди сбежали в страхе... сервер прокачен...",
		"мочалка захотела раздрая и была запенина",
		"потому что гладиолус ¯\\_(ツ)_/¯",
		"бедолажный, понюхай мой ethericore:3",
		"натыкался я гдето на тебя, ты c клантегом chimera отсасывал?",
		"запенявочка на сервере",
		"разъебончик",
		"senpai~~~, заовни меня ^^",
		"на куражике",
		"пена так и хлещет",
		"на здоровье",
		"отканифолил",
		"закрыт потнявка",
		"хапнул забористого",
		"наказана \\(^O^)/",
		"МУЖИКИ Я КАБАН НЕ ШМАЛЯЙТЕ ХРИСТА РАДИ НЕ ГУБИТЕ",
		"чачка пипсов)))",
		"by ethericore нубас",
		"ethericore records",
		"ты чтото пёрнул? ОТКАЗАНО",
		"шальная залетела",
		"нихуя ты джентельмен, аж шляпа слетела",
		"ровно двигаюсь",
		"8 6 4 2 ручка трахнула бобра",
		"после такой пули, у тебя порвались трусики",
		"МЫ РУССКИЕ - С НАМИ БОГ",
		"( ͡° ͜ʖ ͡°)",
		"задорная феня",
		"( ͡° ͜ʖ ͡°)Ɑ ̶͞ ̶͞ ̶͞ ̶͞ ﻝﮞ",
		" ЕССС -3 ЮХУУУУУ",
		"анансовый сироп, оп оп оп оп",
		"сися \\(^.^)/",
		"потяра, без оправданий только",
		"имбово кринжанул",
		"нелепая суета",
		"смачно дунул в пэнсел",
		"ёдрён картон",
		"а в попу больно?",
		"едрён батон, KAK JE YA JEBOSHY",
		"я обладатель - ethericore оформи 3aгJloт фастом",
		"ахально отлимонил",
		"целуйте мои булки, я паПУЛЬКА",
		"накидал за шиворот",
		"Я ВЕСЁЛЫЙ ТАРАКАН, Я БЕГУ БЕГУ БЕГУ",
		"чухнул пенисом нахала",
		"♚ чик пук траляля ♚",
		"♛Ａｌｌ Ｆａｍｉｌｙ Ｅｔｈｅｒｉｃｏｒｅ♛",
		"в туза напихал",
		"присунул в ушко, ты моя подружка)",
		"лошара) я с нлом",
        "не дай шайтану сбить себя во время намаза",
        "голова пидараса в сумке у папы",
        "пей бабушкин рассол пидарас",
        "РНБ БЛЯ КЛУБ ЕБАЛИ ТВОЮ МАТЬ",
        "залетаю такой на брянск и фип оооо добро пожаловать",  
        "ɢɪᴇʙᴇ ᴍᴇᴘʜᴇᴅʀᴏɴ ᴀᴜꜰ ɪʜʀᴇɴ ᴀʀsᴄʜ",
        "𝐖𝐄𝐑 𝐁𝐈𝐒𝐓 𝐃𝐔 𝐃𝐄𝐑 𝐒𝐎𝐇𝐍 𝐄𝐈𝐍𝐄𝐑 𝐇𝐔𝐑𝐄",
        "Ｉ`Ｍ ＧＯＤ ＷＩＴＨ ＧＯＤＭＯＤＥ ＡＡ",  
        "𝓽𝓱𝓲𝓼 𝓲𝓼 𝓶𝔂 𝓹𝓪𝓻𝓽𝔂 𝓪𝓷𝓭 𝔂𝓸𝓾 𝓪𝓻𝓮 𝓶𝔂 𝔀𝓱𝓸𝓻𝓮",
        "EZ BY REZOLVER",
        "АХФЫХАФЫХАХФЫАХФЫХ, БИЧ ЕБАНЫЙ",
        "by SANCHEZj hvh boss",
        "СОСАТЬ УЕБА ЕБАНАЯ",
        "$$$ 1 TAP UFF YA $$$ ∩ ( ͡⚆ ͜ʖ ͡⚆) ∩",    
        "GLhf.exe Activated",
        "я ķ¤нɥåλ ϯβ¤£ü ɱåɱķ£ β Ƥ¤ϯ",
        "трахнут by ethericore.lua",
    }
    

    local userid = event:get_int("userid")
        local attacker = event:get_int("attacker")
        local local_player = engine.get_local_player()
        local attacker_entindex = engine.get_player_for_user_id(attacker)
        local victim_entindex = engine.get_player_for_user_id(userid)

        if attacker_entindex ~= local_player or victim_entindex == local_player then
            return
        end

        engine.execute_client_cmd("say " .. phrases[math.random(1, #phrases)])

    end
end

callbacks.register("player_death", on_player_death)


Materials = {
    "models/player/custom_player/eminem/gta_sa/bmybar.mdl",
    "models/player/custom_player/eminem/gta_sa/fam1.mdl",
    "models/player/custom_player/eminem/gta_sa/somyst.mdl",
    "models/player/custom_player/eminem/gta_sa/swmotr5.mdl",
    "models/player/custom_player/eminem/gta_sa/vwfypro.mdl",
    "models/player/custom_player/eminem/gta_sa/wizumu.mdl",
    "models/player/custom_player/frnchise9812/ballas2.mdl",
    "models/player/custom_player/darnias/medicsoldier.mdl",
    "models/player/custom_player/kuristaja/kim_jong_un/kim.mdl",
    "models/player/custom_player/frnchise9812/ballas1.mdl",
    "models/player/custom_player/legacy/tm_leet_variantf.mdl",
    "models/player/custom_player/legacy/tm_leet_varianti.mdl",
    "models/player/custom_player/legacy/tm_leet_varianth.mdl",
    "models/player/custom_player/legacy/tm_leet_variantg.mdl",
    "models/player/custom_player/legacy/ctm_fbi_variantb.mdl",
    "models/player/custom_player/legacy/ctm_fbi_varianth.mdl",
    "models/player/custom_player/legacy/ctm_fbi_variantg.mdl",
    "models/player/custom_player/legacy/ctm_fbi_variantf.mdl",
    "models/player/custom_player/legacy/ctm_st6_variante.mdl",
    "models/player/custom_player/legacy/ctm_st6_variantm.mdl",
    "models/player/custom_player/legacy/ctm_st6_variantg.mdl",
    "models/player/custom_player/legacy/ctm_st6_variantk.mdl",
    "models/player/custom_player/legacy/ctm_st6_varianti.mdl",
    "models/player/custom_player/legacy/ctm_st6_variantj.mdl",
    "models/player/custom_player/legacy/ctm_st6_variantl.mdl",
    "models/player/custom_player/legacy/ctm_swat_variante.mdl",
    "models/player/custom_player/legacy/ctm_swat_variantf.mdl",
    "models/player/custom_player/legacy/ctm_swat_variantg.mdl" ,
    "models/player/custom_player/legacy/ctm_swat_varianth.mdl",
    "models/player/custom_player/legacy/ctm_swat_varianti.mdl",
    "models/player/custom_player/legacy/ctm_swat_variantj.mdl",
    "models/player/custom_player/legacy/ctm_sas_variantf.mdl",
    "models/player/custom_player/legacy/tm_phoenix_varianth.mdl",
    "models/player/custom_player/legacy/tm_phoenix_variantf.mdl",
    "models/player/custom_player/legacy/tm_phoenix_variantg.mdl",
    "models/player/custom_player/legacy/tm_phoenix_varianti.mdl",
    "models/player/custom_player/legacy/tm_professional_varf.mdl",
    "models/player/custom_player/legacy/tm_professional_varf1.mdl",
    "models/player/custom_player/legacy/tm_professional_varf2.mdl",
    "models/player/custom_player/legacy/tm_professional_varf3.mdl",
    "models/player/custom_player/legacy/tm_professional_varf4.mdl",
    "models/player/custom_player/legacy/tm_professional_varg.mdl",
    "models/player/custom_player/legacy/tm_professional_varh.mdl",
    "models/player/custom_player/legacy/tm_professional_vari.mdl",
    "models/player/custom_player/legacy/tm_professional_varj.mdl",
}

mca = ui.add_checkbox("model changer")
mca_List = ui.add_dropdown("model list", Materials)

ffi.cdef[[
       typedef struct
    {
        void*   handle;
        char    name[260];
        int     load_flags;
        int     server_count;
        int     type;
        int     flags;
        float   mins[3];
        float   maxs[3];
        float   radius;
        char    pad[0x1C];
    } model_t;
    typedef struct _class{void** this;}aclass;
    typedef void*(__thiscall* get_client_entity_t)(void*, int);
    typedef void(__thiscall* find_or_load_model_fn_t)(void*, const char*);
    typedef const int(__thiscall* get_model_index_fn_t)(void*, const char*);
    typedef const int(__thiscall* add_string_fn_t)(void*, bool, const char*, int, const void*);
    typedef void*(__thiscall* find_table_t)(void*, const char*);
    typedef void(__thiscall* full_update_t)();
    typedef int(__thiscall* get_player_idx_t)();
    typedef void*(__thiscall* get_client_networkable_t)(void*, int);
    typedef void(__thiscall* pre_data_update_t)(void*, int);
    typedef int(__thiscall* get_model_index_t)(void*, const char*);
    typedef const model_t(__thiscall* find_or_load_model_t)(void*, const char*);
    typedef int(__thiscall* add_string_t)(void*, bool, const char*, int, const void*);
    typedef void(__thiscall* set_model_index_t)(void*, int);
    typedef int(__thiscall* precache_model_t)(void*, const char*, bool);
]]

a = ffi.cast(ffi.typeof("void***"), client.create_interface("client.dll", "VClientEntityList003")) or error("rawientitylist is nil", 2)
b = ffi.cast("get_client_entity_t", a[0][3]) or error("get_client_entity is nil", 2)
c = ffi.cast(ffi.typeof("void***"), client.create_interface("engine.dll", "VModelInfoClient004")) or error("model info is nil", 2)
d = ffi.cast("get_model_index_fn_t", c[0][2]) or error("Getmodelindex is nil", 2)
e = ffi.cast("find_or_load_model_fn_t", c[0][43]) or error("findmodel is nil", 2)
f = ffi.cast(ffi.typeof("void***"), client.create_interface("engine.dll","VEngineClientStringTable001")) or error("clientstring is nil", 2)
g = ffi.cast("find_table_t", f[0][3]) or error("find table is nil", 2)

function p(pa)
    local a_p = ffi.cast(ffi.typeof("void***"), g(f, "modelprecache"))
    if a_p~= nil then
        e(c, pa)
        local ac = ffi.cast("add_string_fn_t", a_p[0][8]) or error("ac nil", 2)
        local acs = ac(a_p, false, pa, -1, nil)
        if acs == -1 then print("failed")
            return false
        end
    end
    return true
end

function smi(en, i)
    local rw = b(a, en)
    if rw then
        local gc = ffi.cast(ffi.typeof("void***"), rw)
        local se = ffi.cast("set_model_index_t", gc[0][75])
        if se == nil then
            error("smi is nil")
        end
        se(gc, i)
    end
end

function cm(ent, md)
    if md:len() > 5 then
        if p(md) == false then
            error("invalid model", 2)
        end
        local i = d(c, md)
        if i == -1 then
            return
        end
        smi(ent, i)
    end
end

function cmd1(stage)
    if stage ~= 1 then
        return
    end
    if mca:get() then
        local ip = entity_list.get_client_entity( engine.get_local_player( ))
        if ip == nil then
            return
        end
        if engine.is_connected() and client.is_alive() then

            cm(ip:index(), Materials[mca_List:get() + 1])
        end
    end
end

callbacks.register("pre_frame_stage", cmd1)

ui.add_label("")
ui.add_label("            </> fps boost")
ui.add_label("")

local ui_get, ui_set, ui_add_checkbox, ui_add_multi_dropdown, cvar_find_var, callbacks_register= ui.get, ui.set, ui.add_checkbox, ui.add_multi_dropdown, cvar.find_var, callbacks.register

local ui_processing = ui_get( 'Visuals', 'General', 'Other group', 'Removals' )

local list = { 'Global', 'Vignette', 'Bloom', 'Shadows', 'Blood' }

local menu = {
    switch = ui_add_checkbox( 'disable post processing' ),
    list = ui_add_multi_dropdown( ' ', list )
}

local cvars = {
    postprocess = cvar_find_var( 'mat_postprocess_enable' ),
    vignette = cvar_find_var( 'mat_vignette_enable' ),
    bloom_scale = cvar_find_var( 'mat_bloom_scalefactor_scalar' ),
    shadows = cvar_find_var( 'cl_csm_shadows' ),
    blood1 = cvar_find_var( 'violence_ablood' ),
    blood2 = cvar_find_var( 'violence_hblood' )
}


callbacks_register( 'paint', function()
    local switch = menu.switch:get()

    if switch then
        ui_processing:set('Post processing', false )
    end

    cvars.postprocess:set_value_int( ( menu.list:get(list[1]) and switch ) and 0 or 1 )
    cvars.vignette:set_value_int( ( menu.list:get(list[2]) and switch ) and 0 or 1 )
    cvars.bloom_scale:set_value_int( ( menu.list:get(list[3]) and switch ) and 0 or 1 )
    cvars.shadows:set_value_int( ( menu.list:get(list[4]) and switch ) and 0 or 1 )
    cvars.blood1:set_value_int( ( menu.list:get(list[5]) and switch ) and 0 or 1 )
    cvars.blood2:set_value_int( ( menu.list:get(list[5]) and switch ) and 0 or 1 )

end)

executecommands = ui.add_button("button of inject commands")
executecommands:add_callback(function()
    engine.execute_client_cmd("cl_disable_ragdolls 1;dsp_slow_cpu 1; mat_disable_bloom 1;r_drawparticles 0; sv_cheats 1; func_break_max_pieces 0;mat_queue_mode 2;r_eyemove 0 ;r_eyegloss 0;fps_max 999999999;r_drawparticles 0;func_break_max_pieces 0; muzzleflash_light 0;r_drawtracers_firstperson 0,;r_dynamic 0;mat_disable_bloom 1;cl_disablefreezecam 1")
end)
ui.add_label("")
ui.add_label("               </> hitlog ")

screen_x, screen_y = render.get_screen()
verdana = render.create_font('Verdana', 12, 500, bit.bor(font_flags.dropshadow, font_flags.outline));
ffi.cdef[[ 
typedef int(__thiscall* add_string_t)(void*, bool, const char*, int, const void*);
typedef struct {
        float x;
        float y;
        float z;
} vec3_struct;
    typedef void*(__thiscall* c_entity_list_get_client_entity_t)(void*, int);
    typedef void*(__thiscall* c_entity_list_get_client_entity_from_handle_t)(void*, uintptr_t);

    typedef int(__thiscall* c_weapon_get_muzzle_attachment_index_first_person_t)(void*, void*);
    typedef int(__thiscall* c_weapon_get_muzzle_attachment_index_third_person_t)(void*);
    typedef bool(__thiscall* c_entity_get_attachment_t)(void*, int, vec3_struct*);
	    typedef struct
    {
    unsigned char r, g, b;
        signed char exponent;
    } ColorRGBExp32;
]]	

hit_log = ui.add_multi_dropdown("hit log", { "chat", "screen" })

active = { } 
function addLog(time, ...)
    table.insert(active, {
        ["text"] = { ... },
        ["time"] = time,
        ["delay"] = global_vars.realtime + time,
        ["color"] = {{5, 20, 40}, {5, 20, 40}},
        ["x_pad"] = -11,
        ["x_pad_b"] = -11,	
    })
end

function PrintInChat(text)  
FindElement = ffi.cast("unsigned long(__thiscall*)(void*, const char*)", client.find_sig("client.dll", "55 8B EC 53 8B 5D 08 56 57 8B F9 33 F6 39 77 28"))
CHudChat = FindElement(ffi.cast("unsigned long**", ffi.cast("uintptr_t", client.find_sig("client.dll", "B9 ? ? ? ? E8 ? ? ? ? 8B 5D 08")) + 1)[0], "CHudChat")
FFI_ChatPrint = ffi.cast("void(__cdecl*)(int, int, int, const char*, ...)", ffi.cast("void***", CHudChat)[0][27])  
      FFI_ChatPrint(CHudChat, 0, 0, string.format("%s ", text))
end	

function en_hit_box(int_hitgroup)
    if int_hitgroup == nil then
        return;
    elseif int_hitgroup == 0 then
        return "body";
    elseif int_hitgroup == 1 then
        return "head";
    elseif int_hitgroup == 2 then
        return "chest";
    elseif int_hitgroup == 3 then
        return "stomach";
    elseif int_hitgroup == 4 then
        return "left arm";
    elseif int_hitgroup == 5 then
        return "right arm";
    elseif int_hitgroup == 6 then
        return "left leg";
    elseif int_hitgroup == 7 then
        return "right leg";
    elseif int_hitgroup == 10 then
        return "body";
    end
end

callbacks.register("player_hurt", function(event)
    Hit_Color = ui.get('Profile','General','Global settings', 'Menu accent color'):get_color()
    me = entity_list.get_client_entity( engine.get_local_player( ) )
    attacker = engine.get_player_for_user_id( event:get_int( "attacker" ) )
    attacker_player = engine.get_player_for_user_id( event:get_int("userid") )
	
    if attacker ==  engine.get_local_player( ) then
    Remaining_Health = event:get_int('health')	
    Damage_Done = event:get_int('dmg_health')
    Get_name = engine.get_player_info( attacker_player ).name
    Get_name_2 = engine.get_player_info( attacker ).name	
    Get_hitbox = en_hit_box(event:get_int('hitgroup'))

    addLog(7,
    {Hit_Color:r(), Hit_Color:g(), Hit_Color:b(), "Ether"},
    {255, 255, 255,  "icore.lua hit"},	
    {Hit_Color:r(), Hit_Color:g(), Hit_Color:b(), " "..Get_name},
    {255, 255, 255,  " in the"},
    {Hit_Color:r(), Hit_Color:g(), Hit_Color:b(), " "..Get_hitbox},
    {255, 255, 255,  " for damage"},	
    {Hit_Color:r(), Hit_Color:g(), Hit_Color:b(), " "..Damage_Done},	
    {255, 255, 255,  " damage ("},		
    {Hit_Color:r(), Hit_Color:g(), Hit_Color:b(), " "..Remaining_Health},	
    {255, 255, 255,  "  health remaining )"}		
    )
    delay = global_vars.realtime + 1
	
    chat_log = " \x04[+]\x01   hit \x0B"..Get_name.."\x01 in the \x0B" .. Get_hitbox .. "\x01 for \x0B" .. Damage_Done .. "\x01 damage (\x0B" .. Remaining_Health .."\x01 health remaining)"
	
    if hit_log:get('chat') then
        PrintInChat( chat_log )
    end
	
	end
end)

function LogText(x, y, lines)
    local x_pad = 0
    for i = 1, #lines do
        local line = lines[i]	
        local r, g, b, msg = line[1], line[2], line[3], line[4]
        local w_x, w_y = verdana:get_size( msg )
        verdana:text(x + x_pad, y, color.new(r, g, b, 255), msg)		
        x_pad = x_pad + w_x
    end
end

function GetTextSize(lines)
    local fw, fh = 0
    for i = 1, #lines do
        local w, h = verdana:get_size( lines[i][4] )
        fw, fh = fw + w, h
    end
    return fw, fh
end

function showLog(count, color, text, layer)
    local y = 1 + (15 * (count - 1))
    local w, h = GetTextSize(text)
    local mw = w < 150 and 150 or w
    if global_vars.realtime < layer.delay then
        if layer.x_pad < mw then layer.x_pad = layer.x_pad + (mw - layer.x_pad) * 0.05 end
        if layer.x_pad > mw then layer.x_pad = mw end
        if layer.x_pad > mw / 1.09 then
            if layer.x_pad_b < mw - 6 then
                layer.x_pad_b = layer.x_pad_b + ((mw - 6) - layer.x_pad_b) * 0.05
            end
        end
        if layer.x_pad_b > mw - 6 then
            layer.x_pad_b = mw - 6
        end
    else
        if layer.x_pad_b > -11 then
            layer.x_pad_b = layer.x_pad_b - (((mw - 5) - layer.x_pad_b) * 0.05) + 0.01
        end
        if layer.x_pad_b < (mw - 11) and layer.x_pad >= 0 then
            layer.x_pad = layer.x_pad - (((mw + 1) - layer.x_pad) * 0.05) + 0.01
        end
        if layer.x_pad < 0 then
            table.remove(active, count)
        end
    end
    LogText( layer.x_pad_b - mw + 18 , y + 9, text)			
end
	
callbacks.register('paint', function()
    if not hit_log:get('screen') then
	    return
	end
    for index, hitlog in pairs(active) do	
        showLog(index, hitlog.color, hitlog.text, hitlog)
    end
end)


callbacks.register( "on_hitmarker", on_hitmarker );
callbacks.register( "paint", on_paint );
ui.add_label("              </> custom scope ")
local custom_scopre = ui.add_checkbox("custom scope")
local scope_color_label = ui.add_label("scope color")
local scope_color = ui.add_cog("Scope color", true, false)
local scope_size = ui.add_slider("custom scope size", 0, 500)
local scope_padding = ui.add_slider("custom scope padding", 0, 250)

local scopetype = ui.get("Visuals", "General", "Other group", "scope effect type")
local entity_get_client_entity = entity_list.get_client_entity
local alpha = 0

local function scope_on_paint()

    if custom_scopre:get() then

        scopetype:set(0)

        local screen_size_x, screen_size_y = render.get_screen()
        local screen_center = vector2d.new(screen_size_x / 2, screen_size_y / 2)

        local local_player = entity_get_client_entity(engine.get_local_player())

        if not engine.in_game() then
            return
        end

        if local_player == nil then
            return
        end

        if local_player:get_prop("DT_BasePlayer", "m_iHealth"):get_int() <= 0 then
            return
        end

        local multiplier = (1.0 / (225 / 1000)) * global_vars.frametime

        if local_player:get_prop("DT_CSPlayer", "m_bIsScoped"):get_bool() then
            if alpha < 1.0 then
                alpha = alpha + multiplier
            end
        else
            if alpha > 0.0 then
                alpha = alpha - multiplier
            end
        end

        if alpha >= 1.0 then
            alpha = 1
        end

        if alpha <= 0.0 then
            alpha = 0
            return
        end

        local r, g, b, a = scope_color:get_color():r(), scope_color:get_color():g(), scope_color:get_color():b(),
            scope_color:get_color():a()

        local sizee = scope_size:get()

        local pos = vector2d.new(screen_center.x, screen_center.y - sizee)
        local size = vector2d.new(1, sizee * alpha)
        pos.y = pos.y - (scope_padding:get() - 1)
        render.gradient(pos.x, pos.y, size.x, size.y, color.new(0, 0, 0, 0), color.new(r, g, b, a * alpha), false)

        pos = vector2d.new(screen_center.x, screen_center.y + (sizee * (1.0 - alpha)))
        size = vector2d.new(1, scope_size:get() - (sizee * (1.0 - alpha)))
        pos.y = pos.y + scope_padding:get()
        render.gradient(pos.x, pos.y, size.x, size.y, color.new(r, g, b, a * alpha), color.new(0, 0, 0, 0), false)

        pos = vector2d.new(screen_center.x - sizee, screen_center.y)
        size = vector2d.new(sizee * alpha, 1)
        pos.x = pos.x - (scope_padding:get() - 1)
        render.gradient(pos.x, pos.y, size.x, size.y, color.new(0, 0, 0, 0), color.new(r, g, b, a * alpha), true)

        pos = vector2d.new(screen_center.x + (sizee * (1.0 - alpha)), screen_center.y)
        size = vector2d.new(sizee - (sizee * (1.0 - alpha)), 1)
        pos.x = pos.x + scope_padding:get()
        render.gradient(pos.x, pos.y, size.x, size.y, color.new(r, g, b, a * alpha), color.new(0, 0, 0, 0), true)
    end

    if not custom_scopre:get() then
        scopetype:set(1)
    end
end

callbacks.register("paint", scope_on_paint)

ui.add_label("youtube.com/@odinatset_odinatset")
ui.add_label("thx for using the lua <3")
ui.add_label("creator: 11 11")