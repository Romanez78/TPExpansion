func void Ninja_TPExpansion_Use_FINALDRAGONEQUIPMENT_S1()
{
    ContinueCall();
    
    if (true == Npc_IsPlayer(self))
	{
        if (LOG_RUNNING == TOPIC_NINJA_TPEXPANSION_ARMOR)
        {
            if (false == TOPIC_NINJA_TPEXPANSION_ARMOR__Log_Entry_Added)
            {
                B_LogEntry(TOPIC_NINJA_TPEXPANSION_ARMOR, "Po přečtení jsem dostal nápad jak vyrobit nejlepší zbroje bratrstva. Měl bych si o tom promluvit s Fortunem.");
                
                TOPIC_NINJA_TPEXPANSION_ARMOR__Log_Entry_Added = true;
            };
        };
    };
};
