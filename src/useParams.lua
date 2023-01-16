local RouteContext = require(script.Parent.RouteContext)
local hooks = require(script.Parent.hooks)

local function useParams()
	local context = hooks.useContext(RouteContext)
	assert(context, "useParams must be used inside of a Route")
	return context.match
end

return useParams