--[[

  Cabinet v1.1 | MIT | github.com/wavalab/corona-cabinet
  Save/retrieve Tables, Numbers, Strings & Booleans via persistent JSON file.

--]]

local j = require "json"

local cabinet = {}

local function rj(fname, dir)
  local t, f = {}, io.open(system.pathForFile(fname, dir), "r")
  if not f then return end
  t = j.decode(f:read("*a"))
  io.close(f)
  return t
end

local function wj(t, fname, dir)
  local f = io.open(system.pathForFile(fname, dir), "w")
  if not f then return end
  f:write(j.encode(t))
  io.close(f)
end

local f = "cabinet.json"
local d = system.DocumentsDirectory
local t = rj(f, d) or {}

function cabinet.set(k, v)
  t[k] = v
  wj(t, f, d)
end

function cabinet.get(k)
  return t[k]
end

function cabinet.remove(k)
  t[k] = nil
  wj(t, f, d)
end

function cabinet.clear()
  t = {}
  wj(t, f, d)
end

return cabinet
