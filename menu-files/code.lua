/*
*
*    
  _______          __     _   _ _       ____             _       _                  
 |_   _\ \        / /\   | \ | ( )     |  _ \           | |     | |                 
   | |  \ \  /\  / /  \  |  \| |/ ___  | |_) | __ _  ___| | ____| | ___   ___  _ __ 
   | |   \ \/  \/ / /\ \ | . ` | / __| |  _ < / _` |/ __| |/ / _` |/ _ \ / _ \| '__|
  _| |_   \  /\  / ____ \| |\  | \__ \ | |_) | (_| | (__|   < (_| | (_) | (_) | |   
 |_____|   \/  \/_/    \_\_| \_| |___/ |____/ \__,_|\___|_|\_\__,_|\___/ \___/|_|   
 |  \/  |                                                                           
 | \  / | ___ _ __  _   _                                                           
 | |\/| |/ _ \ '_ \| | | |                                                          
 | |  | |  __/ | | | |_| |                                                          
 |_|  |_|\___|_| |_|\__,_|                                                          
                                                                                    
                                                                                    

*
*  Lua Script created and developed by Iwan/VierlochStute
*/

/*
*   Discord: VierlochStute#0708
*
*   Iwan's Backdoor Menu

	Ihr Nuttensöhne blyat!
*/


print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
MsgC (Color(math.random(1,25),math.random(1,25),math.random(1,25)), [[
                                     
                                     
                                     
                                     

     _____     _        __ _      _              _      _              __  __       _   _            
    |_   _|   | |      / _(_)    | |            | |    (_)            |  \/  |     | | | |           
      | |  ___| |__   | |_ _  ___| | _____    __| | ___ _ _ __   ___  | \  / |_   _| |_| |_ ___ _ __ 
      | | / __| '_ \  |  _| |/ __| |/ / _ \  / _` |/ _ \ | '_ \ / _ \ | |\/| | | | | __| __/ _ \ '__|
     _| || (__| | | | | | | | (__|   <  __/ | (_| |  __/ | | | |  __/ | |  | | |_| | |_| ||  __/ |   
    |_____\___|_| |_| |_| |_|\___|_|\_\___|  \__,_|\___|_|_| |_|\___| |_|  |_|\__,_|\__|\__\___|_|   
                                                                                                     
    Made by Iwan/VierlochStute                                                                                                 
             
                              
                          ]])      

print("\n")
print("Iwan's Backdoor Menu --> Loaded Version 1.0 ")
print("\n")
MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 272, 13, 161 ), "CONSOLE COMMANDS:\n" )
print("\n")
MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 0, 255, 0 ), "start_menu - Starts the main menu with some basic cheats\n" )
print("\n")
MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 0, 255, 0 ), "check_libs - Searches for ULX Libs and DarkRP Utilities\n" )
print("\n")
MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 0, 255, 0 ), "check_anticheat - Searches for AntiCheats\n" )
print("\n")
MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 0, 255, 0 ), "player_list - Searches for Players\n" )
print("\n")
MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 0, 255, 0 ), "get_information [player] - Gives you specific information about the player\n" )
print("\n")
print("-----------------------------------------------------------------------")
print("\n")
MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 272, 13, 161 ), "CHAT COMMANDS:\n" )
print("\n")
MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 0, 255, 0 ), "/startmenu - Starts the main menu with some basic cheats\n" )
print("\n")
MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 0, 255, 0 ), "/checklibs - Searches for ULX Libs and DarkRP Utilities\n" )
print("\n")
MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 0, 255, 0 ), "/checkanticheat - Searches for AntiCheats\n" )
print("\n")
MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 0, 255, 0 ), "/playerlist - Searches for Players\n" )
print("\n")
MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 0, 255, 0 ), "/esp - Activates/Deactivates ESP Function\n" )
print("\n")
MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 0, 255, 0 ), "/bunnyhop - Activates/Deactivates Bunnyhopping Function\n" )


--Some shit vars
espa = false
bunnyhopa = false

--menuopened
menuopen = false
espopsopen = false

--espchecks
showhealth = true
showname = true

--ESP Colors
espr = 0
espg = 255
espb = 0


