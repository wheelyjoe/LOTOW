package.path = package.path..";"..lfs.writedir().."/Scripts/?.lua"

local swapSides = require 'DCS-Scripts.utils.SwapCountry'
local tasking = require 'DCS-Scripts.utils.tasking'
local utils = require 'DCS-Scripts.utils.utils'
local spawning = require 'DCS-Scripts.utils.spawning'
local locations = require 'DCS-Scripts.utils.locations'

--[[
 What do I want this script to do?

 [1] Take the no go zone into a variable

 [2] Be able to have any aircraft that trespass onto the green zone be escorted
 by TRNC aircraft

--]]


-- [1]
local noGo = {{00053152, -00293470}, {00017400, -00287523},
 {00029323, -00228633}, {00080672, -00112222},
  {00029749, -00228633}, {00006260, -00223009}, {00011106,-00167628}}
