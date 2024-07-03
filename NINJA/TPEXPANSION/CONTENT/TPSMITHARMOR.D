/*
 *  TPSMITHARMOR.d
 *   - forging armors
 *
 *  [Damianut 26.04.2024]
 */


// --- OBSOLETE
/*
 *  [VARIABLES]
 *   - [ARMORS]
 *
 *  I create variables for each armor, to avoid extending already created `PLAYER_TALENT_SMITH[]` array.
 *  If a variable, which starts with `NINJA_ARMOREXPANSION_PLAYER_TALENT_SMITH` is true, it means, that player knows how to forge an armor with an instance name, which is written after `NINJA_ARMOREXPANSION_PLAYER_TALENT_SMITH_`.
 */
// var int NINJA_ARMOREXPANSION_PLAYER_TALENT_SMITH_ITAR_PAL_ST;
// --- END "OBSOLETE"


/*
 *  [CONSTANTS]
 *   - [MOBSI]
 *  Treat an anvil like another mobsi, when player wants to forge an armor from a packet.
 */
const int NINJA_TPEXPANSION_MOBSI_SmithWeapon = 100;


/*
 *  [CONSTANTS]
 *   - [INGREDIENTS]
 *
 *  Lists of ingredients needed to forge armors.
 *  A name of an instance of a given ingredient, is written after `__` in each of a below constant.
 *
 *  IMPORTANT: To forge an armor, a blueprint itself is needed.
 */

/*
 *  instance `ITAR_TP_NOVM_TPEXPANSION`
 *      Description: in `Use_Plan_TPArmor` called by `ItWr_TP_BluePrint_NOVM` [IT_TPEXPANSION.D]
 */
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_NOVM_TPEXPANSION__ItAt_Wolffur = 4;


/*
 *  instance `ITAR_TP_NOVH_TPEXPANSION`
 *      Description: in `Use_Plan_TPArmor` called by `ItWr_TP_BluePrint_NOVH` [IT_TPEXPANSION.D]
 */
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_NOVH_TPEXPANSION__ItMiSwordrawhot = 2;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_NOVH_TPEXPANSION__ItAt_ADDON_KeilerFur = 1;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_NOVH_TPEXPANSION__ITAR_TP_NOVM_TPEXPANSION = 1;

/*
 *  instance `ITAR_TP_NOVHR_TPEXPANSION`
 *      Description: in `Use_Plan_TPArmor` called by `ItWr_TP_BluePrint_NOVHR` [IT_TPEXPANSION.D]
 */
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_NOVHR_TPEXPANSION__ItMiSwordrawhot = 2;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_NOVHR_TPEXPANSION__ItAt_ADDON_KeilerFur = 3;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_NOVHR_TPEXPANSION__ITAR_TP_NOVH_TPEXPANSION = 1;

/*
 *  instance `ITAR_TP_LIGHT_TPEXPANSION`
 *      Description: in `Use_Plan_TPBaronArmor` called by `ItWr_TP_BluePrint_TPLL` [IT_TPEXPANSION.D]
 */
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_LIGHT_TPEXPANSION__ItMiSwordrawhot = 3;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_LIGHT_TPEXPANSION__ItAt_LurkerSkin = 3;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_LIGHT_TPEXPANSION__ITAt_ADDON_KeilerFur = 1;

/*
 *  instance `ITAR_TP_LIGHTR_TPEXPANSION`
 *      Description: in `Use_Plan_TPBaronArmor` called by `ItWr_TP_BluePrint_TPLL` [IT_TPEXPANSION.D]
 */
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_LIGHTR_TPEXPANSION__ItMiSwordrawhot = 2;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_LIGHTR_TPEXPANSION__ItAt_LurkerSkin = 3;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_LIGHTR_TPEXPANSION__ITAt_ADDON_KeilerFur = 2;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_LIGHTR_TPEXPANSION__ItAt_Sting = 1;

/*
 *  instance `ITAR_TP_Medium_TPEXPANSION`
 *      Description: in `Use_Plan_TPBaronArmor` called by `ItWr_TP_BluePrint_TPLM` [IT_TPEXPANSION.D]
 */
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_Medium_TPEXPANSION__ItMiSwordrawhot = 4;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_Medium_TPEXPANSION__ItAt_SharkSkin = 3;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_Medium_TPEXPANSION__ITAt_WargFur = 1;

/*
 *  instance `ITAR_TP_MediumR_TPEXPANSION`
 *      Description: in `Use_Plan_TPBaronArmor` called by `ItWr_TP_BluePrint_TPLM` [IT_TPEXPANSION.D]
 */
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_MediumR_TPEXPANSION__ItMiSwordrawhot = 3;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_MediumR_TPEXPANSION__ItAt_SharkSkin = 3;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_MediumR_TPEXPANSION__ITAt_WargFur = 2;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_MediumR_TPEXPANSION__ItAt_SharkTeeth = 2;

/*
 *  instance `ITAR_TP_Heavy_TPEXPANSION`
 *      Description: in `Use_Plan_TPBaronArmor` called by `ItWr_TP_BluePrint_TPLH` [IT_TPEXPANSION.D]
 */
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_Heavy_TPEXPANSION__ItMiSwordrawhot = 6;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_Heavy_TPEXPANSION__ItAt_SharkSkin = 4;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_Heavy_TPEXPANSION__ITAt_ShadowFur = 1;

