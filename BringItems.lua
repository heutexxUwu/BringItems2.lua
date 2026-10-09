local plrs = game:GetService("Players")
   local wrk = game:GetService("Workspace")
local uis = game:GetService("UserInputService")
     local ts = game:GetService("TweenService")
  local lplr = plrs.LocalPlayer

local sgui = Instance.new("ScreenGui")
   sgui.Name = "TomatoMenu"
  sgui.ResetOnSpawn = false
sgui.Parent = lplr:WaitForChild("PlayerGui")

local openBtn = Instance.new("TextButton")
      openBtn.Size = UDim2.new(0, 120, 0, 40)
  openBtn.Position = UDim2.new(0, 20, 0.65, 0)
    openBtn.Text = "★ Bring"
       openBtn.Font = Enum.Font.SourceSansBold
   openBtn.TextSize = 18
        openBtn.BackgroundColor3 = Color3.fromRGB(240, 248, 255)
  openBtn.TextColor3 = Color3.fromRGB(0, 170, 255)
openBtn.Parent = sgui

   local starCorner = Instance.new("UICorner")
starCorner.CornerRadius = UDim.new(0, 10)
      starCorner.Parent = openBtn

local starStroke = Instance.new("UIStroke")
   starStroke.Thickness = 1.5
 starStroke.Color = Color3.fromRGB(0, 170, 255)
     starStroke.Parent = openBtn

 local mainFrame = Instance.new("Frame")
    mainFrame.Size = UDim2.new(0, 270, 0, 310)
  mainFrame.Position = UDim2.new(0.5, -135, 0.4, -155)
 mainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        mainFrame.BorderSizePixel = 0
mainFrame.Visible = false
    mainFrame.Active = true
  mainFrame.Parent = sgui

 local panelCorner = Instance.new("UICorner")
      panelCorner.CornerRadius = UDim.new(0, 16)
 panelCorner.Parent = mainFrame

local panelStroke = Instance.new("UIStroke")
    panelStroke.Thickness = 2
  panelStroke.Color = Color3.fromRGB(220, 220, 225)
 panelStroke.Parent = mainFrame

   local titleLabel = Instance.new("TextLabel")
 titleLabel.Size = UDim2.new(1, 0, 0, 24)
     titleLabel.Position = UDim2.new(0, 0, 0, 8)
titleLabel.Text = "★ Tomato ★"
   titleLabel.Font = Enum.Font.SourceSansBold
 titleLabel.TextSize = 22
      titleLabel.TextColor3 = Color3.fromRGB(180, 255, 100)
titleLabel.BackgroundTransparency = 1
   titleLabel.Parent = mainFrame

 local katheLabel = Instance.new("TextLabel")
    katheLabel.Size = UDim2.new(1, 0, 0, 16)
  katheLabel.Position = UDim2.new(0, 0, 0, 28)
      katheLabel.Text = "By Käthe"
 katheLabel.Font = Enum.Font.SourceSansBold
    katheLabel.TextSize = 13
  katheLabel.TextColor3 = Color3.fromRGB(255, 0, 127)
   katheLabel.BackgroundTransparency = 1
katheLabel.Parent = mainFrame

 local tabHolder = Instance.new("Frame")
    tabHolder.Size = UDim2.new(1, -20, 0, 28)
  tabHolder.Position = UDim2.new(0, 10, 0, 48)
      tabHolder.BackgroundTransparency = 1
 tabHolder.Parent = mainFrame

  local bringTabBtn = Instance.new("TextButton")
bringTabBtn.Size = UDim2.new(0.48, 0, 1, 0)
    bringTabBtn.Position = UDim2.new(0, 0, 0, 0)
       bringTabBtn.Text = "🍅 Bring"
  bringTabBtn.Font = Enum.Font.SourceSansBold
      bringTabBtn.TextSize = 14
 bringTabBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
    bringTabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
   bringTabBtn.BorderSizePixel = 0
bringTabBtn.Parent = tabHolder

 local tabCorner1 = Instance.new("UICorner")
    tabCorner1.CornerRadius = UDim.new(0, 6)
  tabCorner1.Parent = bringTabBtn

   local tpTabBtn = Instance.new("TextButton")
 tpTabBtn.Size = UDim2.new(0.48, 0, 1, 0)
    tpTabBtn.Position = UDim2.new(0.52, 0, 0, 0)
       tpTabBtn.Text = "🍅 Tp"
  tpTabBtn.Font = Enum.Font.SourceSansBold
     tpTabBtn.TextSize = 14
