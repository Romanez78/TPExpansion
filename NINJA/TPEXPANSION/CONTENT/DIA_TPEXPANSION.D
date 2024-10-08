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
	description	 = 	"Pot�ebuju v�ce surov� oceli.";
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
    AI_Output(other, self, "DIA_BRIAN_BUYRAWSTEEL_PATCHOC_15_01"); //Pot�ebuju v�ce surov� oceli.
    AI_Output(self, other, "DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_02"); //M��u ti prodat n�j�ke z m�ch osobn�ch z�sob, ale vyjde t� to draho.
    AI_Output(self, other, "DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_03"); //200 zlat�ch za jeden kus.
};
instance DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL		(C_INFO)
{
	npc		 = 	VLK_457_Brian;
	nr		 = 	3;
	condition	 = 	DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_Condition;
	information	 = 	DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_Info;
	permanent	 = 	TRUE;
	description	 = 	"Prodej mi jeden kus surov� oceli. (Cena: 200 zlat�ch).";
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
	AI_Output(other, self, "DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_1"); //Prodej mi jeden kus surov� oceli.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 200))
	{	
		AI_Output(self, other, "DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_2"); //Tady je.
		B_GiveInvItems (self, other, ItMiSwordraw, 1);	
	}
	else 
	{
		AI_Output(self, other, "DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_3"); //P�ij� a� bude� m�t u sebe dost zlata
	};
};
const string	TOPIC_NINJA_TPEXPANSION_ARMOR				=   "Zbroje t�bora bratrstva";
var int Ninja_TPExpansion_TOPIC_NINJA_TPEXPANSION_ARMOR;
instance Ninja_TemplarExpansion_DIA_Addon_LESTER_NovL		(C_INFO)
{
	npc		 = 	PC_Psionic;
	nr		 = 	23;
	condition	 = 	Ninja_TemplarExpansion_DIA_Addon_LESTER_NovL_Condition;
	information	 = 	Ninja_TemplarExpansion_DIA_Addon_LESTER_NovL_Info;

	description	 = 	"Pot�ebuju lep�� vybaven�.";
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
	AI_Output	(other, self, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovL_15_00"); //Pot�ebuju lep�� vybaven�.
	AI_Output	(self, other, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovL_08_02"); //M��u ti d�t tuhle bedern� rou�ku novice, ale nic lep��ho nem�m.
	AI_Output	(other, self, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovL_15_03"); //Lep�� ne� chodit v otrhan�ch hadrech.
	CreateInvItems (self, ITAR_TP_NOVL_TPEXPANSION, 1);									
	B_GiveInvItems (self, other, ITAR_TP_NOVL_TPEXPANSION, 1);					
	Log_CreateTopic (TOPIC_NINJA_TPEXPANSION_ARMOR,LOG_NOTE);
    Ninja_TPExpansion_TOPIC_NINJA_TPEXPANSION_ARMOR = LOG_RUNNING;
	B_LogEntry (TOPIC_NINJA_TPEXPANSION_ARMOR,"Lester mi dal bedern� rou�ku novice, lep�� ne� nic.");
};
instance Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking		(C_INFO)
{
	npc		 = 	PC_Psionic;
	nr		 = 	23;
	condition	 = 	Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking_Condition;
	information	 = 	Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking_Info;

	description	 = 	"Nem�l by jsi n�pad kde sehnat n�jakou lep�� zbroj?";
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
	AI_Output	(other, self, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking_15_00"); //Nem�l by jsi n�pad kde sehnat n�jakou lep�� zbroj?	
	AI_Output	(self, other, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking_08_01"); //N�co m�lo jsem se p�iu�il o zbroji novic� z t�bora v ba�in�ch kdy� jsem je�t� byl jeho �lenem, sep�u ti n�vod jak si jednu vyrobit i pro sebe. Ur�it� najde� n�j�k�ho ochotn�ho kov��e.
	CreateInvItems (self, ItWr_TP_BluePrint_NOVM, 1);									
	B_GiveInvItems (self, other, ItWr_TP_BluePrint_NOVM, 1);
	AI_Output	(self, other, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking_08_02"); //Napsal bych ti i n�vod pro tu kterou nos�m j�, ale nem��u si vzpomenout....	
	AI_Output	(self, other, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking_08_03"); //Vra� se pozd�ji, zkus�m si do t� doby vzpomenout jak to bylo.	
	AI_Output	(other, self, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovM_Thinking_15_04"); //D�ky, ur�it� se vr�t�m.				
	B_LogEntry (TOPIC_NINJA_TPEXPANSION_ARMOR,"Lester mi napsal n�vod jak vyrobit lehkou zbroj novice. Napsal by mi i n�vod pro tu samou co nos� on, ale nem��e si vzpomenout jak to bylo, tak�e se za n�m m�m stavit pozd�ji. Co se t��e toho jak zbroj vyrob�m, m�l bych si naj�t n�j�k�ho kov��e. Pochybuji �e najdu ve m�st� n�koho kdo by to pro mn� ud�lal, tak�e tkus�m �test� n�kde jinde");
};
instance Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT		(C_INFO)
{
	npc		 = 	PC_Psionic;
	nr		 = 	23;
	condition	 = 	Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT_Condition;
	information	 = 	Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT_Info;

	description	 = 	"U� jsi si vzpomn�l?";
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
	AI_Output	(other, self, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT_15_00"); //U� jsi si vzpomn�l?	
	CreateInvItems (self, ItWr_TP_BluePrint_NOVH, 1);									
	B_GiveInvItems (self, other, ItWr_TP_BluePrint_NOVH, 1);	
	AI_Output	(self, other, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT_8_02"); //Ano, zde je n�vod.
	AI_Output	(self, other, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT_08_03"); //V�m �e jsem s Baalem Namibem prob�ral jak je�t� vylep�it zbroj novice, p�ed t�m ne� zem�el Yberion. Ale ty bolesti hlavy mi br�n� v tom se nad t�m po��dn� zamyslet.	
	AI_Output	(self, other, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT_08_04"); //Omouv�m se ale bude� se muset vr�tit pozd�ji, zkus�m do t� doby m�t pro tebe n�kres p�ipraven�.
	AI_Output	(other, self, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovH_IGOTIT_15_05"); //D�ky za tvoj� pomoc, opatruj se.	
	B_LogEntry (TOPIC_NINJA_TPEXPANSION_ARMOR,"Lester mi napsal n�vod jak vyrobit zbroj novice. Lares se taky zm�nil �e m�l n�pad jak vylep�it zbroj novice, ale nem��e si vzpomenout tak se pro n� m�m vr�tit pozd�ji.");
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
	description	 = 	"M� u� sepsan� n�kres na vylep�en� zbroje novice?";
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
    AI_Output(other, self, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovHR_IGOTIT_15_01"); //Poda�ilo se ti vymyslet jak vylep�it t�kou zbroj novice?
    AI_Output(self, other, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovHR_IGOTIT_13_02"); //Ano, poda�ilo. Tady m� n�kres.
	CreateInvItems (self, ItWr_TP_BluePrint_NOVHR, 1);									
	B_GiveInvItems (self, other, ItWr_TP_BluePrint_NOVHR, 1);	
	AI_Output(other, self, "Ninja_TemplarExpansion_DIA_Addon_LESTER_NovHR_IGOTIT_15_04"); //D�ky za tvou pomoc.
	B_LogEntry (TOPIC_NINJA_TPEXPANSION_ARMOR,"Lares mi dal n�kres pro vylep�en� zbroje novice.");
};
instance Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION (C_INFO)
{
	npc			 =  BDT_1075_Addon_Fortuno;
	nr			 =  4;
	condition	 = 	Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_Condition;
	information	 = 	Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_Info;
	permanent	 = 	FALSE;
	description	 = 	"Nem� n�pad kde bych mohl z�skat lep�� zbroj?";
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
    AI_Output(other, self, "Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_15_01"); //Nem� n�pad kde bych mohl z�skat lep�� zbroj?
    AI_Output(self, other, "Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_13_02"); //Ano, tady, vezmi si tenhle n�kres na v�robu lehk� zbroje templ��e.
    AI_Output(self, other, "Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_13_03"); //V t�bo�e bratrstva byl m�j st�nek nedaleko Darrinovi kov�rny, ob�as jsem si p�r v�cmi p�ilep�il.	Je na n�m i naps�n n�vod pro zbroj lovce bratrstva, tu ale Darrion nestihl vyrobit...
	CreateInvItems (self, ItWr_TP_BluePrint_TPLL, 1);									
	B_GiveInvItems (self, other, ItWr_TP_BluePrint_TPLL, 1);	
	AI_Output(other, self, "Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_15_04"); //D�ky.    
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_13_05"); //M�l jsem u sebe je�t� n�kres na st�edn� zbroj, ale nev�m kam jsem ho schoval. Vra� se pozd�ji, mezit�m ti ho najdu.	
	AI_Output(other, self, "Ninja_TPExpansion_DIA_Addon_FORTUNO_QUESTION_15_06"); //Dobr�, je�t� se vr�t�m.
		Log_CreateTopic (TOPIC_NINJA_TPEXPANSION_ARMOR,LOG_NOTE);
	B_LogEntry (TOPIC_NINJA_TPEXPANSION_ARMOR,"Fortuno mi dal n�kres na v�robu lehk�ch zbroj� bratrstva. M�l u sebe je�t� n�kres na st�edn� zbroje, ale nev� kam ho schoval, tak�e se m�m vr�tit pozd�ji a� ho najde. Mezit�m bych se m�l postarat o Ravena");
};
instance Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION (C_INFO)
{
	npc			 =  BDT_1075_Addon_Fortuno;
	nr			 =  4;
	condition	 = 	Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION_Condition;
	information	 = 	Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION_Info;
	permanent	 = 	FALSE;
	description	 = 	"U� si ten n�kres na�el?";
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
    AI_Output(other, self, "Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION_15_01"); //U� si ten n�kres na�el?
    AI_Output(self, other, "Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION_13_02"); //Ano, tady ho m�. Jsou tam i m� n�pady jako p�edt�m.	
	CreateInvItems (self, ItWr_TP_BluePrint_TPLM, 1);									
	B_GiveInvItems (self, other, ItWr_TP_BluePrint_TPLM, 1);	
	AI_Output(other, self, "Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION_15_03"); //To mi ho d� jenom tak?    
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION_13_04"); //Jasn�, pomohl jsi mi, tak�e si ho zaslou�� bez p�ir�ky.	
	AI_Output(other, self, "Ninja_TPExpansion_DIA_Addon_FORTUNO_MediumQUESTION_15_05"); //V tom p��pad� d�ky.
	B_LogEntry (TOPIC_NINJA_TPEXPANSION_ARMOR,"Fortuno mi dal n�kres na v�robu zbroj� bratrstva.");
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
	description	 = 	"Nev� kde bych mohl sehnat lep�� zbroj?";
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
    AI_Output(other, self, "Ninja_TPExpansion_DIA_Angar_HeavyArmor_15_01"); //Nev� kde bych mohl sehnat lep�� zbroj? 
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Angar_HeavyArmor_15_02"); //Promi�, ale te� nem�m na takov� v�ci �as. Mus�m naj�t sv�j amulet.
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
	description	 = 	"Te� kdy� m� sv�j amulet, nev� kde bych mohl sehnat lep�� zbroj bratrstva?";
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
    AI_Output(other, self, "Ninja_TPExpansion_DIA_Angar_Amulet_15_01"); //Te� kdy� m� sv�j amulet, nev� kde bych mohl sehnat lep�� zbroj? 
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Angar_Amulet_15_02"); //Hmm kam jsem to jenom... 
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Angar_Amulet_15_03"); //A, tady.
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Angar_Amulet_15_06"); //Kdy� jsem je�t� byl �lenem bratrstva tak mi byl sv��en ten n�kres, aby se nedostal do �patn�ch rukou. Je tam i napsan� n�vod na t�kou zbroj lovce.
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Angar_Amulet_15_07"); //Ale te� u� ho nem� smysl st�e�it, douf�m �e ti dob�e poslou��.
	CreateInvItems (self, ItWr_TP_BluePrint_TPLH, 1);									
	B_GiveInvItems (self, other, ItWr_TP_BluePrint_TPLH, 1);	
	AI_Output(other, self, "Ninja_TPExpansion_DIA_Angar_Amulet_15_08"); //D�ky.
		Log_CreateTopic (TOPIC_NINJA_TPEXPANSION_ARMOR,LOG_NOTE);
	B_LogEntry (TOPIC_NINJA_TPEXPANSION_ARMOR,"Angar mi dal n�kres na v�robu t�k�ch zbroj� bratrstva.");
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
	description	 = 	"Dostal jsem n�pad jak vyrobit skv�lou zbroj.";
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
	description	 = 	"Dostal jsem n�pad jak vyrobit skv�lou zbroj";
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
    AI_Output(other, self, "Ninja_TPExpansion_DIA_Fortuno_BlackArmor_15_01"); //Dostal jsem n�pad jak vyrobit skv�lou zbroj.
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Fortuno_BlackArmor_15_02"); //V�ne? j� taky.
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Fortuno_BlackArmor_15_03"); //Dostal jsem vizi jak vyrobit za pomoc� �ern� rudy opravdu unik�tn� zbroj.
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Fortuno_BlackArmor_15_04"); //Ale nem�m ��dnou �ernou rudu, ani si nejsem jist� �e by n�co takov�ho �lo vyrrobit...
    AI_Output(other, self, "Ninja_TPExpansion_DIA_Fortuno_BlackArmor_15_05"); //Ale �lo, p�e�etl jsem si jednou starou knihu kde se psalo o v�rob� zbroj� za pomoci �ern� rudy.	
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Fortuno_BlackArmor_15_06"); //V�n�? V tom p��pad� to sep�eme.
					B_UseFakeScroll ();
	AI_Output(self, other, "Ninja_TPExpansion_DIA_Fortuno_BlackArmor_15_07"); //Tady, tv� kopie n�kresu.	
	B_GiveInvItems(self, other, ItWr_TP_BluePrint_TPLO, 1);
	AI_Output(other, self, "Ninja_TPExpansion_DIA_Fortuno_BlackArmor_15_08"); //D�ky.
	B_LogEntry (TOPIC_NINJA_TPEXPANSION_ARMOR,"S Fortunem jsme vymysleli n�kres na v�robu nejlep��ch zbroj� bratrstva.");
		Log_SetTopicStatus (TOPIC_NINJA_TPEXPANSION_ARMOR,LOG_SUCCESS);
    Ninja_TPExpansion_TOPIC_NINJA_TPEXPANSION_ARMOR = LOG_SUCCESS;
};
