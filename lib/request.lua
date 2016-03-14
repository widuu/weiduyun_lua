
local Reaquest = {}

function Reaquest:new()
	ngx.say('Reaquest')
	local o = o or {}
	  setmetatable(o, self)
	  self.__index = self
	  return o
end

function Reaquest:redirect(uri,status)
	if type(status) == 'number' and not uri then
		return ngx.redirect(uri, status)
	else
		return ngx.redirect(uri, ngx.HTTP_MOVED_PERMANENTLY)
	end
	
end

function Reaquest:debug(info)
	ngx.log(ngx.ERR,info)
end

return Reaquest