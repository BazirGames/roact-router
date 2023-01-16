local roact_hooked
for _, child in pairs(script.Parent.Parent.Parent:GetChildren()) do
    roact_hooked = child:FindFirstChild("Roact-hooked") or child:FindFirstChild("roact-hooked")
    if roact_hooked then
        break
    end
end

if not roact_hooked then
    error("Roact Router failed to find Roact-hooked. Did you make sure Roact-hooked is in the same folder?")
end

if roact_hooked:IsA("Folder") then
    roact_hooked = roact_hooked:FindFirstChild("src") or roact_hooked:FindFirstChildOfClass("ModuleScript")
end

return require(roact_hooked)