tpTabBtn.BackgroundColor3 = Color3.fromRGB(225, 242, 255)
   tpTabBtn.TextColor3 = Color3.fromRGB(0, 170, 255)
      tpTabBtn.BorderSizePixel = 0
 tpTabBtn.Parent = tabHolder

  local tabCorner2 = Instance.new("UICorner")
tabCorner2.CornerRadius = UDim.new(0, 6)
   tabCorner2.Parent = tpTabBtn

 local bringPage = Instance.new("Frame")
    bringPage.Size = UDim2.new(1, 0, 1, -80)
  bringPage.Position = UDim2.new(0, 0, 0, 80)
      bringPage.BackgroundTransparency = 1
 bringPage.Visible = true
    bringPage.Parent = mainFrame

  local folderBtn1 = Instance.new("TextButton")
folderBtn1.Size = UDim2.new(0, 210, 0, 32)
    folderBtn1.Position = UDim2.new(0.5, -105, 0, 5)
 folderBtn1.Text = "📁 Select Folder"
     folderBtn1.Font = Enum.Font.SourceSans
folderBtn1.TextSize = 14
    folderBtn1.BackgroundColor3 = Color3.fromRGB(240, 248, 255)
  folderBtn1.TextColor3 = Color3.fromRGB(0, 170, 255)
folderBtn1.BorderSizePixel = 0
   folderBtn1.Parent = bringPage

   local fCorner1 = Instance.new("UICorner")
fCorner1.CornerRadius = UDim.new(0, 8)
      fCorner1.Parent = folderBtn1

local folderContainer1 = Instance.new("Frame")
   folderContainer1.Size = UDim2.new(0, 210, 0, 110)
 folderContainer1.Position = UDim2.new(0.5, -105, 0, 39)
     folderContainer1.BackgroundColor3 = Color3.fromRGB(248, 252, 255)
folderContainer1.BorderSizePixel = 0
   folderContainer1.Visible = false
 folderContainer1.ZIndex = 15
      folderContainer1.Parent = bringPage

  local fcCorner1 = Instance.new("UICorner")
fcCorner1.CornerRadius = UDim.new(0, 8)
    fcCorner1.Parent = folderContainer1

 local folderSearch1 = Instance.new("TextBox")
    folderSearch1.Size = UDim2.new(1, -10, 0, 24)
  folderSearch1.Position = UDim2.new(0, 5, 0, 5)
      folderSearch1.PlaceholderText = "Search Folder..."
 folderSearch1.Text = ""
    folderSearch1.Font = Enum.Font.SourceSans
  folderSearch1.TextSize = 13
      folderSearch1.BackgroundColor3 = Color3.fromRGB(230, 245, 255)
 folderSearch1.TextColor3 = Color3.fromRGB(0, 140, 220)
    folderSearch1.BorderSizePixel = 0
 folderSearch1.ZIndex = 16
    folderSearch1.Parent = folderContainer1

  local fsCorner1 = Instance.new("UICorner")
fsCorner1.CornerRadius = UDim.new(0, 6)
   fsCorner1.Parent = folderSearch1

local folderScroll1 = Instance.new("ScrollingFrame")
   folderScroll1.Size = UDim2.new(1, 0, 1, -34)
 folderScroll1.Position = UDim2.new(0, 0, 0, 34)
     folderScroll1.BackgroundTransparency = 1
folderScroll1.BorderSizePixel = 0
   folderScroll1.CanvasSize = UDim2.new(0, 0, 0, 0)
 folderScroll1.ScrollBarThickness = 5
      folderScroll1.ZIndex = 16
folderScroll1.Parent = folderContainer1

  local folderLayout1 = Instance.new("UIListLayout")
folderLayout1.Parent = folderScroll1
    folderLayout1.Padding = UDim.new(0, 2)

 local itemBtn1 = Instance.new("TextButton")
    itemBtn1.Size = UDim2.new(0, 210, 0, 32)
  itemBtn1.Position = UDim2.new(0.5, -105, 0, 45)
      itemBtn1.Text = "★ Select Item"
 itemBtn1.Font = Enum.Font.SourceSans
    itemBtn1.TextSize = 14
  itemBtn1.BackgroundColor3 = Color3.fromRGB(240, 248, 255)
   itemBtn1.TextColor3 = Color3.fromRGB(0, 170, 255)
