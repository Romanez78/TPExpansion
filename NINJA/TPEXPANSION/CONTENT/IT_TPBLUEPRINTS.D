instance ItWr_TP_BluePrint_NOVM(C_Item)
{
	name = "N�kres na v�robu lehk� zbroje novice";

	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;

	value = 100;

	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;

	on_state[0] = Use_Plan_TPEXPANSION_NOVICEM;
	
	scemeName = "MAP";

	description = name;
};
func void Use_Plan_TPEXPANSION_NOVICEM()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_PrintLine(nDocID,0,"     N�kres na vyroben� lehk� zbroje novice");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"Na v�robu je pot�eba jen:");
    Doc_PrintLines(nDocID,0,"-4 Vl�� k��e");
    Doc_PrintLines(nDocID,0,"-N�vod k v�rob� je na druh� stran�.");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_Show(nDocID);
};
instance ItWr_TP_BluePrint_NOVH(C_Item)
{
	name = "N�kres na v�robu t�k� zbroje novice";

	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;

	value = 100;

	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;

	on_state[0] = Use_Plan_TPEXPANSION_NOVICEH;
	
	scemeName = "MAP";

	description = name;
};
func void Use_Plan_TPEXPANSION_NOVICEH()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_PrintLine(nDocID,0,"     N�kres na vyroben� t�k� zbroje novice");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"Pot�ebn� suroviny:");
    Doc_PrintLines(nDocID,0,"-2 kusy surov� oceli");
    Doc_PrintLines(nDocID,0,"-1 k��e divo��ka");
    Doc_PrintLines(nDocID,0,"-Lehk� zbroj novice");
    Doc_PrintLines(nDocID,0,"N�vod k v�rob� je na druh� stran�.");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_Show(nDocID);
};
instance ItWr_TP_BluePrint_NOVHR(C_Item)
{
	name = "N�kres na vylep�en� t�k� zbroje novice";

	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;

	value = 100;

	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;

	on_state[0] = Use_Plan_TPEXPANSION_NOVICEHR;
	
	scemeName = "MAP";

	description = name;
};
func void Use_Plan_TPEXPANSION_NOVICEHR()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_PrintLine(nDocID,0,"     N�kres na vylep�en� t�k� zbroje novice");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"Pot�ebn� suroviny:");
    Doc_PrintLines(nDocID,0,"-2 kusy surov� oceli");
    Doc_PrintLines(nDocID,0,"-3 k��e divo��ka");
    Doc_PrintLines(nDocID,0,"-T�k� zbroj novice");
    Doc_PrintLines(nDocID,0,"N�vod k v�rob� je na druh� stran�.");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_Show(nDocID);
};  
instance ItWr_TP_BluePrint_TPLL(C_Item)
{
	name = "N�kres na v�robu lehk�ch zbroj� t�bora bratrstva.";

	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;

	value = 100;

	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;

	on_state[0] = Use_Plan_TPEXPANSION_TPLL;

	scemeName = "MAP";

	description = name;
};
func void Use_Plan_TPEXPANSION_TPLL()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_PrintLine(nDocID,0,"     N�kres na v�robu lehk�ch zbroj� t�bora bratrstva.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Pro lehkou zbroj templ��e je pot�eba:");
	Doc_PrintLines(nDocID,0,"-3 kusy surov� oceli");
    Doc_PrintLines(nDocID,0,"-3 K��e ��havce");
    Doc_PrintLines(nDocID,0,"-1 K��e Divo��ka");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Pro lehkou zbroj lovce bratrstva je pot�eba:");
	Doc_PrintLines(nDocID,0,"-2 kusy surov� oceli");
	Doc_PrintLines(nDocID,0,"-3 K��e ��havce");
	Doc_PrintLines(nDocID,0,"-2 K��e Divo��ka");
	Doc_PrintLines(nDocID,0,"-1 �ihadlo krvav� mouchy");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"N�vod k v�rob� je na druh� stran� tohoto n�kresu.");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_Show(nDocID);
};  
instance ItWr_TP_BluePrint_TPLM(C_Item)
{
	name = "N�kres na v�robu zbroj� t�bora bratrstva.";

	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;

	value = 100;

	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;

	on_state[0] = Use_Plan_TPEXPANSION_TPLM;

	scemeName = "MAP";

	description = name;
};
func void Use_Plan_TPEXPANSION_TPLM()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_PrintLine(nDocID,0,"     N�kres na v�robu zbroj� t�bora bratrstva.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Pro zbroj templ��e je pot�eba:");
	Doc_PrintLines(nDocID,0,"-4 kusy surov� oceli");
    Doc_PrintLines(nDocID,0,"-3 K��e Mo��lov�ho �raloka");
    Doc_PrintLines(nDocID,0,"-1 K��e Warga");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Pro zbroj lovce bratrstva je pot�eba:");
	Doc_PrintLines(nDocID,0,"-3 kusy surov� oceli");
	Doc_PrintLines(nDocID,0,"-3 K��e Mo��lov�ho �raloka");
	Doc_PrintLines(nDocID,0,"-2 K��e Warga");
	Doc_PrintLines(nDocID,0,"-2 Zuby Mo��lov�ho �raloka");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"N�vod k v�rob� je na druh� stran� tohoto n�kresu.");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_Show(nDocID);
};
instance ItWr_TP_BluePrint_TPLH(C_Item)
{
	name = "N�kres na v�robu t�k�ch zbroj� t�bora bratrstva.";

	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;

	value = 100;

	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;

	on_state[0] = Use_Plan_TPEXPANSION_TPLH;

	scemeName = "MAP";

	description = name;
};
func void Use_Plan_TPEXPANSION_TPLH()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_PrintLine(nDocID,0,"     N�kres na v�robu t�k�ch zbroj� t�bora bratrstva.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Pro t�kou zbroj templ��e je pot�eba:");
	Doc_PrintLines(nDocID,0,"-6 kus� surov� oceli");
    Doc_PrintLines(nDocID,0,"-4 K��e Mo��lov�ho �raloka");
    Doc_PrintLines(nDocID,0,"-1 K��e St�nov� �elmy");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Pro t�kou zbroj lovce bratrstva je pot�eba:");
	Doc_PrintLines(nDocID,0,"-5 kus� surov� oceli");
	Doc_PrintLines(nDocID,0,"-4 K��e Mo��lov�ho �raloka");
	Doc_PrintLines(nDocID,0,"-1 K��e St�nov� �elmy");
	Doc_PrintLines(nDocID,0,"-1 Ohniv� Jazyk");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"N�vod k v�rob� je na druh� stran� tohoto n�kresu.");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_Show(nDocID);
};
instance ItWr_TP_BluePrint_TPLO(C_Item)
{
	name = "N�kres na v�robu zbroj� bratrstva z �ern� rudy.";

	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;

	value = 100;

	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;

	on_state[0] = Use_Plan_TPEXPANSION_TPLO;

	scemeName = "MAP";

	description = name;
};
func void Use_Plan_TPEXPANSION_TPLO()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_PrintLine(nDocID,0,"     N�kres na v�robu zbroj� bratrstva z �ern� rudy.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Pro Zbroj Vyvolen�ho z Bratrstva je pot�eba:");
	Doc_PrintLines(nDocID,0,"-7 kus� surov� oceli");
    Doc_PrintLines(nDocID,0,"-4 K��e Mo��lov�ho �raloka");
    Doc_PrintLines(nDocID,0,"-2 Hrudky Magck� Rudy");
    Doc_PrintLines(nDocID,0,"-1 Hrudka �ern� Rudy");
    Doc_PrintLines(nDocID,0,"-4 Kusy Tr�vy z Ba�in");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"Pro Zbroj Mistra Lovce Bratrstva je pot�eba:");
	Doc_PrintLines(nDocID,0,"-6 kus� surov� oceli");
	Doc_PrintLines(nDocID,0,"-5 K��� Mo��lov�ho �raloka");
	Doc_PrintLines(nDocID,0,"-1 Hrudka Magick� Rudy");
	Doc_PrintLines(nDocID,0,"-1 Hrudka �ern� Rudy");
	Doc_PrintLines(nDocID,0,"-4 Kusy Tr�vy z Ba�in");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"N�vod k v�rob� je na druh� stran� tohoto n�kresu.");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_Show(nDocID);
};