/*
 *  instance `ITAR_TP_HeavyR_TPEXPANSION`
 *      Description: in `Use_Plan_TPBaronArmor` called by `ItWr_TP_BluePrint_TPLH` [IT_TPEXPANSION.D]
 */
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_HeavyR_TPEXPANSION__ItMiSwordrawhot = 5;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_HeavyR_TPEXPANSION__ItAt_SharkSkin = 5;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_HeavyR_TPEXPANSION__ITAt_ShadowFur = 1;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_HeavyR_TPEXPANSION__ItAt_WaranFiretongue = 1;

/*
 *  instance `ITAR_TP_CHOSEN2_TPEXPANSION`
 *      Description: in `Use_Plan_TPBaronArmor` called by `ItWr_TP_BluePrint_TPLO` [IT_TPEXPANSION.D]
 */
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN2_TPEXPANSION__ItMiSwordrawhot = 7;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN2_TPEXPANSION__ItAt_SharkSkin = 4;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN2_TPEXPANSION__ITMi_Nugget = 2;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN2_TPEXPANSION__ItMi_Zeitspalt_Addon = 1;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN2_TPEXPANSION__ItPl_SwampHerb = 4;

/*
 *  instance `ITAR_TP_CHOSEN_TPEXPANSION`
 *      Description: in `Use_Plan_TPBaronArmor` called by `ItWr_TP_BluePrint_TPLO` [IT_TPEXPANSION.D]
 */
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN_TPEXPANSION__ItMiSwordrawhot = 6;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN_TPEXPANSION__ItAt_SharkSkin = 5;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN_TPEXPANSION__ITMi_Nugget = 1;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN_TPEXPANSION__ItMi_Zeitspalt_Addon = 1;
const int NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN_TPEXPANSION__ItPl_SwampHerb = 4;

/*
 *  [CONSTANTS]
 *   - [ALERTS]
 *
 *  The constants used to create an alert (print on a screen) about missing ingredient(s) or an forged armor.
 */
const string NINJA_TPEXPANSION_PRINT_ProdItemsMissing__SUBSTR_1 = "Chybí: ";
const string NINJA_TPEXPANSION_PRINT_ProdItemsMissing__SUBSTR_2 = " x";
const string NINJA_TPEXPANSION_PRINT_ForgeSuccess = " vyrobeno!";


/*
 *  [FUNCTIONS & INSTANCES]
 */

/*
 *  NINJA_ARMOREXPANSION_Func_Print_ProdItemsMissing
 *   - display information about missing ingredient(s)
 */
func void NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(var string ingredientName, var int missingAmount)
{
    // Build a string
    var string str; str = NINJA_TPEXPANSION_PRINT_ProdItemsMissing__SUBSTR_1;
    str = ConcatStrings(str, ingredientName);
    str = ConcatStrings(str, NINJA_TPEXPANSION_PRINT_ProdItemsMissing__SUBSTR_2);   
	str = ConcatStrings(str, IntToString(missingAmount));
    
    // Print a string
    Print(str);
};

/*
 *  NINJA_ARMOREXPANSION_Func_Print_ForgeSuccess
 *   - display information about an forged armor
 */
func void NINJA_TPEXPANSION_Func_Print_ForgeSuccess(var string armorName)
{
    // Build and print a string
    Print(ConcatStrings(armorName, NINJA_TPEXPANSION_PRINT_ForgeSuccess));
};


/*
 *  [DIALOGUES]
 */

/*
 *  Normal & Ore smithing
 *   - overwriting original condition, to take forging an armor into consideration
 */
func int Ninja_TPEXPANSION_PC_Common_Condition()
{
    // If player already selected forging an armor
    if (NINJA_TPEXPANSION_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        return false;
    };
    
    ContinueCall();
};
func int Ninja_TPEXPANSION_PC_Ore_Condition()
{
    // If player already selected forging an armor
    if (NINJA_TPEXPANSION_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        return false;
    };
    
    ContinueCall();
};


/*
 *  NINJA_ARMOREXPANSION_PC_FORGE_ARMOR
 *   - select an armor forging
 */
instance NINJA_TPEXPANSION_PC_FORGE_ARMOR(C_INFO)
{
	npc				= PC_Hero;
	nr				= 0;
	condition		= NINJA_TPXPANSION_PC_FORGE_ARMOR_Condition;
	information		= NINJA_TPEXPANSION_PC_FORGE_ARMOR_Info;
	permanent		= true;
	description		= "Vyrobit zbroj Bratrstva";
};
func int NINJA_TPXPANSION_PC_FORGE_ARMOR_Condition()
{
	if (MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        if (false == Normalwaffen)
        {
            if (false == Erzwaffen)
            {
                return TRUE;
            };
        };
    };
};
func void NINJA_TPEXPANSION_PC_FORGE_ARMOR_Info()
{
    PLAYER_MOBSI_PRODUCTION = NINJA_TPEXPANSION_MOBSI_SmithWeapon;
};