itemBtn1.BorderSizePixel = 0
   itemBtn1.Parent = bringPage

  local iCorner1 = Instance.new("UICorner")
iCorner1.CornerRadius = UDim.new(0, 8)
    iCorner1.Parent = itemBtn1

 local itemContainer1 = Instance.new("Frame")
    itemContainer1.Size = UDim2.new(0, 210, 0, 110)
  itemContainer1.Position = UDim2.new(0.5, -105, 0, 79)
      itemContainer1.BackgroundColor3 = Color3.fromRGB(248, 252, 255)
 itemContainer1.BorderSizePixel = 0
    itemContainer1.Visible = false
 itemContainer1.ZIndex = 13
    itemContainer1.Parent = bringPage

  local icCorner1 = Instance.new("UICorner")
icCorner1.CornerRadius = UDim.new(0, 8)
   icCorner1.Parent = itemContainer1

local itemSearch1 = Instance.new("TextBox")
   itemSearch1.Size = UDim2.new(1, -10, 0, 24)
 itemSearch1.Position = UDim2.new(0, 5, 0, 5)
     itemSearch1.PlaceholderText = "Search Item..."
itemSearch1.Text = ""
   itemSearch1.Font = Enum.Font.SourceSans
 itemSearch1.TextSize = 13
      itemSearch1.BackgroundColor3 = Color3.fromRGB(230, 245, 255)
itemSearch1.TextColor3 = Color3.fromRGB(0, 140, 220)
   itemSearch1.BorderSizePixel = 0
 itemSearch1.ZIndex = 14
      itemSearch1.Parent = itemContainer1

  local isCorner1 = Instance.new("UICorner")
isCorner1.CornerRadius = UDim.new(0, 6)
    isCorner1.Parent = itemSearch1

 local itemScroll1 = Instance.new("ScrollingFrame")
    itemScroll1.Size = UDim2.new(1, 0, 1, -34)
  itemScroll1.Position = UDim2.new(0, 0, 0, 34)
      itemScroll1.BackgroundTransparency = 1
 itemScroll1.BorderSizePixel = 0
    itemScroll1.CanvasSize = UDim2.new(0, 0, 0, 0)
 itemScroll1.ScrollBarThickness = 5
    itemScroll1.ZIndex = 14
 itemScroll1.Parent = itemContainer1

  local itemLayout1 = Instance.new("UIListLayout")
itemLayout1.Parent = itemScroll1
   itemLayout1.Padding = UDim.new(0, 2)

local bringBtn = Instance.new("TextButton")
      bringBtn.Size = UDim2.new(0, 210, 0, 36)
  bringBtn.Position = UDim2.new(0.5, -105, 0, 105)
    bringBtn.Text = "Bring Item"
       bringBtn.Font = Enum.Font.SourceSansBold
   bringBtn.TextSize = 16
        bringBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
  bringBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 127)
bringBtn.BorderSizePixel = 0
     bringBtn.Parent = bringPage

   local bCorner1 = Instance.new("UICorner")
bCorner1.CornerRadius = UDim.new(0, 10)
      bCorner1.Parent = bringBtn

 local warnLabel = Instance.new("TextLabel")
    warnLabel.Size = UDim2.new(0, 210, 0, 16)
  warnLabel.Position = UDim2.new(0.5, -105, 0, 147)
      warnLabel.Text = "warning ts might lag yo pc frfr no cap bruh"
 warnLabel.Font = Enum.Font.SourceSansBold
    warnLabel.TextSize = 11
  warnLabel.TextColor3 = Color3.fromRGB(180, 255, 100)
   warnLabel.BackgroundTransparency = 1
warnLabel.Parent = bringPage

  local bringAllBtn = Instance.new("TextButton")
bringAllBtn.Size = UDim2.new(0, 210, 0, 36)
    bringAllBtn.Position = UDim2.new(0.5, -105, 0, 169)
       bringAllBtn.Text = "Bring All"
  bringAllBtn.Font = Enum.Font.SourceSansBold
      bringAllBtn.TextSize = 16
 bringAllBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    bringAllBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
   bringAllBtn.BorderSizePixel = 0
