-- HLAPopup
-- Author: yue.lu
-- DateCreated: 2/23/2011 3:22:08 PM
--------------------------------------------------------------
--====================================================================
--Variables (Do not touch them)
--====================================================================
include( "InstanceManager" );
include( "IconSupport" );
include( "GameplayUtilities" );
include( "InfoTooltipInclude" );

local CounselTable = nil;
local HLAIndexTable = {};
HLAIndexTable["OA"]={};
HLAIndexTable["NA"]={};
HLAIndexTable["EG"]={};
HLAIndexTable["GS"]={};

local CurrIndex = 0;
local CurrOAIndex = 0;
local CurrNAIndex = 0;
local CurrEGIndex = 0;
local CurrGSIndex = 0;
local TempOAIndex = 0;
local TempNAIndex = 0;
local TempEGIndex = 0;
local TempGSIndex = 0;
local CurrTable = {};
CurrTable["OA"] = {};
CurrTable["NA"] = {};
CurrTable["EG"] = {};
CurrTable["GS"] = {};
--====================================================================


--====================================================================
--HLA dialogues
--====================================================================
--Beginning of the game HLA dialog (1-6)
--Predynastic
HLAIndexTable["OA"][1]="Make sure that you settle strategically so that you can use the Nile to its best advantage for trading with other cultures. Foreign contact is important.";
HLAIndexTable["NA"][1]="Before you settle, make sure to pick an area with good resources. In order to bond with the other small civilizations, you will need to have something valuable to trade with them.";
HLAIndexTable["EG"][1]="When selecting a settlement, choose an area that will be protected. Inscriptions from this period show that war was frequent.";
HLAIndexTable["GS"][1]="This is a period where we have little textual evidence of what is occurring. This means relying more strongly on the archaeological material.";
--Old Kingdom
HLAIndexTable["OA"][2]="King Djoser moved the capital of Egypt to Memphis in the third dynasty. You will need to do this before you can begin to expand your kingdom. The first excavation at the capital of Memphis was done by Flinders Petrie in 1908.";
HLAIndexTable["NA"][2]="In learning about the first settlements of the Old Kingdom there is little archaeological information due to the reuse of the sites.";
HLAIndexTable["EG"][2]="Texts from this period is fairly limited, but we do have information from Herodotus, Manetho and other non-contemporaries about the Old Kingdom.";
HLAIndexTable["GS"][2]="Memphis, the capital in the Old Kingdom was located in Lower Egypt on the West bank of the Nile.";
--First Intermediate
HLAIndexTable["OA"][3]="With the kingdom divided into separate nomes, the first step to reuniting will be to set up a new capital city.";
HLAIndexTable["NA"][3]="Archaeological evidence from the First Intermediate shows the primacy of Waset, the Egyptian name for Thebes. Setting up the capital here is important to the other eras.";
HLAIndexTable["EG"][3]="Mentuhotep II is credited with the reunification from the capital of Thebes because of his Horus name Sematawy which means the ¡®uniter of two lands'.";
HLAIndexTable["GS"][3]="The dissolution of the Memphite dynasty led to drastic changes in Egypt. Set up your capital before you attempt to address the problems.";
--Middle Kingdom
HLAIndexTable["OA"][4]="With Egypt reunified, the first order of business will be to pick a capital and then extend into other lands. Archaeological evidence from this period shows a rise in foreign goods. ";
HLAIndexTable["NA"][4]="A strong government requires a strong capital which according to archaeological evidence was founded in the 11th dynasty at Thebes.";
HLAIndexTable["EG"][4]="Texts and inscriptions found throughout Egypt in this period reveal a self-reliance and personal information about officials; a strong capital is needed to unite and prevent disintegration.";
HLAIndexTable["GS"][4]="The 11th dynasty settled at Thebes, but the 12th dynasty moved the capital to el-Lischt in order to maintain trade routes with Asia.";
--Second Intermediate
HLAIndexTable["OA"][5]="The Hyksos have gained control over Lower Egypt, it is important that we settle in Upper Egypt and begin to re-assert our dominance.";
HLAIndexTable["NA"][5]="Archaeological evidence shows that Egypt was forced to withdraw from their mining and trading activities during this period due to internal fragmentation.";
HLAIndexTable["EG"][5]="Stelae inscriptions show a change in the names of kings of Egypt from Egyptian to Asiatic in their origin.";
HLAIndexTable["GS"][5]="The Hyksos have taken over, and are beginning to assert their control through taxes and trade routes. It is important that we settle so that we can rebuild.";
--New kingdom
HLAIndexTable["OA"][6]="Before we make contact with foreign civilizations that will help us expand, its important to settle where we will have our capital.";
HLAIndexTable["NA"][6]="The first duty of the pharaoh is to determine the location of the capital, the earliest chose Thebes located on the East side of the Nile in the Upper Kingdom.";
HLAIndexTable["EG"][6]="The Stela of Ahmose shows the king's link to the Theban dynasty, which explains why he chose to make Thebes the capital of the New Kingdom.";
HLAIndexTable["GS"][6]="The growth of Egyptian civilization was not as divided as these scenarios make it appear, in fact most periods attempted to maintain the organization and government of previous dynasties. When Ahmose began the \"New\" kingdom after the Hyksos were expelled he simply brought back the previous system under his new dynasty."
--====================================================================
--After 15 Turns HLA dialog (7-12)
--Predynastic
HLAIndexTable["OA"][7]="Pottery changes drastically in the Naqada III period in the Lower Kingdom. This suggests that there was a major change in culture, which Petrie attributes to migration from the eastern Mesopotamian region.";
HLAIndexTable["NA"][7]="The change in pottery during the Naqada III period isn't suggestive of Mesopotamia, but rather shows the spread of culture from the Upper to Lower kingdoms. This means more internal change.";
HLAIndexTable["EG"][7]="Inscribed artifacts like the Narmer palette or the Scorpion mace head depict warfare. This means we should build our army in order to conquer the other nations.";
HLAIndexTable["GS"][7]="Doesn't the Scorpion mace head also have scenes of peaceful activities? Maybe unification came about because of more than just warfare.";
--Old Kingdom
HLAIndexTable["OA"][8]="";
HLAIndexTable["NA"][8]="";
HLAIndexTable["EG"][8]="";
HLAIndexTable["GS"][8]="";
--First Intermediate
HLAIndexTable["OA"][9]="In order to understand the state of Egypt in this period you will need to expand your grasp. Send out scouts to explore.";
HLAIndexTable["NA"][9]="Geoarchaeology from this period shows that it was a time of famine. Build up your farms and food stores.";
HLAIndexTable["EG"][9]="The Heracleopolitan dynasty has divided the kingdom into provinces as seen in the Teaching for Merikare: 'See, [the land] which they destroyed is made into districts and every great city is restored. The governance of each one is in the hands of ten men, a magistrate is appointed who will levy the amount of all taxes'.";
HLAIndexTable["GS"][9]="Trade is one of the primary ways that favor was gained during this period. If you have large stores of goods you will be able to gain allies faster.";
--Middle Kingdom
HLAIndexTable["OA"][10]="Excavations in Lower Nubia show a rise in the number of Egypt built fortresses. Expand your influence into Nubia.";
HLAIndexTable["NA"][10]="Under Senusret I there was an increase in construction of monuments, temples and even non-royal structures. Solidify the internal affairs first.";
HLAIndexTable["EG"][10]="";
HLAIndexTable["GS"][10]="";
--Second Intermediate
HLAIndexTable["OA"][11]="War with the Hyksos and Kerma is imminent, gain the support of the other Egyptians and the Medjay for victory.";
HLAIndexTable["NA"][11]="It is argued by some that evidence shows that the Hyksos slowly worked their way into the government before they gained control, if this is the case then perhaps negotiation will be more important than warfare.";
HLAIndexTable["EG"][11]="Get ready for war, Kamose wrote \"No man can settle down, when despoiled by the taxes of the Asiatics. I will grapple with him that I may rip open his belly! My wish is to save Egypt and to smite the Asiatic\".";
HLAIndexTable["GS"][11]="A number of Egyptian god and goddess statues have been found throughout the Mediterranean and Middle East showing that the Hyksos were active in usurping and selling Egyptian religious items, another reason they were unpopular rulers.";
--New kingdom
HLAIndexTable["OA"][12]="The famous 'Punt Reliefs' from Deir el-Behri, Hatshepsut's mortuary temple, depict epic journeys through the desert, across the Red Sea, to trade with Kush for exotic goods. Focus on sailing and the settling of a port city.";
HLAIndexTable["NA"][12]="Archaeological evidence shows that the Hyksos had a major influence on Egyptian military. Focus on creating War charioteers.";
HLAIndexTable["EG"][12]="The Israel Stela records the battle of Merneptah against the Libyans. The text records that the victory was sealed through the use of archers raining their arrows on the enemy. You should focus on developing this method of warfare.";
HLAIndexTable["GS"][12]="In the New Kingdom, there is a rise in the power of the Queen, named \"God's Wife of Amun\". Power and independence are given to the King's sister, wife and mother. ";

--====================================================================
--After 25 Turns HLA dialog (15 - 20)
--Predynastic
HLAIndexTable["OA"][15]="There are a large number of foreign goods in Lower Egypt. Making contact with other nations and trading is going to be important in creating a unified kingdom.";
HLAIndexTable["NA"][15]="Archaeological work done at Minshat Abu Omar suggests that there was more continuous cultural evolution from separate polities into a unified kingdom. There are no abrupt changes in artifacts or symbols.";
HLAIndexTable["EG"][15]="The Bull Palette is another piece of evidence, which supports warfare as the reason for unification. It shows a bull trampling a Northern Egypt inhabitant.";
HLAIndexTable["GS"][15]="Be careful of the conclusions drawn from inscriptions and text in this period since there are very few of them. The importance and meaning behind the spares inscriptions may be exaggerated.";
--Old Kingdom
HLAIndexTable["OA"][16]="";
HLAIndexTable["NA"][16]="";
HLAIndexTable["EG"][16]="";
HLAIndexTable["GS"][16]="";
--First Intermediate
HLAIndexTable["OA"][17]="We don't know much about this period from archaeology, so it will be important to send out scouts to explore and see what the current state of the land is.";
HLAIndexTable["NA"][17]="There is little archaeological evidence from this time period, so do your best with the limited textual information. We don't actually know the exact process by which history occurred here.";
HLAIndexTable["EG"][17]="Famine has struck as seen in the writing by Ankh-tifi: 'The whole of Upper Egypt died of hunger and each individual had reached such a state of hunger that he ate his own children'.";
HLAIndexTable["GS"][17]="Providing food may be important for trade. The stele of Iti show further evidence of hunger 'I made Gebelein live during the years of misery, at a time when 400 men found themselves in. I gave wheat from Upper Egypt to luni and to Hefat after Gebelein had been sustained; at a time when Thebes descended and ascended the stream to search for grain'.";
--Middle Kingdom
HLAIndexTable["OA"][18]="The most important thing is to open up trade with Punt, it is from here that Egypt will gain knowledge about new technology and exotic goods.";
HLAIndexTable["NA"][18]="";
HLAIndexTable["EG"][18]="The Hammamat Inscriptions of Henenu speak of the glories of trade with Punt: \"I executed the commands of his majesty, and I brought for him all the gifts, which I had found in the region of God's Land\".";
HLAIndexTable["GS"][18]="";
--Second Intermediate
HLAIndexTable["OA"][19]="The Hyksos have an advantage over us, the use of the horse and chariot. Interaction with them may allow for Egypt to gain use of the technology. Petrie suggested it was this technology which led to such an easy takeover to begin with.";
HLAIndexTable["NA"][19]="The horse and chariot do not explain their takeover, no archaeological evidence from Avaris shows the presence of chariots and there is limited evidence of horses, only some teeth.";
HLAIndexTable["EG"][19]="History written by Flavius, 1,600 years after this era, notes that the Hyksos were fierce invaders who destroyed Egyptian cities. If this is true we need to be prepared for attacks from them.";
HLAIndexTable["GS"][19]="The history by Flavius is extremely suspect given how much later it was written.";
--New kingdom
HLAIndexTable["OA"][20]="Excavations by August Mariette in the 19th century at Seti I's Abydos temple show the importance of warfare with foreign nations. Send out scouts to the North!";
HLAIndexTable["NA"][20]="NA: There are a high number of temples that have been excavated showing the importance of the cults and religion in this period. Construction of temples and burial tombs will promote maat and increase happiness.";
HLAIndexTable["EG"][20]="Make sure you have many farms to feed the army, one New Kingdom text states \"He is hungry, his belly is in pain. He is dead whilst yet alive\" in regards to the army rations.";
HLAIndexTable["GS"][20]="Maintaining the religious beliefs are extremely important as evidenced by the problems that arose during the reign of Akhenaten when he removed many of the gods in favor of worshipping a single sun god- Aten.";

--====================================================================
--New Kingdom Research Undertaken (13 - 14)
--Optics
HLAIndexTable["OA"][13]="Excavations by Petrie at Amarna revealed a high number of glass objects, as well as the artifacts that would have been required to make optical glass- although no optical glass itself was found.";
HLAIndexTable["NA"][13]="Archaeological excavations at the site of Piramesses have evidence of a glass-making workshop. There was evidence of all stages of glass production, and finished artifacts of faience, glass beads, and glass ingots for producing glass vessels. This suggests optical technology was possible.";
HLAIndexTable["EG"][13]="researching optics!";
HLAIndexTable["GS"][13]="Earlier versions of lenses have been recorded in the Old Kingdom found in the eyes of statues, although no practical uses have been discovered.";
--Iron Working
HLAIndexTable["OA"][14]="Excavations by Petrie found a high number of iron tools, with swords being one of the most frequent. He argued that the source of iron came from the Hittites.";
HLAIndexTable["NA"][14]="Iron working artifacts such as hammerstones and tongs have been found, showing that the Egyptians were indeed making iron tools themselves.";
HLAIndexTable["EG"][14]="The annals of Thutmose III show that iron was received from Asian nations: \"[The tribute of the chief] of Tinay: a silver vessel of the work of the Keftyew, together with vessels of iron, 4 hands of silver, making 56 deben, 1 kidet...";
HLAIndexTable["GS"][14]="Iron working is a game changer for the Egyptians. It allowed them to make lighter and stronger swords. Without it, the swordsmen would not have been as effective in battle.";
--====================================================================
--Meet Leaders (84 - 119)

	--Predaynastic
HLAIndexTable["OA"][84]="The Fayum area has been densely occupied for at least 20,000 years. Since they are not as advanced as us we should try to conquer them.";
HLAIndexTable["NA"][84]="The argument that they are not as advanced is based on the notion that pottery was imported rather than made locally, we actually don't know that much about this area.";
HLAIndexTable["EG"][84]="The Narmer palette shows that the Northern peoples like those in the Fayum were pictured as being decapitated by the Southern king.";
HLAIndexTable["GS"][84]="One argument based on pottery and iconography from the Northern area argues that they had already begun the process of unification. It is possible that Fayum is already allied with Badari so attacking one may mean war with the other also.";

HLAIndexTable["OA"][85]="Three of the most well-known mace heads were recovered from this location. Whether this indicates that they created them or another kingdom put them here to assert their ideology, we do not know.";
HLAIndexTable["NA"][85]="Qift, which will later be known as Hierakonpolis, is a major site throughout Egyptian history and consistently powerful. Be careful with them.";
HLAIndexTable["EG"][85]="";
HLAIndexTable["GS"][85]="Based on cemetery evidence, it appears that Qift was very powerful in the Middle Predyanstic period, but was overtaken by Abydos in the Late Predynastic.";

HLAIndexTable["OA"][86]="W.J. Petrie's work around Nekhen showed that walls heavily fortified it. This could mean that they are expecting a fight. Be careful when dealing with them.";
HLAIndexTable["NA"][86]="This polity is a dominant force during this time period, which is seen in the ambitious building practices and ceremonial development.";
HLAIndexTable["EG"][86]="Both the Narmer and Scorpion palettes were found in this region, which is evidence of this polity's importantance.";
HLAIndexTable["GS"][86]="";

HLAIndexTable["OA"][87]="";
HLAIndexTable["NA"][87]="";
HLAIndexTable["EG"][87]="The Scorpion mace head shows dead birds hanging from the standards of the South. The birds are thought to represent the conquered North. ";
HLAIndexTable["GS"][87]="One argument based on pottery and iconography from the Northern area argues that they had already begun the process of unification. It is possible that Badari is already allied with Fayum so attacking one may mean war with the other also.";

HLAIndexTable["OA"][88]="Maadi, later known as Abydos, is an important area throughout Egyptian history. They are powerful and should be dealt with carefully.";
HLAIndexTable["NA"][88]="For hundreds of years this area has served as the placement of elite burials, but this doesn't mean they were the center of power.";
HLAIndexTable["EG"][88]="Religion was an important part in the unification process, therefore this region, which has the earliest elite burial sites, is likely to be a vital area to gain control of through conquest or alliance.";
HLAIndexTable["GS"][88]="Wasn't this the name of the hero in Frank Herbert's book Dune? Oh, I guess its also an ancient city.";

HLAIndexTable["OA"][89]="";
HLAIndexTable["NA"][89]="";
HLAIndexTable["EG"][89]="";
HLAIndexTable["GS"][89]="";

	--Old Kingdom
--Khaset
HLAIndexTable["OA"][90]="";
HLAIndexTable["NA"][90]="";
HLAIndexTable["EG"][90]="";
HLAIndexTable["GS"][90]="Khaset is located in Lower Egypt, whose name means 'Mountain bull', and it had temples dedicated to Wadjet and Ra.";
--Ta-Seti
HLAIndexTable["OA"][91]="Ta-Seti is in an important location. It serves as the border between Egypt and Nubia, and therefore has control over trade. Maintaining a close watch over them is important.";
HLAIndexTable["NA"][91]="Pharaohs in this period had absolute power, as evidenced by the magnificent monuments dedicated to them. Your nomes should be open to you at all times.";
HLAIndexTable["EG"][91]="";
HLAIndexTable["GS"][91]="Ta-Seti is a nome in Upper Egypt, called the 'Land of the Bow', with temples primarily dedicated to Horus.";
--Herui
HLAIndexTable["OA"][92]="";
HLAIndexTable["NA"][92]="";
HLAIndexTable["EG"][92]="";
HLAIndexTable["GS"][92]="Herui is located in Upper Egypt, named for the 'Two Falcons', and has temples dedicated to Amsu, Min, and Khem.";
--Waset
HLAIndexTable["OA"][93]="";
HLAIndexTable["NA"][93]="";
HLAIndexTable["EG"][93]="";
HLAIndexTable["GS"][93]="Waset is a nome in Upper Egypt, named after the 'Was Serpent', with temples dedicated to Amun, Mut and Khonsu.";
--Ten
HLAIndexTable["OA"][94]="";
HLAIndexTable["NA"][94]="";
HLAIndexTable["EG"][94]="";
HLAIndexTable["GS"][94]="Ten is a nome in Upper Egypt, named after a shrine and dedicated to Horus.";
--Abdju
HLAIndexTable["OA"][95]="Abydos is an important cult center in Egypt. During the fifth dynasty, the priests were freed from local official control and served only the temple. Granting them favors will bring you favors.";
HLAIndexTable["NA"][95]="Following the fifth dynasty, Abydos became an area where elites and royalty were buried. It is an important archaeological site.";
HLAIndexTable["EG"][95]="Inscriptions from tombs show the importance of temples and cults during this period. Given that Abydos is the most important cult center it would be best to treat them kindly.";
HLAIndexTable["GS"][95]="Abdju is a nome in Upper Egypt, named for the 'Big Country', with temples dedicated to Khentamenty: 'the One of the head of the West'";

	--First Intermediate
