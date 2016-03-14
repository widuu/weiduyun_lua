local Request = require('lib.request')



local Application = {}

function Application:new()

	local  request = Request:new()
	local  instance = {}
    instance.request = Request

    setmetatable(instance, {
        __index = self,
        __call = self.setConfig
    })

	return instance
end

function Application.setConfig()
	
end

return Application