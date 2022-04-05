-- base uri: http://127.0.0.1:30120/cfx-api-lib/
local Api = api.create()

-- extended uri: base_uri/hi
Api.route('GET', 'hi', function(params, response)

	-- Response([http status code (number)][, message (string)][, data (table)])
	response(200, (params.to and params.to.." says hi" or "hello"), { mood = "happy" })

end)

-- base_uri/hi?to=grandmom
-- returns "hi, grandson" to 'params.to'

-- base_uri/hi?to=mom
-- returns "hi, son" to 'params.to'

Api.param('to', function(val)

	-- when using params make sure to return some sort of default value
	-- otherwise it will create errors

	return val

end)

-- Fetch testing with the poke api

-- Api.fetch('https://api.github.com/repos/5m1Ly/cfx-api-lib/releases/latest', function(success, response, headers)

-- 	if success then
		
-- 		response = setmetatable(response, { __tostring = tostringMethod })

-- 		print(response)

-- 	end

-- end)
