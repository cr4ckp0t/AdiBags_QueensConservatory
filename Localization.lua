-------------------------------------------------------------------------------
-- AdiBags - Queen's Conservatory By Crackpot (US, Illidan)
-------------------------------------------------------------------------------
local addonName, addon = ...

local L =
    setmetatable(
    {},
    {
        __index = function(self, key)
            if key then
                rawset(self, key, tostring(key))
            end
            return tostring(key)
        end
    }
)
addon.L = L

local locale = GetLocale()

if locale == "deDE" then
    --Translation missing
elseif locale == "enUS" then
    L["Queen's Conservatory"] = true
    L["Filter for Queen's Conservatory (Night Fae Convenant) items."] = true

elseif locale == "esES" then
    --Translation missing
elseif locale == "esMX" then
    --Translation missing
elseif locale == "frFR" then
    --Translation missing
elseif locale == "itIT" then
    --Translation missing
elseif locale == "koKR" then
    --Translation missing
elseif locale == "ptBR" then
    --Translation missing
elseif locale == "ruRU" then
    -- Thanks Hubbotu
    L["Queen's Conservatory"] = true
    L["Filter for Queen's Conservatory (Night Fae Convenant) items."] = "Фильтр для предметов Queen's Conservatory (Ковенант Ночных Фей)."
elseif locale == "zhCN" then
    --Translation missing
elseif locale == "zhTW" then
--Translation missing
end

-- values by their key
for k, v in pairs(L) do
    if v == true then
        L[k] = k
    end
end
