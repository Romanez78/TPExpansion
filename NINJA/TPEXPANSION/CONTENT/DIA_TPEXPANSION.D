// *********************************************************
// 		  				      My Changes				
// *********************************************************
instance DIA_BRIAN_BUYRAWSTEEL_PATCHOC (C_INFO)
{
	npc			 =  VLK_457_Brian;
	nr			 =  4;
	condition	 = 	DIA_BRIAN_BUYRAWSTEEL_PATCHOC_Condition;
	information	 = 	DIA_BRIAN_BUYRAWSTEEL_PATCHOC_Info;
	permanent	 = 	FALSE;
	description	 = 	"Potøebuju více surové oceli.";
};
func int DIA_BRIAN_BUYRAWSTEEL_PATCHOC_Condition ()
{	
	if (Kapitel >= 1)
	{
		return TRUE;
	};
};
func void DIA_BRIAN_BUYRAWSTEEL_PATCHOC_Info ()
{
    AI_Output(other, self, "DIA_BRIAN_BUYRAWSTEEL_PATCHOC_15_01"); //Potøebuju více surové oceli.
    AI_Output(self, other, "DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_02"); //Mùžu ti prodat nìjáke z mých osobních zásob, ale vyjde tì to draho.
    AI_Output(self, other, "DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_03"); //200 zlatých za jeden kus.
};
instance DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL		(C_INFO)
{
	npc		 = 	VLK_457_Brian;
	nr		 = 	3;
	condition	 = 	DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_Condition;
	information	 = 	DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_Info;
	permanent	 = 	TRUE;
	description	 = 	"Prodej mi jeden kus surové oceli. (Cena: 200 zlatých).";
};
func int DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_BRIAN_BUYRAWSTEEL_PATCHOC))
	{
		return TRUE;
	};
};
func void DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_Info ()
{
	AI_Output(other, self, "DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_1"); //Prodej mi jeden kus surové oceli.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 200))
	{	
		AI_Output(self, other, "DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_2"); //Tady je.
		B_GiveInvItems (self, other, ItMiSwordraw, 1);	
	}
	else 
	{
		AI_Output(self, other, "DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_3"); //Pøijï až budeš mít u sebe dost zlata
	};
};
const string	TOPIC_NINJA_TPEXPANSION_ARMOR				=   "Zbroje tábora bratrstva";
instance Ninja_TemplarExpansion_DIA_Addon_LESTER_NovL		(C_INFO)
{
	npc		 = 	PC_Psionic;
	nr		 = 	23;
	condition	 = 	Ninja_TemplarExpansion_DIA_Addon_LESTER_NovL_Condition;
	information	 = 	Ninja_TemplarExpansion_DIA_Addon_LESTER_NovL_Info;

	description	 = 	"Potøebuju lepší vybavení.";
};

func int Ninja_TemplarExpansion_DIA_Addon_LESTER_NovL_Condition ()
{
	if (Kapitel >= 1)
	{
		return TRUE;
	};
};

