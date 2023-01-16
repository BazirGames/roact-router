local Roact
for _, child in pairs(script.Parent.Parent.Parent:GetChildren()) do
    Roact = child:FindFirstChild("Roact") or child:FindFirstChild("roact")
    if Roact then
        break
    end
end

if not Roact then
    error("Roact Router failed to find Roact. Did you make sure Roact is in the same folder?")
end

if Roact:IsA("Folder") then
    Roact = Roact:FindFirstChild("src") or Roact:FindFirstChildOfClass("ModuleScript")
end

return require(Roact)