instance NINJA_TPEXPANSION_PC_FORGE_ARMORBACK(C_INFO)
{
	npc				= PC_Hero;
	nr				= 99;
	condition		= NINJA_TPEXPANSION_PC_FORGE_ARMORBACK_Condition;
	information		= NINJA_TPEXPANSION_PC_FORGE_ARMORBACK_Info;
	permanent		= true;
	description		= DIALOG_BACK;
};
func int NINJA_TPEXPANSION_PC_FORGE_ARMORBACK_Condition()
{
    if (NINJA_TPEXPANSION_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        return true;
    };
};
func void NINJA_TPEXPANSION_PC_FORGE_ARMORBACK_Info()
{
    // Return to original constant.
	PLAYER_MOBSI_PRODUCTION = MOBSI_SmithWeapon;
};
instance NINJA_TPEXPANSION_PC_FORGE_ARMOR_End(C_Info)
{
	npc				= PC_Hero;
	nr				= 999;
	condition		= NINJA_TPEXPANSION_PC_FORGE_ARMOR_End_Condition;
	information		= NINJA_TPEXPANSION_PC_FORGE_ARMOR_End_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};
func int NINJA_TPEXPANSION_PC_FORGE_ARMOR_End_Condition()
{
	if (NINJA_TPEXPANSION_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
	{
		return TRUE;
	};
};
func void NINJA_TPEXPANSION_PC_FORGE_ARMOR_End_Info()
{
	CreateInvItems(self, ItMiSwordRaw, 1);
	B_ENDPRODUCTIONDIALOG();
    
    // For sure I reset it.
	Erzwaffen = FALSE;
	NormalWaffen = FALSE;
};


/*
 *  Forging concrete armor
 */

/*
 *  NINJA_TPEXPANSION_PC_ITAR_TP_NOVM_TPEXPANSION
 */
INSTANCE NINJA_TPEXPANSION_PC_ITAR_TP_NOVM_TPEXPANSION (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_TPEXPANSION_PC_ITAR_TP_NOVM_TPEXPANSION_Condition;
	information		= NINJA_TPEXPANSION_PC_ITAR_TP_NOVM_TPEXPANSION_Info;
	permanent		= true;
    description     = "Vyrobit Lehkou Zbroj Novice";
};
FUNC INT NINJA_TPEXPANSION_PC_ITAR_TP_NOVM_TPEXPANSION_Condition()
{	
	if (NINJA_TPEXPANSION_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has a blueprint
        if (0 < Npc_HasItems(hero, ItWr_TP_BluePrint_NOVM))
		{	
            return true;
        };
    };
};
FUNC VOID NINJA_TPEXPANSION_PC_ITAR_TP_NOVM_TPEXPANSION_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [ItAt_WargFur]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_NOVM_TPEXPANSION__ItAt_Wolffur;
    amount_current = Npc_HasItems(hero, ItAt_WolfFur);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItAt_WolfFur.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };
    
    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients
        
        // [ItAt_WolfFur]
        Npc_RemoveInvItems(hero, ItAt_WolfFur, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_NOVM_TPEXPANSION__ItAt_Wolffur);
 
        // Create an armor
        CreateInvItem(hero, ITAR_TP_NOVM_TPEXPANSION);
        
        // Print an information about success
        NINJA_TPEXPANSION_Func_Print_ForgeSuccess(ITAR_TP_NOVM_TPEXPANSION.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
/*
 *  Forging concrete armor
 */

/*
 *  NINJA_TPEXPANSION_PC_ITAR_TP_NOVH_TPEXPANSION
 */
INSTANCE NINJA_TPEXPANSION_PC_ITAR_TP_NOVH_TPEXPANSION (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_TPEXPANSION_PC_ITAR_TP_NOVH_TPEXPANSION_Condition;
	information		= NINJA_TPEXPANSION_PC_ITAR_TP_NOVH_TPEXPANSION_Info;
	permanent		= true;
    description     = "Vyrobit Tìžkou Zbroj Novice";
};
FUNC INT NINJA_TPEXPANSION_PC_ITAR_TP_NOVH_TPEXPANSION_Condition()
{	
	if (NINJA_TPEXPANSION_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has a blueprint
        if (0 < Npc_HasItems(hero, ItWr_TP_BluePrint_NOVH))
		{	
            return true;
        };
    };
};
FUNC VOID NINJA_TPEXPANSION_PC_ITAR_TP_NOVH_TPEXPANSION_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [ItMiSwordrawhot]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_NOVH_TPEXPANSION__ItMiSwordrawhot;
    amount_current = Npc_HasItems(hero, ItMiSwordrawhot) + 1; // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItMiSwordrawhot.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };
    
    // [ItAt_Addon_Keilerfur]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_NOVH_TPEXPANSION__ItAt_ADDON_KeilerFur;
    amount_current = Npc_HasItems(hero, ItAt_Addon_Keilerfur);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItAt_Addon_Keilerfur.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };
    
	// [ITAR_TP_NOVM]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_NOVH_TPEXPANSION__ITAR_TP_NOVM_TPEXPANSION;
    amount_current = Npc_HasItems(hero, ITAR_TP_NOVM_TPEXPANSION);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ITAR_TP_NOVM_TPEXPANSION.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    }; 
 
    
    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients
        
        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_NOVH_TPEXPANSION__ItMiSwordrawhot - 1);
        
        // [ItAt_Addon_Keilerfur]
        Npc_RemoveInvItems(hero, ItAt_Addon_Keilerfur, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_NOVH_TPEXPANSION__ItAt_Addon_Keilerfur);
        
        // [ITAR_TP_NOVM]		
		Npc_RemoveInvItems(hero, ITAR_TP_NOVM_TPEXPANSION, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_NOVH_TPEXPANSION__ITAR_TP_NOVM_TPEXPANSION); 
        
        // Create an armor
        CreateInvItem(hero, ITAR_TP_NOVH_TPEXPANSION);
        
        // Print an information about success
        NINJA_TPEXPANSION_Func_Print_ForgeSuccess(ITAR_TP_NOVH_TPEXPANSION.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
/*
 *  Forging concrete armor
 */

/*
 *  NINJA_TPEXPANSION_PC_ITAR_TP_NOVHR_TPEXPANSION
 */
INSTANCE NINJA_TPEXPANSION_PC_ITAR_TP_NOVHR_TPEXPANSION (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_TPEXPANSION_PC_ITAR_TP_NOVHR_TPEXPANSION_Condition;
	information		= NINJA_TPEXPANSION_PC_ITAR_TP_NOVHR_TPEXPANSION_Info;
	permanent		= true;
    description     = "Vylepšit Tìžkou zbroj stráže";
};
FUNC INT NINJA_TPEXPANSION_PC_ITAR_TP_NOVHR_TPEXPANSION_Condition()
{	
	if (NINJA_TPEXPANSION_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has a blueprint
        if (0 < Npc_HasItems(hero, ItWr_TP_BluePrint_NOVHR))
		{	
            return true;
        };
    };
};
FUNC VOID NINJA_TPEXPANSION_PC_ITAR_TP_NOVHR_TPEXPANSION_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [ItMiSwordrawhot]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_NOVHR_TPEXPANSION__ItMiSwordrawhot;
    amount_current = Npc_HasItems(hero, ItMiSwordrawhot) + 1; // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItMiSwordrawhot.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };
    
    // [ItAt_Addon_Keilerfur]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_NOVHR_TPEXPANSION__ItAt_Addon_Keilerfur;
    amount_current = Npc_HasItems(hero, ItAt_Addon_Keilerfur);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItAt_Addon_Keilerfur.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };
    
	// [ITAR_TP_NOVH_TPEXPANSION]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_NOVHR_TPEXPANSION__ITAR_TP_NOVH_TPEXPANSION;
    amount_current = Npc_HasItems(hero, ITAR_TP_NOVH_TPEXPANSION);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ITAR_TP_NOVH_TPEXPANSION.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    }; 
 
    
    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients
        
        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_NOVHR_TPEXPANSION__ItMiSwordrawhot - 1);
        
        // [ItAt_Addon_Keilerfur]
        Npc_RemoveInvItems(hero, ItAt_Addon_Keilerfur, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_NOVHR_TPEXPANSION__ItAt_Addon_Keilerfur);
        
        // [ITAR_TP_NOVH_TPEXPANSION]		
		Npc_RemoveInvItems(hero, ITAR_TP_NOVH_TPEXPANSION, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_NOVHR_TPEXPANSION__ITAR_TP_NOVH_TPEXPANSION); 
        
        // Create an armor
        CreateInvItem(hero, ITAR_TP_NOVHR_TPEXPANSION);
        
        // Print an information about success
        NINJA_TPEXPANSION_Func_Print_ForgeSuccess(ITAR_TP_NOVHR_TPEXPANSION.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
/*
 *  Forging concrete armor
 */

/*
 *  NINJA_TPEXPANSION_PC_ITAR_TP_LIGHT_TPEXPANSION
 */
INSTANCE NINJA_TPEXPANSION_PC_ITAR_TP_LIGHT_TPEXPANSION (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_TPEXPANSION_PC_ITAR_TP_LIGHT_TPEXPANSION_Condition;
	information		= NINJA_TPEXPANSION_PC_ITAR_TP_LIGHT_TPEXPANSION_Info;
	permanent		= true;
    description     = "Vyrobit Lehkou Zbroj Templáøe";
};
FUNC INT NINJA_TPEXPANSION_PC_ITAR_TP_LIGHT_TPEXPANSION_Condition()
{	
	if (NINJA_TPEXPANSION_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has a blueprint
        if (0 < Npc_HasItems(hero, ItWr_TP_BluePrint_TPLL))
		{	
            return true;
        };
    };
};
FUNC VOID NINJA_TPEXPANSION_PC_ITAR_TP_LIGHT_TPEXPANSION_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [ItMiSwordrawhot]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_LIGHT_TPEXPANSION__ItMiSwordrawhot;
    amount_current = Npc_HasItems(hero, ItMiSwordrawhot) + 1; // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItMiSwordrawhot.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };
    
    // [ItAt_LurkerSkin]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_LIGHT_TPEXPANSION__ItAt_LurkerSkin;
    amount_current = Npc_HasItems(hero, ItAt_LurkerSkin);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItAt_LurkerSkin.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };
    
	// [ITAt_ADDON_KeilerFur]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_LIGHT_TPEXPANSION__ITAt_ADDON_KeilerFur;
    amount_current = Npc_HasItems(hero, ITAt_ADDON_KeilerFur);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ITAt_ADDON_KeilerFur.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    }; 
 
    
    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients
        
        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_LIGHT_TPEXPANSION__ItMiSwordrawhot - 1);
        
        // [ItAt_LurkerSkin]
        Npc_RemoveInvItems(hero, ItAt_LurkerSkin, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_LIGHT_TPEXPANSION__ItAt_LurkerSkin);
        
        // [ITAt_ADDON_KeilerFur]		
		Npc_RemoveInvItems(hero, ITAt_ADDON_KeilerFur, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_LIGHT_TPEXPANSION__ITAt_ADDON_KeilerFur); 
        
        // Create an armor
        CreateInvItem(hero, ITAR_TP_LIGHT_TPEXPANSION);
        
        // Print an information about success
        NINJA_TPEXPANSION_Func_Print_ForgeSuccess(ITAR_TP_LIGHT_TPEXPANSION.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};

