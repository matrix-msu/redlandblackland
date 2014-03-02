-- ForceDoF
-- Author: Hippo
-- DateCreated: 10/6/2011 11:03:15 PM
--------------------------------------------------------------
include( "InstanceManager" );
include( "IconSupport" );
include( "GameplayUtilities" );
include( "InfoTooltipInclude" );

function MakeDoF( p1, p2 )
	if ( p1 ~= p2 ) then
		Players[p1]:DoForceDoF(p2)
	end
end

function TurnAlliance()
	if (Game.GetGameTurn() == 25) then
		local playerID = Game.GetActivePlayer();
		local name = Players[playerID]:GetName();
		if (name == "Mentuhotep II") then
			MakeDoF(1,6)
		end
	elseif (Game.GetGameTurn() == 15) then
		local playerID = Game.GetActivePlayer();
		local name = Players[playerID]:GetName();
		if (name == "Ahmose") then
			MakeDoF(1,2)
			MakeDoF(1,3)
			MakeDoF(1,4)
		end
	end
end
Events.ActivePlayerTurnStart.Add(TurnAlliance)

function StartAlliance()
	local playerID = Game.GetActivePlayer();
	local name = Players[playerID]:GetName();
	if (name == "Ahmose") then
		MakeDoF(2,3)
		MakeDoF(2,4)
		MakeDoF(3,4)
	elseif (name == "Senusret I") then
		MakeDoF(2,3)
		MakeDoF(1,3)
		MakeDoF(1,2)
		MakeDoF(4,5)
	end
end
Events.LoadScreenClose.Add(StartAlliance)