bringAllBtn.Parent = bringPage

 local baCorner = Instance.new("UICorner")
    baCorner.CornerRadius = UDim.new(0, 10)
  baCorner.Parent = bringAllBtn

   local tpPage = Instance.new("Frame")
 tpPage.Size = UDim2.new(1, 0, 1, -80)
    tpPage.Position = UDim2.new(0, 0, 0, 80)
       tpPage.BackgroundTransparency = 1
  tpPage.Visible = false
     tpPage.Parent = mainFrame

  local folderBtn2 = Instance.new("TextButton")
folderBtn2.Size = UDim2.new(0, 210, 0, 32)
    folderBtn2.Position = UDim2.new(0.5, -105, 0, 5)
 folderBtn2.Text = "📁 Select Folder"
     folderBtn2.Font = Enum.Font.SourceSans
folderBtn2.TextSize = 14
    folderBtn2.BackgroundColor3 = Color3.fromRGB(240, 248, 255)
  folderBtn2.TextColor3 = Color3.fromRGB(0, 170, 255)
folderBtn2.BorderSizePixel = 0
   folderBtn2.Parent = tpPage

   local fCorner2 = Instance.new("UICorner")
fCorner2.CornerRadius = UDim.new(0, 8)
      fCorner2.Parent = folderBtn2

local folderContainer2 = Instance.new("Frame")
   folderContainer2.Size = UDim2.new(0, 210, 0, 110)
 folderContainer2.Position = UDim2.new(0.5, -105, 0, 39)
     folderContainer2.BackgroundColor3 = Color3.fromRGB(248, 252, 255)
folderContainer2.BorderSizePixel = 0
   folderContainer2.Visible = false
 folderContainer2.ZIndex = 15
      folderContainer2.Parent = tpPage

  local fcCorner2 = Instance.new("UICorner")
fcCorner2.CornerRadius = UDim.new(0, 8)
    fcCorner2.Parent = folderContainer2

 local folderSearch2 = Instance.new("TextBox")
    folderSearch2.Size = UDim2.new(1, -10, 0, 24)
  folderSearch2.Position = UDim2.new(0, 5, 0, 5)
      folderSearch2.PlaceholderText = "Search Folder..."
 folderSearch2.Text = ""
    folderSearch2.Font = Enum.Font.SourceSans
  folderSearch2.TextSize = 13
      folderSearch2.BackgroundColor3 = Color3.fromRGB(230, 245, 255)
 folderSearch2.TextColor3 = Color3.fromRGB(0, 140, 220)
    folderSearch2.BorderSizePixel = 0
 folderSearch2.ZIndex = 16
    folderSearch2.Parent = folderContainer2

  local fsCorner2 = Instance.new("UICorner")
fsCorner2.CornerRadius = UDim.new(0, 6)
   fsCorner2.Parent = folderSearch2

local folderScroll2 = Instance.new("ScrollingFrame")
   folderScroll2.Size = UDim2.new(1, 0, 1, -34)
 folderScroll2.Position = UDim2.new(0, 0, 0, 34)
     folderScroll2.BackgroundTransparency = 1
folderScroll2.BorderSizePixel = 0
   folderScroll2.CanvasSize = UDim2.new(0, 0, 0, 0)
 folderScroll2.ScrollBarThickness = 5
      folderScroll2.ZIndex = 16
folderScroll2.Parent = folderContainer2

  local folderLayout2 = Instance.new("UIListLayout")
folderLayout2.Parent = folderScroll2
    folderLayout2.Padding = UDim.new(0, 2)

 local itemBtn2 = Instance.new("TextButton")
    itemBtn2.Size = UDim2.new(0, 210, 0, 32)
  itemBtn2.Position = UDim2.new(0.5, -105, 0, 45)
      itemBtn2.Text = "★ Select Item"
 itemBtn2.Font = Enum.Font.SourceSans
    itemBtn2.TextSize = 14
  itemBtn2.BackgroundColor3 = Color3.fromRGB(240, 248, 255)
   itemBtn2.TextColor3 = Color3.fromRGB(0, 170, 255)
