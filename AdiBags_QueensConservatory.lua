-------------------------------------------------------------------------------
-- AdiBags - Queen's Conservatory By Crackpot (US, Illidan)
-------------------------------------------------------------------------------
local addonName, addon = ...
local AdiBags = LibStub("AceAddon-3.0"):GetAddon("AdiBags")

local L = addon.L
local tonumber = _G["tonumber"]

local conservatoryFilter = AdiBags:RegisterFilter("Conservatory", 98, "ABEvent-1.0")
conservatoryFilter.uiName = L["Queen's Conservatory"]
conservatoryFilter.uiDesc = L["Filter for Queen's Conservatory (Night Fae Convenant) items."]

function conservatoryFilter:OnInitialize()
    self.items = {
        -- From: https://www.wowhead.com/guides/night-fae-covenant-queens-conservatory

        -- Dutiful Spirits
        [178881] = true, -- Dutiful Spirit
        [178880] = true, -- Greater Dutiful Spirit
        [178879] = true, -- Divine Dutiful Spirit

        -- Martial Spirits
        [178879] = true, -- Martial Spirit
        [178877] = true, -- Greater Martial Spirit
        [178878] = true, -- Divine Martial Spirit

        -- Untamed Spirits
        [177698] = true, -- Untamed Spirit
        [177699] = true, -- Greater Untamed Spirit
        [177700] = true, -- Divine Untamed Spirit

        -- Prideful Spirit
        [178882] = true, -- Prideful Spirit
        [178883] = true, -- Greater Prideful Spirit
        [178884] = true, -- Divine Prideful Spirit

        -- Legendary Spirits
        [183704] = true, -- Shifting Spirit of Knowledge
        [183805] = true, -- Tranquil Spirit of the Cosmos
        [183806] = true, -- Energetic Spirit of Curiosity

        -- Anima Catalysts
        [176921] = true, -- Temporal Leaves
        [176922] = true, -- Wild Nightbloom
        [176832] = true, -- Wildseed Root Grain

        -- Seeds
        [183521] = true, -- Temporal Leaf Seeds
        [183520] = true, -- Wild Nightbloom Seeds
        [183522] = true, -- Wildseed Root Grain Seeds
    }
end

function conservatoryFilter:Update()
    self:SendMessage("AdiBags_FiltersChanged")
end

function conservatoryFilter:OnEnable()
    AdiBags:UpdateFilters()
end

function conservatoryFilter:OnDisable()
    AdiBags:UpdateFilters()
end

function conservatoryFilter:Filter(slotData)
    if self.items[tonumber(slotData.itemId)] then
        return L["Queen's Conservatory"]
    end
end
