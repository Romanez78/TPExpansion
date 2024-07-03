instance ItWr_TP_BluePrint_NOVM(C_Item)
{
	name = "Nákres na výrobu lehké zbroje novice";

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
	Doc_PrintLine(nDocID,0,"     Nákres na vyrobení lehké zbroje novice");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"Na výrobu je potøeba jen:");
    Doc_PrintLines(nDocID,0,"-4 Vlèí kùže");
    Doc_PrintLines(nDocID,0,"-Návod k výrobì je na druhé stranì.");
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
	name = "Nákres na výrobu tìžké zbroje novice";

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
	Doc_PrintLine(nDocID,0,"     Nákres na vyrobení tìžké zbroje novice");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"Potøebné suroviny:");
    Doc_PrintLines(nDocID,0,"-2 kusy surové oceli");
    Doc_PrintLines(nDocID,0,"-1 kùže divoèáka");
    Doc_PrintLines(nDocID,0,"-Lehká zbroj novice");
    Doc_PrintLines(nDocID,0,"Návod k výrobì je na druhé stranì.");
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
	name = "Nákres na vylepšení tìžké zbroje novice";

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
	Doc_PrintLine(nDocID,0,"     Nákres na vylepšení tìžké zbroje novice");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"Potøebné suroviny:");
    Doc_PrintLines(nDocID,0,"-2 kusy surové oceli");
    Doc_PrintLines(nDocID,0,"-3 kùže divoèáka");
    Doc_PrintLines(nDocID,0,"-Tìžká zbroj novice");
    Doc_PrintLines(nDocID,0,"Návod k výrobì je na druhé stranì.");
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
	name = "Nákres na výrobu lehkých zbrojí tábora bratrstva.";

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
	Doc_PrintLine(nDocID,0,"     Nákres na výrobu lehkých zbrojí tábora bratrstva.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Pro lehkou zbroj templáøe je potøeba:");
	Doc_PrintLines(nDocID,0,"-3 kusy surové oceli");
    Doc_PrintLines(nDocID,0,"-3 Kùže Èíhavce");
    Doc_PrintLines(nDocID,0,"-1 Kùže Divoèáka");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Pro lehkou zbroj lovce bratrstva je potøeba:");
	Doc_PrintLines(nDocID,0,"-2 kusy surové oceli");
	Doc_PrintLines(nDocID,0,"-3 Kùže Èíhavce");
	Doc_PrintLines(nDocID,0,"-2 Kùže Divoèáka");
	Doc_PrintLines(nDocID,0,"-1 žihadlo krvavé mouchy");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Návod k výrobì je na druhé stranì tohoto nákresu.");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_Show(nDocID);
};  
instance ItWr_TP_BluePrint_TPLM(C_Item)
{
	name = "Nákres na výrobu zbrojí tábora bratrstva.";

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
	Doc_PrintLine(nDocID,0,"     Nákres na výrobu zbrojí tábora bratrstva.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Pro zbroj templáøe je potøeba:");
	Doc_PrintLines(nDocID,0,"-4 kusy surové oceli");
    Doc_PrintLines(nDocID,0,"-3 Kùže Moèálového Žraloka");
    Doc_PrintLines(nDocID,0,"-1 Kùže Warga");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Pro zbroj lovce bratrstva je potøeba:");
	Doc_PrintLines(nDocID,0,"-3 kusy surové oceli");
	Doc_PrintLines(nDocID,0,"-3 Kùže Moèálového Žraloka");
	Doc_PrintLines(nDocID,0,"-2 Kùže Warga");
	Doc_PrintLines(nDocID,0,"-2 Zuby Moèálového Žraloka");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Návod k výrobì je na druhé stranì tohoto nákresu.");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_Show(nDocID);
};
instance ItWr_TP_BluePrint_TPLH(C_Item)
{
	name = "Nákres na výrobu tìžkých zbrojí tábora bratrstva.";

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
	Doc_PrintLine(nDocID,0,"     Nákres na výrobu tìžkých zbrojí tábora bratrstva.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Pro tìžkou zbroj templáøe je potøeba:");
	Doc_PrintLines(nDocID,0,"-6 kusù surové oceli");
    Doc_PrintLines(nDocID,0,"-4 Kùže Moèálového Žraloka");
    Doc_PrintLines(nDocID,0,"-1 Kùže Stínové Šelmy");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Pro tìžkou zbroj lovce bratrstva je potøeba:");
	Doc_PrintLines(nDocID,0,"-5 kusù surové oceli");
	Doc_PrintLines(nDocID,0,"-4 Kùže Moèálového Žraloka");
	Doc_PrintLines(nDocID,0,"-1 Kùže Stínové Šelmy");
	Doc_PrintLines(nDocID,0,"-1 Ohnivý Jazyk");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Návod k výrobì je na druhé stranì tohoto nákresu.");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_Show(nDocID);
};
instance ItWr_TP_BluePrint_TPLO(C_Item)
{
	name = "Nákres na výrobu zbrojí bratrstva z èerné rudy.";

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
	Doc_PrintLine(nDocID,0,"     Nákres na výrobu zbrojí bratrstva z èerné rudy.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Pro Zbroj Vyvoleného z Bratrstva je potøeba:");
	Doc_PrintLines(nDocID,0,"-7 kusù surové oceli");
    Doc_PrintLines(nDocID,0,"-4 Kùže Moèálového Žraloka");
    Doc_PrintLines(nDocID,0,"-2 Hrudky Magcké Rudy");
    Doc_PrintLines(nDocID,0,"-1 Hrudka Èerné Rudy");
    Doc_PrintLines(nDocID,0,"-4 Kusy Trávy z Bažin");
    Doc_PrintLines(nDocID,0,"");
    Doc_PrintLines(nDocID,0,"Pro Zbroj Mistra Lovce Bratrstva je potøeba:");
	Doc_PrintLines(nDocID,0,"-6 kusù surové oceli");
	Doc_PrintLines(nDocID,0,"-5 Kùží Moèálového Žraloka");
	Doc_PrintLines(nDocID,0,"-1 Hrudka Magické Rudy");
	Doc_PrintLines(nDocID,0,"-1 Hrudka Èerné Rudy");
	Doc_PrintLines(nDocID,0,"-4 Kusy Trávy z Bažin");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Návod k výrobì je na druhé stranì tohoto nákresu.");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_Show(nDocID);
};