itemBtn2.BorderSizePixel = 0
   itemBtn2.Parent = tpPage

  local iCorner2 = Instance.new("UICorner")
iCorner2.CornerRadius = UDim.new(0, 8)
    iCorner2.Parent = itemBtn2

 local itemContainer2 = Instance.new("Frame")
    itemContainer2.Size = UDim2.new(0, 210, 0, 110)
  itemContainer2.Position = UDim2.new(0.5, -105, 0, 79)
      itemContainer2.BackgroundColor3 = Color3.fromRGB(248, 252, 255)
 itemContainer2.BorderSizePixel = 0
    itemContainer2.Visible = false
 itemContainer2.ZIndex = 13
    itemContainer2.Parent = tpPage

  local icCorner2 = Instance.new("UICorner")
icCorner2.CornerRadius = UDim.new(0, 8)
   icCorner2.Parent = itemContainer2

local itemSearch2 = Instance.new("TextBox")
   itemSearch2.Size = UDim2.new(1, -10, 0, 24)
 itemSearch2.Position = UDim2.new(0, 5, 0, 5)
     itemSearch2.PlaceholderText = "Search Item..."
itemSearch2.Text = ""
   itemSearch2.Font = Enum.Font.SourceSans
 itemSearch2.TextSize = 13
      itemSearch2.BackgroundColor3 = Color3.fromRGB(230, 245, 255)
itemSearch2.TextColor3 = Color3.fromRGB(0, 140, 220)
   itemSearch2.BorderSizePixel = 0
 itemSearch2.ZIndex = 14
      itemSearch2.Parent = itemContainer2

  local isCorner2 = Instance.new("UICorner")
isCorner2.CornerRadius = UDim.new(0, 6)
    isCorner2.Parent = itemSearch2

 local itemScroll2 = Instance.new("ScrollingFrame")
    itemScroll2.Size = UDim2.new(1, 0, 1, -34)
  itemScroll2.Position = UDim2.new(0, 0, 0, 34)
      itemScroll2.BackgroundTransparency = 1
 itemScroll2.BorderSizePixel = 0
    itemScroll2.CanvasSize = UDim2.new(0, 0, 0, 0)
 itemScroll2.ScrollBarThickness = 5
    itemScroll2.ZIndex = 14
 itemScroll2.Parent = itemContainer2

  local itemLayout2 = Instance.new("UIListLayout")
itemLayout2.Parent = itemScroll2
   itemLayout2.Padding = UDim.new(0, 2)

local tpBtn = Instance.new("TextButton")
      tpBtn.Size = UDim2.new(0, 210, 0, 42)
  tpBtn.Position = UDim2.new(0.5, -105, 0, 120)
    tpBtn.Text = "Teleport"
       tpBtn.Font = Enum.Font.SourceSansBold
   tpBtn.TextSize = 18
        tpBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
  tpBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
tpBtn.BorderSizePixel = 0
     tpBtn.Parent = tpPage

   local tpCorner = Instance.new("UICorner")
tpCorner.CornerRadius = UDim.new(0, 10)
      tpCorner.Parent = tpBtn

local currentScanId = 0

 local function closeAllContainers()
    currentScanId = currentScanId + 1
       folderContainer1.Visible = false
  itemContainer1.Visible = false
       folderContainer2.Visible = false
  itemContainer2.Visible = false
end

  bringTabBtn.MouseButton1Click:Connect(function()
bringPage.Visible = true
      tpPage.Visible = false
  closeAllContainers()
      bringTabBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
  bringTabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
       tpTabBtn.BackgroundColor3 = Color3.fromRGB(225, 242, 255)
   tpTabBtn.TextColor3 = Color3.fromRGB(0, 170, 255)
end)

   tpTabBtn.MouseButton1Click:Connect(function()
bringPage.Visible = false
      tpPage.Visible = true
  closeAllContainers()
      bringTabBtn.BackgroundColor3 = Color3.fromRGB(225, 242, 255)
  bringTabBtn.TextColor3 = Color3.fromRGB(0, 170, 255)
       tpTabBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
   tpTabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
end)

  openBtn.MouseButton1Click:Connect(function()
mainFrame.Visible = not mainFrame.Visible
      if not mainFrame.Visible then closeAllContainers() end
end)

   local function enableDrag(element)
