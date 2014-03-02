-- RLBLGameScreen
-- Author Yue Lu
-- DateCreated: 3/25/2011

include( "IconSupport" );
include( "InstanceManager" );
--include( "Test.lua" );

MGS_File = nil;
MGS_Civ = 0;

Controls.Continue:RegisterCallback(Mouse.eLClick, function()
	Controls.Welcome:SetHide(true);
	Controls.MainSelection:SetHide(false);
end);

function ShowHideHandler( bIsHide, bIsInit )
	if ( not bIsHide ) then
		local flag = math.random(9);
		if (flag == 1) then
			Controls.MyGameScreenLogo:SetTexture ( "background1.dds" ) --set background texture
		elseif (flag == 2) then
			Controls.MyGameScreenLogo:SetTexture ( "background2.dds" ) --set background texture
		elseif (flag == 3) then
			Controls.MyGameScreenLogo:SetTexture ( "background3.dds" ) --set background texture
		elseif (flag == 4) then
			Controls.MyGameScreenLogo:SetTexture ( "background4.dds" ) --set background texture
		elseif (flag == 5) then
			Controls.MyGameScreenLogo:SetTexture ( "background5.dds" ) --set background texture
		elseif (flag == 6) then
			Controls.MyGameScreenLogo:SetTexture ( "background6.dds" ) --set background texture
		elseif (flag == 7) then
			Controls.MyGameScreenLogo:SetTexture ( "background7.dds" ) --set background texture
		elseif (flag == 8) then
			Controls.MyGameScreenLogo:SetTexture ( "background8.dds" ) --set background texture
		elseif (flag == 9) then
			Controls.MyGameScreenLogo:SetTexture ( "background9.dds" ) --set background texture
		end
	else
		Controls.MyGameScreenLogo:UnloadTexture();
	end
end
ContextPtr:SetShowHideHandler( ShowHideHandler );

function OnBack()
	UIManager:DequeuePopup( ContextPtr );
end

ContextPtr:SetInputHandler( function(uiMsg, wParam, lParam)
	if uiMsg == KeyEvents.KeyDown then
		if wParam == Keys.VK_ESCAPE then
			OnBack();
		end
	end
	return true;
end);

Controls.BackButton:RegisterCallback(Mouse.eLClick, function()
	UIManager:DequeuePopup( ContextPtr );
end);

Controls.PredynastyButton:RegisterCallback(Mouse.eLClick, function()
	MGS_File = Modding.GetEvaluatedFilePath("3c43d11e-bc45-4014-a152-436ab00bb57d", 1, "Map/PredynasticMap.Civ5Map");
	Controls.ScenarioHeader:SetText("Predynastic Period");
	Controls.ScenarioText:SetText("Welcome to Egypt, a land of farming communities and small villages. They have grown around the fertile land of the Nile, and throughout the 5th and 4th millennia BCE they have begun to form trade networks and a thriving economy. It is up to you, Menes, to unite the disparate groups who have settled along the Nile and create your Kingdom. The task before you will not be easy, you are not the only leader with goals of creating a unified Egypt. Conquer all others, unite Upper and Lower Egypt and take your rightful place as the first ruler of this civilization.");
	Controls.OKButton:SetHide(false);
	Controls.ReadyToPlay:SetText("");
	
	--ContextPtr:LookUpControl("Test/TestContainer"):SetHide(false);
end);

Controls.OldKingdomButton:RegisterCallback(Mouse.eLClick, function()
	MGS_File = Modding.GetEvaluatedFilePath("3c43d11e-bc45-4014-a152-436ab00bb57d", 1, "Map/OldKingdomMap.Civ5Map");
	Controls.ScenarioHeader:SetText("Old Kingdom");
	Controls.ScenarioText:SetText("The Old Kingdom began in 2649 BCE with the rise of the 3rd dynasty. It is because of the strong obedience of the people that this era was able to gain its other name, the ¡°Age of the Pyramids¡±. It is your duty, Pharoah Khufu, to construct a mortuary pyramid on the Giza Plateau as a symbol of your divinity and power. Pharaohs before you have attempted similar feats, Djoser¡¯s stepped pyramid and Sneferu¡¯s bent pyramid, but none have succeeded where you must. Protect ma¡¯at, maintain the mortuary cults, and construct yourself a Great Pyramid.");
	Controls.OKButton:SetHide(false);
	Controls.ReadyToPlay:SetText("");

	
end);