--Atef-Khent
HLAIndexTable["OA"][96]="Over the past years, Khety has been dealing with invasions from Asiatics, weakening his grasp on some of the more Southern nomes. Now is your chance!";
HLAIndexTable["NA"][96]="Be careful with your interactions. While there is momentary peace we know it cannot have lasted.";
HLAIndexTable["EG"][96]="Khety is a powerful leader, in his letter to his son he writes 'I rose as ruler in my city¡­ I pacified the west as far as the sand dunes of the Fayum¡­ the temples say of me: O Great One, men salute you'.";
HLAIndexTable["GS"][96]="Khety is the king of the Heracleopolitan dynasty. This dynasty believes that they are the rightful inheritors of the throne and that territories should be run by a nomarch instead of a central government.";
--Heq-At
HLAIndexTable["OA"][97]="Ankhtifi was a powerful leader and while his loyalty is to Upper Egypt you will need to interact with him carefully.";
HLAIndexTable["NA"][97]="Ankhtifi's tomb was discovered in the 1920's by French archaeologists. The inscriptions and images give an important look into this period. ";
HLAIndexTable["EG"][97]="From inscriptions on Ankh-Tifi's tomb, we know we gained many followers and united a number of nomes by providing grain in hard times: 'I was the man who found the solution when it was lacking in the country thanks to poor decisions¡­ I gave bread to the hungry and clothing to the naked; I anointed those who had no cosmetic oil; I gave sandals to the barefooted'.";
HLAIndexTable["GS"][97]="Anktifi is portrayed as a savior of Egypt, as also a warrior- tread carefully.";
--Aneb-Hetch
HLAIndexTable["OA"][98]="The alliance between Coptos and Thebes is extremely important in gaining control over the kingdom. Ally with them to increase your power.";
HLAIndexTable["NA"][98]="";
HLAIndexTable["EG"][98]="As evidenced by the royal decrees from Thebes, a marriage between Shemai of Coptos and a daughter of Thebes made them allies throughout this period. Giving favor through trade and friendship should be easy.";
HLAIndexTable["GS"][98]="";
--Abdju
HLAIndexTable["OA"][99]="From history we know that Abydos was a continual site of conflict during this period. The Heracleopolitan and Theban dynasties fought for dominance here.";
HLAIndexTable["NA"][99]="Archaeology work done shows that there was a change in funerary traditions during this period at Abydos with more middle class individuals getting funeral centotaphs.";
HLAIndexTable["EG"][99]="Abydos was a major center of religious pilgrimage throughout the Egyptian kingdom, although its popularity increased during this period.";
HLAIndexTable["GS"][99]="Abdju is a nome in Upper Egypt, named for the 'Big Country', with temples dedicated to Anhur, Isis and Osiris.";
--Ta-Seti
HLAIndexTable["OA"][100]="Petrie identified a number of foreign tombs around this area that date to the First Intermediate period. They may have had an important foreign influence.";
HLAIndexTable["NA"][100]="A statue of the Theban leader Intef II was found at Yebu, suggesting that his authority extended here. This should make alliance or conquering easy.";
HLAIndexTable["EG"][100]="Ta-Seti was once controlled by Ankh-Tifi as seen from his biography: 'I cared for the house of Elephantine and for the town Iat-negen in these years after Hefat and Hor-mer had been satisfied..... I was like a (sheltering) mountain for Hefat and like a cool shadow for Hor-mer'.";
HLAIndexTable["GS"][100]="Ta-Seti is a nome in Upper Egypt, called the 'Land of the Bow', with temples primarily dedicated to Horus.";
--Lycopolis
HLAIndexTable["OA"][101]="The ruler of Lycopolis supports the Heracleopolitan dynasty, and was a strong ruler in a time when rule was absent.";
HLAIndexTable["NA"][101]="";
HLAIndexTable["EG"][101]="Lycopolis truly believes that Khety will be the reuniting force of Egypt, as evidenced by the writings of Akhtoy, son of Tefibi: 'the great ones of Heracleopolis, the district [of (?)] the queen of the land, who came to repel the evil-doer'.";
HLAIndexTable["GS"][101]="Lycopolis is in the thirteenth nome and is known for the temples dedicated to Wepwawet, a canine god who opened paths to the underworld.";

	--Middle Kingdom
--Middle Nubia
HLAIndexTable["OA"][102]="Cemeteries throughout their region have revealed a large number of potsherds. Their development appears to be fueled by external forces.";
HLAIndexTable["NA"][102]="Numerous potsherds from the Toshka Nubians have cultural elements indicative of trade with the Medjay. They may have an alliance, so tread lightly.";
HLAIndexTable["EG"][102]="inscriptions on the Semna stela speak of the total control over Nubian trade: \"Southern boundary, made in the year 8, under the majesty of the King of Upper and Lower Egypt, Senusret III, who is given kife forever and ever; in order to prevent that any [Nubian] should cross it, by water or by land, with a ship, or any herds of the [Nubians]\".";
HLAIndexTable["GS"][102]="In order to maintain control of the Nile and trading, there needs to be complete control over Nubia.";
--Lower Nubia
HLAIndexTable["OA"][103]="The site of Buhen was excavated by Walter Emery as part of the Egypt Exploration Society in the mid-20th century. ";
HLAIndexTable["NA"][103]="The Nubians from Buhen are known for the Egyptian fortification there and a history of Egyptian occupation since the 2nd dynasty. ";
HLAIndexTable["EG"][103]="The inscription of Ameni speaks of a bloodless takeover in Nubia: \"Following his majesty, I returned, sharp of face, and without loss of my soldiers\".";
HLAIndexTable["GS"][103]="Buhen was an occupied city, with Egyptian officials living in the core of the fortification and the Nubians living in the outer circle of the ramparts. Given this, it shouldn't be too difficult to overcome them.";
--Upper Nubia
HLAIndexTable["OA"][104]="The excavations at Semna were done by Henry Breasted in the early 20th century.";
HLAIndexTable["NA"][104]="Archaeological excavations have revealed a large fortress at Semna in Nubia built of mud brick and wooden beams in order to protect Egypt from invasions. This civilization will not easily allow Egypt to conquer it.";
HLAIndexTable["EG"][104]="From the inscriptions on the tomb of Amenemhet I, it speaks of his conquest of Nubia, that he \"seized the people of Wawat\".";
HLAIndexTable["GS"][104]="What the new archaeologist left out was that the fortress at Semna had a large breach in the southern wall. Don't underestimate the Nubians. ";
--Lower Kerman
HLAIndexTable["OA"][105]="";
HLAIndexTable["NA"][105]="There is no archaeological evidence that Egypt conquered Kerma during this period, although it is highly possible given what we know of their relationship in other periods.";
HLAIndexTable["EG"][105]="Texts show that Kush was subjugated during this period: \"His majesty arose, and went in peace. He overthrew his enemies in Kush\".";
HLAIndexTable["GS"][105]="During the Middle Kingdom, the Kingdom of Kerma is on the rise but not yet reaching the power of Egypt. They will not interfere with conquests in Nubia¡­ yet.";
--Upper Kerman
HLAIndexTable["OA"][106]="The actual location of Punt has long been debated, and so far no archaeologist has yet to find its true location.";
HLAIndexTable["NA"][106]="Finding the location of Punt will be difficult since it is almost a land of myth in Egyptian texts. The best bet will be to establish where Egypt traded in order to uncover its location.";
HLAIndexTable["EG"][106]="From inscriptions we know that Punt was an extremely rich land: \"loading of the ships very heavily with marvels of the country of Punt; all goodly fragrant woods of God's-Land [the East], heaps of myrrh resin, with fresh myrrh trees, with ebony and pure ivory, with green gold of Emu, with cinnamon wood, khesyt wood, with two kinds of incense, eye-cosmetic, with apes, monkeys, dogs, and with skins of the southern panther, with natives and their children\".";
HLAIndexTable["GS"][106]="Even texts about Punt are vague about its location, perhaps due to its mythological status. We do know it is accessible by land or sea, and was a tropical region.";
--Medjay
HLAIndexTable["OA"][107]="Texts show variation in interactions with the Medjay during this period as fierce enemies and loyal allies.";
HLAIndexTable["NA"][107]="Evidence of the Medjay from this period shows that they are a threat. One fortress in Nubia was specifically named Khesef-Medjay which translates at \"Repelling the Medjay\".";
HLAIndexTable["EG"][107]="The Medjay are listed as one of the foes of Egypt in the Execration Texts from the 11th and 12th dynasties.";
HLAIndexTable["GS"][107]="The Medjay are a nomadic tribal culture found in the deserts of Nubia. During this period, they were a source of major problems often interrupting trade.";

	--Second Intermediate
--Kerman
HLAIndexTable["OA"][108]="Excavations by George Reisner at Kerma show that it did indeed rise to power in this era, but primarily it co-opted the power, language and ways of Egypt in order to successfully take Nubia.";
HLAIndexTable["NA"][108]="Graves of Kerma leaders in Upper Egypt makes it difficult to discern whether they were Egyptians buried in a Kerma fashion, or Kerma people buried in Egyptian terrirtory, regardless the presence of Kerma pottery shows a growing influence in this period.";
HLAIndexTable["EG"][108]="The power of Kerma during this period led to Egyptians defecting to their side. Commander Sepedher, an Egyptian, wrote after the Hyksos invasion that he \"built the temple of Horus, Lord of Buhen, to the satisfaction of the Ruler of Kush\".";
HLAIndexTable["GS"][108]="Power at Kerma rose when Egypt fell under Hyksos control; order must be restored in Lower Egypt to gain control of Nubia again.";
--Lower Hyksos
HLAIndexTable["OA"][109]="Egypt was weakened by internal problems, which allowed for a foreign ruler to gain control over Lower Egypt.";
HLAIndexTable["NA"][109]="Although traces of the Hyksos invasion was wiped from Egypt, evidence of kings with Hyksos names has been found on small coins and inscriptions.";
HLAIndexTable["EG"][109]="There is a change in King lists during this period which shows the rise of Hyksos kings to Egyptian power. Egyptians called these kings heqa-khasut, rulers of foreign lands.";
HLAIndexTable["GS"][109]="The Hyksos at Avaris are the rulers of Egypt during this period. They control Lower Egypt, levy taxes on the Egyptians, and control the trade routes.";
--Upper Hyksos
HLAIndexTable["OA"][110]="Interaction with the Hyksos is important to Egyptian development. It was through their relationship that the Egyptians gained the compound bow, horses, and chariots.";
HLAIndexTable["NA"][110]="The actual site of Sharuhen or Gaza has not been found, Petrie believed it was Tell el-Ajjul, but other archaeologists believe it may be Tell el-Farah.";
HLAIndexTable["EG"][110]="This is the last refuge of the Hyksos, in Egyptian texts from this period the control of Gaza meant control over the Middle East and trade routes. ";
HLAIndexTable["GS"][110]="Gaza is an important trade route, control of it will be important in the future. It was also known as Sharuhen. ";
--Middle Hyksos
HLAIndexTable["OA"][111]="Nefrusy is an Egyptian settlement where garrisons were co-opted by the Hyksos. It will be quickly overrun because the soldiers' loyalty is flexible. ";
HLAIndexTable["NA"][111]="The city of Nefrusy has not been found yet, although it is believed to be north of Cusae and very close to the later city of Akhetaten.";
HLAIndexTable["EG"][111]="The texts of Kamose speak of the hatred of Nefrusy due to their lack of loyalty. He speaks of how they were tricked by the Hyksos, and how easily he was able to destroy them.";
HLAIndexTable["GS"][111]="This is the first major area where Egyptians rebelled against the Hyksos.";
--Aneb-Hetch
HLAIndexTable["OA"][112]="Evidence shows that while under Hyksos rule the Theban leaders slowly built up their armies to prepare for battle- perhaps then alliance is the best choice of action.";
HLAIndexTable["NA"][112]="Archaeology shows little evidence of total domination by the Hyksos, but rather taxation and leadership over the people.";
HLAIndexTable["EG"][112]="Texts from this period show that the Theban kings here were puppet rulers of the Hyksos, and paid taxes to them to avoid conflict and maintain their power.";
HLAIndexTable["GS"][112]="Aneb-Hetch is a nome of Upper Egypt where Memphis lies. It remained Egyptian throughout the Second Intermediate.";
--Medjay
HLAIndexTable["OA"][113]="The Medjay are a foreign nation of archer warriors, it is important to gain their support since they are pivotal in Egypt's success.";
HLAIndexTable["NA"][113]="Archaeological evidence for the Medjay is fairly slim, although there are small wooden sculpture of the warrior-archers found in tombs throughout the period.";
HLAIndexTable["EG"][113]="Unlike the previous era where the Medjay were hired as mercenaries, during this period they were allies of Egypt according to the Carnarvon Tablet written for Kamose: \"I sent forth a strong troop of Mazoi\".";
HLAIndexTable["GS"][113]="The Medjay are a simple and tribal society, primarily nomadic. They are located to the East of Egypt in the deserts.";

	--New Kingdom
--Hittite 19
HLAIndexTable["OA"][114]="One of the figurines found in Egypt of the lion goddess Qedesh is influenced by the Hittites. This shows their importance in shaping the growth of our Kingdom, it is important to learn from them.";
HLAIndexTable["NA"][114]="Hittite hieroglyphics are found throughout the coast suggesting that they were present in the area prior to the battle of Kadesh in 1274 BCE, and were a powerful force in preventing Egyptian conquest of Northern Syria.We need to beware interpretations of the Hittites made from documents as many of these are Egyptian written and therefore biased towards them. There is little archaeological evidence left of the Hittites."
HLAIndexTable["EG"][114]="There are a number of historical documents covering the battle of Kadesh, a war between the Hittite and Egyptian empires. \"Of Egypt in the battle, be our ward; Behold we stand alone, in the hostile Hittite ring\"."
HLAIndexTable["GS"][114]="The Hittite empire is located where modern day Turkey lies although their empire expanded westward during the 14th century. Evidence dates this kingdom from the 18th to 11th centuries BCE. ";
--Mitanni 18
HLAIndexTable["OA"][115]="Archaeological evidence shows that Egypt was dominant throughout Syra-Palestine during the New Kingdom. This is supported by the Archaeology of Petrie and Albright, as well as historical documents."
HLAIndexTable["NA"][115]="There is archaeological evidence that there was chariot based warfare between Mitanni and Egypt over the land of Canaan, therefore it is better to fight them than make peace.New evidence from Syria-Palestine shows that there was a lot of struggle between Egypt and other civilizations in the North. We cannot assume dominance based on their own texts.";
HLAIndexTable["EG"][115]="In letters from Tushratta, king of Mitanni, to Amenhotep III, a prior pharaoh, he speaks of how the bond between the two kingdoms was strengthened by the marriage of Tushratta's daughter to Amenhotep III. We should pursue peaceful diplomacy with this kingdom."
HLAIndexTable["GS"][115]="Mitanni is an ancient kingdom found in modern day Northern Iraq. They briefly maintained a strong kingdom from the 15th to 13th century.";
--Assyria 20
HLAIndexTable["OA"][116]="In the Amarna texts, the Assyrian king sent gifts of horses and chariots to Pharoah. This means by interacting with them we can gain necessary resources.";
HLAIndexTable["NA"][116]="While there are the appearance of Assyrian goods in Egypt evidencing their tribute, there have also been caches of Egyptian gold appearing. The tribute and gifts seems to have flowed both ways.";
HLAIndexTable["EG"][116]="Text from the 25th dynasty reads that the Assyrian King Asarhaddon wrote \"I conquered Egypt, Upper Egypt, and Ethiopia (Musur, Patursi, and Kusi). Tirhakah, its king, five times I fought with him with my javelin, and I brought all of his land under my sway, I ruled it\". Watch out for Assyria."
HLAIndexTable["GS"][116]="Assyria is located in modern day Iraq, and during the New Kingdom of Egypt, Assyria rose to power and quickly conquered many neighboring civilizations as a major empire from the 13th to 10th centuries BCE.";
--Nubia 16
HLAIndexTable["OA"][117]="Similarity in the pottery and designs of Egypt and Nubia show that there was a lot of cultural diffusion between the two groups. Interacting with them will be beneficial to our own growth.";
HLAIndexTable["NA"][117]="Evidence from the archaeological site of Tombos shows that Egypt had military control over Nubian cities, although there is debate whether Egyptians ruled there or if they incorporated Nubians into their elite to be rulers.";
HLAIndexTable["EG"][117]="Papyrus documents from Egypt talk of Ahmose's conquering of Nubia: \"King Djeserkare, the justified, when he sailed south to Kush, to enlarge the borders\". They should be easy to control once again.";
HLAIndexTable["GS"][117]="Viewpoints of the Nubians are strongly biased because the records we have are mainly Egyptian. In the past they have been characterized as frontier barbarians, savage primitives and at the other extreme as overly decadent and fully Egyptian based on the changing interpretations of their origins and leaders. "
--Medjay 17
HLAIndexTable["OA"][118]="The success of the Egyptian armies in the New Kingdom is entirely dependent upon gaining support and the troops of the Medjay. Art from this period shows a change in the colors depicting warriors that support the use of foreigners. "
HLAIndexTable["NA"][118]="Painted figurines of the Medjay appear in Egyptian tombs in the New Kingdom, always depicted as warriors with bow and arrows.";
HLAIndexTable["EG"][118]="An Egyptian papyrus dispatch from Semna reads \"men of the Medjay... have descended from the desert in the year of the reign... they said: We have come to serve\". The Medjay are going to willingly join forces with us.The Medjay are a necessary force if we are to defeat the Northern civilizations as the Kamose inscription states: \"The troops of the Madjoi [Medjay] were on the upper part of our cabins, to seek out the Asiatics and to push back their positions\"."
HLAIndexTable["GS"][118]="While the term Medjay was originally Medja, and referred to an area in Nubia, by the New Kingdom it had become synonymous with policeman- because that was their primary role.";
--Kush
HLAIndexTable["OA"][119]="There are a number of tumuli found at Kush suggesting that Egyptian governors lived there, according to Reisner. Given this evidence they should be fairly easy to conquer since we know we have some control."
HLAIndexTable["NA"][119]="Those tumuli from the second intermediate don't belong to Egyptian governors, but are Kush rulers who included Egyptian artifacts in their tombs as elite trade goods. Beginning a war with Kush should be approached with some caution- perhaps try trading first."
HLAIndexTable["EG"][119]="Inscriptions and papyrus texts show that Egypt controlled much of Kush in the early New Kingdom, there was high taxation levied on them. This means that we should demand tribute be paid to us.";
HLAIndexTable["GS"][119]="Kush held a lot of power during the Second Intermediate period, and will again in the Third Intermediate period... tread lightly.";

--====================================================================
-- Victory 120-125
--Predynastic
HLAIndexTable["OA"][120]="";
HLAIndexTable["NA"][120]="";
HLAIndexTable["EG"][120]="";
HLAIndexTable["GS"][120]="";
--Old Kingdom
HLAIndexTable["OA"][121]="";
HLAIndexTable["NA"][121]="";
HLAIndexTable["EG"][121]="";
HLAIndexTable["GS"][121]="";
--First Intermediate
HLAIndexTable["OA"][122]="";
HLAIndexTable["NA"][122]="";
HLAIndexTable["EG"][122]="";
HLAIndexTable["GS"][122]="";
--Middle Kingdom
HLAIndexTable["OA"][123]="";
HLAIndexTable["NA"][123]="";
HLAIndexTable["EG"][123]="";
HLAIndexTable["GS"][123]="";
--Second Intermediate
HLAIndexTable["OA"][124]="";
HLAIndexTable["NA"][124]="";
HLAIndexTable["EG"][124]="";
HLAIndexTable["GS"][124]="";
--New kingdom
HLAIndexTable["OA"][125]="";
HLAIndexTable["NA"][125]="";
HLAIndexTable["EG"][125]="";
HLAIndexTable["GS"][125]="";

