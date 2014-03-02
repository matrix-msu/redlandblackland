-- NewUnit
-- Author: Yue
-- DateCreated: 8/19/2011 2:49:02 PM
--------------------------------------------------------------
include( "InstanceManager" );
include( "IconSupport" );
include( "GameplayUtilities" );
include( "InfoTooltipInclude" );

function MedjayArcher( iPlayer, iDiploUIState, szLeaderMessage, iAnimationAction, iData1 )
	name = Players[iPlayer]:GetName()
	if ( name == "Bak" ) then
		if ( Players[0]:IsDoF(Players[iPlayer])) then
			Players[0]:AddFreeUnit(92)
			Players[0]:AddFreeUnit(92)
			Events.AILeaderMessage.Remove(MedjayArcher)
		end	
	end
end
Events.AILeaderMessage.Add(MedjayArcher)