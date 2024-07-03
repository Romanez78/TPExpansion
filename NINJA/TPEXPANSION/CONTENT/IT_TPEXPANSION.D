INSTANCE ITAR_TP_CHOSEN2_TPEXPANSION (C_Item)
{
	name 					=	"Zbroj Vyvoleného Z Bratrstva";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	140;
	protection [PROT_BLUNT] = 	140;
	protection [PROT_POINT] = 	140;
	protection [PROT_FIRE] 	= 	115;
	protection [PROT_MAGIC] = 	70;
	
	value 					=	20000;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARMOR_TPEXPANSIONC.3ds";
	visual_change 			=	"TEXPANSION_CHOSEN2.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

		on_equip    			=    Equip_ITAR_TP_CHOSEN2_TPEXPANSION;
    on_unequip    			=    UnEquip_ITAR_TP_CHOSEN2_TPEXPANSION;	
	
	description				=	name;

	TEXT[0]					= 	"+10% Obouruèní talent";
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
func void Equip_ITAR_TP_CHOSEN2_TPEXPANSION()
{
    // "self" it is C_NPC which is equipping armor
    B_RaiseFightTalent(self, NPC_TALENT_2H, 10);
};
func void UnEquip_ITAR_TP_CHOSEN2_TPEXPANSION()
{
    // "self" it is C_NPC which is unequipping armor
    B_RaiseFightTalent(self, NPC_TALENT_2H, -10);
	};
INSTANCE ITAR_TP_CHOSEN_TPEXPANSION (C_Item)
{
	name 					=	"Zbroj Mistra Lovce Bratrstva";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	130;
	protection [PROT_BLUNT] = 	130;
	protection [PROT_POINT] = 	130;
	protection [PROT_FIRE] 	= 	105;
	protection [PROT_MAGIC] = 	60;
	
	value 					=	20000;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARMOR_TPEXPANSIONC.3ds";
	visual_change 			=	"TEXPANSION_CHOSEN.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

		on_equip    			=    Equip_ITAR_TP_CHOSEN_TPEXPANSION;
    on_unequip    			=    UnEquip_ITAR_TP_CHOSEN_TPEXPANSION;	
	
	description				=	name;

	TEXT[0]					= 	"+10 Bonus k obratnosti";
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
func void Equip_ITAR_TP_CHOSEN_TPEXPANSION()
{
    // "self" it is C_NPC which is equipping armor
	Npc_ChangeAttribute(self,ATR_DEXTERITY, 10);	
};
func void UnEquip_ITAR_TP_CHOSEN_TPEXPANSION()
{
    // "self" it is C_NPC which is unequipping armor
    Npc_ChangeAttribute(self,ATR_DEXTERITY, -10);
	};
INSTANCE ITAR_TP_HEAVYR_TPEXPANSION (C_Item)
{
	name 					=	"Tìžká Zbroj Lovce Bratrstva";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	100;
	protection [PROT_BLUNT] = 	100;
	protection [PROT_POINT] = 	100;
	protection [PROT_FIRE] 	= 	55;
	protection [PROT_MAGIC] = 	30;
	
	value 					=	20000;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARMOR_TPEXPANSIONHR.3ds";
	visual_change 			=	"TEXPANSION_HEAVYTEMPLARR.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

		on_equip    			=    Equip_ITAR_TP_HEAVYR_TPEXPANSION;
    on_unequip    			=    UnEquip_ITAR_TP_HEAVYR_TPEXPANSION;	
	
	description				=	name;

	TEXT[0]					= 	"+7 Bonus k obratnosti";
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
func void Equip_ITAR_TP_HEAVYR_TPEXPANSION()
{
    // "self" it is C_NPC which is equipping armor
    Npc_ChangeAttribute(self,ATR_DEXTERITY, 7);
};
func void UnEquip_ITAR_TP_HEAVYR_TPEXPANSION()
{
    // "self" it is C_NPC which is unequipping armor
    Npc_ChangeAttribute(self,ATR_DEXTERITY, -7);
	};
INSTANCE ITAR_TP_HEAVY_TPEXPANSION (C_Item)
{
	name 					=	"Tìžká Zbroj Templáøe";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	115;
	protection [PROT_BLUNT] = 	115;
	protection [PROT_POINT] = 	115;
	protection [PROT_FIRE] 	= 	60;
	protection [PROT_MAGIC] = 	35;
	
	value 					=	20000;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARMOR_TPEXPANSIONH.3ds";
	visual_change 			=	"TEXPANSION_HEAVYTEMPLAR.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

		on_equip    			=    Equip_ITAR_TP_HEAVY_TPEXPANSION;
    on_unequip    			=    UnEquip_ITAR_TP_HEAVY_TPEXPANSION;	
	
	description				=	name;

	TEXT[0]					= 	"+7% Obouruèní talent";
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
func void Equip_ITAR_TP_HEAVY_TPEXPANSION()
{
    // "self" it is C_NPC which is equipping armor
    B_RaiseFightTalent(self, NPC_TALENT_2H, 7);
};
func void UnEquip_ITAR_TP_HEAVY_TPEXPANSION()
{
    // "self" it is C_NPC which is unequipping armor
    B_RaiseFightTalent(self, NPC_TALENT_2H, -7);
	};
INSTANCE ITAR_TP_MEDIUMR_TPEXPANSION (C_Item)
{
	name 					=	"Zbroj Lovce Bratrstva";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	70;
	protection [PROT_BLUNT] = 	70;
	protection [PROT_POINT] = 	70;
	protection [PROT_FIRE] 	= 	20;
	protection [PROT_MAGIC] = 	20;
	
	value 					=	20000;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARMOR_TPEXPANSIONMR.3ds";
	visual_change 			=	"TEXPANSION_MEDIUMTEMPLARR.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

		on_equip    			=    Equip_ITAR_TP_MEDIUMR_TPEXPANSION;
    on_unequip    			=    UnEquip_ITAR_TP_MEDIUMR_TPEXPANSION;	
	
	description				=	name;

	TEXT[0]					= 	"+5 bonus k obratnosti";
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
func void Equip_ITAR_TP_MEDIUMR_TPEXPANSION()
{
    // "self" it is C_NPC which is equipping armor
    Npc_ChangeAttribute(self,ATR_DEXTERITY, 5);
};
func void UnEquip_ITAR_TP_MEDIUMR_TPEXPANSION()
{
    // "self" it is C_NPC which is unequipping armor
    Npc_ChangeAttribute(self,ATR_DEXTERITY, -5);
	};
INSTANCE ITAR_TP_MEDIUM_TPEXPANSION (C_Item)
{
	name 					=	"Zbroj Templáøe";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	75;
	protection [PROT_BLUNT] = 	75;
	protection [PROT_POINT] = 	75;
	protection [PROT_FIRE] 	= 	25;
	protection [PROT_MAGIC] = 	25;
	
	value 					=	20000;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARMOR_TPEXPANSIONM.3ds";
	visual_change 			=	"TEXPANSION_MEDIUMTEMPLAR.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

		on_equip    			=    Equip_ITAR_TP_MEDIUM_TPEXPANSION;
    on_unequip    			=    UnEquip_ITAR_TP_MEDIUM_TPEXPANSION;	
	
	description				=	name;

	TEXT[0]					= 	"+5% Obouruèní talent";
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
func void Equip_ITAR_TP_MEDIUM_TPEXPANSION()
{
    // "self" it is C_NPC which is equipping armor
    B_RaiseFightTalent(self, NPC_TALENT_2H, 5);
};
func void UnEquip_ITAR_TP_MEDIUM_TPEXPANSION()
{
    // "self" it is C_NPC which is unequipping armor
    B_RaiseFightTalent(self, NPC_TALENT_2H, -5);
	};
INSTANCE ITAR_TP_LIGHTR_TPEXPANSION (C_Item)
{
	name 					=	"Lehká Zbroj Lovce Bratrstva";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	55;
	protection [PROT_BLUNT] = 	55;
	protection [PROT_POINT] = 	55;
	protection [PROT_FIRE] 	= 	10;
	protection [PROT_MAGIC] = 	10;
	
	value 					=	20000;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARMOR_TPEXPANSIONLR.3ds";
	visual_change 			=	"TEXPANSION_LIGHTTEMPLARR.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

		on_equip    			=    Equip_ITAR_TP_LIGHTR_TPEXPANSION;
    on_unequip    			=    UnEquip_ITAR_TP_LIGHTR_TPEXPANSION;	
	
	description				=	name;

	TEXT[0]					= 	"+3 bonus k obratnosti";
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
func void Equip_ITAR_TP_LIGHTR_TPEXPANSION()
{
    // "self" it is C_NPC which is equipping armor
    Npc_ChangeAttribute(self,ATR_DEXTERITY, 3);
};
func void UnEquip_ITAR_TP_LIGHTR_TPEXPANSION()
{
    // "self" it is C_NPC which is unequipping armor
    Npc_ChangeAttribute(self,ATR_DEXTERITY, -3);
	};
INSTANCE ITAR_TP_LIGHT_TPEXPANSION (C_Item)
{
	name 					=	"Lehká Zbroj Templáøe";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	60;
	protection [PROT_BLUNT] = 	60;
	protection [PROT_POINT] = 	60;
	protection [PROT_FIRE] 	= 	15;
	protection [PROT_MAGIC] = 	15;
	
	value 					=	20000;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARMOR_TPEXPANSIONL.3ds";
	visual_change 			=	"TEXPANSION_LIGHTTEMPLAR.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

		on_equip    			=    Equip_ITAR_TP_LIGHT_TPEXPANSION;
    on_unequip    			=    UnEquip_ITAR_TP_LIGHT_TPEXPANSION;	
	
	description				=	name;

	TEXT[0]					= 	"+4% Obouruèní talent";
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
func void Equip_ITAR_TP_LIGHT_TPEXPANSION()
{
    // "self" it is C_NPC which is equipping armor
    B_RaiseFightTalent(self, NPC_TALENT_2H, 4);
};
func void UnEquip_ITAR_TP_LIGHT_TPEXPANSION()
{
    // "self" it is C_NPC which is unequipping armor
    B_RaiseFightTalent(self, NPC_TALENT_2H, -4);
	};
INSTANCE ITAR_TP_NOVHR_TPEXPANSION (C_Item)
{
	name 					=	"Vylepšená Zbroj Novice";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	45;
	protection [PROT_BLUNT] = 	45;
	protection [PROT_POINT] = 	45;
	protection [PROT_FIRE] 	= 	10;
	protection [PROT_MAGIC] = 	8;
	
	value 					=	20000;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARMOR_TPEXPANSIONNHR.3ds";
	visual_change 			=	"TEXPANSION_NOVICEHR.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	
	
	description				=	name;

	TEXT[0]					= 	"";
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
INSTANCE ITAR_TP_NOVH_TPEXPANSION (C_Item)
{
	name 					=	"Zbroj Novice";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	35;
	protection [PROT_BLUNT] = 	35;
	protection [PROT_POINT] = 	35;
	protection [PROT_FIRE] 	= 	7;
	protection [PROT_MAGIC] = 	7;
	
	value 					=	20000;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARMOR_TPEXPANSIONNH.3ds";
	visual_change 			=	"TEXPANSION_NOVICEH.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	
	
	description				=	name;

	TEXT[0]					= 	"";
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
INSTANCE ITAR_TP_NOVM_TPEXPANSION (C_Item)
{
	name 					=	"Lehká Zbroj Novice";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	25;
	protection [PROT_BLUNT] = 	25;
	protection [PROT_POINT] = 	25;
	protection [PROT_FIRE] 	= 	6;
	protection [PROT_MAGIC] = 	6;
	
	value 					=	20000;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARMOR_TPEXPANSIONNM.3ds";
	visual_change 			=	"TEXPANSION_NOVICEM.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	
	
	description				=	name;

	TEXT[0]					= 	"";
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
INSTANCE ITAR_TP_NOVL_TPEXPANSION (C_Item)
{
	name 					=	"Bederní Rouška Novice";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	5;
	protection [PROT_BLUNT] = 	5;
	protection [PROT_POINT] = 	5;
	protection [PROT_FIRE] 	= 	5;
	protection [PROT_MAGIC] = 	5;
	
	value 					=	20000;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARMOR_TPEXPANSIONNL.3ds";
	visual_change 			=	"TEXPANSION_NOVICEL.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	
	
	description				=	name;

	TEXT[0]					= 	"";
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
instance ItWr_TP_BluePrint_NOVM(C_Item)
{
	name = "Nákres na výrobu lehké zbroje novice";

	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;

	value = 100;

	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;

	scemeName = "MAP";

	description = name;
};
instance ItWr_TP_BluePrint_NOVH(C_Item)
{
	name = "Nákres na výrobu zbroje novice";

	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;

	value = 100;

	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;

	scemeName = "MAP";

	description = name;
};
instance ItWr_TP_BluePrint_NOVHR(C_Item)
{
	name = "Nákres na vylepšení zbroje novice";

	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;

	value = 100;

	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;

	scemeName = "MAP";

	description = name;
};
instance ItWr_TP_BluePrint_TPLL(C_Item)
{
	name = "Nákres na výrobu lehké zbroje templáøe.";

	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;

	value = 100;

	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;

	scemeName = "MAP";

	description = name;
};
instance ItWr_TP_BluePrint_TPLM(C_Item)
{
	name = "Nákres na výrobu zbroje templáøe.";

	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;

	value = 100;

	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;

	scemeName = "MAP";

	description = name;
};
instance ItWr_TP_BluePrint_TPLH(C_Item)
{
	name = "Nákres na výrobu tìžké zbroje templáøe.";

	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;

	value = 100;

	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;

	scemeName = "MAP";

	description = name;
};
instance ItWr_TP_BluePrint_TPLO(C_Item)
{
	name = "Nákres na výrobu zbroje bratrstva z èerné rudy.";

	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;

	value = 100;

	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;

	scemeName = "MAP";

	description = name;
};
INSTANCE ITAR_PAL_ELITE (C_Item)
{
	name 					=	"Tìžká Zbroj Paladina";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	165;
	protection [PROT_BLUNT] = 	165;
	protection [PROT_POINT] = 	165;
	protection [PROT_FIRE] 	= 	120;
	protection [PROT_MAGIC] = 	100;
	
	value 					=	30000;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARMOR_TPEXPANSIONC.3ds";
	visual_change 			=	"PALNEW.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

		on_equip    			=    Equip_ITAR_TP_CHOSEN_TPEXPANSION;
    on_unequip    			=    UnEquip_ITAR_TP_CHOSEN_TPEXPANSION;	
	
	description				=	name;

	TEXT[0]					= 	"+10% Obouruèní talent";
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
func void Equip_ITAR_TP_CHOSEN_TPEXPANSION()
{
    // "self" it is C_NPC which is equipping armor
    B_RaiseFightTalent(self, NPC_TALENT_2H, 10);
};
func void UnEquip_ITAR_TP_CHOSEN_TPEXPANSION()
{
    // "self" it is C_NPC which is unequipping armor
    B_RaiseFightTalent(self, NPC_TALENT_2H, -10);
	};