-- Defeat 126-131
--Predynastic
HLAIndexTable["OA"][126]="";
HLAIndexTable["NA"][126]="";
HLAIndexTable["EG"][126]="";
HLAIndexTable["GS"][126]="";
--Old Kingdom
HLAIndexTable["OA"][127]="";
HLAIndexTable["NA"][127]="";
HLAIndexTable["EG"][127]="";
HLAIndexTable["GS"][127]="";
--First Intermediate
HLAIndexTable["OA"][128]="";
HLAIndexTable["NA"][128]="";
HLAIndexTable["EG"][128]="";
HLAIndexTable["GS"][128]="";
--Middle Kingdom
HLAIndexTable["OA"][129]="";
HLAIndexTable["NA"][129]="";
HLAIndexTable["EG"][129]="";
HLAIndexTable["GS"][129]="";
--Second Intermediate
HLAIndexTable["OA"][130]="";
HLAIndexTable["NA"][130]="";
HLAIndexTable["EG"][130]="";
HLAIndexTable["GS"][130]="";
--New kingdom
HLAIndexTable["OA"][131]="";
HLAIndexTable["NA"][131]="";
HLAIndexTable["EG"][131]="1defeat";
HLAIndexTable["GS"][131]="";
--====================================================================
--Production Undertaken on Swordsman 23
HLAIndexTable["OA"][23]="Swords were introduced into Egypt by the New Kingdom called the khopesh. This weapon was copied from the Assyrian sword of similar design known as a sappara, and introduced to Egypt through the Hyksos.";
HLAIndexTable["NA"][23]="";
HLAIndexTable["EG"][23]="";
HLAIndexTable["GS"][23]="There is currently debate over how the khopesh was introduced into Egypt, whether through interaction with Canaan, Assyria or the Hyksos.";

--====================================================================
--Declare War 132-167

	--Predaynastic
HLAIndexTable["OA"][132]="";
HLAIndexTable["NA"][132]="There is no archaeological evidence of warfare, wouldn't we expect to find artifacts or cemeteries reflecting this?";
HLAIndexTable["EG"][132]="";
HLAIndexTable["GS"][132]="";

HLAIndexTable["OA"][133]="";
HLAIndexTable["NA"][133]="";
HLAIndexTable["EG"][133]="There is no archaeological evidence of warfare, wouldn't we expect to find artifacts or cemeteries reflecting this?";
HLAIndexTable["GS"][133]="";

HLAIndexTable["OA"][134]="";
HLAIndexTable["NA"][134]="";
HLAIndexTable["EG"][134]="There is no archaeological evidence of warfare, wouldn't we expect to find artifacts or cemeteries reflecting this?";
HLAIndexTable["GS"][134]="";

HLAIndexTable["OA"][135]="";
HLAIndexTable["NA"][135]="";
HLAIndexTable["EG"][135]="There is no archaeological evidence of warfare, wouldn't we expect to find artifacts or cemeteries reflecting this?";
HLAIndexTable["GS"][135]="";

HLAIndexTable["OA"][136]="";
HLAIndexTable["NA"][136]="There is no archaeological evidence of warfare, wouldn't we expect to find artifacts or cemeteries reflecting this?";
HLAIndexTable["EG"][136]="";
HLAIndexTable["GS"][136]="Given the important religious role this area plays, it might not be a good idea to engage with them in battle.";

HLAIndexTable["OA"][137]="";
HLAIndexTable["NA"][137]="";
HLAIndexTable["EG"][137]="";
HLAIndexTable["GS"][137]="";

	--Old Kingdom
--Khaset
HLAIndexTable["OA"][138]="";
HLAIndexTable["NA"][138]="";
HLAIndexTable["EG"][138]="";
HLAIndexTable["GS"][138]="";
--Ta-Seti
HLAIndexTable["OA"][139]="";
HLAIndexTable["NA"][139]="";
HLAIndexTable["EG"][139]="";
HLAIndexTable["GS"][139]="";
--Herui
HLAIndexTable["OA"][140]="";
HLAIndexTable["NA"][140]="";
HLAIndexTable["EG"][140]="";
HLAIndexTable["GS"][140]="";
--Waset
HLAIndexTable["OA"][141]="";
HLAIndexTable["NA"][141]="";
HLAIndexTable["EG"][141]="";
HLAIndexTable["GS"][141]="";
--Ten
HLAIndexTable["OA"][142]="";
HLAIndexTable["NA"][142]="";
HLAIndexTable["EG"][142]="";
HLAIndexTable["GS"][142]="";
--Abdju
HLAIndexTable["OA"][143]="";
HLAIndexTable["NA"][143]="";
HLAIndexTable["EG"][143]="";
HLAIndexTable["GS"][143]="";

	--First Intermediate
--Atef-Khent
HLAIndexTable["OA"][144]="John Henry Breasted argued that it was war that led to the unification of the kingdom in his early 1900's works.";
HLAIndexTable["NA"][144]="There is no archaeological evidence for war between the Theban and Heracleopolitan dynasties, but it is most likely it occurred.";
HLAIndexTable["EG"][144]="There is little information about rulers in this period, but Manetho, a third century BCE Egyptian historian wrote that Khety as a ruler was 'terrible beyond all before him'";
HLAIndexTable["GS"][144]="";
--Heq-At
HLAIndexTable["OA"][145]="";
HLAIndexTable["NA"][145]="While Ankh-tifi may say on his inscriptions that he won the other nomes through trade, it is possible he gained them through force. Beware!";
HLAIndexTable["EG"][145]="Beware war with Ankh-Tifi, on his tomb an inscription reads: 'Then my courageous crack troops, yes my bold crack troops, ventured to the west and the east of the Theban nome, looking for an open battle. But no one dared to come out from Thebes because they were afraid of my troops'.";
HLAIndexTable["GS"][145]="";
--Aneb-Hetch
HLAIndexTable["OA"][146]="";
HLAIndexTable["NA"][146]="I can't find any archaeology for this region¡­ you're on your own.";
HLAIndexTable["EG"][146]="";
HLAIndexTable["GS"][146]="";
--Abdju
HLAIndexTable["OA"][147]="";
HLAIndexTable["NA"][147]="There isn't any direct evidence for how Abydos was taken other than writings on tombs, and we must interpret these carefully.";
HLAIndexTable["EG"][147]="On the tomb of the Theban ruler Intef II it states that he conquered Abydos: 'I have captured Abydos and the whole surrounding region. I have broken into all of the fortress of the nome of Wadjet'.";
HLAIndexTable["GS"][147]="";
--Ta-Seti
HLAIndexTable["OA"][148]="";
HLAIndexTable["NA"][148]="I don't think there's evidence for this, but there isn't any to disagree with it either¡­";
HLAIndexTable["EG"][148]="Given that they were previously ruled by Ankh-Tifi after he conquered them it is possible that they were also conquered by Thebes.";
HLAIndexTable["GS"][148]="I really need to do more research on this period¡­ I'm at a loss";
--Lycopolis
HLAIndexTable["OA"][149]="Lycopolis is an important ally of Atef-Khent. Overthrow them!";
HLAIndexTable["NA"][149]="";
HLAIndexTable["EG"][149]="Tefibi prides himself on his ability to overthrow the Theban armies in his stela: 'The first time that my soldiers fought with the southern nomes, which came together southward as far as Elephantine and northward, they smote them as far as the southern boundary. When I came to the city, I overthrew the foe. I drove him as far as the fortress of the port of the South'.";
HLAIndexTable["GS"][149]="";

	--Middle Kingdom
--Middle Nubia
HLAIndexTable["OA"][150]="By taking over Nubia, Egypt gains control over a number of key trade routes.";
HLAIndexTable["NA"][150]="Excavations at the fortresses in Nubia show that Egypt was able to gain control by setting up this structures, but they left the Nubian culture intact.";
HLAIndexTable["EG"][150]="";
HLAIndexTable["GS"][150]="";
--Lower Nubia
HLAIndexTable["OA"][151]="";
HLAIndexTable["NA"][151]="In order to construct the infamous fortress of Buhen, it was first required that the Nubians were pacified. Excavations revealed the underlying structure which would have required subjugated natives to build so quickly.";
HLAIndexTable["EG"][151]="Conquering this group of Nubians should be easy, according to a scribe of Senusret III: \"But they are not a people of might, they are poor and broken in heart. My majesty has seen them; it is not an untruth\".";
HLAIndexTable["GS"][151]="";
--Upper Nubia
HLAIndexTable["OA"][152]="";
HLAIndexTable["NA"][152]="";
HLAIndexTable["EG"][152]="Inscriptions from the Semna stelae show that Egypt had gained control but allowed for the Nubians to continue their ways: \"Every good thing shall be done with them, but without allowing a ship of the [Nubians] to pass by Semna, going downstream forever\". Conquer and create a puppet state.";
HLAIndexTable["GS"][152]="";
--Lower Kerman
HLAIndexTable["OA"][153]="";
HLAIndexTable["NA"][153]="The excavation of fortresses near the border of Kerma may be evidence of warfare against them, or at least that they were a threat.";
HLAIndexTable["EG"][153]="There is textual evidence that Senusret III had a number of campaigns against Kush during this period although their outcome is unknown.";
HLAIndexTable["GS"][153]="";
--Upper Kerman
HLAIndexTable["OA"][154]="What are you doing? How can we learn from them if we attack them?";
HLAIndexTable["NA"][154]="";
HLAIndexTable["EG"][154]="This is not advised since we seek trade agreements with them as evidenced by inscriptions, not war!";
HLAIndexTable["GS"][154]="";
--Medjay
HLAIndexTable["OA"][155]="The relationship with the Medjay is an ever-changing one. Be careful in your choice to declare war since they have technology and skill we do not possess.";
HLAIndexTable["NA"][155]="";
HLAIndexTable["EG"][155]="The relationship of the Medjay during this period was complicated: \"Indeed, the desert is throughout the land, the nomes are laid waste, and barbarians from abroad have come to Egypt\". They could possibly be the barbarians discussed in the Admonitions of Ipuwar.";
HLAIndexTable["GS"][155]="";

	--Second Intermediate
--Kerman
HLAIndexTable["OA"][156]="It is important that Kerma is prevented from aiding the Hyksos. By fighting with Kerma we can cut off trade routes and support.";
HLAIndexTable["NA"][156]="Archaeological evidence of scarab coins in Kerma show the trade between the Hyksos and Kerma, but there is no clear evidence of warfare.";
HLAIndexTable["EG"][156]="From the history written by Manetho, we know that Apepi I, a Hyksos ruler, made a peace treaty with the people of Kerma. Beware, war with Kerma means war with the Hyksos.";
HLAIndexTable["GS"][156]="";
--Lower Hyksos
HLAIndexTable["OA"][157]="War with the Hyksos will be difficult due to their superior technology, however we can learn from them and use it as an advantage.";
HLAIndexTable["NA"][157]="Some archaeologists like Janine Bourriau argue that there was no Hyksos takeover since there is continuity in pottery styles throughout Egypt, this would mean that there is no need for war with them.";
HLAIndexTable["EG"][157]="Language shows that the Hyksos were tolerated but not welcome, they are always referred to as foreign invaders, and Kamose saw them as a \"stain\" upon Egypt. Expulsion is necessary.";
HLAIndexTable["GS"][157]="";
--Upper Hyksos
HLAIndexTable["OA"][158]="";
HLAIndexTable["NA"][158]="Archaeological evidence from the Gaza area shows that it contained a large number of strongholds for the Hyksos. These were destroyed by Ahmose when the Hyksos were expelled.";
HLAIndexTable["EG"][158]="War at Gaza is written about in the biography of Ahmose by one of his servants: \"Then Sharuhen [Gaza] was besieged for three years. His majesty despoiled it and I brought spoil from it: two women and a hand. Then the gold of valour was given me, and my captives were given to me as slaves\".";
HLAIndexTable["GS"][158]="";
--Middle Hyksos
HLAIndexTable["OA"][159]="Archaeologists in favor of a peaceful takeover by the Hyksos argue that there is no clear archaeological evidence of warfare.";
HLAIndexTable["NA"][159]="The Egyptian leader Seqenenre Tao II's mummy bears ax wound injuries, which according to history is due to his battling against the Hyksos.";
HLAIndexTable["EG"][159]="The text of Kamose reads \"The district of Nefrusy came down in submission: it did not take us long until it was hemmed in \".";
HLAIndexTable["GS"][159]=" It is difficult to know the nature of the battle between Egypt and the Hyksos at Nefrusy, since the inscriptions do not directly mention warfare.";
--Aneb-Hetch
HLAIndexTable["OA"][160]="";
HLAIndexTable["NA"][160]="";
HLAIndexTable["EG"][160]="Warfare within Egypt was taking place. After the defeat of Kerma, Ahmose was faced with rebellion from other Egyptians according to a scribe's account of his life. ";
HLAIndexTable["GS"][160]="Why are you fighting a city who is on your side? Try a different tactic.";
--Medjay
HLAIndexTable["OA"][161]="The benefits of peace with the Medjay far outweigh the benefits of war.";
HLAIndexTable["NA"][161]="";
HLAIndexTable["EG"][161]="This isn't right... war between Egypt and the Medjay only took place in the Middle Kingdom and earlier periods.";
HLAIndexTable["GS"][161]="";

	--New Kingdom
--Hittite 19
HLAIndexTable["OA"][162]="";
HLAIndexTable["NA"][162]="There is no archaeological evidence of the famous Battle of Kadesh or even war between the Hittites and Egyptians.";
HLAIndexTable["EG"][162]="Texts speak of Ramesses going to war against the Hittites well equipped with four armies known as the Amun, Re, Seth and Ptah divisions.";
HLAIndexTable["GS"][162]="Conflict between the Hittites and Egyptians has lasted throughout the middle of the New Kingdom due to each trying to claim the lands of Amurru in Syria. War was inevitable.";
--Mitanni 18
HLAIndexTable["OA"][163]="James Breasted's early 20th century work on epigraphic stone fragments argues that Ramesses was fairly successful at capturing a number of Mitanni's cities.";
HLAIndexTable["NA"][163]="Throughout the New Kingdom, Mitanni and Egypt battled over Syria and the access to its land and trade routes. This can be seen in the numerous artifacts from each civilization spread throughout Syria.";
HLAIndexTable["EG"][163]="On Karnak's sixth pylon are records of 17 military campaigns in the North, which included numerous battles against Mitanni. War is the historically accurate choice.";
HLAIndexTable["GS"][163]="Be wary of Breasted's interpretations as they were done from poems and their truth was doubted even by the Egyptians as contradictory evidence seems abundant.";
--Assyria 20
HLAIndexTable["OA"][164]="";
HLAIndexTable["NA"][164]="There is no archaeological evidence for what you are doing.";
HLAIndexTable["EG"][164]="There is no epigraphic evidence for what you are doing";
HLAIndexTable["GS"][164]="I'm confused, did I miss a chapter in my textbook where Egypt tried to takeover Assyria?";
--Nubia 16
HLAIndexTable["OA"][165]="";
HLAIndexTable["NA"][165]="While there is abundant evidence of Egyptian occupation, war is not necessarily the only course of action to gain power over Nubia and there is no direct evidence of it other than Egyptian written text.";
HLAIndexTable["EG"][165]="Using epigraphic evidence, declaring war is the correct choice of action.";
HLAIndexTable["GS"][165]="";
--Medjay 17
HLAIndexTable["OA"][166]="";
HLAIndexTable["NA"][166]="There is archaeological evidence that there was conflict between Egypt and the Medjay, but this was usually fought between Medjay who sided with Egypt and Medjay that remained independent.";
HLAIndexTable["EG"][166]="This is a bad idea getting into a war with the Medjay. They are fierce as evidenced by the fortress erected in Nubia known as \"Khesef-Medjay\" or \"Repelling the Medjay\".";
HLAIndexTable["GS"][166]="";
--Kush
HLAIndexTable["OA"][167]="A stela found by Petrie reads \"his majesty passed this canal in force and power in his campaign to crush Ethiopia the vile\", which supports a war between Egypt and Kush.";
HLAIndexTable["NA"][167]="War with Kush is not fully supported by archaeological evidence... we will have to do some more digging to figure out exactly the relationship between Kush and Egypt.";
HLAIndexTable["EG"][167]="According to the Tombos stela, Thutmose I conquered Kush in the New Kingdom as one of his first acts as pharaoh.";
HLAIndexTable["GS"][167]="";


--====================================================================
--HLA After 5 Rounds of War 168-203

	--Predaynastic
HLAIndexTable["OA"][168]="";
HLAIndexTable["NA"][168]="";
HLAIndexTable["EG"][168]="";
HLAIndexTable["GS"][168]="";

HLAIndexTable["OA"][169]="";
HLAIndexTable["NA"][169]="";
HLAIndexTable["EG"][169]="";
HLAIndexTable["GS"][169]="";

HLAIndexTable["OA"][170]="";
HLAIndexTable["NA"][170]="";
HLAIndexTable["EG"][170]="";
HLAIndexTable["GS"][170]="";

HLAIndexTable["OA"][171]="";
HLAIndexTable["NA"][171]="";
HLAIndexTable["EG"][171]="";
HLAIndexTable["GS"][171]="";

HLAIndexTable["OA"][172]="";
HLAIndexTable["NA"][172]="";
HLAIndexTable["EG"][172]="";
HLAIndexTable["GS"][172]="";

HLAIndexTable["OA"][173]="";
HLAIndexTable["NA"][173]="";
HLAIndexTable["EG"][173]="";
HLAIndexTable["GS"][173]="";

	--Old Kingdom
--Khaset
HLAIndexTable["OA"][174]="";
HLAIndexTable["NA"][174]="";
HLAIndexTable["EG"][174]="";
HLAIndexTable["GS"][174]="";
--Ta-Seti
HLAIndexTable["OA"][175]="";
HLAIndexTable["NA"][175]="";
HLAIndexTable["EG"][175]="";
HLAIndexTable["GS"][175]="";
--Herui
HLAIndexTable["OA"][176]="";
HLAIndexTable["NA"][176]="";
HLAIndexTable["EG"][176]="";
HLAIndexTable["GS"][176]="";
--Waset
HLAIndexTable["OA"][177]="";
HLAIndexTable["NA"][177]="";
HLAIndexTable["EG"][177]="";
HLAIndexTable["GS"][177]="";
--Ten
HLAIndexTable["OA"][178]="";
HLAIndexTable["NA"][178]="";
HLAIndexTable["EG"][178]="";
HLAIndexTable["GS"][178]="";
--Abdju
HLAIndexTable["OA"][179]="";
HLAIndexTable["NA"][179]="";
HLAIndexTable["EG"][179]="";
HLAIndexTable["GS"][179]="";

	--First Intermediate
--Atef-Khent
HLAIndexTable["OA"][180]="";
HLAIndexTable["NA"][180]="We know Thebes is victorious over Herakleopolis since they begin the next dynasty and era of Egyptian history, keep fighting!";
HLAIndexTable["EG"][180]="Everything in Khety's text to his son suggest that he was an extremely fierce leader who did not yield. 'I attacked This straight to its sountern border at Taut, I engulfed it like a flood'.";
HLAIndexTable["GS"][180]="";
--Heq-At
HLAIndexTable["OA"][181]="";
HLAIndexTable["NA"][181]="Regardless of what inscriptions on Ankh-Tifi's tomb say we know that Thebes defeated them. Keep up the attack.";
HLAIndexTable["EG"][181]="";
HLAIndexTable["GS"][181]="";
--Aneb-Hetch
HLAIndexTable["OA"][182]="";
HLAIndexTable["NA"][182]="";
HLAIndexTable["EG"][182]="";
HLAIndexTable["GS"][182]="";
--Abdju
HLAIndexTable["OA"][183]="";
HLAIndexTable["NA"][183]="";
HLAIndexTable["EG"][183]="";
HLAIndexTable["GS"][183]="";
--Ta-Seti
HLAIndexTable["OA"][184]="";
HLAIndexTable["NA"][184]="";
HLAIndexTable["EG"][184]="";
HLAIndexTable["GS"][184]="";
--Lycopolis
HLAIndexTable["OA"][185]="";
HLAIndexTable["NA"][185]="While we have no evidence of the battle, we know the outcome is that you are victorious. Keep up the attack!";
HLAIndexTable["EG"][185]="";
HLAIndexTable["GS"][185]="";

	--Middle Kingdom