/*
 *  NINJA_TPEXPANSION_PC_ITAR_TP_LIGHTR_TPEXPANSION
 */
INSTANCE NINJA_TPEXPANSION_PC_ITAR_TP_LIGHTR_TPEXPANSION (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_TPEXPANSION_PC_ITAR_TP_LIGHTR_TPEXPANSION_Condition;
	information		= NINJA_TPEXPANSION_PC_ITAR_TP_LIGHTR_TPEXPANSION_Info;
	permanent		= true;
    description     = "Vyrobit Lehkou Zbroj Lovce Bratrstva";
};
FUNC INT NINJA_TPEXPANSION_PC_ITAR_TP_LIGHTR_TPEXPANSION_Condition()
{	
	if (NINJA_TPEXPANSION_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has a blueprint
        if (0 < Npc_HasItems(hero, ItWr_TP_BluePrint_TPLL))
		{	
            return true;
        };
    };
};
FUNC VOID NINJA_TPEXPANSION_PC_ITAR_TP_LIGHTR_TPEXPANSION_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [ItMiSwordrawhot]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_LIGHTR_TPEXPANSION__ItMiSwordrawhot;
    amount_current = Npc_HasItems(hero, ItMiSwordrawhot) + 1; // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItMiSwordrawhot.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };
    
    // [ItAt_LurkerSkin]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_LIGHTR_TPEXPANSION__ItAt_LurkerSkin;
    amount_current = Npc_HasItems(hero, ItAt_LurkerSkin);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItAt_LurkerSkin.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };
    
	// [ITAt_ADDON_KeilerFur]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_LIGHTR_TPEXPANSION__ITAt_ADDON_KeilerFur;
    amount_current = Npc_HasItems(hero, ITAt_ADDON_KeilerFur);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ITAt_ADDON_KeilerFur.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    }; 
	
	// [ItAt_Sting]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_LIGHTR_TPEXPANSION__ItAt_Sting;
    amount_current = Npc_HasItems(hero, ItAt_Sting);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItAt_Sting.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };
     
    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients
        
        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_LIGHTR_TPEXPANSION__ItMiSwordrawhot - 1);
        
        // [ItAt_LurkerSkin]
        Npc_RemoveInvItems(hero, ItAt_LurkerSkin, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_LIGHTR_TPEXPANSION__ItAt_LurkerSkin);
        
        // [ITAt_ADDON_KeilerFur]		
		Npc_RemoveInvItems(hero, ITAt_ADDON_KeilerFur, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_LIGHTR_TPEXPANSION__ITAt_ADDON_KeilerFur); 
 
        // [ItAt_Sting]		
		Npc_RemoveInvItems(hero, ItAt_Sting, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_LIGHTR_TPEXPANSION__ItAt_Sting);  

        // Create an armor
        CreateInvItem(hero, ITAR_TP_LIGHTR_TPEXPANSION);
        
        // Print an information about success
        NINJA_TPEXPANSION_Func_Print_ForgeSuccess(ITAR_TP_LIGHTR_TPEXPANSION.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};