--POS for ESP
function CreatePos( e )
	local ply = LocalPlayer()
	local center = e:LocalToWorld( e:OBBCenter() )
	local min, max = e:OBBMins(), e:OBBMaxs()
	local dim = max - min
	local z = max + min
	
	local frt	= ( e:GetForward() ) * ( dim.y / 2 )
	local rgt	= ( e:GetRight() ) * ( dim.x / 2 )
	local top	= ( e:GetUp() ) * ( dim.z / 2 )
	local bak	= ( e:GetForward() * -1 ) * ( dim.y / 2 )
	local lft	= ( e:GetRight() * -1 ) * ( dim.x / 2 )
	local btm	= ( e:GetUp() * -1 ) * ( dim.z / 2 )
	
	local FRT 	= center + frt + rgt + top; FRT = FRT:ToScreen()
	local BLB 	= center + bak + lft + btm; BLB = BLB:ToScreen()
	local FLT	= center + frt + lft + top; FLT = FLT:ToScreen()
	local BRT 	= center + bak + rgt + top; BRT = BRT:ToScreen()
	local BLT 	= center + bak + lft + top; BLT = BLT:ToScreen()
	local FRB 	= center + frt + rgt + btm; FRB = FRB:ToScreen()
	local FLB 	= center + frt + lft + btm; FLB = FLB:ToScreen()
	local BRB 	= center + bak + rgt + btm; BRB = BRB:ToScreen()
	
	local maxX = math.max( FRT.x,BLB.x,FLT.x,BRT.x,BLT.x,FRB.x,FLB.x,BRB.x )
	local minX = math.min( FRT.x,BLB.x,FLT.x,BRT.x,BLT.x,FRB.x,FLB.x,BRB.x )
	local maxY = math.max( FRT.y,BLB.y,FLT.y,BRT.y,BLT.y,FRB.y,FLB.y,BRB.y)
	local minY = math.min( FRT.y,BLB.y,FLT.y,BRT.y,BLT.y,FRB.y,FLB.y,BRB.y )
	
	return maxX, minX, maxY, minY
end
--ESP Function
function CreateESP() 
	local ply = LocalPlayer()
	for k, e in pairs( player.GetAll() ) do
		if ( e:IsPlayer() && e:Alive() ) then
			local maxX, minX, maxY, minY = CreatePos( e )
			
			
			surface.SetDrawColor( espr, espg, espb, 255)

			surface.DrawLine( maxX, maxY, maxX, minY )
			surface.DrawLine( maxX, minY, minX, minY )
					
			surface.DrawLine( minX, minY, minX, maxY )
			surface.DrawLine( minX, maxY, maxX, maxY )
			
			
			if(showname) then
				draw.SimpleText(
				e:Nick(),
				"Trebuchet18",
				maxX + 5,
				minY + 5,
				Color(255, 0, 255, 255),
				4,
				1
			)
			end
			if(showhealth) then
				draw.SimpleText(
				"Health:",
				"Trebuchet18",
				maxX + 5,
				minY + 20,
				Color(255, 255, 0, 255),
				4,
				1
			)
			draw.SimpleText(
				e:Health(),
				"Trebuchet18",
				maxX + 5,
				minY + 35,
				Color(0, 255, 0, 255),
				4,
				1
			)
			end
			
		end
	end
end
----------------------------------------------------------------
--Console Commands
concommand.Add("espoff", function()
	hook.Remove("HUDPaint", "esp")
end)
concommand.Add("start_menu", function()
	openMenu()
    MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 272, 13, 161 ), "MENU STARTED! PRESS INSERT TO OPEN" )
end)
concommand.Add("check_libs", function()
	print("\n")
	if (_G.FAdmin) then
		MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 0, 255, 0 )," DarkRP found ! \n" )
		else
		MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 255, 0, 0 )," DarkRP not found ! \n" )
	end
	print("\n")
	MsgC(Color(0, 255, 0), " ----------------------------------------------------------------")
	print("\n")
	if (_G.ulx or _G.ulib) then
	MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 0, 255, 0 )," ULX and ULIB found ! \n" )
	else
	MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 255, 0, 0 )," ULX and ULIB not found ! \n" )
	end
end)
concommand.Add("check_anticheat", function()
	accheck()
end)
concommand.Add( "get_information", getHealth)
concommand.Add("player_list", function()
	getPlayers()
end)