--Middle Nubia
HLAIndexTable["OA"][186]="";
HLAIndexTable["NA"][186]="";
HLAIndexTable["EG"][186]="";
HLAIndexTable["GS"][186]="";
--Lower Nubia
HLAIndexTable["OA"][187]="";
HLAIndexTable["NA"][187]="";
HLAIndexTable["EG"][187]="";
HLAIndexTable["GS"][187]="Keep up the battle, Buhen wasn't won in a day.";
--Upper Nubia
HLAIndexTable["OA"][188]="";
HLAIndexTable["NA"][188]="";
HLAIndexTable["EG"][188]="Gaining control of the Nubians was a long process according to Sensruset III: \"I captured their women, I carried off their subjects, went forth to their wells, smote their bulls; I reaped their grain, and set fire thereto\".";
HLAIndexTable["GS"][188]="";
--Lower Kerman
HLAIndexTable["OA"][189]="";
HLAIndexTable["NA"][189]="";
HLAIndexTable["EG"][189]="";
HLAIndexTable["GS"][189]="";
--Upper Kerman
HLAIndexTable["OA"][190]="";
HLAIndexTable["NA"][190]="Now you've done it, gone and confused the poor graduate student.";
HLAIndexTable["EG"][190]="";
HLAIndexTable["GS"][190]="Where in the history books and archaeological manuscripts did you see evidence for war against Punt? I must have missed that chapter.";
--Medjay
HLAIndexTable["OA"][191]="";
HLAIndexTable["NA"][191]="";
HLAIndexTable["EG"][191]="Records show that the Medjay primarily fought on the side of the Egyptians, not against them.";
HLAIndexTable["GS"][191]="Small quarrels occurred between the Medjay and Egypt, but not full out battles.";

	--Second Intermediate
--Kerman
HLAIndexTable["OA"][192]="";
HLAIndexTable["NA"][192]="";
HLAIndexTable["EG"][192]="";
HLAIndexTable["GS"][192]="";
--Lower Hyksos
HLAIndexTable["OA"][193]="";
HLAIndexTable["NA"][193]="Excavations from the site of Avaris show that all the male burials had weaponry, possibly indicative of their warrior status. War will be important in defeating them.";
HLAIndexTable["EG"][193]="Texts from Kamose show that the Hyksos attempted to send messengers to Kerma to ask for help; defeat them quickly before someone can come to their aid. ";
HLAIndexTable["GS"][193]="";
--Upper Hyksos
HLAIndexTable["OA"][194]="Capturing this location is important to the future of Egypt because it open up trade and expands the capabilities of Egypt. ";
HLAIndexTable["NA"][194]="";
HLAIndexTable["EG"][194]="The site of Sharuhen is mentioned three times in Egyptian texts, all in reference to warfare. It is an important site and must be captured. ";
HLAIndexTable["GS"][194]="";
--Middle Hyksos
HLAIndexTable["OA"][195]="";
HLAIndexTable["NA"][195]="";
HLAIndexTable["EG"][195]="";
HLAIndexTable["GS"][195]="";
--Aneb-Hetch
HLAIndexTable["OA"][196]="";
HLAIndexTable["NA"][196]="";
HLAIndexTable["EG"][196]="";
HLAIndexTable["GS"][196]="";
--Medjay
HLAIndexTable["OA"][197]="";
HLAIndexTable["NA"][197]="";
HLAIndexTable["EG"][197]="";
HLAIndexTable["GS"][197]="";

	--New Kingdom
--Hittite 19
HLAIndexTable["OA"][198]="";
HLAIndexTable["NA"][198]="";
HLAIndexTable["EG"][198]="Keep up the fighting and beware traps. The Poem of Kadesh notes that the Hittite army tried to lure Ramesses II into a false sense of security by hiding at the city of Kadesh and having spies tell the Egyptians that the Hittites had given up.";
HLAIndexTable["GS"][198]="";
--Mitanni 18
HLAIndexTable["OA"][199]="Keep up the battle. Evidence from excavations shows that the spoils of war includes a multitude of new weapons and armor.";
HLAIndexTable["NA"][199]="";
HLAIndexTable["EG"][199]="Until they are ready for diplomacy as evidenced in the letters between pharaoh Thutmosis IV and King Artatama, we need to keep the pressure on them.";
HLAIndexTable["GS"][199]="Thutmosis had 17 campaigns over 20 years against Mitanni, you didn't think it would be easy did you?";
--Assyria 20
HLAIndexTable["OA"][200]="";
HLAIndexTable["NA"][200]="";
HLAIndexTable["EG"][200]="";
HLAIndexTable["GS"][200]="";
--Nubia 16
HLAIndexTable["OA"][201]="";
HLAIndexTable["NA"][201]="";
HLAIndexTable["EG"][201]="Nubia should fall fairly quick to Egypt based on texts written on the tomb of Thutmose I. Keep up the battle!";
HLAIndexTable["GS"][201]="";
--Medjay 17
HLAIndexTable["OA"][202]="Soon after the rise of Assyrian king Shalmaneser I, the Hittites- an ally of Egypt, will be conquered. Perhaps war with Assyria is not a good idea since they defeated our allies.";
HLAIndexTable["NA"][202]="";
HLAIndexTable["EG"][202]="";
HLAIndexTable["GS"][202]="";
--Kush
HLAIndexTable["OA"][203]="";
HLAIndexTable["NA"][203]="";
HLAIndexTable["EG"][203]="";
HLAIndexTable["GS"][203]="";

--====================================================================
--City Created HLA (42-47)
--Predynastic
HLAIndexTable["OA"][42]="W.F. Petrie argued that based on inscriptions the unification of Egypt was due to migration of Mesopotamians into the Nile valley. The prehistoric Egyptians were then wiped out or became part of the new kingdom. Prepare to meet new foreigners.";
HLAIndexTable["NA"][42]="The unification is not due to foreign influence. It was caused by the joining of various polities into larger groups, which led to the incorporation of the valley into one kingdom. It was unification through political ties and trade agreements.";
HLAIndexTable["EG"][42]="The palettes we have recovered show that war was frequent in this period. This means that unification will be won through the conquering of all other polities.";
HLAIndexTable["GS"][42]="Unification is theorized to have come about by either replacement by migration, economic contact and integration, or military conquest. So far there is no clear evidence of which is most correct¡­ it may be a combination.";
--Old Kingdom
HLAIndexTable["OA"][43]="With the construction of this first capital you can now expand your city, create scouts and explore the area.";
HLAIndexTable["NA"][43]="Settlements in the Old Kingdom have been found during the 1980's and 1990's during the trench excavations when doing survey for water projects along the Nile from Giza to Aswan. Start making relationships with these settlements.";
HLAIndexTable["EG"][43]="According to Herodotus, Memphis was founded by Menes who constructed a dyke and drained the area for the city. Work on the construction of buildings and expansion.";
HLAIndexTable["GS"][43]="The nomes were managed by civil servants known as nomarchs. These governors acted on behalf of the pharaoh, but by the end of the Old Kingdom became more independent. Create good relations with your nomes.";
--First Intermediate
HLAIndexTable["OA"][44]="Collapse of a central government means a lack of foreign trade and that was pivotal to growth of Egyptian society.";
HLAIndexTable["NA"][44]="The fragmentation of the kingdom is clearly seen in the diminution of the king's pyramids. The Pepi II's pyramid is barely larger than those of the queens.";
HLAIndexTable["EG"][44]="Royal decrees from the 8th dynasty found at Coptos show that the pharaoh maintained some control over Upper Egypt, although it is likely due to alliance through marriage with Coptos rather than loyalty to the king.";
HLAIndexTable["GS"][44]="During the late Old Kingdom, power was increasingly given to the provincial leaders which led to fragmentation of the government, with Lower Egypt dividing from the central government first. You must reunite the kingdom.";
--Middle Kingdom
HLAIndexTable["OA"][45]="Progress is made through interaction with foreign nations. Send your scouts deep into the South to explore Nubia and bring back its technological secrets.";
HLAIndexTable["NA"][45]="The rise in the use of scarab amulets as administrative seals shows the integration of the government. Strengthen ties within your nation before expanding.";
HLAIndexTable["EG"][45]="Texts from this period discuss the expansion of power of Egypt in foreign lands: \"I followed my lord when he sailed up the river to overthrow his enemies in the four foreign lands\". Prepare your armies.";
HLAIndexTable["GS"][45]="In order to maintain the loyalty of the nomarchs and prevent the decentralization that occurred during the Old Kingdom, the king frequently toured the nomes. Exploring your land is your first task.";
--Second Intermediate
HLAIndexTable["OA"][46]="Focus on the creation of scouts, with them we can encounter other cultures and their influence will help our expansion.";
HLAIndexTable["NA"][46]="Archaeological evidence is scarce from this period, but it appears that Egypt was slowly preparing for an uprising, begin building your armies.";
HLAIndexTable["EG"][46]="Kamose lamented over the division of his lands between the Hyksos and Kerma: \"One prince is in Avaris, another is in Ethiopia, and here I sit... Each man has his slice of this Egypt, dividing up the land with me\".";
HLAIndexTable["GS"][46]="The nature of the Hyksos takeover, whether through violence or peaceful means, is unknown- however we do know their expulsion was an extended battle. ";
--New kingdom
HLAIndexTable["OA"][47]="Growth of Egypt is contingent on interaction with other nations, send out scouts to find them!";
HLAIndexTable["NA"][47]="With Thebes established it is time to focus on building an army, archaeological evidence shows an increase in warfare and conflict with neighboring civilizations.";
HLAIndexTable["EG"][47]="With the capital established it is important to strengthen the government and religion of Egypt through social policies as seen in the Donation Stela which shows the first pharaoh of the New Kingdom supporting the cults of the realm.";
HLAIndexTable["GS"][47]="Technically the first capital of Ramesses II was called Pi-Ramesses meaning 'House of Ramesses', however throughout the New Kingdom Thebes remained a powerful city.";

--====================================================================
--Trade HLA 48-83
--Predynastic

	HLAIndexTable["OA"][48]="Trading may be the way that contact was made with Mesopotamia, this external impetus may have sparked unification.";
	HLAIndexTable["NA"][48]="Some archaeologists suggest that trading led to changes in alliances and polities between Lower and Upper Egypt. By increasing trade we might be able to move towards unification.";
	HLAIndexTable["EG"][48]="";
	HLAIndexTable["GS"][48]="Archaeologists suggest that trade is important for maintaining power in this period, by getting access to certain resources not only are your people happier but you gain greater stability of power.";

	HLAIndexTable["OA"][48]="Competition between groups for trade routes and trading alliances may have led to warfare and unification in specific areas.";
	HLAIndexTable["NA"][48]="Some archaeologists suggest that trading led to changes in alliances and polities. By increasing trade we might be able to move towards unification.";
	HLAIndexTable["EG"][48]="";
	HLAIndexTable["GS"][48]="";

	HLAIndexTable["OA"][49]="Trading may be the way that contact was made with Mesopotamia, this external impetus may have sparked unification.";
	HLAIndexTable["NA"][49]="";
	HLAIndexTable["EG"][49]="";
	HLAIndexTable["GS"][49]="Archaeologists suggest that trade is important for maintaining power in this period, by getting access to certain resources not only are your people happier but you gain greater stability of power.";

	HLAIndexTable["OA"][50]="Trading may be the way that contact was made with Mesopotamia, this external impetus may have sparked unification.";
	HLAIndexTable["NA"][50]="It is possible that trade was the reason for unification. With increasing reliance on trade, alliances and consolidation of power became more frequent.";
	HLAIndexTable["EG"][50]="";
	HLAIndexTable["GS"][50]="Archaeologists suggest that trade is important for maintaining power in this period, by getting access to certain resources not only are your people happier but you gain greater stability of power.";

	HLAIndexTable["OA"][51]="";
	HLAIndexTable["NA"][51]="";
	HLAIndexTable["EG"][51]="";
	HLAIndexTable["GS"][51]="";

	HLAIndexTable["OA"][52]="";
	HLAIndexTable["NA"][52]="";
	HLAIndexTable["EG"][52]="";
	HLAIndexTable["GS"][52]="";

--Old Kingdom

	HLAIndexTable["OA"][53]="";
	HLAIndexTable["NA"][53]="";
	HLAIndexTable["EG"][53]="Trade agreements should not favor the government, as seen in the teaching of Amenemope: 'Do not make a bushel of twice its size, For then you are headed for the abyss'.";
	HLAIndexTable["GS"][53]="";

	HLAIndexTable["OA"][54]="";
	HLAIndexTable["NA"][54]="";
	HLAIndexTable["EG"][54]="Trade agreements should not be short changed, as seen in the teaching of Amenemope: 'The bushel is the Eye of Re, It abhors him who trims'.";
	HLAIndexTable["GS"][54]="";

	HLAIndexTable["OA"][55]="";
	HLAIndexTable["NA"][55]="";
	HLAIndexTable["EG"][55]="Trade agreements should not be short changed, as seen in the teaching of Amenemope: 'The bushel is the Eye of Re, It abhors him who trims'.";
	HLAIndexTable["GS"][55]="";

	HLAIndexTable["OA"][56]="";
	HLAIndexTable["NA"][56]="";
	HLAIndexTable["EG"][56]="Trade agreements should not favor the government, as seen in the teaching of Amenemope: 'Do not make a bushel of twice its size, For then you are headed for the abyss'.";
	HLAIndexTable["GS"][56]="";

	HLAIndexTable["OA"][57]="";
	HLAIndexTable["NA"][57]="";
	HLAIndexTable["EG"][57]="Trade agreements should be made fairly between the government and the nomes to keep people happy, as seen in the teaching of Amenemope: 'Do not move the scales nor alter the weights, Nor diminish the fractions of the measure'.";
	HLAIndexTable["GS"][57]="";

	HLAIndexTable["OA"][58]="";
	HLAIndexTable["NA"][58]="";
	HLAIndexTable["EG"][58]="Trade agreements should be made fairly between the government and the nomes to keep people happy, as seen in the teaching of Amenemope: 'Do not move the scales nor alter the weights, Nor diminish the fractions of the measure'.";
	HLAIndexTable["GS"][58]="";

--First Intermediate

	HLAIndexTable["OA"][59]="Heraklepolis was in a very strategic position for trading, given their geographical location. They have control over a large amount of foreign trade. ";
	HLAIndexTable["NA"][59]="";
	HLAIndexTable["EG"][59]="It seems that there was trade between our two nomes, as Khety writes to his son 'You stand well with the Southern Region, for the bearers of loads come to you with produce; I did the same as the ancestors, and there was none who had corn who gave it'.";
	HLAIndexTable["GS"][59]="";

	HLAIndexTable["OA"][60]="";
	HLAIndexTable["NA"][60]="";
	HLAIndexTable["EG"][60]="Trade is most appreciated and the best way of interacting with this nome, from Ankh-Tifi's tomb: 'The south came with its people and the north with its children; they brought finest oil in exchange for the barley which was given to them'.";
	HLAIndexTable["GS"][60]="Trade was the way that Ankh-tifi was able to gain such loyal following, and it is likely he will reciprocate any deals.";

	HLAIndexTable["OA"][61]="";
	HLAIndexTable["NA"][61]="I can't find any archaeology for this region¡­ you're on your own.";
	HLAIndexTable["EG"][61]="Hmm, there's no text about trade either.";
	HLAIndexTable["GS"][61]="";

	HLAIndexTable["OA"][62]="";
	HLAIndexTable["NA"][62]="I don't have any archaeological evidence for trade during this period. We should see a transfer of pottery or something like that.";
	HLAIndexTable["EG"][62]="No texts directly speak of this.";
	HLAIndexTable["GS"][62]="I really need to do more research on this period¡­ I'm at a loss";

	HLAIndexTable["OA"][63]="Given its location at the border to Nubia, control over Ta-Seti means control over trade in the south.";
	HLAIndexTable["NA"][63]="";
	HLAIndexTable["EG"][63]="Ta-Seti is the frontier, the gateway to trade to the south. Throughout history texts have noted its importance in holding this city as a strategic point.";
	HLAIndexTable["GS"][63]="Trade in this region is extremely important, although most of our evidence comes from other time periods.";

	HLAIndexTable["OA"][64]="";
	HLAIndexTable["NA"][64]="";
	HLAIndexTable["EG"][64]="I'm surprised they would trade with you¡­ are you sure you got a good deal?";
	HLAIndexTable["GS"][64]="";

--Middle Kingdom

	HLAIndexTable["OA"][65]="";
	HLAIndexTable["NA"][65]="";
	HLAIndexTable["EG"][65]="";
	HLAIndexTable["GS"][65]="";

	HLAIndexTable["OA"][66]="";
	HLAIndexTable["NA"][66]="";
	HLAIndexTable["EG"][66]="";
	HLAIndexTable["GS"][66]="";

	HLAIndexTable["OA"][67]="";
	HLAIndexTable["NA"][67]="";
	HLAIndexTable["EG"][67]="";
	HLAIndexTable["GS"][67]="The Nubians are in an important trade position, and have access to many items we need, however better to take it through force rather than trade.";

	HLAIndexTable["OA"][68]="The Kushites relied on their relationship with Nubia for trade. By trading with them we can replace Nubian so as to not upset them.";
	HLAIndexTable["NA"][68]="";
	HLAIndexTable["EG"][68]="";
	HLAIndexTable["GS"][68]="";

	HLAIndexTable["OA"][69]="";
	HLAIndexTable["NA"][69]="";
	HLAIndexTable["EG"][69]="\"He [the snake who ruled the island on which the sailor had been shipwrecked and who called himself Prince of the Land of Punt] gave me gifts of precious perfumes, of cassia, of sweet woods, of kohl, of cypress, an abundance of incense, of ivory tusks, of baboons, of apes, and all kinds of precious things\". Your reward as written in the Tale of the Shipwrecked Sailor.";
	HLAIndexTable["GS"][69]="";

	HLAIndexTable["OA"][70]="";
	HLAIndexTable["NA"][70]="Excavations of tombs discovered at Dakhleh and Baharie reveal a richness of wealth from desert trade. Opening trade with the Medjay is highly beneficial. ";
	HLAIndexTable["EG"][70]="";
	HLAIndexTable["GS"][70]="The Medjay's nomadic lifestyle lends to them being strong traders.";

--Second Intermediate

	HLAIndexTable["OA"][71]="Trading with Kerma will be important, any outside influence will benefit the growth of Egypt and restoration to power.";
	HLAIndexTable["NA"][71]="There he goes again with this diffusionist, external influence blabber. Evidence is needed before we can draw conclusions about the trading relationships of Kerma and Egypt.";
	HLAIndexTable["EG"][71]="";
	HLAIndexTable["GS"][71]="";

	HLAIndexTable["OA"][72]="";
	HLAIndexTable["NA"][72]="There is ample evidence that the Hyksos adopted Egyptian ways, trading would be a way of becoming further integrated.";
	HLAIndexTable["EG"][72]="";
	HLAIndexTable["GS"][72]="The Hyksos would be open to trading since they have been trying to become more Egyptianized.";

	HLAIndexTable["OA"][73]="";
	HLAIndexTable["NA"][73]="";
	HLAIndexTable["EG"][73]="";
	HLAIndexTable["GS"][73]="";

	HLAIndexTable["OA"][74]="";
	HLAIndexTable["NA"][74]="";
	HLAIndexTable["EG"][74]="";
	HLAIndexTable["GS"][74]="";

	HLAIndexTable["OA"][75]="";
	HLAIndexTable["NA"][75]="";
	HLAIndexTable["EG"][75]="";
	HLAIndexTable["GS"][75]="";

	HLAIndexTable["OA"][76]="";
	HLAIndexTable["NA"][76]="";
	HLAIndexTable["EG"][76]="";
	HLAIndexTable["GS"][76]="";

	HLAIndexTable["OA"][77]="";
	HLAIndexTable["NA"][77]="";
	HLAIndexTable["EG"][77]="";
	HLAIndexTable["GS"][77]="";