/*
 *  NINJA_TPEXPANSION_PC_ITAR_TP_MEDIUM_TPEXPANSION
 */
INSTANCE NINJA_TPEXPANSION_PC_ITAR_TP_MEDIUM_TPEXPANSION (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_TPEXPANSION_PC_ITAR_TP_MEDIUM_TPEXPANSION_Condition;
	information		= NINJA_TPEXPANSION_PC_ITAR_TP_MEDIUM_TPEXPANSION_Info;
	permanent		= true;
    description     = "Vyrobit Zbroj Templáøe";
};
FUNC INT NINJA_TPEXPANSION_PC_ITAR_TP_MEDIUM_TPEXPANSION_Condition()
{	
	if (NINJA_TPEXPANSION_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has a blueprint
        if (0 < Npc_HasItems(hero, ItWr_TP_BluePrint_TPLM))
		{	
            return true;
        };
    };
};
FUNC VOID NINJA_TPEXPANSION_PC_ITAR_TP_MEDIUM_TPEXPANSION_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [ItMiSwordrawhot]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_MEDIUM_TPEXPANSION__ItMiSwordrawhot;
    amount_current = Npc_HasItems(hero, ItMiSwordrawhot) + 1; // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItMiSwordrawhot.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };
    
    // [ItAt_SharkSkin]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_MEDIUM_TPEXPANSION__ItAt_SharkSkin;
    amount_current = Npc_HasItems(hero, ItAt_SharkSkin);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItAt_SharkSkin.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };
    
	// [ItAt_WargFur]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_MEDIUM_TPEXPANSION__ItAt_WargFur;
    amount_current = Npc_HasItems(hero, ItAt_WargFur);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItAt_WargFur.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    }; 
 
    
    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients
        
        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_MEDIUM_TPEXPANSION__ItMiSwordrawhot - 1);
        
        // [ItAt_SharkSkin]
        Npc_RemoveInvItems(hero, ItAt_SharkSkin, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_MEDIUM_TPEXPANSION__ItAt_SharkSkin);
        
        // [ItAt_WargFur]		
		Npc_RemoveInvItems(hero, ItAt_WargFur, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_MEDIUM_TPEXPANSION__ItAt_WargFur); 
        
        // Create an armor
        CreateInvItem(hero, ITAR_TP_MEDIUM_TPEXPANSION);
        
        // Print an information about success
        NINJA_TPEXPANSION_Func_Print_ForgeSuccess(ITAR_TP_MEDIUM_TPEXPANSION.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};

