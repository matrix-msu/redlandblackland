-- text
-- Author: yue.lu
-- DateCreated: 11/7/2011 3:20:04 PM
--------------------------------------------------------------
include( "InstanceManager" );

function ShowHideHandler ( bIsHide, bIsInit )
	--Controls.Test:SetHide( false );
end
ContextPtr:SetShowHideHandler( ShowHideHandler );

function OnClose ()
	Controls.Test:SetHide(true);
end
Controls.Ignore:RegisterCallback( Mouse.eLClick, OnClose );

function OnShow ()
	Controls.Test:SetHide(true);
	LuaEvents.myEvent();
end
Controls.Show:RegisterCallback( Mouse.eLClick, OnShow );

function OnNotice ()
	Controls.Test:SetHide(false);
end
LuaEvents.HLANotice.Add(OnNotice);