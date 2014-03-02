-- VictoryCondition
-- Author: yue.lu
-- DateCreated: 9/12/2011 3:36:14 PM
--------------------------------------------------------------
include( "InstanceManager" );
include( "IconSupport" );
include( "GameplayUtilities" );
include( "InfoTooltipInclude" );

function LimitCityNum(vHexPos, ePlayerID, iCityID, eArtStyleType, eEraType, iContinent, iPopulationSize, iSize, iFogState)
	if (Players[ePlayerID]:GetNumCities() >= 3) then
		for City in Players[ePlayerID]:Cities() do
			City:ChangeUnitProduction(0,-30000)
		end
	end
end
Events.SerialEventCityCreated.Add(LimitCityNum)

function ShowVictoryCondition()
	local playerID = Game.GetActivePlayer();
	local name = Players[playerID]:GetName();
	if (name == "Narmer") then
		Controls.VCTitle:SetText("Unify Upper and Lower Egypt")
		Controls.VCText:SetText("Capture all civilization's capital city to win.[NEWLINE]OR[NEWLINE]Make declaration of Friendship with all other major civilizations.")  -- Predynastic Period
	end
	if (name == "Khufu") then
		Controls.VCTitle:SetText("Build At Least One Pyramid")
		Controls.VCText:SetText("Construction a pyramid to win the game.[NEWLINE][NEWLINE]Pyramid requirement:[NEWLINE] - Engineering Technology[NEWLINE] - 450 Construction Points[NEWLINE] - Limestone[NEWLINE] - 5 Worker units")  -- Old Kingdom
	end
	if (name == "Mentuhotep II") then
		Controls.VCTitle:SetText("Re-unify the Country")
		Controls.VCText:SetText("Capture all civilization's capital city to win.[NEWLINE]OR[NEWLINE]Make declaration of Friendship with all other major civilizations.")  -- First Intermediate Period
	end
	if (name == "Senusret I") then
		Controls.VCTitle:SetText("Trade with Punt")
		Controls.VCText:SetText("1. Domination or Declaration of Friendship with all Nubian Civilizations.[NEWLINE]2. Complete Commerce in Social Policy.[NEWLINE]3. Have a port city near rea sea and Sailling Technology.")  -- Middle Kingdom
	end
	if (name == "Ahmose") then --name?
		Controls.VCTitle:SetText("Expel the Hyksos")
		Controls.VCText:SetText("Domination or Declaration of Friendship with all Hyksos Civilizations.")  -- Second Intermediate Period
	end
	if (name == "Ramesses") then 
		Controls.VCTitle:SetText("Expand Political and Millitary Sphere")
		Controls.VCText:SetText("Domination or Declaration of Friendship with all Hyksos Civilizations except Assyria.")
	end
	UIManager:QueuePopup( ContextPtr, PopupPriority.EndGameMenu);
end
Events.LoadScreenClose.Add(ShowVictoryCondition)