/*
 *  NINJA_TPEXPANSION_PC_ITAR_TP_MEDIUMR_TPEXPANSION
 */
INSTANCE NINJA_TPEXPANSION_PC_ITAR_TP_MEDIUMR_TPEXPANSION (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_TPEXPANSION_PC_ITAR_TP_MEDIUMR_TPEXPANSION_Condition;
	information		= NINJA_TPEXPANSION_PC_ITAR_TP_MEDIUMR_TPEXPANSION_Info;
	permanent		= true;
    description     = "Vyrobit Zbroj Lovce Bratrstva";
};
FUNC INT NINJA_TPEXPANSION_PC_ITAR_TP_MEDIUMR_TPEXPANSION_Condition()
{	
	if (NINJA_TPEXPANSION_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has a blueprint
        if (0 < Npc_HasItems(hero, ItWr_TP_BluePrint_TPLM))
		{	
            return true;
        };
    };
};
FUNC VOID NINJA_TPEXPANSION_PC_ITAR_TP_MEDIUMR_TPEXPANSION_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [ItMiSwordrawhot]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_MEDIUMR_TPEXPANSION__ItMiSwordrawhot;
    amount_current = Npc_HasItems(hero, ItMiSwordrawhot) + 1; // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItMiSwordrawhot.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };
    
    // [ItAt_SharkSkin]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_MEDIUMR_TPEXPANSION__ItAt_SharkSkin;
    amount_current = Npc_HasItems(hero, ItAt_SharkSkin);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItAt_SharkSkin.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };
    
	// [ItAt_SharkTeeth]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_MEDIUMR_TPEXPANSION__ItAt_SharkTeeth;
    amount_current = Npc_HasItems(hero, ItAt_SharkTeeth);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItAt_SharkTeeth.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };	
    
	// [ItAt_WargFur]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_MEDIUMR_TPEXPANSION__ItAt_WargFur;
    amount_current = Npc_HasItems(hero, ItAt_WargFur);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItAt_WargFur.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    }; 
 
    
    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients
        
        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_MEDIUMR_TPEXPANSION__ItMiSwordrawhot - 1);
        
        // [ItAt_SharkSkin]
        Npc_RemoveInvItems(hero, ItAt_SharkSkin, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_MEDIUMR_TPEXPANSION__ItAt_SharkSkin);

        // [ItAt_SharkTeeth]
        Npc_RemoveInvItems(hero, ItAt_SharkTeeth, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_MEDIUMR_TPEXPANSION__ItAt_SharkTeeth);        

        // [ItAt_WargFur]		
		Npc_RemoveInvItems(hero, ItAt_WargFur, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_MEDIUMR_TPEXPANSION__ItAt_WargFur); 
        
        // Create an armor
        CreateInvItem(hero, ITAR_TP_MEDIUMR_TPEXPANSION);
        
        // Print an information about success
        NINJA_TPEXPANSION_Func_Print_ForgeSuccess(ITAR_TP_MEDIUMR_TPEXPANSION.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};

/*
 *  NINJA_TPEXPANSION_PC_ITAR_TP_HEAVY_TPEXPANSION
 */
INSTANCE NINJA_TPEXPANSION_PC_ITAR_TP_HEAVY_TPEXPANSION (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_TPEXPANSION_PC_ITAR_TP_HEAVY_TPEXPANSION_Condition;
	information		= NINJA_TPEXPANSION_PC_ITAR_TP_HEAVY_TPEXPANSION_Info;
	permanent		= true;
    description     = "Vyrobit Tìžkou Zbroj Templáøe";
};
FUNC INT NINJA_TPEXPANSION_PC_ITAR_TP_HEAVY_TPEXPANSION_Condition()
{	
	if (NINJA_TPEXPANSION_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has a blueprint
        if (0 < Npc_HasItems(hero, ItWr_TP_BluePrint_TPLH))
		{	
            return true;
        };
    };
};
FUNC VOID NINJA_TPEXPANSION_PC_ITAR_TP_HEAVY_TPEXPANSION_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [ItMiSwordrawhot]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_HEAVY_TPEXPANSION__ItMiSwordrawhot;
    amount_current = Npc_HasItems(hero, ItMiSwordrawhot) + 1; // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItMiSwordrawhot.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };
    
    // [ItAt_SharkSkin]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_HEAVY_TPEXPANSION__ItAt_SharkSkin;
    amount_current = Npc_HasItems(hero, ItAt_SharkSkin);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItAt_SharkSkin.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };
    
	// [ITAt_ShadowFur]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_HEAVY_TPEXPANSION__ITAt_ShadowFur;
    amount_current = Npc_HasItems(hero, ITAt_ShadowFur);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ITAt_ShadowFur.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    }; 
 
    
    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients
        
        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_HEAVY_TPEXPANSION__ItMiSwordrawhot - 1);
        
        // [ItAt_SharkSkin]
        Npc_RemoveInvItems(hero, ItAt_SharkSkin, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_HEAVY_TPEXPANSION__ItAt_SharkSkin);
        
        // [ITAt_ShadowFur]		
		Npc_RemoveInvItems(hero, ITAt_ShadowFur, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_HEAVY_TPEXPANSION__ITAt_ShadowFur); 
        
        // Create an armor
        CreateInvItem(hero, ITAR_TP_HEAVY_TPEXPANSION);
        
        // Print an information about success
        NINJA_TPEXPANSION_Func_Print_ForgeSuccess(ITAR_TP_HEAVY_TPEXPANSION.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};

