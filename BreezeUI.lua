-- Breeze UI Library
-- Offcial Code 
-- https://github.com/Kaisorius/BreezeUI
-- Kaiser / Kaisorius
local P=game:GetService("Players")local T=game:GetService("TweenService")local L=P.LocalPlayer local U=Instance.new local D2=UDim2.new local D=UDim.new local V2=Vector2.new local C3=Color3.fromRGB local TI=TweenInfo.new local ES=Enum.EasingStyle local ED=Enum.EasingDirection local B=BreezeUI or{}local F=Font.fromName("Montserrat",Enum.FontWeight.Bold,Enum.FontStyle.Italic)local G=L:WaitForChild("PlayerGui")
local w=C3(162,162,162)local d=C3(84,84,86)local mb=C3(12,12,14)local cb=C3(18,17,22)local sc=C3(33,32,38)local stc=C3(35,34,40)local rn=C3(25,24,30)local tOn=C3(55,54,61)local kOn=C3(190,190,195)local kOff=C3(125,125,130)
local FW,FH,SS=560,440,.85 local SW,SH=FW*SS,FH*SS
local function mk(cls,props,parent)local o=U(cls)for k,v in pairs(props)do o[k]=v end if parent then o.Parent=parent end return o end
local function tw(obj,dur,style,dir,props)local t=T:Create(obj,TI(dur,style,dir),props)t:Play()return t end
function B:CreateWindow(o)
o=o or{}
local W={}
local sg=mk("ScreenGui",{Name="BreezeUI",ResetOnSpawn=false,ZIndexBehavior=Enum.ZIndexBehavior.Sibling},G)
local fr=mk("Frame",{Name="Main",AnchorPoint=V2(.5,.5),BackgroundColor3=mb,BorderSizePixel=0,Position=D2.fromScale(.5,.5),Size=D2(0,560,0,440)},sg)
mk("UISizeConstraint",{MinSize=V2(400,340),MaxSize=V2(650,520)},fr)
mk("UIAspectRatioConstraint",{AspectRatio=560/440},fr)
mk("UICorner",{CornerRadius=D(0,11)},fr)
local st=mk("UIStroke",{Color=sc,Thickness=1.5},fr)
local ti=mk("TextLabel",{BackgroundTransparency=1,FontFace=F,Position=D2(.034,0,.019,0),Size=D2(.528,0,.054,0),Text=o.Name or o.Title or"BreezeUI",TextColor3=w,TextSize=24,TextTruncate=Enum.TextTruncate.AtEnd,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top},fr)
local de=mk("TextLabel",{BackgroundTransparency=1,FontFace=F,Position=D2(.037,0,.079,0),Size=D2(.528,0,.054,0),Text=o.Description or"Simple UI Library",TextColor3=d,TextSize=16,TextTruncate=Enum.TextTruncate.AtEnd,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top},fr)
local f=mk("Frame",{BackgroundTransparency=1,Position=D2(1,-145,0,8),Size=D2(0,135,0,35)},fr)
mk("UIAspectRatioConstraint",{AspectRatio=135/35},f)
mk("UIStroke",{Color=sc,Thickness=1.6},f)
mk("UICorner",{CornerRadius=D(0,12)},f)
local mn=mk("TextButton",{BackgroundColor3=rn,BorderSizePixel=0,FontFace=F,TextSize=24,Position=D2(0,8,0,5),Size=D2(0,55,0,25),Text="-",TextColor3=d,AutoButtonColor=false},f)
mk("UICorner",{CornerRadius=D(0,8)},mn)
local cl=mk("TextButton",{BackgroundColor3=rn,BorderSizePixel=0,FontFace=F,TextSize=24,Position=D2(1,-63,0,5),Size=D2(0,55,0,25),Text="×",TextColor3=d,AutoButtonColor=false},f)
mk("UICorner",{CornerRadius=D(0,8)},cl)
local of=mk("Frame",{BackgroundColor3=mb,Position=D2(.414,0,.034,0),Size=D2(.162,0,.06,0)},sg)
mk("UICorner",{CornerRadius=D(0,12)},of)
mk("UIStroke",{Color=sc,Thickness=1.299},of)
mk("TextLabel",{BackgroundTransparency=1,FontFace=F,TextSize=24,Size=D2(1,0,1,0),Text="Open",TextColor3=w,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center},of)
local ob=mk("TextButton",{BackgroundTransparency=1,Text="",Size=D2(1,0,1,0)},of)
of.Visible=false
mn.MouseButton1Click:Connect(function()
local sh=T:Create(fr,TI(.25,ES.Quint,ED.In),{Size=D2(0,SW,0,SH),BackgroundTransparency=1})
tw(st,.25,ES.Quint,ED.In,{Transparency=1})
tw(ti,.25,ES.Quint,ED.In,{TextTransparency=1})
tw(de,.25,ES.Quint,ED.In,{TextTransparency=1})
sh:Play()sh.Completed:Wait()
fr.Visible=false of.Visible=true
fr.Size=D2(0,FW,0,FH)fr.BackgroundTransparency=0 st.Transparency=0 ti.TextTransparency=0 de.TextTransparency=0
end)
ob.MouseButton1Click:Connect(function()
of.Visible=false fr.Visible=true
fr.Size=D2(0,SW,0,SH)fr.BackgroundTransparency=1 st.Transparency=1 ti.TextTransparency=1 de.TextTransparency=1
tw(fr,.3,ES.Quint,ED.Out,{Size=D2(0,FW,0,FH),BackgroundTransparency=0})
tw(st,.3,ES.Quint,ED.Out,{Transparency=0})
tw(ti,.3,ES.Quint,ED.Out,{TextTransparency=0})
tw(de,.3,ES.Quint,ED.Out,{TextTransparency=0})
end)
local dov=mk("Frame",{Name="DialogOverlay",BackgroundColor3=C3(0,0,0),BackgroundTransparency=1,BorderSizePixel=0,Size=D2(1,0,1,0),Visible=false,ZIndex=50},fr)
local dlg=mk("Frame",{Name="Dialog",AnchorPoint=V2(.5,.5),BackgroundColor3=mb,BorderSizePixel=0,Position=D2(.5,0,.5,0),Size=D2(0,320,0,165),ZIndex=51},dov)
mk("UICorner",{CornerRadius=D(0,11)},dlg)
local ds=mk("UIStroke",{Color=sc,Thickness=1.6},dlg)
local dt=mk("TextLabel",{BackgroundTransparency=1,FontFace=F,Position=D2(0,18,0,15),Size=D2(1,-36,0,28),Text="Close Window?",TextColor3=w,TextSize=20,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=52},dlg)
local dd=mk("TextLabel",{BackgroundTransparency=1,FontFace=F,Position=D2(0,18,0,48),Size=D2(1,-36,0,38),Text="This action cannot be undone.",TextColor3=d,TextSize=14,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=52},dlg)
local cn=mk("TextButton",{BackgroundColor3=rn,BorderSizePixel=0,FontFace=F,Position=D2(0,18,1,-50),Size=D2(0,125,0,34),Text="Cancel",TextColor3=w,TextSize=14,AutoButtonColor=false,ZIndex=52},dlg)
mk("UICorner",{CornerRadius=D(0,8)},cn)
local cf=mk("TextButton",{BackgroundColor3=rn,BorderSizePixel=0,FontFace=F,AnchorPoint=V2(1,0),Position=D2(1,-18,1,-50),Size=D2(0,125,0,34),Text="Close",TextColor3=w,TextSize=14,AutoButtonColor=false,ZIndex=52},dlg)
mk("UICorner",{CornerRadius=D(0,8)},cf)
local dsc=mk("UIScale",{Scale=.85},dlg)
local function openDlg()
dov.Visible=true dsc.Scale=.85 dlg.BackgroundTransparency=1 ds.Transparency=1 dt.TextTransparency=1 dd.TextTransparency=1 cn.BackgroundTransparency=1 cn.TextTransparency=1 cf.BackgroundTransparency=1 cf.TextTransparency=1
tw(dsc,.22,ES.Back,ED.Out,{Scale=1})
tw(dlg,.18,ES.Quad,ED.Out,{BackgroundTransparency=0})
tw(ds,.18,ES.Quad,ED.Out,{Transparency=0})
tw(dt,.2,ES.Quad,ED.Out,{TextTransparency=0})
tw(dd,.2,ES.Quad,ED.Out,{TextTransparency=0})
tw(cn,.2,ES.Quad,ED.Out,{BackgroundTransparency=0,TextTransparency=0})
tw(cf,.2,ES.Quad,ED.Out,{BackgroundTransparency=0,TextTransparency=0})
end
local function closeDlg()
tw(dsc,.16,ES.Quint,ED.In,{Scale=.85})
tw(dlg,.16,ES.Quint,ED.In,{BackgroundTransparency=1})
tw(ds,.16,ES.Quint,ED.In,{Transparency=1})
tw(dt,.16,ES.Quint,ED.In,{TextTransparency=1})
tw(dd,.16,ES.Quint,ED.In,{TextTransparency=1})
tw(cn,.16,ES.Quint,ED.In,{BackgroundTransparency=1,TextTransparency=1})
tw(cf,.16,ES.Quint,ED.In,{BackgroundTransparency=1,TextTransparency=1})
task.wait(.17)dov.Visible=false
end
cl.MouseButton1Click:Connect(openDlg)
cn.MouseButton1Click:Connect(closeDlg)
cf.MouseButton1Click:Connect(function()
closeDlg()
local sh=T:Create(fr,TI(.25,ES.Quint,ED.In),{Size=D2(0,SW,0,SH),BackgroundTransparency=1})
tw(st,.25,ES.Quint,ED.In,{TextTransparency=1})
tw(ti,.25,ES.Quint,ED.In,{TextTransparency=1})
tw(de,.25,ES.Quint,ED.In,{TextTransparency=1})
sh:Play()sh.Completed:Wait()
fr.Visible=false
end)
local tf=mk("ScrollingFrame",{Name="Tabs",BackgroundTransparency=1,BorderSizePixel=0,Position=D2(0,12,0,56),Size=D2(0,155,1,-68),CanvasSize=D2(0,0,0,0),AutomaticCanvasSize=Enum.AutomaticSize.Y,ScrollBarThickness=3,ScrollBarImageTransparency=.4,ScrollingDirection=Enum.ScrollingDirection.Y},fr)
mk("UICorner",{CornerRadius=D(0,9)},tf)
mk("UIStroke",{Color=sc,Thickness=1.4},tf)
mk("UIPadding",{PaddingTop=D(0,8),PaddingBottom=D(0,8),PaddingLeft=D(0,8),PaddingRight=D(0,8)},tf)
mk("UIListLayout",{Padding=D(0,7),HorizontalAlignment=Enum.HorizontalAlignment.Center,SortOrder=Enum.SortOrder.LayoutOrder},tf)
local tabs={}local tc=0
function W:CreateTab(nm)
local Tab={}
tc+=1
local tb=mk("TextButton",{Name=nm.."Tab",BackgroundColor3=stc,BackgroundTransparency=1,BorderSizePixel=0,Size=D2(1,-16,0,40),LayoutOrder=tc,FontFace=F,Text=nm,TextColor3=d,TextSize=15.5,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=false},tf)
mk("UICorner",{CornerRadius=D(0,10)},tb)
local ct=mk("ScrollingFrame",{Name=nm.."Content",BackgroundTransparency=1,BorderSizePixel=0,Position=D2(0,179,0,56),Size=D2(1,-191,1,-68),CanvasSize=D2(0,0,0,0),AutomaticCanvasSize=Enum.AutomaticSize.Y,ScrollBarThickness=3,ScrollBarImageTransparency=.4,ScrollingDirection=Enum.ScrollingDirection.Y,Visible=false},fr)
mk("UIPadding",{PaddingLeft=D(0,3),PaddingRight=D(0,5),PaddingTop=D(0,3),PaddingBottom=D(0,10)},ct)
mk("UIListLayout",{Padding=D(0,8),SortOrder=Enum.SortOrder.LayoutOrder},ct)
tabs[nm]={Button=tb,Content=ct}
local function selectTab()
for _,t in pairs(tabs)do
t.Content.Visible=false
tw(t.Button,.15,ES.Quad,ED.Out,{BackgroundTransparency=1,TextColor3=d})
end
ct.Visible=true
tw(tb,.15,ES.Quad,ED.Out,{BackgroundTransparency=.6,TextColor3=w})
end
tb.MouseButton1Click:Connect(selectTab)
function Tab:Select()selectTab()end
function Tab:Button(o)
o=o or{}
local bo={}
local card=mk("Frame",{Name="ButtonCard",BackgroundColor3=cb,BorderSizePixel=0,Size=D2(1,0,0,58),LayoutOrder=o.LayoutOrder or 1},ct)
mk("UICorner",{CornerRadius=D(0,9)},card)
mk("UIStroke",{Color=sc,Thickness=1.4},card)
mk("TextLabel",{BackgroundTransparency=1,Position=D2(0,14,0,4),Size=D2(1,-105,0,25),FontFace=F,Text=o.Name or"Button",TextColor3=w,TextSize=18,TextXAlignment=Enum.TextXAlignment.Left},card)
mk("TextLabel",{BackgroundTransparency=1,Position=D2(0,14,0,32),Size=D2(1,-105,0,18),FontFace=F,Text=o.Description or"",TextColor3=d,TextSize=14,TextXAlignment=Enum.TextXAlignment.Left},card)
local btn=mk("TextButton",{Name="Run",BackgroundColor3=rn,BorderSizePixel=0,FontFace=F,AnchorPoint=V2(1,.5),Position=D2(1,-10,.5,0),Size=D2(0,60,0,30),Text="Run",TextColor3=w,TextSize=14,AutoButtonColor=true},card)
mk("UICorner",{CornerRadius=D(0,8)},btn)
bo.State=o.State or false bo.Value=bo.State
function bo:GetValue()return bo.Value end
function bo:SetValue(v)bo.State=v bo.Value=v end
btn.MouseButton1Click:Connect(function()
bo.State=true bo.Value=true
if o.Callback then o.Callback(bo.Value)end
end)
return bo
end
function Tab:Toggle(o)
o=o or{}
local tobj={}
local card=mk("Frame",{Name="ToggleCard",BackgroundColor3=cb,BorderSizePixel=0,Size=D2(1,0,0,58),LayoutOrder=o.LayoutOrder or 1},ct)
mk("UICorner",{CornerRadius=D(0,9)},card)
mk("UIStroke",{Color=sc,Thickness=1.4},card)
mk("TextLabel",{BackgroundTransparency=1,Position=D2(0,14,0,4),Size=D2(1,-90,0,25),FontFace=F,Text=o.Name or"Toggle",TextColor3=w,TextSize=18,TextXAlignment=Enum.TextXAlignment.Left},card)
mk("TextLabel",{BackgroundTransparency=1,Position=D2(0,14,0,32),Size=D2(1,-90,0,18),FontFace=F,Text=o.Description or"",TextColor3=d,TextSize=14,TextXAlignment=Enum.TextXAlignment.Left},card)
local tb2=mk("TextButton",{Name="Toggle",BackgroundColor3=rn,BorderSizePixel=0,AnchorPoint=V2(1,.5),Position=D2(1,-10,.5,0),Size=D2(0,48,0,26),Text="",AutoButtonColor=false},card)
mk("UICorner",{CornerRadius=D(1,0)},tb2)
local knob=mk("Frame",{Name="Knob",BackgroundColor3=kOff,BorderSizePixel=0,AnchorPoint=V2(0,.5),Position=D2(0,4,.5,0),Size=D2(0,18,0,18)},tb2)
mk("UICorner",{CornerRadius=D(1,0)},knob)
tobj.Value=o.Default or false tobj.State=tobj.Value
local function upd()
local bg=tobj.Value and tOn or rn
local kc=tobj.Value and kOn or kOff
local pos=tobj.Value and D2(1,-22,.5,0)or D2(0,4,.5,0)
tw(tb2,.2,ES.Quad,ED.Out,{BackgroundColor3=bg})
tw(knob,.2,ES.Quad,ED.Out,{Position=pos,BackgroundColor3=kc})
end
function tobj:GetValue()return tobj.Value end
function tobj:SetValue(v)tobj.Value=v tobj.State=v upd()if o.Callback then o.Callback(v)end end
tb2.MouseButton1Click:Connect(function()
tobj.Value=not tobj.Value tobj.State=tobj.Value upd()
if o.Callback then o.Callback(tobj.Value)end
end)
upd()
return tobj
end
if tc==1 then selectTab()end
return Tab
end
function W:Destroy()sg:Destroy()end
function W:Minimize()if fr.Visible then mn:Activate()end end
function W:Open()if not fr.Visible then ob:Activate()end end
task.defer(function()
fr.Size=D2(0,SW,0,SH)fr.BackgroundTransparency=1 st.Transparency=1 ti.TextTransparency=1 de.TextTransparency=1
tw(fr,.3,ES.Quint,ED.Out,{Size=D2(0,FW,0,FH),BackgroundTransparency=0})
tw(st,.3,ES.Quint,ED.Out,{Transparency=0})
tw(ti,.3,ES.Quint,ED.Out,{TextTransparency=0})
tw(de,.3,ES.Quint,ED.Out,{TextTransparency=0})
end)
return W
end
return B
