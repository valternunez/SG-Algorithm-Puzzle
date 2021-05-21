AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

--include other files
AddCSLuaFile("round_controller/cl_round_controller.lua")
include("round_controller/sv_round_controller.lua")

AddCSLuaFile("lobby_manager/cl_lobby.lua")
include("lobby_manager/sv_lobby.lua")


local startWeapons = {
    "weapon_physgun"
}

local ply=FindMetaTable("Player")

function ply:GiveLoadout()

    for k , v in pairs (startWeapons) do

        self:Give(v)

    end

end

function GM:PlayerConnect(name , ip)

    print("Player " .. name .. "connected with " .. ip .. "successfully")
    -- body
end


function GM:PlayerInitialSpawn(ply)

    print("player" .. ply:Name() .. "spawned")
    -- body
end

function GM:PhysgunPickup( ply , ent)

    if ent:GetClass() == "item-1-knapsack" then
      return true
    elseif ent:GetClass() == "item-2-knapsack" then
      return true

    elseif ent:GetClass() == "item-3-knapsack" then
      return true

    elseif ent:GetClass() == "item-4-knapsack" then
      return true

    elseif ent:GetClass() == "item-5-knapsack" then
      return true

    elseif ent:GetClass() == "item-6-knapsack" then
      return true

    elseif ent:GetClass() == "item-7-knapsack" then
      return true

    elseif ent:GetClass() == "item-8-knapsack" then
      return true

    elseif ent:GetClass() == "item-9-knapsack" then
      return true

    elseif ent:GetClass() == "coin-1-10" then
      return true

    elseif ent:GetClass() == "coin-2-5" then
      return true

    elseif ent:GetClass() == "coin-3-2" then
      return true

    elseif ent:GetClass() == "coin-4-1" then
      return true
    end

    --If none of those, do not allow moving anything else.
    return false
end