Controls.FirstIntermediateButton:RegisterCallback(Mouse.eLClick, function()
	MGS_File = Modding.GetEvaluatedFilePath("3c43d11e-bc45-4014-a152-436ab00bb57d", 1, "Map/FirstIntermediateMap.Civ5Map");
	Controls.ScenarioHeader:SetText("First Intermediate Period");
	Controls.ScenarioText:SetText("The unthinkable occurred following the reign of Pepy II, the kingdom of Egypt collapsed. Our unified nation, that we had built from small farming communities and developed into an advanced civilization, united under the divinity of the pharaoh, has become fragmented. Mentuhotep II, ruler of Thebes and Upper Egypt, must reunite this civilization and regain control of your people. You must return our kingdom to its former glory. Unite the two lands of Upper and Lower Egypt, restore ma¡¯at and take your rightful place as the ruler of this kingdom.");
	Controls.OKButton:SetHide(false);
	Controls.ReadyToPlay:SetText("");
end);

Controls.MiddleKingdomButton:RegisterCallback(Mouse.eLClick, function()
	MGS_File = Modding.GetEvaluatedFilePath("3c43d11e-bc45-4014-a152-436ab00bb57d", 1, "Map/MiddleKingdomMap.Civ5Map");
	Controls.ScenarioHeader:SetText("Middle Kingdom");
	Controls.ScenarioText:SetText("With our lands once again united under a single central government, it is time to expand our great nation into the South. Expansion into Nubia will further improve our civilization, and show that we are indeed an imperial power. Pharaoh Senusret I, it is your duty to satisfy your people and increase our nations prestige by securing a trade route to Punt. We must conquer Nubia, to open the routes by land and through the Nile, and we must establish a coastal city to allow trade to occur through the Red Sea to the East. While the task will be difficult, and the journey arduous, the riches we will procure are worth every ounce of effort.");
	Controls.OKButton:SetHide(false);
	Controls.ReadyToPlay:SetText("");
end);

Controls.SecondIntermediateButton:RegisterCallback(Mouse.eLClick, function()
	MGS_File = Modding.GetEvaluatedFilePath("3c43d11e-bc45-4014-a152-436ab00bb57d", 1, "Map/SecondIntermediateMap.Civ5Map");
	Controls.ScenarioHeader:SetText("Second Intermediate Period");
	Controls.ScenarioText:SetText("The kingdom of Egypt is once again divided by the rise of the provincial rulers. However unlike the First Intermediate period, a foreign power has taken control of Lower Egypt. It is upon you, Ahmose I, to begin the eighteenth dynasty and rid Egypt of this foreign scourge. Once again, our kingdom must be united and the invaders cast out. You will need to gain the support of the other provinces of Egypt. You must also defeat the Hyksos and drive them out of Egypt. Only then will our kingdom once again be unified.");
	Controls.OKButton:SetHide(false);
	Controls.ReadyToPlay:SetText("");
end);

Controls.NewKingdomButton:RegisterCallback(Mouse.eLClick, function()
	MGS_File = Modding.GetEvaluatedFilePath("3c43d11e-bc45-4014-a152-436ab00bb57d", 1, "Map/NewKingdomMap.Civ5Map")
	Controls.ScenarioHeader:SetText("New Kingdom");
	Controls.ScenarioText:SetText("Following the defeat of the Hyksos in the 17th dynasty, Egypt rose as one of the foremost imperial powers in the world. Lasting from the 16th to 11th centuries BCE, this era is often known as the Egyptian Empire. As Rameses II, the third pharaoh of the 19th dynasty, it is your duty to continue to expand Egyptian power beyond the borders. Kings before you like Thutmose I, Hapshepsut, Thutmose III and Amenhotep III have set the stage for an expansive and prosperous kingdom, but you must increase the influence of your civilization beyond this, whether it be through trade and alliance, or military force.");
	Controls.OKButton:SetHide(false);
	Controls.ReadyToPlay:SetText("");
end);

Controls.ResetButton:RegisterCallback(Mouse.eLClick, function()
	Controls.ScenarioHeader:SetText("");
	Controls.ScenarioText:SetText("");
	Controls.ReadyToPlay:SetText("Choose a Scenario");
	Controls.OKButton:SetHide(true);
end);

Controls.OKButton:RegisterCallback(Mouse.eLClick, function()

	PreGame.SetRandomMapScript(false);
	PreGame.SetEarthMap(false);
	PreGame.SetMapScript(MGS_File.EvaluatedPath);
	PreGame.SetLoadWBScenario(true);
	UI.ResetScenarioPlayerSlots(true);
	UI.MoveScenarioPlayerToSlot(0 , 0)
	
	Events.SerialEventStartGame();
	UIManager:SetUICursor( 1);
	OnBack();

	
end);

