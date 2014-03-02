-- HLAIntro
-- Author: Yue
-- DateCreated: 1/24/2012 5:08:18 PM
--------------------------------------------------------------
function IntroShow()
	UIManager:QueuePopup( ContextPtr, PopupPriority.BarbarianCamp);
end
Events.LoadScreenClose.Add(IntroShow);

function ShowHideHandler( bIsHide, bIsInit )
end
ContextPtr:SetShowHideHandler( ShowHideHandler );

function InputHandler( uiMsg, wParam, lParam )
  if uiMsg == KeyEvents.KeyDown and wParam == Keys.VK_ESCAPE then
    OnClose();
  end
  return true;
end
ContextPtr:SetInputHandler( InputHandler );

function OnClose()
	UIManager:DequeuePopup( ContextPtr );
end
Controls.CloseButton:RegisterCallback( Mouse.eLClick, OnClose );