-------------------------------------------------------------------

--CHat Command Hook
hook.Add( "OnPlayerChat", "TestCommands", function( ply, strText, bTeam, bDead ) 
	if ( ply != LocalPlayer() ) then return end

	strText = string.lower( strText )
	
	--Start Menu
	if ( strText == "/startmenu" ) then 
		chat.AddText("[IWAN] Menu started! Press Insert to open")
		openMenu()
		return true
	end

	--esp
	if ( strText == "/esp" ) then 
		espa = !espa
		if espa then
			hook.Add( "HUDPaint", "esp", CreateESP )
			print("On")
			chat.AddText("[IWAN] ESP -> ACTIVATED - HAVE FUN BITCH!")
		else 
			hook.Remove("HUDPaint", "esp")
			print("Off")
			chat.AddText("[IWAN] ESP -> DEACTIVATED - WHY, KEEP CHEATING PLEASE :( !")
		end
		return true
	end
	--BunnyHopping
	if ( strText == "/bunnyhop" ) then 
		if(bunnyhopa==false) then
			chat.AddText("[IWAN] BUNNYHOP -> ACTIVATED - HAVE FUN BITCH!")
			bunnyhopa = true
			hook.Add( "CreateMove", "BunnyHop", function( ucmd )
				if ucmd:KeyDown( IN_JUMP ) then
					if LocalPlayer():WaterLevel() <= 1 && LocalPlayer():GetMoveType() != MOVETYPE_LADDER && !LocalPlayer():IsOnGround() then
						ucmd:RemoveKey( IN_JUMP )
					end
				end
			end)
		else
			hook.Remove("CreateMove", "BunnyHop")
			chat.AddText("[IWAN] BUNNYHOP -> DEACTIVATED - WHY, KEEP CHEATING PLEASE :( !")
			bunnyhopa = false
		end
		return true
	end

	--check libs
	if ( strText == "/checklibs" ) then 
		print("\n")
		if (_G.FAdmin) then
			chat.AddText("[IWAN] DarkRP found!")
			else
			chat.AddText("[IWAN] DarkRP not found!")
		end
		chat.AddText("-------------------------")
		if (_G.ulx or _G.ulib) then
			chat.AddText("[IWAN] ULX and ULIB found!")
		else
			chat.AddText("[IWAN] ULX and ULIB not found!")
		end
		return true
	end
	--check anticheat
	if ( strText == "/checkanticheat" ) then 
		print("\n")
		chat.AddText("[IWAN] Check out your console!")
		accheck()
		return true
	end
	--player list
	if ( strText == "/playerlist" ) then 
		chat.AddText("[IWAN] Following Players are online:")
		for k, v in pairs( player.GetAll() ) do
			chat.AddText(v:Nick())
        end
	end
	return true
end)
-------------------------------------------------------------------
--Anticheat Check Function
function accheck()

	print("\n")
	if file.Exists("epstat.lua", "LUA") or file.Exists("autorun/!!bettersnte.lua", "LUA") then
		MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 255, 0, 0)," SNTE Anti Cheat was found! Be aware \n" )
	else
		MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 0, 255, 0 )," SNTE Anti Cheat was not found! \n" )
	end
	print("\n")
	MsgC(Color(0, 255, 0), "----------------------------------------------------------------")
	print("\n")
	if _G.CAC then
		MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 255, 0, 0)," CAC Anti Cheat was found! Be aware \n" )
	else
		MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 0, 255, 0 )," CAC Anti Cheat was not found! \n" )
	end
	print("\n")
	MsgC(Color(0, 255, 0), "----------------------------------------------------------------")
	print("\n")
	if _G.QAC then
		MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 255, 0, 0)," Quack Anti Cheat was found! Be aware \n" )
	else
		MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 0, 255, 0 )," Quack Anti Cheat was not found! \n" )
	end
	print("\n")
	MsgC(Color(0, 255, 0), "----------------------------------------------------------------")
	print("\n")
	if _G.simplicity then
		MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 255, 0, 0)," Simplac Anti Cheat was found! Be aware \n" )
	else
		MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 0, 255, 0 )," Simplac Anti Cheat was not found! \n" )
	end
	print("\n")
	MsgC(Color(0, 255, 0), "----------------------------------------------------------------")
	print("\n")
	if file.Exists("cl_screengrab.lua", "LUA") or file.Exists("autorun/sh_screengrab.lua", "LUA") or file.Exists("autorun/sh_screengrab_v2.lua", "LUA") then
		MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 255, 0, 0)," Screengrab Anti Cheat was found! Be aware \n" )
	else
		MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 0, 255, 0 )," Screengrab Anti Cheat was not found! \n" )
	end

