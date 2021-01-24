local _, AddOn = ...
WowUtil = AddOn

local UnitName = UnitName
local SetRaidTarget = SetRaidTarget

function AddOn:SetRaidTarget(icon)
    local target = "player"
    if UnitName("mouseover") ~= nil then
        target = "mouseover"
    elseif UnitName("target") ~= nil then
        target = "target"
    end
    SetRaidTarget(target, icon)
end