--New kingdom

	HLAIndexTable["OA"][78]="";
	HLAIndexTable["NA"][78]="";
	HLAIndexTable["EG"][78]="";
	HLAIndexTable["GS"][78]="The clash between the Hittites and the Egyptians doesn't really begin until Mitanni is taken over by Assyria.";

	HLAIndexTable["OA"][79]="Mitanni is known for their military armor, especially the armor designed for horses. Perhaps trading with them will give us access to new units. ";
	HLAIndexTable["NA"][79]="Archaeological excavations have revealed major trade routes of Mitanni which gave them access to luxury goods from all over Asia.";
	HLAIndexTable["EG"][79]="The Bentresh Stela speaks of a tribute that Mitanni paid to Egypt: \"Lo, his majesty was in Naharin according to his yearly custom, while the chiefs of every country came bowing down in peace, because of the fame of his majesty. From the marshes was their tribute; silver, gold, lapis lazuli, malachite and every sweet wood of God's Land were upon their backs, each one leading his neighbor.\"";
	HLAIndexTable["GS"][79]="Naharin is the Egyptian term for Mitanni.";

	HLAIndexTable["OA"][80]="Trade is a way not only to maintain good relations, but also gain new technology.";
	HLAIndexTable["NA"][80]="The Hittite kingdom was pivotal in maintaining trade routes through Syria-Palestine, but Assyria will eventually take over these routes during the end of the 19th dynasty.";
	HLAIndexTable["EG"][80]="Trade between the our two nations was started by the Assyrians, King Ashur-uballit wrote to Amenhotep IV: \"I have sent you my envoy to visit you and to see your country. That my forefathers until now  have not sent, I have sent you today: one fine chariot, two horses, a jewel from precious stone, a date shaped bead from genuine lapis lazuli as a good-wish present, have directed unto you.\"";
	HLAIndexTable["GS"][80]="";

	HLAIndexTable["OA"][81]="";
	HLAIndexTable["NA"][81]="The rise of silver and gold artifacts in the New Kingdom shows that trade was re-eastablished with Nubia following the defeat of the Hyksos.";
	HLAIndexTable["EG"][81]="Text from the nomarch Nevi discuss the tribute required of Nubia: \"Bringing the tribute of the south countries, consisting of gold, ivory, and ebony, [by] the hereditary prince, count, wearer of the royal seal, sole companion, satisfying the heart of the king at the Horns of the Earth\".";
	HLAIndexTable["GS"][81]="";

	HLAIndexTable["OA"][82]="The connections of the Medjay with other Nomadic groups will benefit us when trading with them.";
	HLAIndexTable["NA"][82]="";
	HLAIndexTable["EG"][82]="I disagree with the old archaeologist, Egyptian texts show that the Medjay were willing to give themselves over to Egypt- so aren't they going to benefit more from us than we from them?"
	HLAIndexTable["GS"][82]="I think the disagreement here is one of theory, while diffusion of ideas from other cultures is seen, it isn't the only mechanism of change. ";

	HLAIndexTable["OA"][83]="Trading with Kush is pivotal for the development of Egypt since they have exotic goods which are rarely found in Egypt like ebony and ivory.";
	HLAIndexTable["NA"][83]="Historically trade with Kush has been important, but archaeological evidence shows that there was little activity in this area suggesting domination rather than trade agreements.";
	HLAIndexTable["EG"][83]="I agree with the Archaeologist on this one. A wall painting from the tomb of Amenhotep-Huy the Viceroy of Kush show the arrival of Nubians bringing the 'tribute of Kush' into Egypt during the reign of King Tutankhamen (1333-1323 BC).";
	HLAIndexTable["GS"][83]="Agreement between two full professors... it can't be!";

--====================================================================
--HLA Friendship 204-239

	--Predaynastic
HLAIndexTable["OA"][204]="";
HLAIndexTable["NA"][204]="";
HLAIndexTable["EG"][204]="There isn't any epigraphic evidence to support alliance. The Narmer and Scorpion palettes clearly show warfare as the cause of unification.";
HLAIndexTable["GS"][204]="";

HLAIndexTable["OA"][205]="";
HLAIndexTable["NA"][205]="";
HLAIndexTable["EG"][205]="There isn't any epigraphic evidence to support alliance. The Narmer and Scorpion palettes clearly show warfare as the cause of unification.";
HLAIndexTable["GS"][205]="";

HLAIndexTable["OA"][206]="";
HLAIndexTable["NA"][206]="";
HLAIndexTable["EG"][206]="There isn't any epigraphic evidence to support alliance. The Narmer and Scorpion palettes clearly show warfare as the cause of unification.";
HLAIndexTable["GS"][206]="";

HLAIndexTable["OA"][207]="";
HLAIndexTable["NA"][207]="Based on cemetery evidence we know that Ma'adi conquered Qift, so it will benefit us to be allied with them.";
HLAIndexTable["EG"][207]="Alliance with this area makes sense, as it will mean future benefits. Since they are a religious center it is important to keep ties with them, as religion is a key part of the Egyptian kingdom.";
HLAIndexTable["GS"][207]="";

HLAIndexTable["OA"][208]="Competition between groups for trade routes and trading alliances may have led to warfare and unification in specific areas.";
HLAIndexTable["NA"][208]="It is possible that trade was the reason for unification. With increasing reliance on trade, alliances and consolidation of power became more frequent.";
HLAIndexTable["EG"][208]="";
HLAIndexTable["GS"][208]="";

HLAIndexTable["OA"][209]="";
HLAIndexTable["NA"][209]="";
HLAIndexTable["EG"][209]="";
HLAIndexTable["GS"][209]="";

	--Old Kingdom
--Khaset
HLAIndexTable["OA"][210]="Building relationships with the various nomes are extremely important since they will provide you with your work force.";
HLAIndexTable["NA"][210]="";
HLAIndexTable["EG"][210]="";
HLAIndexTable["GS"][210]="";
--Ta-Seti
HLAIndexTable["OA"][211]="Building relationships with the various nomes are extremely important since they will provide you with your work force.";
HLAIndexTable["NA"][211]="";
HLAIndexTable["EG"][211]="";
HLAIndexTable["GS"][211]="";
--Herui
HLAIndexTable["OA"][212]="Building relationships with the various nomes are extremely important since they will provide you with your work force.";
HLAIndexTable["NA"][212]="";
HLAIndexTable["EG"][212]="";
HLAIndexTable["GS"][212]="";
--Waset
HLAIndexTable["OA"][213]="Building relationships with the various nomes are extremely important since they will provide you with your work force.";
HLAIndexTable["NA"][213]="";
HLAIndexTable["EG"][213]="";
HLAIndexTable["GS"][213]="";
--Ten
HLAIndexTable["OA"][214]="Building relationships with the various nomes are extremely important since they will provide you with your work force.";
HLAIndexTable["NA"][214]="";
HLAIndexTable["EG"][214]="";
HLAIndexTable["GS"][214]="";
--Abdju
HLAIndexTable["OA"][215]="";
HLAIndexTable["NA"][215]="As seen by the high number of royal and elite tombs, friendship between Abydos and the central government was important.";
HLAIndexTable["EG"][215]="Friendship between the nomes and central government is important, it is one of the virtuous teachings seen in the inscription of Sheshi from the 6th dynasty: 'I have descended from my nome; I have done justice for its lord; I have satisfied him with what he loves'.";
HLAIndexTable["GS"][215]="";

	--First Intermediate
--Atef-Khent
HLAIndexTable["OA"][216]="";
HLAIndexTable["NA"][216]="Since there is no evidence of how the transition into the Theban dynasty went, it could have occurred through an alliance¡­";
HLAIndexTable["EG"][216]="";
HLAIndexTable["GS"][216]="Somehow I doubt that the fierce Khety III would willingly ally with Mentuhotep II.";
--Heq-At
HLAIndexTable["OA"][217]="Heraklepolis was in a very strategic position for trading, given their geographical location. They have control over a large amount of foreign trade.";
HLAIndexTable["NA"][217]="";
HLAIndexTable["EG"][217]="It seems that there was trade between our two nomes, as Khety writes to his son 'You stand well with the Southern Region, for the bearers of loads come to you with produce; I did the same as the ancestors, and there was none who had corn who gave it'";
HLAIndexTable["GS"][217]="";
--Aneb-Hetch
HLAIndexTable["OA"][218]="";
HLAIndexTable["NA"][218]="";
HLAIndexTable["EG"][218]="I guess it all worked out for the best, although I wish we had some artifacts or something other than texts to understand this relationship.";
HLAIndexTable["GS"][218]="";
--Abdju
HLAIndexTable["OA"][219]="";
HLAIndexTable["NA"][219]="";
HLAIndexTable["EG"][219]="";
HLAIndexTable["GS"][219]="";
--Ta-Seti
HLAIndexTable["OA"][220]="Securing Ta-Seti is important in securing the Southern borders. Archaeological work here shows it was an important trade route.";
HLAIndexTable["NA"][220]="There isn't too much archaeology work done for this period, so I'm not exactly sure what role Ta-Seti played or how they interacted.";
HLAIndexTable["EG"][220]="We know Ankh-Tifi conquered them, but not how they became part of the Theban dynasty based on texts. There isn't enough information.";
HLAIndexTable["GS"][220]="I really need to do more research on this period¡­ I'm at a loss.";
--Lycopolis
HLAIndexTable["OA"][221]="";
HLAIndexTable["NA"][221]="It isn't likely that Lycopolis would shift their alliance from Herakleopolis to Thebes, but not unheard of.";
HLAIndexTable["EG"][221]="This isn't a good idea. Lycopolis is strongly on the side of Herakleopolis: 'for his lord Heracleopolis. The land was under the fear of my soldiers; no highland was free from fear'.";
HLAIndexTable["GS"][221]="While we don't know exactly how control was gained over the kingdom, it is possible that Lycopolis formed a new alliance.";

	--Middle Kingdom
--Middle Nubia
HLAIndexTable["OA"][222]="While the Egyptians did intend to let the Nubians keep their culture and traditions, they didn't befriend them.";
HLAIndexTable["NA"][222]="";
HLAIndexTable["EG"][222]="";
HLAIndexTable["GS"][222]="";
--Lower Nubia
HLAIndexTable["OA"][223]="While the Egyptians did intend to let the Nubians keep their culture and traditions, they didn't befriend them.";
HLAIndexTable["NA"][223]="";
HLAIndexTable["EG"][223]="";
HLAIndexTable["GS"][223]="";
--Upper Nubia
HLAIndexTable["OA"][224]="While the Egyptians did intend to let the Nubians keep their culture and traditions, they didn't befriend them.";
HLAIndexTable["NA"][224]="";
HLAIndexTable["EG"][224]="";
HLAIndexTable["GS"][224]="";
--Lower Kerman
HLAIndexTable["OA"][225]="Friendship HLA";
HLAIndexTable["NA"][225]="Friendship HLA";
HLAIndexTable["EG"][225]="Friendship HLA";
HLAIndexTable["GS"][225]="Friendship HLA";
--Upper Kerman
HLAIndexTable["OA"][226]="Friendship HLA";
HLAIndexTable["NA"][226]="Friendship HLA";
HLAIndexTable["EG"][226]="Friendship HLA";
HLAIndexTable["GS"][226]="Friendship HLA";
--Medjay
HLAIndexTable["OA"][227]="";
HLAIndexTable["NA"][227]="";
HLAIndexTable["EG"][227]="Texts from fortresses in Nubia show that the Medjay formed portions of the garrison troops. By befriending them we are adding to our armies.";
HLAIndexTable["GS"][227]="";

	--Second Intermediate
--Kerman
HLAIndexTable["OA"][228]="";
HLAIndexTable["NA"][228]="";
HLAIndexTable["EG"][228]="";
HLAIndexTable["GS"][228]="This is unexpected, there is no evidence for friendship with Kerma.";
--Lower Hyksos
HLAIndexTable["OA"][229]="";
HLAIndexTable["NA"][229]="If archaeologists who argue for a peaceful takeover are correct, then it could be possible that expulsion was also peaceful... although this is doubtful.";
HLAIndexTable["EG"][229]="Friendship with the Hyksos is not found in any inscriptions, they are always referred to as foreigners or invaders, never friends.";
HLAIndexTable["GS"][229]="";
--Upper Hyksos
HLAIndexTable["OA"][230]="Friendship HLA";
HLAIndexTable["NA"][230]="Friendship HLA";
HLAIndexTable["EG"][230]="Friendship HLA";
HLAIndexTable["GS"][230]="Friendship HLA";
--Middle Hyksos
HLAIndexTable["OA"][231]="Friendship HLA";
HLAIndexTable["NA"][231]="Friendship HLA";
HLAIndexTable["EG"][231]="Friendship HLA";
HLAIndexTable["GS"][231]="Friendship HLA";
--Aneb-Hetch
HLAIndexTable["OA"][232]="";
HLAIndexTable["NA"][232]="";
HLAIndexTable["EG"][232]="Gaining their support is important to victory over the Hyksos, and their dislike of them is solidified in tomb inscriptions.";
HLAIndexTable["GS"][232]="";
--Medjay
HLAIndexTable["OA"][233]="Alliance and interaction is what will solidify Egypt's growth, without outside cultures there is no change to society.";
HLAIndexTable["NA"][233]="The Old Archaeologist is taking a diffusionist and antiquated view of cultural development. Interaction with the Medjay is important to Egypt, but not necessary for its growth- there can be internal development.";
HLAIndexTable["EG"][233]="All writing from this period agrees that the alliance with the Medjay is important to victory over the Hyksos.";
HLAIndexTable["GS"][233]="";

	--New Kingdom
--Hittite 19
HLAIndexTable["OA"][234]="";
HLAIndexTable["NA"][234]="There is archaeological evidence of the spread of Assyrian artifacts across Syria-Palestine suggesting a takeover. Friendship and alliance with the Hittites will be important in slowing this.";
HLAIndexTable["EG"][234]="Friendship was declared by the marriage of Nefrure, a Hittite princess, to Ramesses II: \"Then they affixed her titulary as: Great King's-Wife, Nefrure. When his majesty arrived in Egypt, she fulfilled all the functions of king's-wife.\"";
HLAIndexTable["GS"][234]="I think the only truly representative evidence of the interactions between the Hittites and Egyptians is the Peace Treaty of Kadesh between them. There are two copies of it, one found in Syria in Hittite territory and one found in Egypt.";
--Mitanni 18
HLAIndexTable["OA"][235]="";
HLAIndexTable["NA"][235]="Trade goods between Mitanni and Egypt";
HLAIndexTable["EG"][235]="Tushratta, king of Mitanni, sent a letter to Amenhotep III, who he refers to as his brother, as a sign a friendship, stating: \"May my brother seek friendship with me, and may my brother send his messengers so that they may bring my brother's greeting and I may receive them.\"";
HLAIndexTable["GS"][235]="";
--Assyria 20
HLAIndexTable["OA"][236]="";
HLAIndexTable["NA"][236]="";
HLAIndexTable["EG"][236]="Letters from King Ashur-uballit to pharaoh Amenhotep IV change in language from proper titles with multiple names, to simply their name followed by \"my brother\". This shows growing friendship.";
HLAIndexTable["GS"][236]="";
--Nubia 16
HLAIndexTable["OA"][237]="";
HLAIndexTable["NA"][237]="";
HLAIndexTable["EG"][237]="Textual evidence consistently uses phrases like \"crushed\", \"overthrowing\" and \"casting out\" in reference to Kush and Nubia, friendship is not likely.";
HLAIndexTable["GS"][237]="";
--Medjay 17
HLAIndexTable["OA"][238]="";
HLAIndexTable["NA"][238]="";
HLAIndexTable["EG"][238]="In texts the word for Medjay is synonymous with that for police, showing how integrated our two cultures are together. Friendship with the Medjay is pivotal to Egyptian success in controlling their own population and expanding onto others.";
HLAIndexTable["GS"][238]="";
--Kush
HLAIndexTable["OA"][239]="";
HLAIndexTable["NA"][239]="Stable isotope analysis of the governors in the Kush tombs does show that they were Kush born, even though their allegiance was Egyptian. Perhaps this is evidence of friendship rather than conquering.";
HLAIndexTable["EG"][239]="I disagree with the archaeologist. Textual evidence consistently uses phrases like \"crushed\", \"overthrowing\" and \"casting out\" in reference to Kush and Nubia, friendship is not likely.";
HLAIndexTable["GS"][239]="";

--====================================================================
-- HLA
	HLAIndexTable["OA"][30]="";
	HLAIndexTable["NA"][30]="";
	HLAIndexTable["EG"][30]="";
	HLAIndexTable["GS"][30]="";

	HLAIndexTable["OA"][31]="";
	HLAIndexTable["NA"][31]="";
	HLAIndexTable["EG"][31]="";
	HLAIndexTable["GS"][31]="";

	HLAIndexTable["OA"][32]="";
	HLAIndexTable["NA"][32]="";
	HLAIndexTable["EG"][32]="";
	HLAIndexTable["GS"][32]="";

	HLAIndexTable["OA"][33]="";
	HLAIndexTable["NA"][33]="";
	HLAIndexTable["EG"][33]="";
	HLAIndexTable["GS"][33]="";

	HLAIndexTable["OA"][34]="";
	HLAIndexTable["NA"][34]="";
	HLAIndexTable["EG"][34]="";
	HLAIndexTable["GS"][34]="";

	HLAIndexTable["OA"][35]="";
	HLAIndexTable["NA"][35]="";
	HLAIndexTable["EG"][35]="";
	HLAIndexTable["GS"][35]="";

--===================================================================
--Civ Victory HLA 240-275
		--Predaynastic
HLAIndexTable["OA"][240]="";
HLAIndexTable["NA"][240]="";
HLAIndexTable["EG"][240]="";
HLAIndexTable["GS"][240]="";

HLAIndexTable["OA"][241]="";
HLAIndexTable["NA"][241]="";
HLAIndexTable["EG"][241]="";
HLAIndexTable["GS"][241]="";

HLAIndexTable["OA"][242]="";
HLAIndexTable["NA"][242]="";
HLAIndexTable["EG"][242]="";
HLAIndexTable["GS"][242]="";

HLAIndexTable["OA"][243]="";
HLAIndexTable["NA"][243]="";
HLAIndexTable["EG"][243]="";
HLAIndexTable["GS"][243]="";

HLAIndexTable["OA"][244]="";
HLAIndexTable["NA"][244]="";
HLAIndexTable["EG"][244]="";
HLAIndexTable["GS"][244]="";

HLAIndexTable["OA"][245]="";
HLAIndexTable["NA"][245]="";
HLAIndexTable["EG"][245]="";
HLAIndexTable["GS"][245]="";

	--Old Kingdom
