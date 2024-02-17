local interior = require 'config.interior'

local function teleport(coords)
    CreateThread(function()
        SetEntityCoords(cache.ped, coords.x, coords.y, coords.z, false, false, false, false)
        SetEntityHeading(cache.ped, coords.w or 0)
        Wait(100)
        DoScreenFadeIn(1000)
    end)
end

---@param name string
---@param coords vector3|vector4
---@param spawn? boolean
---@return { object:number, offsets: table }?
local function createInterior(name, coords, spawn)
    if not interior[name] then return end
    lib.requestModel(interior[name].model)

    local object = CreateObject(interior[name].model, coords.x, coords.y, coords.z, false, false, false)
    FreezeEntityPosition(object, true)

    if spawn then
        DoScreenFadeOut(500)
        while not IsScreenFadedOut() do Wait(10) end
        teleport(vec4(coords.x, coords.y, coords.z, 0) + interior[name].offsets.exit)
    end

    return { object, interior[name].offsets }
end

exports('CreateInterior', createInterior)

---@param objects number|table
---@param cb? function
local function despawninterior(objects, cb)
    CreateThread(function()
        if type(objects) == 'table' then
            for _, object in pairs(objects) do
                if DoesEntityExist(object) then
                    DeleteEntity(object)
                end
            end
        elseif DoesEntityExist(objects) then
            DeleteEntity(objects)
        end

        if cb then cb() end
    end)
end

exports('DespawnInterior', despawninterior)

CreateThread(function()
    for k, v in pairs(interior) do
        if not IsModelInCdimage(v.model) then
            lib.print.warn(('%s interior model is not loaded/streamed!'):format(k))
        end
    end
end)