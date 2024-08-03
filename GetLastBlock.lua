--[[
	Returns the last block mined.
	PreviousBlock["data"]["hash"]
--]]

local hs = game:GetService("HttpService")
--local url = "http://btc.blockr.io/api/v1/block/info/last"
local url = "https://api.blockcypher.com/v1/btc/main"

return function()
	local data = hs:GetAsync(url, true)
	return hs:JSONDecode(data)
end