/*
 *  NINJA_TPEXPANSION_PC_ITAR_TP_HEAVYR_TPEXPANSION
 */
INSTANCE NINJA_TPEXPANSION_PC_ITAR_TP_HEAVYR_TPEXPANSION (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_TPEXPANSION_PC_ITAR_TP_HEAVYR_TPEXPANSION_Condition;
	information		= NINJA_TPEXPANSION_PC_ITAR_TP_HEAVYR_TPEXPANSION_Info;
	permanent		= true;
    description     = "Vyrobit Tìžkou Zbroj Lovce Bratrstva";
};
FUNC INT NINJA_TPEXPANSION_PC_ITAR_TP_HEAVYR_TPEXPANSION_Condition()
{	
	if (NINJA_TPEXPANSION_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has a blueprint
        if (0 < Npc_HasItems(hero, ItWr_TP_BluePrint_TPLH))
		{	
            return true;
        };
    };
};
FUNC VOID NINJA_TPEXPANSION_PC_ITAR_TP_HEAVYR_TPEXPANSION_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [ItMiSwordrawhot]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_HEAVYR_TPEXPANSION__ItMiSwordrawhot;
    amount_current = Npc_HasItems(hero, ItMiSwordrawhot) + 1; // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItMiSwordrawhot.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };
    
    // [ItAt_SharkSkin]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_HEAVYR_TPEXPANSION__ItAt_SharkSkin;
    amount_current = Npc_HasItems(hero, ItAt_SharkSkin);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItAt_SharkSkin.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };
    
	// [ITAt_ShadowFur]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_HEAVYR_TPEXPANSION__ITAt_ShadowFur;
    amount_current = Npc_HasItems(hero, ITAt_ShadowFur);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ITAt_ShadowFur.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    }; 
	    
	// [ITAt_WaranFireTongue]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_HEAVYR_TPEXPANSION__ITAt_WaranFireTongue;
    amount_current = Npc_HasItems(hero, ITAt_WaranFireTongue);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ITAt_WaranFireTongue.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    }; 
    
    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients
        
        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_HEAVYR_TPEXPANSION__ItMiSwordrawhot - 1);
        
        // [ItAt_SharkSkin]
        Npc_RemoveInvItems(hero, ItAt_SharkSkin, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_HEAVYR_TPEXPANSION__ItAt_SharkSkin);
        
        // [ITAt_ShadowFur]		
		Npc_RemoveInvItems(hero, ITAt_ShadowFur, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_HEAVYR_TPEXPANSION__ITAt_ShadowFur); 
       
        // [ITAt_WaranFireTongue]		
		Npc_RemoveInvItems(hero, ITAt_WaranFireTongue, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_HEAVYR_TPEXPANSION__ITAt_WaranFireTongue); 
         
        // Create an armor
        CreateInvItem(hero, ITAR_TP_HEAVYR_TPEXPANSION);
        
        // Print an information about success
        NINJA_TPEXPANSION_Func_Print_ForgeSuccess(ITAR_TP_HEAVYR_TPEXPANSION.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};

/*
 *  NINJA_TPEXPANSION_PC_ITAR_TP_CHOSEN2_TPEXPANSION
 */