end
--Open the Menu Functions
function openMenu()
	
	hook.Add("Think", "open", function()
	
	if(input.IsKeyDown(KEY_INSERT) && menuopen==false) then
		print("Debug Open Menu")
        menuopen = true;
		--Frame
	local DFrame = vgui.Create( "DFrame" )	
	DFrame:Center()
	DFrame:SetPos(surface.ScreenWidth()/2-400, 100)	
	DFrame:SetSize( 570, 250 )				
	DFrame:SetTitle( "Iwan's Backdoor Menu" )
	DFrame:MakePopup()	
	DFrame.Paint = function( self, w, h ) 
		draw.RoundedBox( 0, 0, 0, w, h, Color( 17, 16, 20 ) ) 
	end
    function DFrame:OnClose()
        menuopen=false;
    end

	--ESP ESPButton Toggle
	local ESPButton = vgui.Create("DButton", DFrame)
	ESPButton:SetText( "Toggle" )
	ESPButton:SetTextColor( Color(255,255,255) )
	ESPButton:SetPos( 20, 100 )
	ESPButton:SetSize( 100, 30 )
	ESPButton.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 125, 1, 1, 250 ) ) 
	end
	ESPButton.DoClick = function()
		espa = !espa
		if espa then
			hook.Add( "HUDPaint", "esp", CreateESP )
			print("On")
			chat.AddText("[IWAN] ESP -> ACTIVATED - HAVE FUN BITCH!")
		else 
			hook.Remove("HUDPaint", "esp")
			print("Off")
			chat.AddText("[IWAN] ESP -> DEACTIVATED - WHY, KEEP CHEATING PLEASE :( !")
		end
	end
    --ESP ESPButton Options
	local ESPOptionsButton = vgui.Create("DButton", DFrame)
	ESPOptionsButton:SetText( "Options" )
	ESPOptionsButton:SetTextColor( Color(255, 255, 255) )
	ESPOptionsButton:SetPos( 130, 100 )
	ESPOptionsButton:SetSize( 100, 30 )
	ESPOptionsButton.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 72, 13, 161, 250 ) ) 
	end
	ESPOptionsButton.DoClick = function()
		ESPOptionMenu()
	end
    --ESP Text
	local ESPText = vgui.Create("DLabel", DFrame)
	ESPText:SetText("<-- ESP - SIMPLE ESP FOR DETECTING PLAYERS HEHE")
	ESPText:SetFont("Trebuchet18")
	ESPText:SetTextColor( Color(255,20,255) )
	ESPText:SetPos( 250, 105 )
	ESPText:SizeToContents()
	--------------------------------------------------------------------------------
	--Bunnyhopping Toggle
	local BHButton = vgui.Create("DButton", DFrame)
	BHButton:SetText( "Toggle" )
	BHButton:SetTextColor( Color(255,255,255) )
	BHButton:SetPos( 20, 150 )
	BHButton:SetSize( 100, 30 )
	BHButton.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 125, 1, 1, 250 ) ) 
	end
	BHButton.DoClick = function()
		
		if(bunnyhopa==false) then
			chat.AddText("[IWAN] BUNNYHOP -> ACTIVATED - HAVE FUN BITCH!")
			bunnyhopa = true
			hook.Add( "CreateMove", "BunnyHop", function( ucmd )
				if ucmd:KeyDown( IN_JUMP ) then
					if LocalPlayer():WaterLevel() <= 1 && LocalPlayer():GetMoveType() != MOVETYPE_LADDER && !LocalPlayer():IsOnGround() then
						ucmd:RemoveKey( IN_JUMP )
					end
				end
			end)
		else
			hook.Remove("CreateMove", "BunnyHop")
			chat.AddText("[IWAN] BUNNYHOP -> DEACTIVATED - WHY, KEEP CHEATING PLEASE :( !")
			bunnyhopa = false
			
		end
	end
    --BH Button Options
	-- local BHOptions = vgui.Create("DButton", DFrame)
	-- BHOptions:SetText( "Options" )
	-- BHOptions:SetTextColor( Color(255, 255, 255) )
	-- BHOptions:SetPos( 130, 150 )
	-- BHOptions:SetSize( 100, 30 )
	-- BHOptions.Paint = function( self, w, h )
	-- draw.RoundedBox( 0, 0, 0, w, h, Color( 72, 13, 161, 250 ) ) 
	-- end
	-- BHOptions.DoClick = function()
	-- 	prnt("Nice")
	-- end 
    --BH Text
	local BHText = vgui.Create("DLabel", DFrame)
	BHText:SetText("<-- Bunnyhop - LET'S HOP LIKE A BUNNY")
	BHText:SetFont("Trebuchet18")
	BHText:SetTextColor( Color(255,20,255) )
	BHText:SetPos( 250, 155 )
	BHText:SizeToContents()
	--------------------------------------------------------------------------------
	--AC Checker Toggle
	local ACButton = vgui.Create("DButton", DFrame)
	ACButton:SetText( "AC Checker" )
	ACButton:SetTextColor( Color(255,255,255) )
	ACButton:SetPos( 450, 200 )
	ACButton:SetSize( 100, 30 )
	ACButton.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 125, 1, 1, 250 ) ) 
	end
	ACButton.DoClick = function()
		chat.AddText("[IWAN] Checked for Anti-Cheats. Check your Console, my boy!")
		accheck()
	end
	--------------------------------------------------------------------------------
	--BackdoorMenu Checker Toggle
	local BDMenu = vgui.Create("DButton", DFrame)
	BDMenu:SetText( "Backdoors" )
	BDMenu:SetTextColor( Color(255,255,255) )
	BDMenu:SetPos( 340, 200 )
	BDMenu:SetSize( 100, 30 )
	BDMenu.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 125, 1, 1, 250 ) ) 
	end
	BDMenu.DoClick = function()
		print("BD")
	end
	--------------------------------------------------------------------------------
	--DarkRP Checker Toggle
	local DarkRPChecker = vgui.Create("DButton", DFrame)
	DarkRPChecker:SetText( "DarkRP Checker" )
	DarkRPChecker:SetTextColor( Color(255,255,255) )
	DarkRPChecker:SetPos( 230, 200 )
	DarkRPChecker:SetSize( 100, 30 )
	DarkRPChecker.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 125, 1, 1, 250 ) ) 
	end
	DarkRPChecker.DoClick = function()
		if (_G.FAdmin) then
			chat.AddText("[IWAN] DarkRP was found!")
			else
			chat.AddText("[IWAN] DarkRP was not found!")
		end
		
	end
	--------------------------------------------------------------------------------
	--ULX Checker Toggle
	local ULXChecker = vgui.Create("DButton", DFrame)
	ULXChecker:SetText( "ULX/ULIB Checker" )
	ULXChecker:SetTextColor( Color(255,255,255) )
	ULXChecker:SetPos( 120, 200 )
	ULXChecker:SetSize( 100, 30 )
	ULXChecker.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 125, 1, 1, 250 ) ) 
	end
	ULXChecker.DoClick = function()
		if (_G.ulx or _G.ulib) then
			chat.AddText("[IWAN] ULX and ULIB was found!")
			else
				chat.AddText("[IWAN] ULX and ULIB was not found!")
			end
	end
	--------------------------------------------------------------------------------
	--Players  Toggle
	local PlayersB = vgui.Create("DButton", DFrame)
	PlayersB:SetText( "Player List" )
	PlayersB:SetTextColor( Color(255,255,255) )
	PlayersB:SetPos( 10, 200 )
	PlayersB:SetSize( 100, 30 )
	PlayersB.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Color( 125, 1, 1, 250 ) ) 
	end
	PlayersB.DoClick = function()
		getPlayers()
		chat.AddText("[IWAN] Check out the console :)")
	end
	--Header
	local Header = vgui.Create("DLabel", DFrame)
	Header:SetText("Iwan's Backdoor Menu")
	Header:SetFont("Trebuchet24")
	Header:SetTextColor( Color(220,0,0, 255) )
	Header:SetPos( 170, 50 )
	Header:SizeToContents()
	hook.Remove("Think", "open")
	timer.Simple(2, function()
		openMenu()
	end)
	end
	
	function ESPOptionMenu()
		
		if(!espopsopen) then
			hook.Add("Think", "espoptionhook", function()
				espopsopen=true
				--ESP Option Frame
				local ESPOptionFrame = vgui.Create( "DFrame" )	
				ESPOptionFrame:Center()
				ESPOptionFrame:SetPos(surface.ScreenWidth()/2-400, 300)	
				ESPOptionFrame:SetSize( 300, 300 )				
				ESPOptionFrame:SetTitle( "ESP Options" )
				ESPOptionFrame:MakePopup()	
				ESPOptionFrame.Paint = function( self, w, h ) 
					draw.RoundedBox( 0, 0, 0, w, h, Color( 17, 16, 20 ) ) 
				end
				--Color Text
				local ColorText = vgui.Create("DLabel", ESPOptionFrame)
				ColorText:SetText("Color Options")
				ColorText:SetFont("Trebuchet18")
				ColorText:SetTextColor( Color(255,20,255) )
				ColorText:SetPos( 50, 30 )
				ColorText:SizeToContents()
				--Number Texts
				local RText = vgui.Create("DLabel", ESPOptionFrame)
				RText:SetText("Red")
				RText:SetFont("Trebuchet18")
				RText:SetTextColor( Color(255,20,255) )
				RText:SetPos( 130, 50 )
				RText:SizeToContents()
				local GText = vgui.Create("DLabel", ESPOptionFrame)
				GText:SetText("Green")
				GText:SetFont("Trebuchet18")
				GText:SetTextColor( Color(255,20,255) )
				GText:SetPos( 130, 80 )
				GText:SizeToContents()
				local BText = vgui.Create("DLabel", ESPOptionFrame)
				BText:SetText("Blue")
				BText:SetFont("Trebuchet18")
				BText:SetTextColor( Color(255,20,255) )
				BText:SetPos( 130, 110 )
				BText:SizeToContents()
				--Number
				local R = vgui.Create("DNumberWang", ESPOptionFrame)
				R:SetPos(50, 50)
				R:SetSize(45, 26)
				R:SetMin(0)
				R:SetMax(255)
				R:SetValue(espr)
				local G = vgui.Create("DNumberWang", ESPOptionFrame)
				G:SetPos(50, 80)
				G:SetSize(45, 26)
				G:SetMin(0)
				G:SetMax(255)
				G:SetValue(espg)
				local B = vgui.Create("DNumberWang", ESPOptionFrame)
				B:SetPos(50, 110)
				B:SetSize(45, 26)
				B:SetMin(0)
				B:SetMax(255)
				B:SetValue(espb)

				--Confirm Button
				
				local ConfirmColor = vgui.Create("DButton", ESPOptionFrame)
				ConfirmColor:SetText( "Confirm Color" )
				ConfirmColor:SetTextColor( Color(255,255,255) )
				ConfirmColor:SetPos( 180, 105 )
				ConfirmColor:SetSize( 100, 30 )
				ConfirmColor.Paint = function( self, w, h )
				draw.RoundedBox( 0, 0, 0, w, h, Color( 125, 1, 1, 250 ) ) 
				end
				ConfirmColor.DoClick = function()
					espr = R:GetValue()
					espg = G:GetValue()
					espb = B:GetValue()
				end
				

				--ESP Options Text
				local OptionsText = vgui.Create("DLabel", ESPOptionFrame)
				OptionsText:SetText("ESP Options")
				OptionsText:SetFont("Trebuchet18")
				OptionsText:SetTextColor( Color(255,20,255) )
				OptionsText:SetPos( 50, 150 )
				OptionsText:SizeToContents()
				--Checkboxes
				--SHowName
				local ShowNameBox = vgui.Create("DCheckBoxLabel", ESPOptionFrame)-- Create the checkbox
				ShowNameBox:SetPos( 50, 180 )						-- Set the position
				ShowNameBox:SetText("Show Name")					-- Set the text next to the box
				if(showname) then
					ShowNameBox:SetValue(true)
				else
					ShowNameBox:SetValue(false)
				end
				ShowNameBox:SizeToContents()		
				ShowNameBox.OnChange = function()
					showname = !showname
				end
				--ShowHealth
				local ShowHealthBox = vgui.Create("DCheckBoxLabel", ESPOptionFrame)-- Create the checkbox
				ShowHealthBox:SetPos( 50, 210 )						-- Set the position
				ShowHealthBox:SetText("Show Health")					-- Set the text next to the box
				if(showhealth) then
					ShowHealthBox:SetValue(true)
				else
					ShowHealthBox:SetValue(false)
				end
				ShowHealthBox:SizeToContents()		
				ShowHealthBox.OnChange = function()
					showhealth = !showhealth
				end
				function ESPOptionFrame:OnClose()
					espopsopen=false
				end
				hook.Remove("Think", "espoptionhook")
			end)
		end

		
	end


	

	
	

