/*
 * Initialization function called by Ninja after "Init_Global" (G2) / "Init_<Levelname>" (G1)
 */

var int Ninja_ninjapermmemhandleleak_toggleCnt;

func void Ninja_ninjapermmemhandleleak_RunLoop() {
    if MEM_KeyState(KEY_V) == KEY_PRESSED {
        var string msg; msg = ConcatStrings("Hello world ", IntToString(Ninja_ninjapermmemhandleleak_toggleCnt));
        PrintS_Ext(msg, RGBA(0, 255, 0, 255));
        Ninja_ninjapermmemhandleleak_toggleCnt += 1;

    };
 };
func void Ninja_ninjapermmemhandleleak_Init() {
    LeGo_MergeFlags(LeGo_FrameFunctions | LeGo_Interface | LeGo_PrintS | LeGo_Timer);  
    FF_ApplyOnceGT(Ninja_ninjapermmemhandleleak_RunLoop);
};