func void Ninja_TemplarExpansion_DIA_Addon_LESTER_NovL_Info ()
{
	AI_Output	(other, self, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovL_15_00"); //Potøebuju lepší vybavení.
	AI_Output	(self, other, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovL_08_02"); //Mùžu ti dát tuhle bederní roušku novice, ale nic lepšího nemám.
	AI_Output	(other, self, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovL_15_03"); //Lepší než chodit v otrhaných hadrech.
	CreateInvItems (self, ITAR_TP_NOVL_TPEXPANSION, 1);									
	B_GiveInvItems (self, other, ITAR_TP_NOVL_TPEXPANSION, 1);					
	Log_CreateTopic (TOPIC_NINJA_TPEXPANSION_ARMOR,LOG_NOTE);
	B_LogEntry (TOPIC_NINJA_TPEXPANSION_ARMOR,"Lester mi dal bederní roušku novice, lepší než nic.");
};
instance Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking		(C_INFO)
{
	npc		 = 	PC_Psionic;
	nr		 = 	23;
	condition	 = 	Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking_Condition;
	information	 = 	Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking_Info;

	description	 = 	"Nemìl by jsi nápad kde sehnat nìjakou lepší zbroj?";
};

func int Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking_Condition ()
{
	if 	(Npc_KnowsInfo (other, Ninja_TemplarExpansion_DIA_Addon_LESTER_NovL))
	{
		return TRUE;
	};
};

func void Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking_Info ()
{
	AI_Output	(other, self, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking_15_00"); //Nemìl by jsi nápad kde sehnat nìjakou lepší zbroj?	
	AI_Output	(self, other, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking_08_01"); //Nìco málo jsem se pøiuèil o zbroji novicù z tábora v bažinách když jsem ještì byl jeho èlenem, sepíšu ti návod jak si jednu vyrobit i pro sebe.
	CreateInvItems (self, ItWr_TP_BluePrint_NOVM, 1);									
	B_GiveInvItems (self, other, ItWr_TP_BluePrint_NOVM, 1);
	AI_Output	(self, other, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking_08_02"); //Napsal bych ti i návod pro tu kterou nosím já, ale nemùžu si vzpomenout....	
	AI_Output	(self, other, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking_08_03"); //Vra se pozdìji, zkusím si do té doby vzpomenout jak to bylo.	
	AI_Output	(other, self, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking_15_04"); //Díky, urèitì se vrátím.				
	B_LogEntry (TOPIC_NINJA_TPEXPANSION_ARMOR,"Lester mi napsal návod jak vyrobit lehkou zbroj novice. Napsal by mi i návod pro tu samou co nosí on, ale nemùže si vzpomenout jak to bylo, takže se za ním mám stavit pozdìji. Co se týèe toho jak zbroj vyrobím, mìl bych si najít nìjákého kováøe. Pochybuji že najdu ve mìstì nìkoho kdo by to pro mnì udìlal, takže tkusím štestí nìkde jinde");
};
instance Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT		(C_INFO)
{
	npc		 = 	PC_Psionic;
	nr		 = 	23;
	condition	 = 	Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT_Condition;
	information	 = 	Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT_Info;

	description	 = 	"Už jsi si vzpomnìl?";
};

func int Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT_Condition ()
{
	if 	(Npc_KnowsInfo (other, Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking))
	&&  (Npc_KnowsInfo (other, DIA_Lothar_Hallo))
	{
		return TRUE;
	};
};

func void Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT_Info ()
{
	AI_Output	(other, self, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT_15_00"); //Už jsi si vzpomnìl?	
	CreateInvItems (self, ItWr_TP_BluePrint_NOVH, 1);									
	B_GiveInvItems (self, other, ItWr_TP_BluePrint_NOVH, 1);	
	AI_Output	(self, other, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT_8_02"); //Ano, zde je návod.
	AI_Output	(self, other, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT_08_03"); //Vím že jsem s Baalem Namibem probíral jak ještì vylepšit zbroj novice, pøed tím než zemøel Yberion. Ale ty bolesti hlavy mi brání v tom se nad tím poøádnì zamyslet.	
	AI_Output	(self, other, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT_08_04"); //Omouvám se ale budeš se muset vrátit pozdìji, zkusím do té doby mít pro tebe nákres pøipravený.
	AI_Output	(other, self, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT_15_05"); //Díky za tvojí pomoc, opatruj se.	
	B_LogEntry (TOPIC_NINJA_TPEXPANSION_ARMOR,"Lester mi napsal návod jak vyrobit zbroj novice. Lares se taky zmínil že mìl nápad jak vylepšit zbroj novice, ale nemùže si vzpomenout tak se pro ní mám vrátit pozdìji.");
};
//-------------------------------------
//-------------------------------------
instance Ninja_TemplarExpansion_DIA_Addon_LESTER_NovHR_IGOTIT (C_INFO)
{
	npc			 =  PC_Psionic;
	nr			 =  4;
	condition	 = 	Ninja_TemplarExpansion_DIA_Addon_LESTER_NovHR_IGOTIT_Condition;
	information	 = 	Ninja_TemplarExpansion_DIA_Addon_LESTER_NovHR_IGOTIT_Info;
	permanent	 = 	FALSE;
	description	 = 	"Máš už sepsaný nákres na vylepšení zbroje novice?";
};
func int Ninja_TemplarExpansion_DIA_Addon_LESTER_NovHR_IGOTIT_Condition ()
{	
	if 	(Npc_KnowsInfo (other, Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT))
	&&  (Npc_KnowsInfo (Npc_IsDead(Dexter))
	{
		return TRUE;
	};
};
func void Ninja_TemplarExpansion_DIA_Addon_LESTER_NovHR_IGOTIT_Info ()
{
    AI_Output(other, self, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovHR_IGOTIT_15_01"); //Podaøilo se ti vymyslet jak vylepšit tìžkou zbroj novice?
    AI_Output(self, other, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovHR_IGOTIT_13_02"); //Ano, podaøilo. Tady máš nákres.
	CreateInvItems (self, ItWr_TP_BluePrint_NOVHR, 1);									
	B_GiveInvItems (self, other, ItWr_TP_BluePrint_NOVHR, 1);	
	AI_Output(other, self, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovHR_IGOTIT_15_04"); //Díky za tvou pomoc.
	B_LogEntry (TOPIC_NINJA_TPEXPANSION_ARMOR,"Lares mi dal nákres pro vylepšení zbroje novice.");
};
instance Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION (C_INFO)
{
	npc			 =  BDT_1075_Addon_Fortuno;
	nr			 =  4;
	condition	 = 	Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_Condition;
	information	 = 	Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_Info;
	permanent	 = 	FALSE;
	description	 = 	"Nemáš nápad kde bych mohl získat lepší zbroj?";
};
func int Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_Condition ()
{	
	if 	(Npc_KnowsInfo (other, DIA_Addon_Fortuno_more))
	{
		return TRUE;
	};
};
func void Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_Info ()
{
    AI_Output(other, self, "Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_15_01"); //Nemáš nápad kde bych mohl získat lepší zbroj?
    AI_Output(self, other, "Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_13_02"); //Ano, tady, vezmi si tenhle nákres na výrobu lehké zbroje templáøe.
    AI_Output(self, other, "Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_13_03"); //V táboøe bratrstva byl mùj stánek nedaleko Darrinovi kovárny, obèas jsem si pár vìcmi pøilepšil.	Je na nìm i napsán návod pro zbroj lovce bratrstva, tu ale Darrion nestihl vyrobit...
	CreateInvItems (self, ItWr_TP_BluePrint_TPLL, 1);									
	B_GiveInvItems (self, other, ItWr_TP_BluePrint_TPLL, 1);	
	AI_Output(other, self, "Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_15_04"); //Díky.    
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_13_05"); //Mìl jsem u sebe ještì nákres na støední zbroj, ale nevím kam jsem ho schoval. Vra se pozdìji, mezitím ti ho najdu.	
	AI_Output(other, self, "Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_15_06"); //Dobrá, ještì se vrátím.
		Log_CreateTopic (TOPIC_NINJA_TPEXPANSION_ARMOR,LOG_NOTE);
	B_LogEntry (TOPIC_NINJA_TPEXPANSION_ARMOR,"Fortuno mi dal nákres na výrobu lehkích zbrojí bratrstva. Mìl u sebe ještì nákres na støední zbroje, ale neví kam ho schoval, takže se mám vrátit pozdìji až ho najde. Mezitím bych se mìl postarat o Ravena");
};
instance Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION (C_INFO)
{
	npc			 =  BDT_1075_Addon_Fortuno;
	nr			 =  4;
	condition	 = 	Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION_Condition;
	information	 = 	Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION_Info;
	permanent	 = 	FALSE;
	description	 = 	"Už si ten nákres našel?";
};
func int Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION_Condition ()
{	
	if (Npc_KnowsInfo (other, Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION))
	&&  (RavenIsDead == TRUE)
	{
		return TRUE;
	};
};
func void Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION_Info ()
{
    AI_Output(other, self, "Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION_15_01"); //Už si ten nákres našel?
    AI_Output(self, other, "Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION_13_02"); //Ano, tady ho máš. Jsou tam i mé nápady jako pøedtím.	
	CreateInvItems (self, ItWr_TP_BluePrint_TPLM, 1);									
	B_GiveInvItems (self, other, ItWr_TP_BluePrint_TPLM, 1);	
	AI_Output(other, self, "Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION_15_03"); //To mi ho dáš jenom tak?    
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION_13_04"); //Jasnì, pomohl jsi mi, takže si ho zasloužíš bez pøirážky.	
	AI_Output(other, self, "Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION_15_05"); //V tom pøípadì díky.
	B_LogEntry (TOPIC_NINJA_TPEXPANSION_ARMOR,"Fortuno mi dal nákres na výrobu zbrojí bratrstva.");
};
//-------------------------------------
//-------------------------------------
instance Ninja_TPExpansion_DIA_Angar_HeavyArmor (C_INFO)
{
	npc			 =  DJG_705_ANGAR;
	nr			 =  888;
	condition	 = 	Ninja_TPExpansion_DIA_Angar_HeavyArmor_Condition;
	information	 = 	Ninja_TPExpansion_DIA_Angar_HeavyArmor_Info;
	permanent	 = 	TRUE;
	description	 = 	"Nevíš kde bych mohl sehnat lepší zbroj?";
};
func int Ninja_TPExpansion_DIA_Angar_HeavyArmor_Condition ()
{	
	if (DJG_AngarGotAmulett == FALSE)
	{
		return TRUE;
	};
};
func void Ninja_TPExpansion_DIA_Angar_HeavyArmor_Info ()
{
    AI_Output(other, self, "Ninja_TPExpansion_DIA_Angar_HeavyArmor_15_01"); //Nevíš kde bych mohl sehnat lepší zbroj? 
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Angar_HeavyArmor_15_02"); //Promiò, ale teï nemám na takové vìci èas. Musím najít svùj amulet.
};
//-------------------------------------
var int ANGAR_TPPATCH_PLAN;
//-------------------------------------
instance Ninja_TPExpansion_DIA_Angar_Amulet (C_INFO)
{
	npc			 =  DJG_705_ANGAR;
	nr			 =  888;
	condition	 = 	Ninja_TPExpansion_DIA_Angar_NowYouHaveTheAmulet_Condition;
	information	 = 	Ninja_TPExpansion_DIA_Angar_NowYouHaveTheAmulet_Info;
	permanent	 = 	TRUE;
	description	 = 	"Teï když máš svùj amulet, nevíš kde bych mohl sehnat lepší zbroj bratrstva?";
};
func int Ninja_TPExpansion_DIA_Angar_NowYouHaveTheAmulet_Condition ()
{	
	if (DJG_AngarGotAmulett == TRUE)
		&& (ANGAR_TPPATCH_PLAN == FALSE)	
	{
		return TRUE;
	};
};
func void Ninja_TPExpansion_DIA_Angar_NowYouHaveTheAmulet_Info ()
{
    AI_Output(other, self, "Ninja_TPExpansion_DIA_Angar_Amulet_15_01"); //Teï když máš svùj amulet, nevíš kde bych mohl sehnat lepší zbroj? 
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Angar_Amulet_15_02"); //Hmm kam jsem to jenom... 
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Angar_Amulet_15_03"); //A, tady.
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Angar_Amulet_15_06"); //Když jsem ještì byl èlenem bratrstva tak mi byl svìøen ten nákres, aby se nedostal do špatných rukou. Je tam i napsaný návod na tìžkou zbroj lovce.
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Angar_Amulet_15_07"); //Ale teï už ho nemá smysl støežit, doufám že ti dobøe poslouží.
	CreateInvItems (self, ItWr_TP_BluePrint_TPLH, 1);									
	B_GiveInvItems (self, other, ItWr_TP_BluePrint_TPLH, 1);	
	AI_Output(other, self, "Ninja_TPExpansion_DIA_Angar_Amulet_15_08"); //Díky.
		Log_CreateTopic (TOPIC_NINJA_TPEXPANSION_ARMOR,LOG_NOTE);
	B_LogEntry (TOPIC_NINJA_TPEXPANSION_ARMOR,"Angar mi dal nákres na výrobu tìžkích zbrojí bratrstva.");
	ANGAR_TPPATCH_PLAN = TRUE;
};
//-------------------------------------
var int Variable_Ninja_TPExpansion_DIA_Angar_AmuletNW;
//-------------------------------------
instance Ninja_TPExpansion_DIA_Angar_AmuletNW (C_INFO)
{
	npc			 =  DJG_705_ANGAR_NW;
	nr			 =  888;
	condition	 = 	Ninja_TPExpansion_DIA_Angar_NowYouHaveTheAmulet_Condition;
	information	 = 	Ninja_TPExpansion_DIA_Angar_NowYouHaveTheAmulet_Info;
	permanent	 = 	TRUE;
	description	 = 	"Teï když máš svùj amulet, nevíš kde bych mohl sehnat lepší zbroj bratrstva?";
};
//-------------------------------------
//-------------------------------------
instance Ninja_TPExpansion_DIA_Fortuno_BlackArmor (C_INFO)
{
	npc			 =  BDT_1075_Addon_Fortuno;
	nr			 =  888;
	condition	 = 	Ninja_TPExpansion_DIA_Fortuno_BlackArmor_Condition;
	information	 = 	Ninja_TPExpansion_DIA_Fortuno_BlackArmor_Info;
	permanent	 = 	TRUE;
	description	 = 	"Dostal jsem nápad jak vyrobit skvìlou zbroj";
};
func int Ninja_TPExpansion_DIA_Fortuno_BlackArmor_Condition ()
{	
	if (DJG_AngarGotAmulett == TRUE)
	&& (Npc_HasItems(other, ItAr_RNG_TM) > 0)
	{
		return TRUE;
	};
};
func void Ninja_TPExpansion_DIA_Fortuno_BlackArmor_Info ()
{
    AI_Output(other, self, "Ninja_TPExpansion_DIA_Fortuno_BlackArmor_15_01"); //Dostal jsem nápad jak vyrobit skvìlou zbroj.
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Fortuno_BlackArmor_15_02"); //Vážne? já taky.
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Fortuno_BlackArmor_15_03"); //Dostal jsem vizi jak vyrobit za pomocí èerné rudy opravdu unikátní zbroj.
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Fortuno_BlackArmor_15_04"); //Ale nemám žádnou èernou rudu, ani si nejsem jistý že by nìco takového šlo vyrrobit...
    AI_Output(other, self, "Ninja_TPExpansion_DIA_Fortuno_BlackArmor_15_05"); //Ale šlo, pøeèetl jsem si jednou starou knihu kde se psalo o výrobì zbrojí za pomoci èerné rudy.	
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Fortuno_BlackArmor_15_06"); //Vážnì? V tom pøípadì to sepíšeme.
					B_UseFakeScroll ();
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Fortuno_BlackArmor_15_07"); //Tady, tvá kopie nákresu.	
	B_GiveInvItems(self, other, ItWr_TP_BluePrint_TPLO, 1);
	AI_Output(other, self, "Ninja_TPExpansion_DIA_Fortuno_BlackArmor_15_08"); //Díky.
	B_LogEntry (TOPIC_NINJA_TPEXPANSION_ARMOR,"S Fortunem jsme vymysleli nákres na výrobu nejlepších zbrojí bratrstva.");
		Log_SetTopicStatus (TOPIC_NINJA_TPEXPANSION_ARMOR,LOG_SUCCESS);
};