function EndGameText()
	local playerID = Game.GetActivePlayer();
	local name = Players[playerID]:GetName();
	winnerIndex = Game.GetWinner()
	if ( Players[winnerIndex]:GetName() == name) then
		Controls.VCHeadder:SetText("Congratulations")
		if (name == "Narmer") then
			Controls.VCTitle:SetText("You Win")
			Controls.VCText:SetText("Congratulations! You have successfully united the disparate chiefdoms around the Nile into a unified Kingdom. Through the use of your advisors and personal wisdom, you have created the first dynasty of Egypt and have set our civilization on the path to greatness. While your choices did lead to the correct conclusion, this does not mean that they were those that actually occurred in history. The debate over the rise of Egyptian civilization has only just begun, but now we know one more potential way that this unification could have occurred.")  -- Predynastic Period
		end
		if (name == "Khufu") then
			Controls.VCTitle:SetText("You Win")
			Controls.VCText:SetText("Congratulations! You have successfully built a monument to your greatness and assured your place in the afterlife. By listening to your advisors and carefully using the advice they gave, you were able to unite your people into a common cause of constructing your burial tomb. This pyramid stands as a testament to your victory, and while it will be copied by your descendants, its glory shall never be duplicated. We do not know exactly how the pharaoh’s were able to engineer such feats, but you have shown us a possible way.")  -- Old Kingdom
		end
		if (name == "Mentuhotep II") then
			Controls.VCTitle:SetText("You Win")
			Controls.VCText:SetText("Congratulations! Egypt is once again unified under a single leader. You have regained control over the nomarchs, and given this civilization back its former glory. Now that our kingdom is once again united, we can expand our influence into the South. Archaeological and epigraphic evidence of unification is not well documented, but your use of the evidence provided by the advisors and your victory shows us one potential way it may have occurred.")  -- First Intermediate Period
		end
		if (name == "Senusret I") then
			Controls.VCTitle:SetText("You Win")
			Controls.VCText:SetText("Congratulations! The Kingdom of Punt has agreed to open a trade route to Egypt. Exotic goods and resources will flow into our land, satisfying the needs of our people and reinforcing the glory of your majesty. While we do not know the exact way the trade proceeded or which paths were chosen, you have shown us one interpretation of how this may have occurred. With a direct connection to the wealth of Punt, the power of our nation can only increase.")  -- Middle Kingdom
		end
		if (name == "Ahmose") then --name?
			Controls.VCTitle:SetText("You Win")
			Controls.VCText:SetText("Congratulations! You have expelled the Hyksos from Egypt. Once again, our kingdom is ruled by born and raised Egyptians. Your new dynasty will restore the glory of our kingdom and we can now begin to expand into other nations to the North and South. The Hyksos remain an archaeological enigma, with little evidence of their arrival or defeat, but they do leave behind their technology, and their horses. You have used your advisor’s words well, and have shown the power of Egypt.")  -- Second Intermediate Period
		end
		if (name == "Ramesses") then 
			Controls.VCTitle:SetText("You Win")
			Controls.VCText:SetText("Congratulations! You have risen as one of the foremost imperial powers in the Ancient World, and ushered Egypt into a new era of technology. No nation has the power to stand up to you, and all evidence supports your glory. By using the advice of your advisors wisely you have been able to show us one of the ways in which Egypt rose to glory in this period. The lack of epigraphic evidence from other nations creates a bias in interpretation, but by balancing this with archaeology you have shown us a potential way that Egypt became the leading power in the world.")
		end
	else 
		Controls.VCHeadder:SetText("Defeat")
		Controls.VCTitle:SetText("You Lose")
		Controls.VCText:SetText("You have been defeated by the enemy, overwhelmed by the opposing forces. Egypt has been defeated. How could this have occurred? No archaeological or epigraphic evidence supports this conclusion. Archaeology is an interpretive study, and this time the interpretations you chose and choices you made were incorrect. You must choose wisely between the words of your advisors. Next time you will make better decisions using the available evidence provided to you by your advisors. Next time, as history has shown, Egypt will prevail.")
	end
	UIManager:QueuePopup( ContextPtr, PopupPriority.EndGameMenu);
end
Events.EndGameShow.Add(EndGameText)

local Built = 0;
function PyramidBuilt( popupInfo)
	if( popupInfo.Type ~= ButtonPopupTypes.BUTTONPOPUP_WONDER_COMPLETED_ACTIVE_PLAYER ) then
		return;
	end
	

	local iBuildingID = popupInfo.Data1;
	local thisBuilding = GameInfo.Buildings[ iBuildingID ];
	

	--print(thisBuilding.Description)

	if ( thisBuilding.Description == "TXT_KEY_BUILDING_PYRAMID") then
		Built = 1;
		print (built)
	end
end
Events.SerialEventGameMessagePopup.Add( PyramidBuilt )

local wintype = 0
function ReadyToWin ( )
	Game.SetWinner(0, wintype)
end

