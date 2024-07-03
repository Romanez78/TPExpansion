const string Ninja_TPExpansion_Version = "TPExpansion 1.0";

/*
 * Initialization function called by Ninja after "Init_Global" (G2) / "Init_<Levelname>" (G1)
 */
func void Ninja_TPExpansion_Init() {
    // Init Ikarus&Lego
    LeGo_MergeFlags(LeGo_PermMem);
    
    MEM_Info(ConcatStrings(ConcatStrings("Initialize ", Ninja_TPExpansion_Version), "."));
   MEM_Info(ConcatStrings(Ninja_TPExpansion_Version, " was initialized successfully."));
};
