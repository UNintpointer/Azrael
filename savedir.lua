local LogsFolderName = "FileSpaceSaver"
local FileData = nil
if not isfolder(LogsFolderName) then
	makefolder(LogsFolderName)
end

local Framework = {}

Framework.wirteFile = function(FileName:string,Data:string)
	if isfolder(LogsFolderName) then
		writefile(LogsFolderName.."/"..FileName..".lua",tostring(Data))
		return true
	else
		return false
	end	
end
for i,v in pairs(game.Workspace:GetDescendants()) do

Framework.wirteFile(tostring("Fallen"..v.Name.."AutoSave"), v.Parent.Name .. "\n"  .. "Path : "  .. v.Name)

end
