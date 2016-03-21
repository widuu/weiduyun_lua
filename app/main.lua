local pairs = pairs
local app = require('lib.application');
local http_method = ngx.req.get_method()
 -- ngx.header["X-PowerdBy"] = 'widuu';
-- local args = ngx.req.get_uri_args()
-- for key, val in pairs(args) do
-- 	if type(val) == "table" then
-- 	    ngx.say(key, ": ", table.concat(val, ", "))
-- 	else
-- 	    ngx.say(key, ": ", val)
-- 	end
-- end
-- local h = ngx.req.get_headers()
--  for k, v in pairs(h) do
--      ngx.say(k..'-'..v)
--  end
local application = app:new()
application.request:debug('this is info');
application(1)

-- request:new()
-- request:redirect('http://www.widuu.com',nil)
--  -- ngx.log(ngx.INFO,ngx.var.request_uri)
-- ngx.say(ngx.var.uri)
--  ngx.print(ngx.var.args)


-- ngx.say(type(http_args))
-- if string.lower(http_method) == 'get' then
-- 	ngx.say('get method')
	
-- end
--require('app.test')
--[[
local arg = ngx.req.get_uri_args()
for k,v in pairs(arg) do
   ngx.say("[GET]  key:", k, " v:", v)
end
--]]