-- Only register one global step for this game and just call the respective globalstep functions
-- from within this function, preliminary testing shows that registering one globalstep and calling
-- all of your global step functions from there could slightly improve performance
-- having all dig node code in one function seemed to have the most improvement over calling several dignode
-- functions 

local function adventuretest_globalstep(dtime)
  default.player_globalstep(dtime)
  default.leaf_globalstep(dtime)
  energy_globalstep(dtime)
  hunger.global_step(dtime)
  itemdrop_globalstep(dtime)
  armor_globalstep(dtime)
  wieldview_globalstep(dtime)
  blacksmith_globalstep(dtime)
  throwing_globalstep(dtime)
  magic_globalstep(dtime)
  ambience_globalstep(dtime)
end
minetest.register_globalstep(adventuretest_globalstep)

local function adventuretest_respawnplayer(player)
  energy.respawnplayer(player)
  hunger.update_hunger(player, 20)
  sethome_respawnplayer(player)
end
minetest.register_on_respawnplayer(adventuretest_respawnplayer)

local function adventuretest_dignode(pos, node, digger)
  --print("on_dignode")
  -- going to try to consolidate all on_dignode calls here so there is only one function call
  
  -- ON DIG NODE FOR MONEY MOD
  for k,v in pairs(money.convert_items) do
    if ( node.name == money.convert_items[k].dig_block ) then     
      money.stats[k].running_dug = money.stats[k].running_dug + 1 
    end
  end
  
  -- EXPERIENCE
  if minetest.registered_nodes[node.name] ~= nil then
    if minetest.registered_nodes[node.name]["skill"] ~= nil then
       default.drop_item(pos,"experience:1_exp")
    end
  end
  
  -- ENERGY
  if digger ~= nil and digger ~= "" then
    local name= digger:get_player_name()
    if player_energy[name] ~= nil then
      player_energy[name] = player_energy[name] - 0.08
    end
  end
  
  hunger.handle_node_actions(pos, node, digger)
end
minetest.register_on_dignode(adventuretest_dignode)

local function adventuretest_placenode(pos, node, placer)
  hunger.handle_node_actions(pos,node,placer)
end
minetest.register_on_placenode(adventuretest_placenode)