end)
	--GetPlayers for Player List
	function getPlayers()
		print("\n\n\n\n\n\n\n\n\n")
		MsgC( Color( 0, 0, 255 ), "-----------------------------------------------------------------------------------------------------\n")
		MsgC(Color( 255, 0, 0),"Following Players found:" .. "\n")
		for k, v in pairs( player.GetAll() ) do
			print("\n")
			print(v:Nick())
        end
		print("\n")
		MsgC( Color( 255, 0, 0),"For more Information about a specific player, do: get_information [playername]" .. "\n")
		MsgC( Color( 0, 0, 255 ), "-----------------------------------------------------------------------------------------------------\n")
	end
	--Information function
	function getHealth( ply, cmd, args )
		local nick = args[1]
		nick = string.lower( nick )
		local Alive = "No"
		local Admin = "No"
		for k, v in ipairs( player.GetAll() ) do
			if string.find( string.lower( v:Nick() ), nick ) then
				if(v:Alive()) then --Alive
					Alive="Yes"
				end
				if(v:IsAdmin()) then --Admin
					Admin="Yes"
				end
				MsgC( Color( 0, 0, 0 ), "[IWAN] ", Color( 255, 0, 0),"Player Database Information about ", Color(0, 255, 0), v:Nick() .. "\n")
				MsgC( Color( 0, 0, 0 ), "[IWAN] ", Color( 255, 0, 0),"Is Alive?: " , Color( 0, 255, 0), Alive .. "\n")
				MsgC( Color( 0, 0, 0 ), "[IWAN] ", Color( 255, 0, 0),"Health: " , Color( 0, 255, 0), v:Health() .. "\n")
				MsgC( Color( 0, 0, 0 ), "[IWAN] ", Color( 255, 0, 0),"Armor: " , Color( 0, 255, 0), v:Armor() .. "\n")
				MsgC( Color( 0, 0, 0 ), "[IWAN] ", Color( 255, 0, 0),"Max Armor: " , Color( 0, 255, 0), v:GetMaxArmor() .. "\n")
				MsgC( Color( 0, 0, 0 ), "[IWAN] ", Color( 255, 0, 0),"Deaths: " , Color( 0, 255, 0), v:Deaths() .. "\n")
				MsgC( Color( 0, 0, 0 ), "[IWAN] ", Color( 255, 0, 0),"Active Weapon: " , Color( 0, 255, 0), v:GetActiveWeapon():GetClass() .. "\n")
				MsgC( Color( 0, 0, 0 ), "[IWAN] ", Color( 255, 0, 0),"SteamID: " , Color( 0, 255, 0), v:SteamID() .. "\n")
				MsgC( Color( 0, 0, 0 ), "[IWAN] ", Color( 255, 0, 0),"SteamID64: " , Color( 0, 255, 0), v:SteamID64() .. "\n")
				MsgC( Color( 0, 0, 0 ), "[IWAN] ", Color( 255, 0, 0),"Is Admin?: " , Color( 0, 255, 0), Admin .. "\n")
				return
			end
		end
		MsgC( Color( 0, 0, 0 ), "[IWAN]", Color( 255, 0, 0),"Player not found!")
	end
	

	
end
























------------------------------------------------------------------------------------------------------------------------------