local dragging, dragInput, dragStart, startPos
      element.InputBegan:Connect(function(input)
  if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
         dragging = true
     dragStart = input.Position
            startPos = element.Position
  input.Changed:Connect(function()
       if input.UserInputState == Enum.UserInputState.End then dragging = false end
  end)
  end
  end)
      element.InputChanged:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
   end
  end)
uis.InputChanged:Connect(function(input)
     if input == dragInput and dragging then
        local delta = input.Position - dragStart
          element.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
     end
end)
end

 enableDrag(mainFrame)
enableDrag(openBtn)

  local folderBring, itemBring
 local folderTp, itemTp

local function filterList(searchBox, scroll)
      local query = string.lower(searchBox.Text)
  for _, child in pairs(scroll:GetChildren()) do
       if child:IsA("TextButton") then
    if query == "" or string.find(string.lower(child.Text), query, 1, true) then
       child.Visible = true
    else
       child.Visible = false
    end
       end
  end
      scroll.CanvasSize = UDim2.new(0, 0, 0, scroll.UIListLayout.AbsoluteContentSize.Y)
end

 folderSearch1:GetPropertyChangedSignal("Text"):Connect(function() filterList(folderSearch1, folderScroll1) end)
itemSearch1:GetPropertyChangedSignal("Text"):Connect(function() filterList(itemSearch1, itemScroll1) end)
 folderSearch2:GetPropertyChangedSignal("Text"):Connect(function() filterList(folderSearch2, folderScroll2) end)
itemSearch2:GetPropertyChangedSignal("Text"):Connect(function() filterList(itemSearch2, itemScroll2) end)

 local function populateFolders(scroll, container, btn, isTp)
    currentScanId = currentScanId + 1
  local myScanId = currentScanId
	
      for _, c in pairs(scroll:GetChildren()) do
   if c:IsA("TextButton") then c:Destroy() end
      end
	
  local allDescendants = wrk:GetDescendants()
       local count = 0
	
    task.spawn(function()
  for i = 1, #allDescendants do
       if myScanId ~= currentScanId then break end
		
       local obj = allDescendants[i]
   if obj:IsA("Folder") then
        count = count + 1
			
        local b = Instance.new("TextButton")
        b.Size = UDim2.new(1, -6, 0, 24)
        b.Text = obj.Name
        b.Font = Enum.Font.SourceSans
        b.TextSize = 13
        b.BackgroundColor3 = Color3.fromRGB(230, 245, 255)
        b.TextColor3 = Color3.fromRGB(0, 140, 220)
        b.BorderSizePixel = 0
        b.ZIndex = 17
        b.Parent = scroll
			
        local c = Instance.new("UICorner")
        c.CornerRadius = UDim.new(0, 6)
        c.Parent = b
			
        b.MouseButton1Click:Connect(function()
           btn.Text = "📁 " .. obj.Name
           container.Visible = false
           if isTp then
              folderTp = obj
              itemTp = nil
              itemBtn2.Text = "★ Select Item"
           else
              folderBring = obj
              itemBring = nil
              itemBtn1.Text = "★ Select Item"
           end
        end)
			
        if count % 25 == 0 then
           scroll.CanvasSize = UDim2.new(0, 0, 0, scroll.UIListLayout.AbsoluteContentSize.Y)
           task.wait()
        end
   end
  end
       if myScanId == currentScanId then
          scroll.CanvasSize = UDim2.new(0, 0, 0, scroll.UIListLayout.AbsoluteContentSize.Y)
       end
    end)
