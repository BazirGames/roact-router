local RouterContext = require(script.Parent.RouterContext)
local hooks = require(script.Parent.hooks)

local function useHistory()
	local context = hooks.useContext(RouterContext)
	return context.history
end

return useHistory