function CivVictory ()
	local playerID = Game.GetActivePlayer();
	local name = Players[playerID]:GetName();
	if (name == "Narmer") then
		if ( (not Players[1]:IsAlive()) or Players[0]:IsDoF(1) ) then
			if ( (not Players[2]:IsAlive()) or Players[0]:IsDoF(2) ) then
				if ( (not Players[3]:IsAlive()) or Players[0]:IsDoF(3) ) then
					if ( (not Players[4]:IsAlive()) or Players[0]:IsDoF(4) ) then
						if ( (not Players[5]:IsAlive()) or Players[0]:IsDoF(5) ) then
							if ( (not Players[6]:IsAlive()) or Players[0]:IsDoF(6) ) then
								Events.ActivePlayerTurnStart.Add(ReadyToWin)
								LuaEvents.LastTurn()
							end
						end
					end
				end
			end
		end
	elseif (name == "Khufu") then
		--print ("3")
		if (Built == 1) then
			--print("2")
			wintype = 1
			Events.ActivePlayerTurnStart.Add(ReadyToWin)
			LuaEvents.LastTurn()
		end
	elseif (name == "Mentuhotep II") then
		if ( (not Players[1]:IsAlive()) or Players[0]:IsDoF(1) ) then
			if ( (not Players[2]:IsAlive()) or Players[0]:IsDoF(2) ) then
				if ( (not Players[3]:IsAlive()) or Players[0]:IsDoF(3) ) then
					if ( (not Players[4]:IsAlive()) or Players[0]:IsDoF(4) ) then
						if ( (not Players[5]:IsAlive()) or Players[0]:IsDoF(5) ) then
							if ( (not Players[6]:IsAlive()) or Players[0]:IsDoF(6) ) then
								Events.ActivePlayerTurnStart.Add(ReadyToWin)
								LuaEvents.LastTurn()
							end
						end
					end
				end
			end
		end
	elseif (name == "Senusret I") then
		if ( (not Players[1]:IsAlive()) or Players[0]:IsDoF(1) ) then
			if ( (not Players[2]:IsAlive()) or Players[0]:IsDoF(2) ) then
				if ( (not Players[3]:IsAlive()) or Players[0]:IsDoF(3) ) then
					if ( Players[0]:HasPolicy(31) and Players[0]:HasPolicy(32) and Players[0]:HasPolicy(33) and Players[0]:HasPolicy(34) and Players[0]:HasPolicy(35)) then
						Events.ActivePlayerTurnStart.Add(ReadyToWin)
						LuaEvents.LastTurn()
					end
				end
			end
		end					
	elseif (name == "Ahmose") then
		if (not Players[2]:IsAlive() or Players[0]:IsDoF(2)) then
			if (not Players[3]:IsAlive() or Players[0]:IsDoF(3)) then
				if (not Players[4]:IsAlive() or Players[0]:IsDoF(4)) then
					Events.ActivePlayerTurnStart.Add(ReadyToWin)
					LuaEvents.LastTurn()
				end
			end
		end
	elseif (name == "Ramesses") then
		if ( (not Players[1]:IsAlive()) or Players[0]:IsDoF(1) ) then
			if ( (not Players[2]:IsAlive()) or Players[0]:IsDoF(2) ) then
				if ( (not Players[4]:IsAlive()) or Players[0]:IsDoF(4) ) then
					if ( (not Players[5]:IsAlive()) or Players[0]:IsDoF(5) ) then
						if ( (not Players[6]:IsAlive()) or Players[0]:IsDoF(6) ) then
							Events.ActivePlayerTurnStart.Add(ReadyToWin)
							LuaEvents.LastTurn()
						end
					end
				end
			end
		end
	end
end
Events.ActivePlayerTurnStart.Add(CivVictory);

function ShowHideHandler( bIsHide, bIsInit )
end
ContextPtr:SetShowHideHandler( ShowHideHandler );

function InputHandler( uiMsg, wParam, lParam )
  if uiMsg == KeyEvents.KeyDown and wParam == Keys.VK_ESCAPE then
    OnClose();
  end
  if uiMsg == KeyEvents.KeyDown and wParam == Keys.VK_TAB then
    UIManager:QueuePopup( ContextPtr, PopupPriority.EndGameMenu);
  end
  return true;
end
ContextPtr:SetInputHandler( InputHandler );

function OnClose()
	UIManager:DequeuePopup( ContextPtr );
end
Controls.CloseButton:RegisterCallback( Mouse.eLClick, OnClose );

function GenerateResource()
	for i = 0, 60, 1 do
		local mX = math.random(76);
		local mY = math.random(76);
		local mPlot = Map.GetPlot(mX, mY);
		if (not mPlot:GetTerrainType() == 5) then
			local mType = math.random(3);
			mType = mType + 31;
			mPlot:SetResourceType(mType, 2);
		end
	end
	Events.SerialEventRawResourceCreated.Remove(GenerateResource);
end
Events.SerialEventRawResourceCreated.Add(GenerateResource);