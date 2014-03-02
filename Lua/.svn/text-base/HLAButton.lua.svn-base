-- Test
-- Author: yue.lu
-- DateCreated: 2/23/2011 2:46:40 PM
--------------------------------------------------------------
include( "InstanceManager" );

function ShowHideHandler ( bIsHide, bIsInit )
	Controls.TestContainer:SetHide( false );
end
ContextPtr:SetShowHideHandler( ShowHideHandler );

function OnCall()
	LuaEvents.myEvent();
end
Controls.TestButton:RegisterCallback( Mouse.eLClick, OnCall );