--Khaset
HLAIndexTable["OA"][246]="";
HLAIndexTable["NA"][246]="";
HLAIndexTable["EG"][246]="";
HLAIndexTable["GS"][246]="";
--Ta-Seti
HLAIndexTable["OA"][247]="";
HLAIndexTable["NA"][247]="";
HLAIndexTable["EG"][247]="";
HLAIndexTable["GS"][247]="";
--Herui
HLAIndexTable["OA"][248]="";
HLAIndexTable["NA"][248]="";
HLAIndexTable["EG"][248]="";
HLAIndexTable["GS"][248]="";
--Waset
HLAIndexTable["OA"][249]="";
HLAIndexTable["NA"][249]="";
HLAIndexTable["EG"][249]="";
HLAIndexTable["GS"][249]="";
--Ten
HLAIndexTable["OA"][250]="";
HLAIndexTable["NA"][250]="";
HLAIndexTable["EG"][250]="";
HLAIndexTable["GS"][250]="";
--Abdju
HLAIndexTable["OA"][251]="";
HLAIndexTable["NA"][251]="";
HLAIndexTable["EG"][251]="";
HLAIndexTable["GS"][251]="";

	--First Intermediate
--Atef-Khent
HLAIndexTable["OA"][252]="";
HLAIndexTable["NA"][252]="";
HLAIndexTable["EG"][252]="";
HLAIndexTable["GS"][252]="";
--Heq-At
HLAIndexTable["OA"][253]="";
HLAIndexTable["NA"][253]="This doesn't make any sense¡­ what did you do wrong?";
HLAIndexTable["EG"][253]="";
HLAIndexTable["GS"][253]="From Ankh-tifi's own inscriptions he says that he challenged Theban armies but never does it say he defeated them.";
--Aneb-Hetch
HLAIndexTable["OA"][254]="";
HLAIndexTable["NA"][254]="";
HLAIndexTable["EG"][254]="";
HLAIndexTable["GS"][254]="";
--Abdju
HLAIndexTable["OA"][255]="";
HLAIndexTable["NA"][255]="";
HLAIndexTable["EG"][255]="";
HLAIndexTable["GS"][255]="";
--Ta-Seti
HLAIndexTable["OA"][256]="";
HLAIndexTable["NA"][256]="";
HLAIndexTable["EG"][256]="";
HLAIndexTable["GS"][256]="";
--Lycopolis
HLAIndexTable["OA"][257]="";
HLAIndexTable["NA"][257]="";
HLAIndexTable["EG"][257]="";
HLAIndexTable["GS"][257]="How did you lose? I'm confused.";

	--Middle Kingdom
--Middle Nubia
HLAIndexTable["OA"][258]="Well, you probably deserved that for going against history.";
HLAIndexTable["NA"][258]="I admire that you sought a different tactic and tried an alternative perspective of history, sadly there is no evidence for it.";
HLAIndexTable["EG"][258]="";
HLAIndexTable["GS"][258]="";
--Lower Nubia
HLAIndexTable["OA"][259]="Well, you probably deserved that for going against history.";
HLAIndexTable["NA"][259]="I admire that you sought a different tactic and tried an alternative perspective of history, sadly there is no evidence for it.";
HLAIndexTable["EG"][259]="";
HLAIndexTable["GS"][259]="";
--Upper Nubia
HLAIndexTable["OA"][260]="Well, you probably deserved that for going against history.";
HLAIndexTable["NA"][260]="I admire that you sought a different tactic and tried an alternative perspective of history, sadly there is no evidence for it.";
HLAIndexTable["EG"][260]="";
HLAIndexTable["GS"][260]="";
--Lower Kerman
HLAIndexTable["OA"][261]="Well, you probably deserved that for going against history.";
HLAIndexTable["NA"][261]="I admire that you sought a different tactic and tried an alternative perspective of history, sadly there is no evidence for it.";
HLAIndexTable["EG"][261]="Friendship HLA";
HLAIndexTable["GS"][261]="Friendship HLA";
--Upper Kerman
HLAIndexTable["OA"][262]="Well, you probably deserved that for going against history.";
HLAIndexTable["NA"][262]="I admire that you sought a different tactic and tried an alternative perspective of history, sadly there is no evidence for it.";
HLAIndexTable["EG"][262]="Friendship HLA";
HLAIndexTable["GS"][262]="Friendship HLA";
--Medjay
HLAIndexTable["OA"][263]="";
HLAIndexTable["NA"][263]="";
HLAIndexTable["EG"][263]="";
HLAIndexTable["GS"][263]="";

	--Second Intermediate
--Kerman
HLAIndexTable["OA"][264]="";
HLAIndexTable["NA"][264]="";
HLAIndexTable["EG"][264]="";
HLAIndexTable["GS"][264]="Well this just doesn't make any sense. You shouldn't have lost to the Kingdom of Kerma!";
--Lower Hyksos
HLAIndexTable["OA"][265]="";
HLAIndexTable["NA"][265]="";
HLAIndexTable["EG"][265]="";
HLAIndexTable["GS"][265]="";
--Upper Hyksos
HLAIndexTable["OA"][266]="";
HLAIndexTable["NA"][266]="";
HLAIndexTable["EG"][266]="";
HLAIndexTable["GS"][266]="";
--Middle Hyksos
HLAIndexTable["OA"][267]="";
HLAIndexTable["NA"][267]="";
HLAIndexTable["EG"][267]="";
HLAIndexTable["GS"][267]="";
--Aneb-Hetch
HLAIndexTable["OA"][268]="";
HLAIndexTable["NA"][268]="";
HLAIndexTable["EG"][268]="";
HLAIndexTable["GS"][268]="";
--Medjay
HLAIndexTable["OA"][269]="";
HLAIndexTable["NA"][269]="";
HLAIndexTable["EG"][269]="";
HLAIndexTable["GS"][269]="";

	--New Kingdom
--Hittite 19
HLAIndexTable["OA"][270]="Breasted translated a section of the poem which reads that the officers became separated from the troops causing chaos, this could explain defeat. ";
HLAIndexTable["NA"][270]="There is no archaeological evidence of the Hittites taking over Egypt- there would be abundant Hittite artifacts if this were to happen. I will disagree however with the old archaeologist, re-readings of the text argue that Breasted translated wrong and instead of a few pivotal officers defecting it was actually a few soliders- very different.";
HLAIndexTable["EG"][270]="While the Poem of Kadesh doesn't report defeat, it does state that Ramesses was abandoned to fight on his own: ne is grieved at the report, when one hears of your deserting me while I was alone without a companion, when there came for [me] no official, or chariot-warrior, or sergeant to give me his hand, when I was fighting.  I vanquished millions of foreign countries, though I was alone.?";
HLAIndexTable["GS"][270]="After the battle of Kadesh it was actually argued based on various evidence that the Hittites came out on top based on their hieroglyphs and a number of Egyptian texts which alludes to defeat.";
--Mitanni 18
HLAIndexTable["OA"][271]="";
HLAIndexTable["NA"][271]="According to archaeological evidence, there was supposed to be conflict only in Syra-Palestine, and Egypt was never conquered- just defeated.";
HLAIndexTable["EG"][271]="The annuls of Thutmose III speak of the problems with attempting to conquer Mitanni due to its distance and the need for constant attack of them. Next time you'll beat them.";
HLAIndexTable["GS"][271]="";
--Assyria 20
HLAIndexTable["OA"][272]="Perhaps this is a good thing for Egypt, as the invasion of the Hyksos gave Egypt new technology maybe this invasion will too.";
HLAIndexTable["NA"][272]="Defeat of Egypt by Assyria is seen in the sudden influx of artifacts of Assyrian origin into Egypt, although it shouldn't have happened this soon.";
HLAIndexTable["EG"][272]="Defeat was written about by Asarhaddon, king of Assyria in the Third Intermediate period: 'From the town of Ishupri as far as Memphis, his royal residence, a distance of fifteen days' march, I fought daily, without interruption, very bloody battles against Tirhakah, king of Egypt and Ethiopia, the one accursed by all the great gods. Five times I hit him with the point of my arrows, inflicting wounds from which he should not recover, and then I laid siege to Memphis, his royal residence, and conquered it in half a day by means of mines, breaches, and assault ladders; I destroyed it, tore down its walls, and burned it down.'";
HLAIndexTable["GS"][272]="";
--Nubia 16
HLAIndexTable["OA"][273]="While I do think introduction of other cultures into Egypt benefitted them culturally and technologically, this isn't quite how I thought it occurred";
HLAIndexTable["NA"][273]="Archaeological evidence shows no flourishing of Nubian or Kushite culture until the end of the New Kingdom, we should not have lost this battle.";
HLAIndexTable["EG"][273]="There is no epigraphic evidence for a defeat of Egypt by Nubia and Kush until the end of the New Kingdom in 1075 B.C. How did this happen?";
HLAIndexTable["GS"][273]="Something is definitely not right, did I miss the chapter in my textbook where Egypt was conquered in the New Kingdom?";
--Medjay 17
HLAIndexTable["OA"][274]="";
HLAIndexTable["NA"][274]="";
HLAIndexTable["EG"][274]="I warned you that texts show that the Medjay can be fierce warriors and are not to be trifled with";
HLAIndexTable["GS"][274]="";
--Kush
HLAIndexTable["OA"][275]="While I do think introduction of other cultures into Egypt benefitted them culturally and technologically, this isn't quite how I thought it occurred.";
HLAIndexTable["NA"][275]="Archaeological evidence shows no flourishing of Nubian or Kushite culture until the end of the New Kingdom, we should not have lost this battle.";
HLAIndexTable["EG"][275]="There is no epigraphic evidence for a defeat of Egypt by Nubia and Kush until the end of the New Kingdom in 1075 B.C. How did this happen?";
HLAIndexTable["GS"][275]="Something is definitely not right, did I miss the chapter in my textbook where Egypt was conquered in the New Kingdom?";

--====================================================================
--Civ Defeat HLA 276 - 311
	--Predaynastic
HLAIndexTable["OA"][276]="";
HLAIndexTable["NA"][276]="";
HLAIndexTable["EG"][276]="";
HLAIndexTable["GS"][276]="";

HLAIndexTable["OA"][277]="";
HLAIndexTable["NA"][277]="";
HLAIndexTable["EG"][277]="";
HLAIndexTable["GS"][277]="";

HLAIndexTable["OA"][278]="";
HLAIndexTable["NA"][278]="";
HLAIndexTable["EG"][278]="";
HLAIndexTable["GS"][278]="";

HLAIndexTable["OA"][279]="";
HLAIndexTable["NA"][279]="";
HLAIndexTable["EG"][279]="";
HLAIndexTable["GS"][279]="";

HLAIndexTable["OA"][280]="";
HLAIndexTable["NA"][280]="";
HLAIndexTable["EG"][280]="";
HLAIndexTable["GS"][280]="";

HLAIndexTable["OA"][281]="";
HLAIndexTable["NA"][281]="";
HLAIndexTable["EG"][281]="";
HLAIndexTable["GS"][281]="";

	--Old Kingdom
--Khaset
HLAIndexTable["OA"][282]="";
HLAIndexTable["NA"][282]="";
HLAIndexTable["EG"][282]="";
HLAIndexTable["GS"][282]="";
--Ta-Seti
HLAIndexTable["OA"][283]="";
HLAIndexTable["NA"][283]="";
HLAIndexTable["EG"][283]="";
HLAIndexTable["GS"][283]="";
--Herui
HLAIndexTable["OA"][284]="";
HLAIndexTable["NA"][284]="";
HLAIndexTable["EG"][284]="";
HLAIndexTable["GS"][284]="";
--Waset
HLAIndexTable["OA"][285]="";
HLAIndexTable["NA"][285]="";
HLAIndexTable["EG"][285]="";
HLAIndexTable["GS"][285]="";
--Ten
HLAIndexTable["OA"][286]="";
HLAIndexTable["NA"][286]="";
HLAIndexTable["EG"][286]="";
HLAIndexTable["GS"][286]="";
--Abdju
HLAIndexTable["OA"][287]="";
HLAIndexTable["NA"][287]="";
HLAIndexTable["EG"][287]="";
HLAIndexTable["GS"][287]="";

	--First Intermediate
--Atef-Khent
HLAIndexTable["OA"][288]="Congragulations! The defeat of Herakleopolis means that we now control the main trade routes which opens our civilization to new technology and advancements.";
HLAIndexTable["NA"][288]="If only there was evidence for how this actually occurred¡­";
HLAIndexTable["EG"][288]="While we do not have direct evidence of what occurred, we do have the kings lists which show that the Theban dynasty united the kingdom by defeating Herakleopolis.";
HLAIndexTable["GS"][288]="";
--Heq-At
HLAIndexTable["OA"][289]="";
HLAIndexTable["NA"][289]="";
HLAIndexTable["EG"][289]="While the tomb of Ankh-tifi states that he was never defeated, we know that the Theban dynasty did indeed conquer Heq-At in the process of uniting the kingdom.";
HLAIndexTable["GS"][289]="";
--Aneb-Hetch
HLAIndexTable["OA"][290]="";
HLAIndexTable["NA"][290]="I guess it all worked out for the best, although I wish we had some artifacts or something other than texts to understand this relationship.";
HLAIndexTable["EG"][290]="";
HLAIndexTable["GS"][290]="";
--Abdju
HLAIndexTable["OA"][291]="We know that Abydos was taken into the Theban dynasty, but I don't think there's any direct evidence for it.";
HLAIndexTable["NA"][291]="";
HLAIndexTable["EG"][291]="You have done what the tomb writings of Intef II said and successfully conquered Abydos.";
HLAIndexTable["GS"][291]="I really need to do more research on this period¡­ I'm at a loss";
--Ta-Seti
HLAIndexTable["OA"][292]="";
HLAIndexTable["NA"][292]="I don't think there's evidence for this, but there isn't any to disagree with it either¡­";
HLAIndexTable["EG"][292]="Given that they were previously ruled by Ankh-Tifi after he conquered them it is possible that they were also conquered by Thebes.";
HLAIndexTable["GS"][292]="I really need to do more research on this period¡­ I'm at a loss";
--Lycopolis
HLAIndexTable["OA"][293]="According to histories of Egypt, Thebes slowly broke through the allies of Herakleopolis before it was able to defeat them and reunite the kingdom. You are now one step closer.";
HLAIndexTable["NA"][293]="";
HLAIndexTable["EG"][293]="Intef I gained control of a number of Herakleopolitan allies, you have made an important step in reuniting the kingdom.";
HLAIndexTable["GS"][293]="";

	--Middle Kingdom
--Middle Nubia
HLAIndexTable["OA"][294]="";
HLAIndexTable["NA"][294]="There is no archaeological evidence of Egyptian settlement or townsites, which means that conquered cities are likely puppet states rather than annexing it.";
HLAIndexTable["EG"][294]="";
HLAIndexTable["GS"][294]="Conquered Nubians were allowed to keep their own culture and traditions, this is evidenced by the continuation of Nubian material culture.";
--Lower Nubia
HLAIndexTable["OA"][295]="";
HLAIndexTable["NA"][295]="Victory over Buhen is an important step towards control of the trade routes and over Nubia. The fortress holds an important position.";
HLAIndexTable["EG"][295]="";
HLAIndexTable["GS"][295]="With victory at Buhen, Egypt can begin to create an administrative center here that will aid in controlling trade throughout the South.";
--Upper Nubia
HLAIndexTable["OA"][296]="";
HLAIndexTable["NA"][296]="Archaeological excavations have revealed a number of temples in Nubia, built by the Egyptians as a form of maintaining control. They were symbolic of the pharaoh's power.";
HLAIndexTable["EG"][296]="Extending the Egyptian border through Nubia was important to Senusret II: 'I have made my boundary beyond (that) of my fathers; I have increased that which was bequeathed to me'.";
HLAIndexTable["GS"][296]="";
--Lower Kerman
HLAIndexTable["OA"][297]="Control over Kerma eases the trading routes from Punt, allowing for Egypt to grow.";
HLAIndexTable["NA"][297]="  ";
HLAIndexTable["EG"][297]="From the inscription of Ameni: 'I brought all gifts; my praise, it reached heaven. Then his majesty returned in safety, having overthrown his enemies in Kush the vile'.";
HLAIndexTable["GS"][297]="";
--Upper Kerman
HLAIndexTable["OA"][298]="";
HLAIndexTable["NA"][298]="";
HLAIndexTable["EG"][298]="";
HLAIndexTable["GS"][298]="";
--Medjay
HLAIndexTable["OA"][299]="";
HLAIndexTable["NA"][299]="There is no archaeological evidence that the Egyptians conquered the Medjay.";
HLAIndexTable["EG"][299]="";
HLAIndexTable["GS"][299]="";

	--Second Intermediate
--Kerman
HLAIndexTable["OA"][300]="The pottery and writing of Kerma shows a strong influence by the Egyptians, your victory over them was inevitable.";
HLAIndexTable["NA"][300]="Given your victory, perhaps the confusing tombs of Kerma leaders were indeed Egyptians with Kerma pottery, a sign of Egypt rising to power again.";
HLAIndexTable["EG"][300]="In the biography of Ahmose, a scribe wrote: 'Now when his majesty had slain the nomads of Asia, he sailed south to Khent-hen-nefer [Kerma], to destroy the Nubian Bowmen. His majesty made a great slaughter among them'.";
HLAIndexTable["GS"][300]="Archaeological evidence shows that Egypt regained power in Nubia during the 18th dynasty, and this was the last evidence of Kerma.";
--Lower Hyksos
HLAIndexTable["OA"][301]="Now that we have defeated the Hyksos at Avaris we can begin to reclaim our lost land and learn from the technology that we gained.";
HLAIndexTable["NA"][301]="Archaeological evidence shows that Avaris was an important hub for trade. By controlling Avaris the Egyptians have control over trade routes again.";
HLAIndexTable["EG"][301]="The manner of victory is questioned by Manetho, who wrote instead of warfare that peace was reached: 'They [the Hyksos] enclosed [Avaris] with a high strong wall in order to safeguard all their possessions and spoils. The Egyptian king attempted by siege?giving up the siege in despair, he concluded a treaty by which they should all depart from Egypt.'";
HLAIndexTable["GS"][301]="";
--Upper Hyksos
HLAIndexTable["OA"][302]="";
HLAIndexTable["NA"][302]="";
HLAIndexTable["EG"][302]="Victory over the Hyksos was a continuing source of pride for the Egyptians. On Hatshepsut's tomb an inscription reads 'I have raised up that which had gone to pieces formerly, since the Asiatics were in the midst of Avaris of the Northland, and vagabonds were in the midst of them, overthrowing that which had been made'.";
HLAIndexTable["GS"][302]="By pursuing the Hyksos to this last stronghold, Egypt opened up a wide new range of potential trading networks and increased their power.";
--Middle Hyksos
HLAIndexTable["OA"][303]="";
HLAIndexTable["NA"][303]="";
HLAIndexTable["EG"][303]="Regarding their victory, Kamose said in his inscriptions that 'My army acted like lions with their spoil - chattels, cattle, fat, honey - dividing their things, their hearts joyful'.";
HLAIndexTable["GS"][303]="While the manner of the battle isn't known the outcome was victory for the Egyptians and reclamation of their lost territory.";
--Aneb-Hetch
HLAIndexTable["OA"][304]="";
HLAIndexTable["NA"][304]="";
HLAIndexTable["EG"][304]="From the biography of Ahmose comes evidence of victory over other Egyptians: 'Then came that fallen one whose name was Teti-en, he had gathered to himself rebels. His majesty slew him and his servants, annihilating them'.";
HLAIndexTable["GS"][304]="";
--Medjay
HLAIndexTable["OA"][305]="";
HLAIndexTable["NA"][305]="";
HLAIndexTable["EG"][305]="";
HLAIndexTable["GS"][305]="";

	--New Kingdom
