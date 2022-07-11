package.path = package.path..";"..lfs.writedir().."/Scripts/?.lua"

local swapSides = require 'DCS-Scripts.utils.SwapCountry'
local tasking = require 'DCS-Scripts.utils.tasking'
local utils = require 'DCS-Scripts.utils.utils'
local spawning = require 'DCS-Scripts.utils.spawning'
local locations = require 'DCS-Scripts.utils.locations'
local iads = require 'DCS-Scripts.utils.IADS'

--[[
 What do I want this script to do?

 [1] Take the no go zone into a variable

 [2] Be able to have any aircraft that trespass onto the green zone be escorted
 by TRNC aircraft

[3]

--]]

local enforcingGps = {--[[insert gpNames of NFZ enforcement groups here]]}

-- [1]
local noGo = {{00053152, -00293470}, {00017400, -00287523},
 {00029323, -00228633}, {00080672, -00112222},
  {00029749, -00228633}, {00006260, -00223009}, {00011106,-00167628}}


  local function trackPlanes()
    tasking.noFlyZonePlyrDetec(--[[TRNC country]], coalition.side.BLUE, TRNC_all)
      -- If players detected and in zone then turn TRNC hostile
    end
  end


function test.main()
	timer.scheduleFunction(function()
	  utils.protectedCall(trackPlanes)
	  return timer.getTime() + refreshRate
	end,
	{},
	timer.getTime() + refreshRate
    )
    iads.runIADS()
end

return test
