---Just for fun ,good game
menu.add_feature("Really Swim", "toggle", 0, function(feat)
pedmy = player.get_player_ped(player.player_id())
while feat.on do
    ped.set_ped_config_flag(pedmy, 65, 1)
	campos = cam.get_gameplay_cam_rot()
    entity.set_entity_rotation(player.get_player_ped(player.player_id()),campos)
    system.yield(0)
end
    feat.on = false
end)

menu.add_feature("Beast Jump", "toggle",0, function(feat)
if feat.on then
native.call(0x438822C279B73B93,player.player_id())
end
    return HANDLER_CONTINUE
end)

menu.add_feature("Anti Crash Cam", "action_value_str",0,function (f)
if f.value == 0 then
        pos = player.get_player_coords(player.player_id())
		anticrash_cam = native.call(0xB51194800B257161,"DEFAULT_SCRIPTED_CAMERA",pos.x, pos.y, pos.z, -17.764436721802,0,143.65002441406, 70.0, false, false):__tointeger64()
		native.call(0x026FB97D0A425F84,anticrash_cam, true)
		native.call(0x07E5B515DB0636FC,true, true, 1000, true, true, 0)
		native.call(0x4D41783FB745E42E,anticrash_cam,2181.5520019531,5201.8828125 ,2501.0)
elseif f.value == 1 then
		native.call(0x865908C81A2C22E9,anticrash_cam, false)
		native.call(0x07E5B515DB0636FC,false, false, 0, true, true, 0)
end
end):set_str_data({
"On",
"Off",
})