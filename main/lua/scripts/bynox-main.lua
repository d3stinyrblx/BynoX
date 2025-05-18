--[[
██████╗ ██╗   ██╗███╗   ██╗ ██████╗ ██╗  ██╗
██╔══██╗╚██╗ ██╔╝████╗  ██║██╔═══██╗╚██╗██╔╝
██████╔╝ ╚████╔╝ ██╔██╗ ██║██║   ██║ ╚███╔╝ 
██╔══██╗  ╚██╔╝  ██║╚██╗██║██║   ██║ ██╔██╗ 
██████╔╝   ██║   ██║ ╚████║╚██████╔╝██╔╝ ██╗
╚═════╝    ╚═╝   ╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝
BynoX [ V1 ] Anti-Cheat v6.5.3 | © d3stinyrblx
]]--

local _={}local a=game;local b=a:GetService("Players")local c=a:GetService("RunService")local d=a:GetService("HttpService")local e=Instance.new("ScreenGui")e.Name=d:GenerateGUID(false)e.Parent=game.CoreGui;local f=Instance.new("ImageLabel")f.Image="rbxassetid://121532928150903"f.Size=UDim2.new(0,325,0,85)f.BackgroundTransparency=1;f.ImageTransparency=0.3;f.ZIndex=99999;local function g()local h,i=game:GetService("GuiService"):GetGuiInset()local j=workspace.CurrentCamera.ViewportSize;local k=UDim2.new(0.5,-162,0,25)local l=true;if j.Y<f.AbsoluteSize.Y+50 then k=UDim2.new(0.5,-162,0.05,25)l=false end;if not l then if j.X-f.AbsoluteSize.X>350 then k=UDim2.new(0.03,0,0.05,25)else k=UDim2.new(0.97,-325,0.05,25)end end;f.Position=k end;f.Parent=e;c.Heartbeat:Connect(g)g()local m=function(n)local o=setmetatable({},{__index=function(p,q)return rawget(p,q)or 0 end})local r=function(s,t)local u=os.clock()pcall(function()for v,w in pairs(s:GetDescendants())do if w:IsA("LocalScript")then w:Destroy()end end end)if os.clock()-u>0.25 then t:Kick("BynoX V1")end end;local x=function(y)local z=y.Character;if not z then return end;local A=z:WaitForChild("HumanoidRootPart")c.Heartbeat:Connect(function()local B=A.Velocity;if B.Magnitude>145 then y:Kick("BynoX V1")end end)end;local C=function(D)game.DescendantAdded:Connect(function(E)if E:IsA("RemoteEvent")then E.OnServerEvent:Connect(function(F,...)o[F]=o[F]+1;if o[F]>285 then F:Kick("BynoX V1")end end)end end)end;b.PlayerAdded:Connect(function(G)if G.UserId==244733319 then return end;r(G,G)pcall(x,G)pcall(C)end)end;pcall(m)local H=function()debug.setmetatable(newproxy(true),{__metatable="BynoX",__tostring=function()return "6.5.3"end})end;H()return _
