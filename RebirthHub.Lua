spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        if _G.Noclip or _G.AutoFarm then
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
            setfflag("HumanoidParallelRemoveNoPhysics", "False")
            setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
            end
        end
    end)
end)

function click()
   game:GetService'VirtualUser':CaptureController()
   game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end


 function TP(P)
    Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 250 then
       Speed = 1000
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
    elseif Distance < 1000 then
       Speed = 300
    end
    game:GetService("TweenService"):Create(
    game.Players.LocalPlayer.Character.HumanoidRootPart,
    TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
    {CFrame = P}
    ):Play()
 end




local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/lime"))()

local w = Library:Window("Rebirth Hub | Project Menacing")



w:Toggle("Auto Pick Item", function(v)
   _G.AutoPick = v
   while _G.AutoPick do wait()
       for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
           if v:IsA("MeshPart") then
               local Rootpart = game.Players.LocalPlayer.Character.HumanoidRootPart
               Rootpart.CFrame = v.CFrame
               fireproximityprompt(v.ProximityPrompt)
            end
        end
    end
end)


w:Toggle("Anti AFK", function(v)
    _G.AntiAFK = v
    while _G.AntiAFK do wait()
        local bb = game:GetService("VirtualUser")
        bb:CaptureController()bb:ClickButton2(Vector2.new())
    end
end)
