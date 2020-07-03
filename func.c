void func_80AC4074(EnOssan *arg0, GlobalContext *arg1, Actor *arg2) {
    u8 temp_t7;
    u8 temp_v0;

    temp_v0 = func_8010BDBC(&arg1->msgCtx);
    if ((arg0->actor.params == 0xA) && (temp_v0 == 4)) {
        if (func_80AC3884(arg0, arg1, arg1->state.input) == 0) {
            if (func_80106BC8(arg1) != 0) {
                if (arg1->msgCtx.choiceIndex == 0) {
                    func_80AC39AC(arg1, arg0);
                    return;
                }
                if (arg1->msgCtx.choiceIndex == 1) {
                    func_80AC37A8(arg1, arg0);
                    return;
                    return;
                    return;
                    return;
                }
                return;
            }
        }
    } else {
        if (temp_v0 == 5) {
            if (func_80106BC8(arg1) != 0) {
                func_80078884((u16)0x4818U);
                temp_t7 = (u8) arg0->unk_1EB;
                if ((u32) temp_t7 < 7U) {
                    goto **(&jtbl_80AC94FC + (temp_t7 * 4));
                case 6:
                    func_8010B720(arg1, (u16)0x70AAU);
                    arg0->unk_1FC = (u16)0x19;
                    return;
                case 4:
                    func_80AC37A8(arg1, arg0);
                    return;
                default:
                    func_80AC3F38(arg0, arg1, arg0);
                    return;
                case 5:
                    arg1->nextEntranceIndex = (u16)0x1D1;
                    arg1->sceneLoadFlag = (u8)0x14;
                    arg1->fadeTransition = (u8)0x2EU;
                    return;
                }
                if (func_80AC3884(arg0, arg1, arg1->state.input) == 0) {
                    osSyncPrintf((const char *) "「スティック左右で品物みてくれ！」\n");
                    func_80AC39AC(arg1, arg0);
                }
            }
        }
    }
}
