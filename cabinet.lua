local j = require "json"
local cabinet = {}
local fname, defdir = "c_.json", system.DocumentsDirectory

local rj = function(fname, dir)
  local t_, f = {}, io.open(system.pathForFile(fname, dir), "r")
  if not f then return end
  t_ = j.decode(f:read("*a"))
  io.close(f)
  return t_
end

local wj = function(t_, fname, dir)
  local f = io.open(system.pathForFile(fname, dir), "w")
  if not f then return end
  f:write(j.encode(t_))
  io.close(f)
end

local t = rj(fname, defdir) or {}

cabinet.set = function(k, v)
  t[k] = v
  wj(t, fname, defdir)
end

cabinet.get = function(k)
  return t[k]
end

cabinet.del = function(k)
  t[k] = nil
  wj(t, fname, defdir)
end

cabinet.clr = function()
  t = {}
  wj(t, fname, defdir)
end

return cabinet