--Hittite 19
HLAIndexTable["OA"][306]="Interpretations by Breasted and other early 20th century archaeologists note that based on texts and the rules of warfare, victory was had by the Egyptians over the Hitties";
HLAIndexTable["NA"][306]="Without archaeological evidence of warfare between the two it is difficult to know whether the poems and writings are true or propaganda.";
HLAIndexTable["EG"][306]="The Poem of Kadesh states 'My Majesty prevailed over them, for I was slaughtering among them, and I did not leave (any) over, for they were heaps of corpses before my horses, lying stretched out together in their own blood.'";
HLAIndexTable["GS"][306]="The eventual downfall of the Hittites was due to the rise of the Assyrians, specifically their warrior king Shalmaneser I";
--Mitanni 18
HLAIndexTable["OA"][307]="Mitanni is a powerful country who only weakens and allies with Egypt after Mitanni is threatened by Assyria. However interaction with them is important in order to expand our trade and improve our kingdom.";
HLAIndexTable["NA"][307]="There is no archaeological evidence for a complete takeover of Mitanni by Egypt, but a number of smaller cities were conquered to convince them into diplomacy.";
HLAIndexTable["EG"][307]="Karnak's seventh pylon describes the defeat of Mitanni in numerous battles against Thutmose I, although this never led to a complete domination of the entire civilization.";
HLAIndexTable["GS"][307]="It's no surprise that you defeated them, the Mitanni Kingdom was fairly short lived. It only survived about 300 years, and was only briefly a major player in international affairs. ";
--Assyria 20
HLAIndexTable["OA"][308]="";
HLAIndexTable["NA"][308]="This definitely did not occur in history. I don’t see any evidence of Egyptian influence in Assyria other than a few traded goods from the pharaoh to the king. ";
HLAIndexTable["EG"][308]="The only evidence I have found of Egypt defeating Assyria is during the Third Intermediate period. However these were only minor rebellions of the Egyptians under their Assyrians overlords.";
HLAIndexTable["GS"][308]="";
--Nubia 16
HLAIndexTable["OA"][309]="From the conquest of Nubia we gain access to new resources and technology to help us grow. We need to find other cultures to expand Egypt's technology and culture.";
HLAIndexTable["NA"][309]="Monuments and temples throughout Nubia contain the symbols and text displaying the power of Egypt over them. With Nubia conquered it is time to move on to larger civilizations.";
HLAIndexTable["EG"][309]="Texts from Nubia show their conquest and the appointment of viceroys over the puppet states: 'The overseer of the White House; he says: This is the seal from the Pharaoh, L.P.H., who assigns to thee (the territory) from Nekhen to Napata.'";
HLAIndexTable["GS"][309]="";
--Medjay 17
HLAIndexTable["OA"][310]="";
HLAIndexTable["NA"][310]="";
HLAIndexTable["EG"][310]="Following the 20th dynasty there is no longer any mention of the Medjay in text or epigraphy, perhaps this is because they were defeated?";
HLAIndexTable["GS"][310]="";
--Kush
HLAIndexTable["OA"][311]="The Egyptians conquered Kush under Thutmose III (1504-1450 B.C.) up to the 4th cataract as evidenced by the spread of Egyptian goods.";
HLAIndexTable["NA"][311]="The rise of temples dedicated to the god Amen-Ra in the New Kingdom in Kush shows the spread of Egypt into the South.";
HLAIndexTable["EG"][311]="Appointment of a vizier and creation of a puppet state is seen by the creation of the position 'King's Son of Kush', the first of which was Turi who was described as the 'Royal command of the king's son, the governor of the south countries, Thure triumphant' upon his own stela.";
HLAIndexTable["GS"][311]="Make sure to keep a strong hold on Kush, epigraphic writing also states: 'the wretched Kush has begun to rebel, those who were under the dominion of the Lord of the Two Lands purpose hostility, beginning to smite him'.";

--====================================================================
-- HLA After 50 75 100 125 turns
-- Predynastic 50
HLAIndexTable["OA"][312]="W.F. Petrie was the first archaeologist to create a seriation of pottery for the predynastic period in Egypt. It was from this that the timeline and categories for this period were created. We should trust Petrie's conclusions that at Naqada III there was an invasion from the east.";
HLAIndexTable["NA"][312]="Burial evidence from Minshat Abu Omar also supports the conclusion of consolidation of polities. There is a continuous and normal demographic curve. If there were a military invasion we would expect to see evidence in the burials.";
HLAIndexTable["EG"][312]="The creation of the palettes with unified symbolism of the crowns suggests that there was also the rise of a unified religion. This may have also led to the consolidation of the polities.";
HLAIndexTable["GS"][312]="Petrie's work on the seriation and burials has been looked over by other archaeologists. While in general the categories remain, there have been a large number of changes to the timeline. With new evidence we need to change our conclusions.";
-- Predynastic 75
HLAIndexTable["OA"][313]="It is difficult to believe that unification came about with no aggression. Why would there be fortification walls if warfare were not occurring?";
HLAIndexTable["NA"][313]="If warfare were the reason for unification, wouldn't we find more evidence of it in the archaeological record?";
HLAIndexTable["EG"][313]="You need to continue building an army. Based on the palettes and iconography, warfare is the only possible way to unite the kingdom.";
HLAIndexTable["GS"][313]="Epigraphic evidence of unification may be propaganda or symbolic rather than an accurate reflection of what occurred."
-- Predynastic 100
HLAIndexTable["OA"][314]="There are rock carvings of boats around Wadi Hammamat, suggesting foreign invasion. It may be best to make contact with these foreigners since they are the only possible cause of change as argued by W.F. Petrie.";
HLAIndexTable["NA"][314]="Petrie's argument for all change being external is an antiquated notion. Evidence more strongly supports internal development, with a gradual shift towards the consolidation of polities. Migration and diffusion aren't the only causes of change; it can be internal development of a culture.";
HLAIndexTable["EG"][314]="The rock carvings don't necessarily mean foreign invasion. It might also mean trade or new technology.";
HLAIndexTable["GS"][314]="Many argue, like Bruce Trigger, that there is evidence of slow replacement of Lower Egyptian pottery by Upper Egyptian pottery, suggesting that the South joined together and replaced the North in the process of unification.";
-- Predynastic 125
HLAIndexTable["OA"][315]="Given the presence of royal burials at Abydos, but the lack of administrative structures, it is likely that the site of the beginning of the kingdom was in this general area.";
HLAIndexTable["NA"][315]="It is thought that Thinis began first by occupying those polities around them in Upper Egypt, and then spread their influence to Lower Egypt. As a group, they are referred to as the Thinite Confederacy.";
HLAIndexTable["EG"][315]="It is argued that Menes was the ruler of Thinis who brought together the disparate polities, and it is possible that Menes and Narmer were the same individuals.";
HLAIndexTable["GS"][315]="Since Thinis has yet to be found, the arguments for it being the center of development for the kingdom are speculative.";
-- OK 10
HLAIndexTable["OA"][316]="Construction of the pyramids is vital during this period. W.M.F Petrie's work in the 1880's showed that there was extensive leveling done of the Giza plateau, begin building your work force to start this project.";
HLAIndexTable["NA"][316]="Mark Lehner's work in the 1980's showed that the workers only leveled a small portion of the plateau at the edges of the pyramid instead of the whole thing. Focus more on finding limestone and granite sources since these are a necessity.";
HLAIndexTable["EG"][316]="From the Famine Stele on the Island of Sehel of the Ptolemaic Period talks of a shortage faced by King Djoser. Build up your food stores by creating farms.";
HLAIndexTable["GS"][316]="Even though they created some of the most memorable monuments in Egypt, the Great Pyramids, much of the Old Kingdom is unknown, including the truth behind the lives of the pharaohs.";
-- OK 20
HLAIndexTable["OA"][317]="What did that Don person say? I would focus on gathering workers to level the plateau.";
HLAIndexTable["NA"][317]="I agree, don't listen to Don Vanikin. It's all about finding suitable sources of building materials.";
HLAIndexTable["EG"][317]="Depictions along the causeways in Saqqara show that the famine is going to be a major problem. Without feeding the workers you can't build the pyramids.";
HLAIndexTable["GS"][317]="I read an argument by Dr. Joseph Davidovits and Margie Morris that the stones used for the pyramid were not quarried, but were cast from a synthetic limestone. That would mean that trading with the south for granite and limestone is unnecessary.";
-- OK 40
HLAIndexTable["OA"][318]="Aliens? That's preposterous. We may not know the exact method of construction- but there is historical evidence that shows it was the Egyptians at least.";
HLAIndexTable["NA"][318]="There are many ways that humans could have built the pyramids. Mark Lehner and I.E.S. Edwards suggest that the foundation was leveled using trenches.";
HLAIndexTable["EG"][318]="Historical writings from Herodotus note that the pyramids were built using wooden tiers. Diodorus Siculus suggested that they were made using earthen ramps.";
HLAIndexTable["GS"][318]="It looks like there are a number of theories that show humans could build the pyramids and not aliens.";
-- OK 60
HLAIndexTable["OA"][319]="Knowledge from other cultures will help in constructing the pyramids. Branch out to other cultures.";
HLAIndexTable["NA"][319]="A damaged mastaba of Djederfhor attests to the rivalry between brothers for the throne following the death of Khufu. You might need to watch your back.";
HLAIndexTable["EG"][319]="You need to take care of your people, as seen in the inscriptions at Henku: 'I settled the [feeble] towns in this nome with people of other nomes; those who had peasant-serfs therein, I made their officials as officials. I never oppressed one in possession of his property, so that he complained of me because of it to the god of my city; (but) I spake, and told that which was good, never was there one fearing because of one stronger than he'.";
HLAIndexTable["GS"][319]="Herodotus wrote that the pharaoh Khufu was more cruel than kind: 'Cheops¡­ drove them into the extremity of misery. For first he shut up all the temples, to debar them from sacrificing in them, and thereafter he ordered all Egyptians to work for himself'. Perhaps an iron fist is the way to rule.";
-- OK 80
HLAIndexTable["OA"][320]="W.J. Petrie found thousands of Old Kingdom jars. All follow the same construction as those found at the pyramid, which suggests that they were all constructed by the Egyptians. ";
HLAIndexTable["NA"][320]="Experimental archaeology has shown that no batteries or electronics were needed to build the pyramids. ";
HLAIndexTable["EG"][320]="The inscriptions Vanikin is talking about are similar to others which definitely aren't related to aliens. It is more likely that the battery and light bulb pictures are just plants or metaphorical images.";
HLAIndexTable["GS"][320]="I'm totally confused¡­";
-- OK 100
HLAIndexTable["OA"][321]="You're going to need more workers. Ludwig Borchardt from the late 19th century estimated that 36,000 workers were needed to build the Great Pyramid.";
HLAIndexTable["NA"][321]="Mark Lehner's studies over the past decade with a construction firm argued that an average workforce of 14,567 people and a peak workforce of 40,000 over a ten year period.";
HLAIndexTable["EG"][321]="Pottery fragments from King Djoser's tomb show the changing relations of king and nomarch. The title of the nomarch changes from 'governor of nome' to 'leader of the country' and finally to 'overseer of the mission'. Keep good relations with the nomarchs to prevent them gaining too much power.";
HLAIndexTable["GS"][321]="";

--Predynastic
--Old Kingdom
--First Intermediate
--Middle Kingdom
--Second Intermediate
--New kingdom


--====================================================================



--====================================================================
--PopUp Functions (Do not touch them)
--====================================================================
function UpdateDialog(IndexNum)
	local nonCount = 0;
	if ( HLAIndexTable["OA"][IndexNum]=="") then
		CurrOAIndex = CurrOAIndex;
		nonCount = nonCount +1;
	else
		CurrOAIndex = CurrOAIndex + 1;
		CurrTable["OA"][CurrOAIndex] = HLAIndexTable["OA"][IndexNum];
	end
		
	if ( HLAIndexTable["NA"][IndexNum]=="") then
		CurrNAIndex = CurrNAIndex;
		nonCount = nonCount +1;
	else
		CurrNAIndex = CurrNAIndex + 1;
		CurrTable["NA"][CurrNAIndex] = HLAIndexTable["NA"][IndexNum];
	end

	if ( HLAIndexTable["EG"][IndexNum]=="") then
		nonCount = nonCount +1;
		CurrEGIndex = CurrEGIndex;
	else
		CurrEGIndex = CurrEGIndex + 1;
		CurrTable["EG"][CurrEGIndex] = HLAIndexTable["EG"][IndexNum];
	end

	if ( HLAIndexTable["GS"][IndexNum]=="") then
		nonCount = nonCount +1;
		CurrGSIndex = CurrGSIndex;
	else
		CurrGSIndex = CurrGSIndex + 1;
		CurrTable["GS"][CurrGSIndex] = HLAIndexTable["GS"][IndexNum];
	end
		
	TempOAIndex = CurrOAIndex;
	TempNAIndex = CurrNAIndex;
	TempEGIndex = CurrEGIndex;
	TempGSIndex = CurrGSIndex;
				
	Controls.OA_ScrollPanel:CalculateInternalSize();
	Controls.NA_ScrollPanel:CalculateInternalSize();
	Controls.EG_ScrollPanel:CalculateInternalSize();
	Controls.GS_ScrollPanel:CalculateInternalSize();
	
	if (nonCount < 4) then
		LuaEvents.HLANotice();
	end
end

function DisplayDialog()
	UIManager:QueuePopup( ContextPtr, PopupPriority.EndGameMenu );
	Controls.HLA:SetText(CurrTable["OA"][CurrOAIndex])
	Controls.OAPagesLabel:SetText(Locale.ConvertTextKey("{1_Num}/{2_Num}", TempOAIndex, CurrOAIndex))
	Controls.HLA2:SetText(CurrTable["NA"][CurrNAIndex])
	Controls.NAPagesLabel:SetText(Locale.ConvertTextKey("{1_Num}/{2_Num}", TempNAIndex, CurrNAIndex))
	Controls.HLA3:SetText(CurrTable["EG"][CurrEGIndex])
	Controls.EGPagesLabel:SetText(Locale.ConvertTextKey("{1_Num}/{2_Num}", TempEGIndex, CurrEGIndex))
	Controls.HLA4:SetText(CurrTable["GS"][CurrGSIndex])
	Controls.GSPagesLabel:SetText(Locale.ConvertTextKey("{1_Num}/{2_Num}", TempGSIndex, CurrGSIndex))
	Controls.OANextButton:SetDisabled(true);
	Controls.NANextButton:SetDisabled(true);
	Controls.EGNextButton:SetDisabled(true);
	Controls.GSNextButton:SetDisabled(true);
	if (CurrOAIndex == 1) then
		Controls.OAPrevButton:SetDisabled(true);
	else
		Controls.OAPrevButton:SetDisabled(false);
	end

	if (CurrNAIndex == 1) then
		Controls.NAPrevButton:SetDisabled(true);
	else
		Controls.NAPrevButton:SetDisabled(false);
	end
	
	if (CurrEGIndex == 1) then
		Controls.EGPrevButton:SetDisabled(true);
	else
		Controls.EGPrevButton:SetDisabled(false);
	end

	if (CurrGSIndex == 1) then
		Controls.GSPrevButton:SetDisabled(true);
	else		
		Controls.GSPrevButton:SetDisabled(false);
	end
end
LuaEvents.myEvent.Add(DisplayDialog);

function StartDialog()
	local playerID = Game.GetActivePlayer();
	local name = Players[playerID]:GetName();
	if (name == "Narmer") then
		UpdateDialog(1);  -- Predynastic Period
	end
	if (name == "Khufu") then
		UpdateDialog(2);  -- Old Kingdom
	end
	if (name == "Mentuhotep II") then
		UpdateDialog(3)  -- First Intermediate Period
	end
	if (name == "Senusret I") then
		UpdateDialog(4)  -- Middle Kingdom
	end
	if (name == "Ahmose") then --name?
		UpdateDialog(5)  -- Second Intermediate Period
	end
	if (name == "Ramesses") then 
		UpdateDialog(6);
	end
	
	
end
Events.LoadScreenClose.Add(StartDialog)

function AfterTrunsDialog()
	if (Game.GetGameTurn() == 15) then
		local playerID = Game.GetActivePlayer();
		local name = Players[playerID]:GetName();
		if (name == "Narmer") then
			UpdateDialog(7);  -- Predynastic Period
		end
		if (name == "Khufu") then
			UpdateDialog(8);  -- Old Kingdom
		end
		if (name == "Mentuhotep II") then
			UpdateDialog(9);  -- First Intermediate Period
		end
		if (name == "Senusret I") then
			UpdateDialog(10);  -- Middle Kingdom
		end
		if (name == "Ahmose") then --name?
			UpdateDialog(11);  -- Second Intermediate Period
		end
		if (name == "Ramesses") then 
			UpdateDialog(12);  -- NewKingdom
		end
		
	end
	if (Game.GetGameTurn() == 25) then
		local playerID = Game.GetActivePlayer();
		local name = Players[playerID]:GetName();
		if (name == "Narmer") then
			UpdateDialog(15);  -- Predynastic Period
		end
		if (name == "Khufu") then
			UpdateDialog(16);  -- Old Kingdom
		end
		if (name == "Mentuhotep II") then
			UpdateDialog(17);  -- First Intermediate Period
		end
		if (name == "Senusret I") then
			UpdateDialog(18);  -- Middle Kingdom
		end
		if (name == "Ahmose") then --name?
			UpdateDialog(19);  -- Second Intermediate Period
		end
		if (name == "Ramesses") then 
			UpdateDialog(20);  -- NewKingdom
		end
		
	end
	if (Game.GetGameTurn() == 50) then
		local playerID = Game.GetActivePlayer();
		local name = Players[playerID]:GetName();
		if (name == "Narmer") then
			UpdateDialog(312);  -- Predynastic Period
		end
	end
	if (Game.GetGameTurn() == 75) then
		local playerID = Game.GetActivePlayer();
		local name = Players[playerID]:GetName();
		if (name == "Narmer") then
			UpdateDialog(313);  -- Predynastic Period
		end
	end
	if (Game.GetGameTurn() == 10) then
		local playerID = Game.GetActivePlayer();
		local name = Players[playerID]:GetName();
		if (name == "Khufu") then
			UpdateDialog(316);  -- Predynastic Period
		end
	end
	if (Game.GetGameTurn() == 20) then
		local playerID = Game.GetActivePlayer();
		local name = Players[playerID]:GetName();
		if (name == "Khufu") then
			UpdateDialog(317);  -- Predynastic Period
		end
	end
	if (Game.GetGameTurn() == 40) then
		local playerID = Game.GetActivePlayer();
		local name = Players[playerID]:GetName();
		if (name == "Khufu") then
			UpdateDialog(318);  -- Predynastic Period
		end
	end
	if (Game.GetGameTurn() == 60) then
		local playerID = Game.GetActivePlayer();
		local name = Players[playerID]:GetName();
		if (name == "Khufu") then
			UpdateDialog(319);  -- Predynastic Period
		end
	end
	if (Game.GetGameTurn() == 80) then
		local playerID = Game.GetActivePlayer();
		local name = Players[playerID]:GetName();
		if (name == "Khufu") then
			UpdateDialog(320);  -- Predynastic Period
		end
	end
	if (Game.GetGameTurn() == 100) then
		local playerID = Game.GetActivePlayer();
		local name = Players[playerID]:GetName();
		if (name == "Narmer") then
			UpdateDialog(314);  -- Predynastic Period
		elseif (name == "Khufu") then
			UpdateDialog(321);
		end
	end
	if (Game.GetGameTurn() == 125) then
		local playerID = Game.GetActivePlayer();
		local name = Players[playerID]:GetName();
		if (name == "Narmer") then
			UpdateDialog(315);  -- Predynastic Period
		end
	end
end
Events.ActivePlayerTurnStart.Add(AfterTrunsDialog)

