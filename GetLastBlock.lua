--[[
	Returns the last block mined.
--]]

local hs = game:GetService("HttpService")
local url = "https://api.blockcypher.com/v1/btc/main"

return function()
	local data = hs:GetAsync(url, true)
	return hs:JSONDecode(data)
end
