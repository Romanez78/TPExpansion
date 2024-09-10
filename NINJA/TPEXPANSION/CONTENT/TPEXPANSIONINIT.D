/*
 * Adds new armors.
 *
 * - Requires Ikarus, LeGo
 * - Compatible with Gothic 2 (Addon)
 *
 * Instructions
 * - Initialize from Init_Global with
 *     Patch_AE_Init();
 */

/*
 * Initialization function to be called from Init_Global
 */
func void Patch_TP_Init() {
    HookDaedalusFuncS("PC_Common_Condition", "Ninja_TPExpansion_PC_Common_Condition");
    HookDaedalusFuncS("PC_Ore_Condition", "Ninja_TPExpansion_PC_Ore_Condition");
    HookDaedalusFuncS("Use_FINALDRAGONEQUIPMENT_S1", "Ninja_TPExpansion_Use_FINALDRAGONEQUIPMENT_S1");
};