function CityCreatedHLA(vHexPos, ePlayerID, iCityID, eArtStyleType, eEraType, iContinent, iPopulationSize, iSize, iFogState)
	name = Players[ePlayerID]:GetName()
	--print(name)
	if ( name == "Narmer" ) then
		UpdateDialog(42);
		
		Events.SerialEventCityCreated.Remove(CityCreatedHLA)
	end
	if ( name == "Khufu" ) then
		UpdateDialog(43);
		
		Events.SerialEventCityCreated.Remove(CityCreatedHLA)
	end
	if ( name == "Mentuhotep II" ) then
		UpdateDialog(44);
		
		Events.SerialEventCityCreated.Remove(CityCreatedHLA)
	end
	if ( name == "Senusret I" ) then
		UpdateDialog(45);
		
		Events.SerialEventCityCreated.Remove(CityCreatedHLA)
	end
	if ( name == "Ahmose" ) then
		UpdateDialog(46);
		
		Events.SerialEventCityCreated.Remove(CityCreatedHLA)
	end
	if ( name == "Ramesses" ) then
		UpdateDialog(47);
		
		Events.SerialEventCityCreated.Remove(CityCreatedHLA)
	end
end
Events.SerialEventCityCreated.Add(CityCreatedHLA);

local ResearchOptics = 0;
local ResearchIW = 0;
function ResearchInto()
	local playerID = Game.GetActivePlayer();
	local name = Players[playerID]:GetName();
	if (name == "Ramesses") then 
		-- optics
		if (ResearchOptics == 0) then
			if (Players[playerID]:IsResearchingTech(12)) then
				UpdateDialog(13);
				
				ResearchOptics = 1;
			end		
		end
		-- iron working
		if (ResearchIW == 0) then
			if (Players[playerID]:IsResearchingTech(17)) then
				UpdateDialog(14);
				
				ResearchIW = 1;
			end		
		end
	end
end
Events.SerialEventResearchDirty.Add(ResearchInto)

--Leader Index:
--1:Shuttarna II  2:Nedjeh 3:Kashta 4:Bak 5:Muwatalli II 6:Adad-nirari II
local playerMeeting;
local Meet1 = 0;
local Meet2 = 0;
local Meet3 = 0;
local Meet4 = 0;
local Meet5 = 0;
local Meet6 = 0;
local Open1 = 0;
local Open2 = 0;
local Open3 = 0;
local Open4 = 0;
local Open5 = 0;
local Open6 = 0;
function FirstMeet( iPlayer, iDiploUIState, szLeaderMessage, iAnimationAction, iData1 )
	playerMeeting = iPlayer;
	name = Players[iPlayer]:GetName();
	if ( iPlayer == 1 ) then
		if (Meet1 == 0) then
			Meet1 = 1;
		end
	elseif ( iPlayer == 2) then
		if (Meet2 == 0) then
			Meet2 = 1;
		end
	elseif ( iPlayer == 3) then
		if (Meet3 == 0) then
			Meet3 = 1;
		end
	elseif ( iPlayer == 4) then
		if (Meet4 == 0) then
			Meet4 = 1;
		end
	elseif ( iPlayer == 5) then
		if (Meet5 == 0) then
			Meet5 = 1;
		end
	elseif ( iPlayer == 6) then
		if (Meet6 == 0) then
			Meet6 = 1;
		end
	end
end
Events.AILeaderMessage.Add(FirstMeet);

function FirstMeetHLA()
	local mulFactor = 0;
	local playerID = Game.GetActivePlayer();
	local name = Players[playerID]:GetName();
	if (name == "Narmer") then
		mulFactor = 0;
	end
	if (name == "Khufu") then
		mulFactor = 1;
	end
	if (name == "Mentuhotep II") then
		mulFactor = 2;
	end
	if (name == "Senusret I") then
		mulFactor = 3;
	end
	if (name == "Ahmose") then --name?
		mulFactor = 4;
	end
	if (name == "Ramesses") then 
		mulFactor = 5;
	end
	local indexNum;
	if (Meet1 == 1) then
		Meet1 = 2;
		indexNum = 84 + mulFactor*6
		UpdateDialog(indexNum);
		
	elseif (Meet2 == 1) then
		Meet2 = 2;
		indexNum = 85 + mulFactor*6
		UpdateDialog(indexNum);
		
	elseif (Meet3 == 1) then
		Meet3 = 2;
		indexNum = 86 + mulFactor*6
		UpdateDialog(indexNum);
		
	elseif (Meet4 == 1) then
		Meet4 = 2;
		indexNum = 87 + mulFactor*6
		UpdateDialog(indexNum);
		
	elseif (Meet5 == 1) then
		Meet5 = 2;
		indexNum = 88 + mulFactor*6
		UpdateDialog(indexNum);
		
	elseif (Meet6 == 1) then
		Meet6 = 2;
		indexNum = 89 + mulFactor*6
		UpdateDialog(indexNum);
		
	end
end
Events.LeavingLeaderViewMode.Add(FirstMeetHLA)

function EndGameHLA()
	winner = Game.GetWinner();
	id = Game.GetActivePlayer();
	team = Players[id]:GetTeam();
	local playerID = Game.GetActivePlayer();
	local name = Players[playerID]:GetName();
	local loseIndex = 240;
	local winner = Game.GetWinner();
	if ( Players[winner]:GetName() ~= name) then
		if (name == "Narmer") then	
			loseIndex = 240;
		end
		if (name == "Khufu") then		
			loseIndex = 246;
		end
		if (name == "Mentuhotep II") then		
			loseIndex = 252;
		end
		if (name == "Senusret I") then		
			loseIndex = 258;
		end
		if (name == "Ahmose") then --name?		
			loseIndex = 264;
		end
		if (name == "Ramesses") then 		
			loseIndex = 270;
		end

		if (Players[winner]:GetName() == Players[2]:GetName()) then
			loseIndex = loseIndex + 1
		elseif (Players[winner]:GetName() == Players[3]:GetName()) then
			loseIndex = loseIndex + 2
		elseif (Players[winner]:GetName() == Players[4]:GetName()) then
			loseIndex = loseIndex + 3
		elseif (Players[winner]:GetName() == Players[5]:GetName()) then
			loseIndex = loseIndex + 4
		elseif (Players[winner]:GetName() == Players[6]:GetName()) then
			loseIndex = loseIndex + 5
		end
	
		UpdateDialog(loseIndex);
		
	end
end
Events.EndGameShow.Add(EndGameHLA)

function UnitProductionHLA()
	local playerID = Game.GetActivePlayer()
	for city in Players[playerID]:Cities() do
		aaa = city:GetProductionNameKey();
		if (aaa == "TXT_KEY_UNIT_SWORDSMAN") then
			UpdateDialog(23);
			
			Events.SpecificCityInfoDirty.Remove(UnitProductionHLA);
		end
	end
end
Events.SpecificCityInfoDirty.Add(UnitProductionHLA);

local war1 = 0;
local war2 = 0;
local war3 = 0;
local war4 = 0;
local war5 = 0;
local war6 = 0;
function WarHLA( iTeam1, iTeam2, bWar)
	if (bWar) then
		if (Teams[iTeam1]:GetName() == Players[0]:GetName() ) then
			local playerID = Game.GetActivePlayer();
			local name = Players[playerID]:GetName();
			local warIndex = 132;
			local warClockIdnex = 168;
			if (name == "Narmer") then
				warIndex = 132;
				warClockIndex = 168;
			end
			if (name == "Khufu") then
				warIndex = 138;
				warClockIndex = 174;
			end
			if (name == "Mentuhotep II") then
				warIndex = 144;
				warClockIndex = 180;
			end
			if (name == "Senusret I") then
				warIndex = 150;
				warClockIndex = 186;
			end
			if (name == "Ahmose") then --name?
				warIndex = 156;
				warClockIndex = 172;
			end
			if (name == "Ramesses") then 
				warIndex = 162;
				warClockIndex = 178;
			end

			if (Teams[iTeam2]:GetName() == Players[1]:GetName()) then
				if ( war1 == 0 ) then
					warIndex = warIndex + 0;
					warClockIndex = warClockIndex + 0;
					WarClockHLA(0, warClockIndex);
					UpdateDialog(warIndex);
					
					war1 = 1;
				end
			elseif (Teams[iTeam2]:GetName() == Players[2]:GetName()) then
				if ( war2 == 0 ) then
					warIndex = warIndex + 1;
					warClockIndex = warClockIndex + 1;
					WarClockHLA(0, warClockIndex);
					UpdateDialog(warIndex);
					
					war2 = 1;
				end
			elseif (Teams[iTeam2]:GetName() == Players[3]:GetName()) then
				if ( war3 == 0 ) then
					warIndex = warIndex + 2;
					warClockIndex = warClockIndex + 2;
					WarClockHLA(0, warClockIndex);
					UpdateDialog(warIndex);
					
					war3 = 1;
				end
			elseif (Teams[iTeam2]:GetName() == Players[4]:GetName()) then
				if ( war4 == 0 ) then
					warIndex = warIndex + 3;
					warClockIndex = warClockIndex + 3;
					WarClockHLA(0, warClockIndex);
					UpdateDialog(warIndex);
					
					war4 = 1;
				end
			elseif (Teams[iTeam2]:GetName() == Players[5]:GetName()) then
				if ( war5 == 0 ) then
					warIndex = warIndex + 4;
					warClockIndex = warClockIndex + 4;
					WarClockHLA(0, warClockIndex);
					UpdateDialog(warIndex);
					
					war5 = 1;
				end
			elseif (Teams[iTeam2]:GetName() == Players[6]:GetName()) then
				if ( war6 == 0 ) then
					warIndex = warIndex + 5;
					warClockIndex = warClockIndex + 5;
					WarClockHLA(0, warClockIndex);
					UpdateDialog(warIndex);
					
					war6 = 1;
				end
			end
		end
	end
end
Events.WarStateChanged.Add(WarHLA)

function WarClockHLA( clock , hlaIndex)
	Events.ActivePlayerTurnStart.Add(function()
		clock = clock + 1;
		if (clock == 5) then
			UpdateDialog(hlaIndex);
			
		end
	end)
end

local CurrDeal = 0
local TradeTable = {}
TradeTable[1] = 0
TradeTable[2] = 0
TradeTable[3] = 0
TradeTable[4] = 0
TradeTable[5] = 0
TradeTable[6] = 0
function TradeHLA( iPlayer, iDiploUIState, szLeaderMessage, iAnimationAction, iData1 )
	user = Game.GetActivePlayer()
	name = Players[user]:GetName()
	if (UI.GetNumCurrentDeals() > CurrDeal) then
		if ( name == "Narmer" ) then
			if ( TradeTable[iPlayer] == 0 ) then
				num = 47 + iPlayer
				UpdateDialog(num);
				
				TradeTable[iPlayer] = 1
			end
		elseif ( name == "Khufu" ) then
			if ( TradeTable[iPlayer] == 0 ) then
				num = 53 + iPlayer
				UpdateDialog(num);
				
				TradeTable[iPlayer] = 1
			end
		elseif ( name == "Mentuhotep II" ) then
			if ( TradeTable[iPlayer] == 0 ) then
				num = 59 + iPlayer
				UpdateDialog(num);
				
				TradeTable[iPlayer] = 1
			end
		elseif ( name == "Senusret I" ) then
			if ( TradeTable[iPlayer] == 0 ) then
				num = 65 + iPlayer
				UpdateDialog(num);
				
				TradeTable[iPlayer] = 1
			end
		elseif ( name == "Ahmose" ) then
			if ( TradeTable[iPlayer] == 0 ) then
				num = 71 + iPlayer
				UpdateDialog(num);
				
				TradeTable[iPlayer] = 1
			end
		elseif ( name == "Ramesses" ) then
			if ( TradeTable[iPlayer] == 0 ) then
				num = 77 + iPlayer
				UpdateDialog(num);
				
				TradeTable[iPlayer] = 1
			end
		end
		CurrDeal = UI.GetNumCurrentDeals();
	end
end
Events.AILeaderMessage.Add(TradeHLA)

function DealExpire()
	CurrDeal = UI.GetNumCurrentDeals();
end
Events.ActivePlayerTurnStart.Add(DealExpire)

local FrdTable = {};
FrdTable[1] = 0;
FrdTable[2] = 0;
FrdTable[3] = 0;
FrdTable[4] = 0;
FrdTable[5] = 0;
FrdTable[6] = 0;
function DoFHLA (iPlayer, iDiploUIState, szLeaderMessage, iAnimationAction, iData1)
	user = Game.GetActivePlayer()
	name = Players[user]:GetName()

	if ( Players[user]:IsDoF(iPlayer)) then
		if ( name == "Narmer" ) then
			if ( FrdTable[iPlayer] == 0 ) then
				num = 203 + iPlayer
				FriendshipHLA( num, iPlayer )
				
			end
		elseif ( name == "Khufu" ) then
			if ( FrdTable[iPlayer] == 0 ) then
				num = 209 + iPlayer
				FriendshipHLA( num, iPlayer )
				
			end
		elseif ( name == "Mentuhotep II" ) then
			if ( FrdTable[iPlayer] == 0 ) then
				num = 215 + iPlayer
				FriendshipHLA( num, iPlayer )
				
			end
		elseif ( name == "Senusret I" ) then
			if ( FrdTable[iPlayer] == 0 ) then
				num = 221 + iPlayer
				FriendshipHLA( num, iPlayer )
				
			end
		elseif ( name == "Ahmose" ) then
			if ( FrdTable[iPlayer] == 0 ) then
				num = 227 + iPlayer
				FriendshipHLA( num, iPlayer )
				
			end
		elseif ( name == "Ramesses" ) then
			if ( FrdTable[iPlayer] == 0 ) then
				num = 233 + iPlayer
				FriendshipHLA( num, iPlayer )
				
			end
		end
	end
end
Events.AILeaderMessage.Add(DoFHLA)

function FriendshipHLA( index, flag )
	Events.LeavingLeaderViewMode.Add(function()
		if (FrdTable[flag] == 0) then
			UpdateDialog(index);
			
			FrdTable[flag] = 1;
		end
	end)
end
--Events.LeavingLeaderViewMode.Add(FriendshipHLA)

function LastTurnHLA()
	user = Game.GetActivePlayer()
	name = Players[user]:GetName()
	if (name == "Narmer") then
			UpdateDialog(30);  -- Predynastic Period
		end
		if (name == "Khufu") then
			UpdateDialog(31);  -- Old Kingdom
		end
		if (name == "Mentuhotep II") then
			UpdateDialog(32);  -- First Intermediate Period
		end
		if (name == "Senusret I") then
			UpdateDialog(33);  -- Middle Kingdom
		end
		if (name == "Ahmose") then --name?
			UpdateDialog(34);  -- Second Intermediate Period
		end
		if (name == "Ramesses") then 
			UpdateDialog(35);  -- NewKingdom
		end
		
end
LuaEvents.LastTurn.Add(LastTurnHLA)


local defeatTable = {};
defeatTable[1] = 0
defeatTable[2] = 0
defeatTable[3] = 0
defeatTable[4] = 0
defeatTable[5] = 0
defeatTable[6] = 0
function AICivDefeat (iPlayer, iDiploUIState, szLeaderMessage, iAnimationAction, iData1)
	if (not Players[iPlayer]:IsAlive()) then
		if (defeatTable[iPlayer] == 0) then
			local defeatIndex = 0;
			if (name == "Narmer") then
				defeatIndex = 275 + iPlayer;
			end
			if (name == "Khufu") then
				defeatIndex = 281 + iPlayer;  -- Old Kingdom
			end
			if (name == "Mentuhotep II") then
				defeatIndex = 287 + iPlayer; -- First Intermediate Period
			end
			if (name == "Senusret I") then
				defeatIndex = 293 + iPlayer;  -- Middle Kingdom
			end
			if (name == "Ahmose") then --name?
				defeatIndex = 299 + iPlayer;  -- Second Intermediate Period
			end
			if (name == "Ramesses") then 
				 defeatIndex = 305 + iPlayer; -- NewKingdom
			end
			defeatTable[iPlayer] = 1;
			UpdateDialog(defeatIndex);
			
		end
	end
end
Events.AILeaderMessage.Add(AICivDefeat)

Controls.OAPrevButton:RegisterCallback( Mouse.eLClick, function()
	TempOAIndex = TempOAIndex - 1;
	Controls.OANextButton:SetDisabled(false);
	if (TempOAIndex == 1) then
		Controls.OAPrevButton:SetDisabled(true);
	end
	RefreshDisplay();
end);

Controls.OANextButton:RegisterCallback( Mouse.eLClick, function()
	TempOAIndex = TempOAIndex + 1;
	Controls.OAPrevButton:SetDisabled(false);
	if (TempOAIndex == CurrOAIndex ) then
		Controls.OANextButton:SetDisabled(true);
	end
	RefreshDisplay();
end);

Controls.NAPrevButton:RegisterCallback( Mouse.eLClick, function()
	TempNAIndex = TempNAIndex - 1;
	Controls.NANextButton:SetDisabled(false);
	if (TempNAIndex == 1) then
		Controls.NAPrevButton:SetDisabled(true);
	end
	RefreshDisplay();
end);

Controls.NANextButton:RegisterCallback( Mouse.eLClick, function()
	TempNAIndex = TempNAIndex + 1;
	Controls.NAPrevButton:SetDisabled(false);
	if (TempNAIndex == CurrNAIndex ) then
		Controls.NANextButton:SetDisabled(true);
	end
	RefreshDisplay();
end);

Controls.EGPrevButton:RegisterCallback( Mouse.eLClick, function()
	TempEGIndex = TempEGIndex - 1;
	Controls.EGNextButton:SetDisabled(false);
	if (TempEGIndex == 1) then
		Controls.EGPrevButton:SetDisabled(true);
	end
	RefreshDisplay();
end);

Controls.EGNextButton:RegisterCallback( Mouse.eLClick, function()
	TempEGIndex = TempEGIndex + 1;
	Controls.EGPrevButton:SetDisabled(false);
	if (TempEGIndex == CurrEGIndex ) then
		Controls.EGNextButton:SetDisabled(true);
	end
	RefreshDisplay();
end);

Controls.GSPrevButton:RegisterCallback( Mouse.eLClick, function()
	TempGSIndex = TempGSIndex - 1;
	Controls.GSNextButton:SetDisabled(false);
	if (TempGSIndex == 1) then
		Controls.GSPrevButton:SetDisabled(true);
	end
	RefreshDisplay();
end);

Controls.GSNextButton:RegisterCallback( Mouse.eLClick, function()
	TempGSIndex = TempGSIndex + 1;
	Controls.GSPrevButton:SetDisabled(false);
	if (TempGSIndex == CurrGSIndex ) then
		Controls.GSNextButton:SetDisabled(true);
	end
	RefreshDisplay();
end);

function RefreshDisplay()
	Controls.HLA:SetText(CurrTable["OA"][TempOAIndex])
	Controls.OAPagesLabel:SetText(Locale.ConvertTextKey("{1_Num}/{2_Num}", TempOAIndex, CurrOAIndex))
	Controls.HLA2:SetText(CurrTable["NA"][TempNAIndex])
	Controls.NAPagesLabel:SetText(Locale.ConvertTextKey("{1_Num}/{2_Num}", TempNAIndex, CurrNAIndex))
	Controls.HLA3:SetText(CurrTable["EG"][TempEGIndex])
	Controls.EGPagesLabel:SetText(Locale.ConvertTextKey("{1_Num}/{2_Num}", TempEGIndex, CurrEGIndex))
	Controls.HLA4:SetText(CurrTable["GS"][TempGSIndex])
	Controls.GSPagesLabel:SetText(Locale.ConvertTextKey("{1_Num}/{2_Num}", TempGSIndex, CurrGSIndex))
end
--====================================================================

--====================================================================
--Control Functions (Do not touch them)
--====================================================================
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
	TempOAIndex = CurrOAIndex;
	TempNAIndex = CurrNAIndex;
	TempEGIndex = CurrEGIndex;
	TempGSIndex = CurrGSIndex;
	--[[UIManager:SetUICursor( 0 );]]
end
Controls.CloseButton:RegisterCallback( Mouse.eLClick, OnClose );
--====================================================================