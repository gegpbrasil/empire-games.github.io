________________Local Script dentro da Screen Gui
local RE = game.ReplicatedStorage:WaitForChild("AuraFeedback")
local label = script.Parent.TextLabel

RE.OnClientEvent:Connect(function(amount)
    label.Text = "+"..amount.."AURA!"
    label.Visible = true
    label.TextTransparency = 0

  for i = 0, 1, 0.1 do
      label.TextTransparency = i
      task.wait(0.05)
    end
  label.Visible = false
  end)

-------> Certifique-se de criar um RemoteEvent na pasta ReplicatedStorage com o nome AuraFeedback para que o script de combate consiga "falar"
