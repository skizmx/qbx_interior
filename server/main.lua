local interior = require 'config.interior'

---@param source source
---@param coords vector3|vector4
local function teleport(source, coords)
    local ped = GetPlayerPed(source)
    SetEntityCoords(ped, coords.x, coords.y, coords.z, false, false, false, false)
    SetEntityHeading(ped, coords.w or 0)
end

---@class CreateInteriorParams
---@field source number
---@field interior string
---@field coords vector4|vector3
---@field spawn? boolean
---@field bucket? number

---@param params CreateInteriorParams
---@return { object:number, offsets: table }?
local function createInterior(params)
    local name = params.interior
    local coords = params.coords
    local bucket = params.bucket
    local src = params.source
    if not interior[name] then return end
    local object = CreateObject(interior[name].model, coords.x, coords.y, coords.z, true, false, false)
    while not DoesEntityExist(object) do Wait(0) end
    FreezeEntityPosition(object, true)

    if bucket then
        exports.qbx_core:SetEntityBucket(object, bucket)
    end

    if src then
        teleport(src, interior[name].offsets.exit)
        if bucket then
            exports.qbx_core:SetPlayerBucket(src, bucket)
        end
    end

    return { object, interior[name].offsets }
end

exports('CreateInterior', createInterior)