INSTANCE NINJA_TPEXPANSION_PC_ITAR_TP_CHOSEN2_TPEXPANSION (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_TPEXPANSION_PC_ITAR_TP_CHOSEN2_TPEXPANSION_Condition;
	information		= NINJA_TPEXPANSION_PC_ITAR_TP_CHOSEN2_TPEXPANSION_Info;
	permanent		= true;
    description     = "Vyrobit Zbroj Vyvoleného z Bratrstva";
};
FUNC INT NINJA_TPEXPANSION_PC_ITAR_TP_CHOSEN2_TPEXPANSION_Condition()
{	
	if (NINJA_TPEXPANSION_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has a blueprint
        if (0 < Npc_HasItems(hero, ItWr_TP_BluePrint_TPLO))
		{	
            return true;
        };
    };
};
FUNC VOID NINJA_TPEXPANSION_PC_ITAR_TP_CHOSEN2_TPEXPANSION_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [ItMiSwordrawhot]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN2_TPEXPANSION__ItMiSwordrawhot;
    amount_current = Npc_HasItems(hero, ItMiSwordrawhot) + 1; // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItMiSwordrawhot.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };
    
    // [ItAt_SharkSkin]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN2_TPEXPANSION__ItAt_SharkSkin;
    amount_current = Npc_HasItems(hero, ItAt_SharkSkin);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItAt_SharkSkin.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };
    
	// [ITMi_Nugget]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN2_TPEXPANSION__ITMi_Nugget;
    amount_current = Npc_HasItems(hero, ITMi_Nugget);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ITMi_Nugget.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    }; 
	    
	// [ItMi_Zeitspalt_Addon]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN2_TPEXPANSION__ItMi_Zeitspalt_Addon;
    amount_current = Npc_HasItems(hero, ItMi_Zeitspalt_Addon);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItMi_Zeitspalt_Addon.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    }; 	    
	
	// [ItPl_SwampHerb]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN2_TPEXPANSION__ItPl_SwampHerb;
    amount_current = Npc_HasItems(hero, ItPl_SwampHerb);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItPl_SwampHerb.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    }; 
  
    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients
        
        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN2_TPEXPANSION__ItMiSwordrawhot - 1);
        
        // [ItAt_SharkSkin]
        Npc_RemoveInvItems(hero, ItAt_SharkSkin, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN2_TPEXPANSION__ItAt_SharkSkin);
        
        // [ITMi_Nugget]		
		Npc_RemoveInvItems(hero, ITMi_Nugget, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN2_TPEXPANSION__ITMi_Nugget); 
       
        // [ItMi_Zeitspalt_Addon]		
		Npc_RemoveInvItems(hero, ItMi_Zeitspalt_Addon, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN2_TPEXPANSION__ItMi_Zeitspalt_Addon); 
       
        // [ItPl_SwampHerb]		
		Npc_RemoveInvItems(hero, ItPl_SwampHerb, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN2_TPEXPANSION__ItPl_SwampHerb); 
          
        // Create an armor
        CreateInvItem(hero, ITAR_TP_CHOSEN2_TPEXPANSION);
        
        // Print an information about success
        NINJA_TPEXPANSION_Func_Print_ForgeSuccess(ITAR_TP_CHOSEN2_TPEXPANSION.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};

/*
 *  NINJA_TPEXPANSION_PC_ITAR_TP_CHOSEN_TPEXPANSION
 */
INSTANCE NINJA_TPEXPANSION_PC_ITAR_TP_CHOSEN_TPEXPANSION (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_TPEXPANSION_PC_ITAR_TP_CHOSEN_TPEXPANSION_Condition;
	information		= NINJA_TPEXPANSION_PC_ITAR_TP_CHOSEN_TPEXPANSION_Info;
	permanent		= true;
    description     = "Vyrobit Zbroj Mistra Lovce Bratrstva";
};
FUNC INT NINJA_TPEXPANSION_PC_ITAR_TP_CHOSEN_TPEXPANSION_Condition()
{	
	if (NINJA_TPEXPANSION_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has a blueprint
        if (0 < Npc_HasItems(hero, ItWr_TP_BluePrint_TPLO))
		{	
            return true;
        };
    };
};
FUNC VOID NINJA_TPEXPANSION_PC_ITAR_TP_CHOSEN_TPEXPANSION_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [ItMiSwordrawhot]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN_TPEXPANSION__ItMiSwordrawhot;
    amount_current = Npc_HasItems(hero, ItMiSwordrawhot) + 1; // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItMiSwordrawhot.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };
    
    // [ItAt_SharkSkin]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN_TPEXPANSION__ItAt_SharkSkin;
    amount_current = Npc_HasItems(hero, ItAt_SharkSkin);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItAt_SharkSkin.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };
    
	// [ITMi_Nugget]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN_TPEXPANSION__ITMi_Nugget;
    amount_current = Npc_HasItems(hero, ITMi_Nugget);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ITMi_Nugget.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    }; 
	    
	// [ItMi_Zeitspalt_Addon]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN_TPEXPANSION__ItMi_Zeitspalt_Addon;
    amount_current = Npc_HasItems(hero, ItMi_Zeitspalt_Addon);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItMi_Zeitspalt_Addon.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    }; 	    
	
	// [ItPl_SwampHerb]
    amount_needed = NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN_TPEXPANSION__ItPl_SwampHerb;
    amount_current = Npc_HasItems(hero, ItPl_SwampHerb);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_TPEXPANSION_Func_Print_ProdItemsMissing(ItPl_SwampHerb.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    }; 
  
    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients
        
        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN_TPEXPANSION__ItMiSwordrawhot - 1);
        
        // [ItAt_SharkSkin]
        Npc_RemoveInvItems(hero, ItAt_SharkSkin, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN_TPEXPANSION__ItAt_SharkSkin);
        
        // [ITMi_Nugget]		
		Npc_RemoveInvItems(hero, ITMi_Nugget, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN_TPEXPANSION__ITMi_Nugget); 
       
        // [ItMi_Zeitspalt_Addon]		
		Npc_RemoveInvItems(hero, ItMi_Zeitspalt_Addon, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN_TPEXPANSION__ItMi_Zeitspalt_Addon); 
       
        // [ItPl_SwampHerb]		
		Npc_RemoveInvItems(hero, ItPl_SwampHerb, NINJA_TPEXPANSION_INGREDIENTS_ITAR_TP_CHOSEN_TPEXPANSION__ItPl_SwampHerb); 
          
        // Create an armor
        CreateInvItem(hero, ITAR_TP_CHOSEN_TPEXPANSION);
        
        // Print an information about success
        NINJA_TPEXPANSION_Func_Print_ForgeSuccess(ITAR_TP_CHOSEN_TPEXPANSION.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};