end

  local function populateItems(folder, scroll, container, btn, isTp)
    currentScanId = currentScanId + 1
  local myScanId = currentScanId
	
      for _, c in pairs(scroll:GetChildren()) do
   if c:IsA("TextButton") then c:Destroy() end
      end
	
  if not folder then
       btn.Text = "Select Folder first!"
   return
  end
	
      local folderChildren = folder:GetChildren()
  local count = 0
	
    task.spawn(function()
  for i = 1, #folderChildren do
       if myScanId ~= currentScanId then break end
		
       local obj = folderChildren[i]
   count = count + 1
		
        local b = Instance.new("TextButton")
        b.Size = UDim2.new(1, -6, 0, 24)
        b.Text = obj.Name .. " [" .. obj.ClassName .. "]"
        b.Font = Enum.Font.SourceSans
        b.TextSize = 13
        b.BackgroundColor3 = Color3.fromRGB(230, 245, 255)
        b.TextColor3 = Color3.fromRGB(0, 140, 220)
        b.BorderSizePixel = 0
        b.ZIndex = 15
        b.Parent = scroll
		
        local c = Instance.new("UICorner")
        c.CornerRadius = UDim.new(0, 6)
        c.Parent = b
		
        b.MouseButton1Click:Connect(function()
           btn.Text = "★ " .. obj.Name
           container.Visible = false
           if isTp then itemTp = obj else itemBring = obj end
        end)
		
        if count % 25 == 0 then
           scroll.CanvasSize = UDim2.new(0, 0, 0, scroll.UIListLayout.AbsoluteContentSize.Y)
           task.wait()
        end
  end
       if myScanId == currentScanId then
          scroll.CanvasSize = UDim2.new(0, 0, 0, scroll.UIListLayout.AbsoluteContentSize.Y)
       end
    end)
end

 folderBtn1.MouseButton1Click:Connect(function()
closeAllContainers()
      folderContainer1.Visible = true
  folderSearch1.Text = ""
      populateFolders(folderScroll1, folderContainer1, folderBtn1, false)
end)

   itemBtn1.MouseButton1Click:Connect(function()
closeAllContainers()
      itemContainer1.Visible = true
  itemSearch1.Text = ""
      populateItems(folderBring, itemScroll1, itemContainer1, itemBtn1, false)
end)

 folderBtn2.MouseButton1Click:Connect(function()
closeAllContainers()
      folderContainer2.Visible = true
  folderSearch2.Text = ""
      populateFolders(folderScroll2, folderContainer2, folderBtn2, true)
end)

   itemBtn2.MouseButton1Click:Connect(function()
closeAllContainers()
      itemContainer2.Visible = true
  itemSearch2.Text = ""
      populateItems(folderTp, itemScroll2, itemContainer2, itemBtn2, true)
end)

  bringBtn.MouseButton1Click:Connect(function()
if not itemBring or not itemBring.Parent then return end
      local chr = lplr.Character
  if chr and chr:FindFirstChild("HumanoidRootPart") then
       local pos = chr.HumanoidRootPart.CFrame * CFrame.new(0, 0, -5)
   if itemBring:IsA("BasePart") then
        itemBring.CFrame = pos
   elseif itemBring:IsA("Model") or itemBring:IsA("Tool") then
        if itemBring.PrimaryPart then itemBring:SetPrimaryPartCFrame(pos) else itemBring:PivotTo(pos) end
   end
  end
end)

   bringAllBtn.MouseButton1Click:Connect(function()
if not folderBring then return end
      local chr = lplr.Character
  if not chr or not chr:FindFirstChild("HumanoidRootPart") then return end
      local count = 0
  for _, obj in pairs(folderBring:GetChildren()) do
       local pos = chr.HumanoidRootPart.CFrame * CFrame.new(0, 0, -5)
   if obj:IsA("BasePart") then
        obj.CFrame = pos
        count = count + 1
   elseif obj:IsA("Model") or obj:IsA("Tool") then
        if obj.PrimaryPart then obj:SetPrimaryPartCFrame(pos) else obj:PivotTo(pos) end
        count = count + 1
   end
   if count % 20 == 0 then task.wait() end
  end
end)

  tpBtn.MouseButton1Click:Connect(function()
if not itemTp or not itemTp.Parent then return end
      local chr = lplr.Character
  if chr and chr:FindFirstChild("HumanoidRootPart") then
       local hrp = chr.HumanoidRootPart
   local targetCFrame = nil
		
   if itemTp:IsA("BasePart") then
        targetCFrame = itemTp.CFrame
   elseif itemTp:IsA("Model") then
        targetCFrame = itemTp:GetPivot()
   elseif itemTp:IsA("Tool") and itemTp:FindFirstChild("Handle") then
        targetCFrame = itemTp.Handle.CFrame
   end
		
   if targetCFrame then
        local destination = targetCFrame * CFrame.new(0, 0, 3)
        local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local tween = ts:Create(hrp, tweenInfo, {CFrame = destination})
        tween:Play()
   end
  end
end)
