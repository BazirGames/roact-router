local RouterContext = require(script.Parent.RouterContext)
local hooks = require(script.Parent.hooks)

local function useLocation()
	local context = hooks.useContext(RouterContext)
	return context.location
end

return useLocation