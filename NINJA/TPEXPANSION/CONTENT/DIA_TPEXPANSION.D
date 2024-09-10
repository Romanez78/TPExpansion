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
	description	 = 	"Pot¯ebuju vÌce surovÈ oceli.";
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
    AI_Output(other, self, "DIA_BRIAN_BUYRAWSTEEL_PATCHOC_15_01"); //Pot¯ebuju vÌce surovÈ oceli.
    AI_Output(self, other, "DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_02"); //M˘ûu ti prodat nÏj·ke z m˝ch osobnÌch z·sob, ale vyjde tÏ to draho.
    AI_Output(self, other, "DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_03"); //200 zlat˝ch za jeden kus.
};
instance DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL		(C_INFO)
{
	npc		 = 	VLK_457_Brian;
	nr		 = 	3;
	condition	 = 	DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_Condition;
	information	 = 	DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_Info;
	permanent	 = 	TRUE;
	description	 = 	"Prodej mi jeden kus surovÈ oceli. (Cena: 200 zlat˝ch).";
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
	AI_Output(other, self, "DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_1"); //Prodej mi jeden kus surovÈ oceli.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 200))
	{	
		AI_Output(self, other, "DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_2"); //Tady je.
		B_GiveInvItems (self, other, ItMiSwordraw, 1);	
	}
	else 
	{
		AI_Output(self, other, "DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_3"); //P¯ijÔ aû budeö mÌt u sebe dost zlata
	};
};
const string	TOPIC_NINJA_TPEXPANSION_ARMOR				=   "Zbroje t·bora bratrstva";
var int Ninja_TPExpansion_TOPIC_NINJA_TPEXPANSION_ARMOR;
instance Ninja_TemplarExpansion_DIA_Addon_LESTER_NovL		(C_INFO)
{
	npc		 = 	PC_Psionic;
	nr		 = 	23;
	condition	 = 	Ninja_TemplarExpansion_DIA_Addon_LESTER_NovL_Condition;
	information	 = 	Ninja_TemplarExpansion_DIA_Addon_LESTER_NovL_Info;

	description	 = 	"Pot¯ebuju lepöÌ vybavenÌ.";
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
	AI_Output	(other, self, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovL_15_00"); //Pot¯ebuju lepöÌ vybavenÌ.
	AI_Output	(self, other, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovL_08_02"); //M˘ûu ti d·t tuhle bedernÌ rouöku novice, ale nic lepöÌho nem·m.
	AI_Output	(other, self, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovL_15_03"); //LepöÌ neû chodit v otrhan˝ch hadrech.
	CreateInvItems (self, ITAR_TP_NOVL_TPEXPANSION, 1);									
	B_GiveInvItems (self, other, ITAR_TP_NOVL_TPEXPANSION, 1);					
	Log_CreateTopic (TOPIC_NINJA_TPEXPANSION_ARMOR,LOG_NOTE);
    Ninja_TPExpansion_TOPIC_NINJA_TPEXPANSION_ARMOR = LOG_RUNNING;
	B_LogEntry (TOPIC_NINJA_TPEXPANSION_ARMOR,"Lester mi dal bedernÌ rouöku novice, lepöÌ neû nic.");
};
instance Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking		(C_INFO)
{
	npc		 = 	PC_Psionic;
	nr		 = 	23;
	condition	 = 	Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking_Condition;
	information	 = 	Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking_Info;

	description	 = 	"NemÏl by jsi n·pad kde sehnat nÏjakou lepöÌ zbroj?";
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
	AI_Output	(other, self, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking_15_00"); //NemÏl by jsi n·pad kde sehnat nÏjakou lepöÌ zbroj?	
	AI_Output	(self, other, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking_08_01"); //NÏco m·lo jsem se p¯iuËil o zbroji novic˘ z t·bora v baûin·ch kdyû jsem jeötÏ byl jeho Ëlenem, sepÌöu ti n·vod jak si jednu vyrobit i pro sebe. UrËitÏ najdeö nÏj·kÈho ochotnÈho kov·¯e.
	CreateInvItems (self, ItWr_TP_BluePrint_NOVM, 1);									
	B_GiveInvItems (self, other, ItWr_TP_BluePrint_NOVM, 1);
	AI_Output	(self, other, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking_08_02"); //Napsal bych ti i n·vod pro tu kterou nosÌm j·, ale nem˘ûu si vzpomenout....	
	AI_Output	(self, other, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking_08_03"); //Vraù se pozdÏji, zkusÌm si do tÈ doby vzpomenout jak to bylo.	
	AI_Output	(other, self, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking_15_04"); //DÌky, urËitÏ se vr·tÌm.				
	B_LogEntry (TOPIC_NINJA_TPEXPANSION_ARMOR,"Lester mi napsal n·vod jak vyrobit lehkou zbroj novice. Napsal by mi i n·vod pro tu samou co nosÌ on, ale nem˘ûe si vzpomenout jak to bylo, takûe se za nÌm m·m stavit pozdÏji. Co se t˝Ëe toho jak zbroj vyrobÌm, mÏl bych si najÌt nÏj·kÈho kov·¯e. Pochybuji ûe najdu ve mÏstÏ nÏkoho kdo by to pro mnÏ udÏlal, takûe tkusÌm ötestÌ nÏkde jinde");
};
instance Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT		(C_INFO)
{
	npc		 = 	PC_Psionic;
	nr		 = 	23;
	condition	 = 	Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT_Condition;
	information	 = 	Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT_Info;

	description	 = 	"Uû jsi si vzpomnÏl?";
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
	AI_Output	(other, self, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT_15_00"); //Uû jsi si vzpomnÏl?	
	CreateInvItems (self, ItWr_TP_BluePrint_NOVH, 1);									
	B_GiveInvItems (self, other, ItWr_TP_BluePrint_NOVH, 1);	
	AI_Output	(self, other, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT_8_02"); //Ano, zde je n·vod.
	AI_Output	(self, other, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT_08_03"); //VÌm ûe jsem s Baalem Namibem probÌral jak jeötÏ vylepöit zbroj novice, p¯ed tÌm neû zem¯el Yberion. Ale ty bolesti hlavy mi br·nÌ v tom se nad tÌm po¯·dnÏ zamyslet.	
	AI_Output	(self, other, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT_08_04"); //Omouv·m se ale budeö se muset vr·tit pozdÏji, zkusÌm do tÈ doby mÌt pro tebe n·kres p¯ipraven˝.
	AI_Output	(other, self, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT_15_05"); //DÌky za tvojÌ pomoc, opatruj se.	
	B_LogEntry (TOPIC_NINJA_TPEXPANSION_ARMOR,"Lester mi napsal n·vod jak vyrobit zbroj novice. Lares se taky zmÌnil ûe mÏl n·pad jak vylepöit zbroj novice, ale nem˘ûe si vzpomenout tak se pro nÌ m·m vr·tit pozdÏji.");
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
	description	 = 	"M·ö uû sepsan˝ n·kres na vylepöenÌ zbroje novice?";
};
func int Ninja_TemplarExpansion_DIA_Addon_LESTER_NovHR_IGOTIT_Condition ()
{	
	if 	(Npc_KnowsInfo (other, Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT))
	&&  (Npc_IsDead(Dexter))
	{
		return TRUE;
	};
};
func void Ninja_TemplarExpansion_DIA_Addon_LESTER_NovHR_IGOTIT_Info ()
{
    AI_Output(other, self, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovHR_IGOTIT_15_01"); //Poda¯ilo se ti vymyslet jak vylepöit tÏûkou zbroj novice?
    AI_Output(self, other, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovHR_IGOTIT_13_02"); //Ano, poda¯ilo. Tady m·ö n·kres.
	CreateInvItems (self, ItWr_TP_BluePrint_NOVHR, 1);									
	B_GiveInvItems (self, other, ItWr_TP_BluePrint_NOVHR, 1);	
	AI_Output(other, self, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovHR_IGOTIT_15_04"); //DÌky za tvou pomoc.
	B_LogEntry (TOPIC_NINJA_TPEXPANSION_ARMOR,"Lares mi dal n·kres pro vylepöenÌ zbroje novice.");
};
instance Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION (C_INFO)
{
	npc			 =  BDT_1075_Addon_Fortuno;
	nr			 =  4;
	condition	 = 	Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_Condition;
	information	 = 	Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_Info;
	permanent	 = 	FALSE;
	description	 = 	"Nem·ö n·pad kde bych mohl zÌskat lepöÌ zbroj?";
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
    AI_Output(other, self, "Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_15_01"); //Nem·ö n·pad kde bych mohl zÌskat lepöÌ zbroj?
    AI_Output(self, other, "Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_13_02"); //Ano, tady, vezmi si tenhle n·kres na v˝robu lehkÈ zbroje templ·¯e.
    AI_Output(self, other, "Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_13_03"); //V t·bo¯e bratrstva byl m˘j st·nek nedaleko Darrinovi kov·rny, obËas jsem si p·r vÏcmi p¯ilepöil.	Je na nÏm i naps·n n·vod pro zbroj lovce bratrstva, tu ale Darrion nestihl vyrobit...
	CreateInvItems (self, ItWr_TP_BluePrint_TPLL, 1);									
	B_GiveInvItems (self, other, ItWr_TP_BluePrint_TPLL, 1);	
	AI_Output(other, self, "Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_15_04"); //DÌky.    
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_13_05"); //MÏl jsem u sebe jeötÏ n·kres na st¯ednÌ zbroj, ale nevÌm kam jsem ho schoval. Vraù se pozdÏji, mezitÌm ti ho najdu.	
	AI_Output(other, self, "Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_15_06"); //Dobr·, jeötÏ se vr·tÌm.
		Log_CreateTopic (TOPIC_NINJA_TPEXPANSION_ARMOR,LOG_NOTE);
	B_LogEntry (TOPIC_NINJA_TPEXPANSION_ARMOR,"Fortuno mi dal n·kres na v˝robu lehkÌch zbrojÌ bratrstva. MÏl u sebe jeötÏ n·kres na st¯ednÌ zbroje, ale nevÌ kam ho schoval, takûe se m·m vr·tit pozdÏji aû ho najde. MezitÌm bych se mÏl postarat o Ravena");
};
instance Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION (C_INFO)
{
	npc			 =  BDT_1075_Addon_Fortuno;
	nr			 =  4;
	condition	 = 	Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION_Condition;
	information	 = 	Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION_Info;
	permanent	 = 	FALSE;
	description	 = 	"Uû si ten n·kres naöel?";
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
    AI_Output(other, self, "Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION_15_01"); //Uû si ten n·kres naöel?
    AI_Output(self, other, "Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION_13_02"); //Ano, tady ho m·ö. Jsou tam i mÈ n·pady jako p¯edtÌm.	
	CreateInvItems (self, ItWr_TP_BluePrint_TPLM, 1);									
	B_GiveInvItems (self, other, ItWr_TP_BluePrint_TPLM, 1);	
	AI_Output(other, self, "Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION_15_03"); //To mi ho d·ö jenom tak?    
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION_13_04"); //JasnÏ, pomohl jsi mi, takûe si ho zaslouûÌö bez p¯ir·ûky.	
	AI_Output(other, self, "Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION_15_05"); //V tom p¯ÌpadÏ dÌky.
	B_LogEntry (TOPIC_NINJA_TPEXPANSION_ARMOR,"Fortuno mi dal n·kres na v˝robu zbrojÌ bratrstva.");
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
	description	 = 	"NevÌö kde bych mohl sehnat lepöÌ zbroj?";
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
    AI_Output(other, self, "Ninja_TPExpansion_DIA_Angar_HeavyArmor_15_01"); //NevÌö kde bych mohl sehnat lepöÌ zbroj? 
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Angar_HeavyArmor_15_02"); //PromiÚ, ale teÔ nem·m na takovÈ vÏci Ëas. MusÌm najÌt sv˘j amulet.
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
	description	 = 	"TeÔ kdyû m·ö sv˘j amulet, nevÌö kde bych mohl sehnat lepöÌ zbroj bratrstva?";
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
    AI_Output(other, self, "Ninja_TPExpansion_DIA_Angar_Amulet_15_01"); //TeÔ kdyû m·ö sv˘j amulet, nevÌö kde bych mohl sehnat lepöÌ zbroj? 
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Angar_Amulet_15_02"); //Hmm kam jsem to jenom... 
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Angar_Amulet_15_03"); //A, tady.
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Angar_Amulet_15_06"); //Kdyû jsem jeötÏ byl Ëlenem bratrstva tak mi byl svÏ¯en ten n·kres, aby se nedostal do öpatn˝ch rukou. Je tam i napsan˝ n·vod na tÏûkou zbroj lovce.
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Angar_Amulet_15_07"); //Ale teÔ uû ho nem· smysl st¯eûit, douf·m ûe ti dob¯e poslouûÌ.
	CreateInvItems (self, ItWr_TP_BluePrint_TPLH, 1);									
	B_GiveInvItems (self, other, ItWr_TP_BluePrint_TPLH, 1);	
	AI_Output(other, self, "Ninja_TPExpansion_DIA_Angar_Amulet_15_08"); //DÌky.
		Log_CreateTopic (TOPIC_NINJA_TPEXPANSION_ARMOR,LOG_NOTE);
	B_LogEntry (TOPIC_NINJA_TPEXPANSION_ARMOR,"Angar mi dal n·kres na v˝robu tÏûkÌch zbrojÌ bratrstva.");
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
	description	 = 	"Dostal jsem n·pad jak vyrobit skvÏlou zbroj.";
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
	description	 = 	"Dostal jsem n·pad jak vyrobit skvÏlou zbroj";
};
func int Ninja_TPExpansion_DIA_Fortuno_BlackArmor_Condition ()
{	
	if  (MIS_SCKnowsWayToIrdorath == TRUE)
	&& (Npc_KnowsInfo (other, DIA_Addon_Fortuno_more))
	{
		return TRUE;
	};
};
func void Ninja_TPExpansion_DIA_Fortuno_BlackArmor_Info ()
{
    AI_Output(other, self, "Ninja_TPExpansion_DIA_Fortuno_BlackArmor_15_01"); //Dostal jsem n·pad jak vyrobit skvÏlou zbroj.
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Fortuno_BlackArmor_15_02"); //V·ûne? j· taky.
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Fortuno_BlackArmor_15_03"); //Dostal jsem vizi jak vyrobit za pomocÌ ËernÈ rudy opravdu unik·tnÌ zbroj.
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Fortuno_BlackArmor_15_04"); //Ale nem·m û·dnou Ëernou rudu, ani si nejsem jist˝ ûe by nÏco takovÈho ölo vyrrobit...
    AI_Output(other, self, "Ninja_TPExpansion_DIA_Fortuno_BlackArmor_15_05"); //Ale ölo, p¯eËetl jsem si jednou starou knihu kde se psalo o v˝robÏ zbrojÌ za pomoci ËernÈ rudy.	
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Fortuno_BlackArmor_15_06"); //V·ûnÏ? V tom p¯ÌpadÏ to sepÌöeme.
					B_UseFakeScroll ();
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Fortuno_BlackArmor_15_07"); //Tady, tv· kopie n·kresu.	
	B_GiveInvItems(self, other, ItWr_TP_BluePrint_TPLO, 1);
	AI_Output(other, self, "Ninja_TPExpansion_DIA_Fortuno_BlackArmor_15_08"); //DÌky.
	B_LogEntry (TOPIC_NINJA_TPEXPANSION_ARMOR,"S Fortunem jsme vymysleli n·kres na v˝robu nejlepöÌch zbrojÌ bratrstva.");
		Log_SetTopicStatus (TOPIC_NINJA_TPEXPANSION_ARMOR,LOG_SUCCESS);
    Ninja_TPExpansion_TOPIC_NINJA_TPEXPANSION_ARMOR = LOG_SUCCESS;
};
