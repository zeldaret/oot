u8 func_80B312C8(EnWeatherTag *this, GlobalContext *globalCtx, u8 arg2, u8 arg3, u8 arg4, u8 arg5, u16 arg6, u8 arg7) {
    u8 sp23;
    u8 phi_v1;
 
    sp23 = (u8)0U;
    phi_v1 = sp23;
    if (func_8002DB8C(globalCtx->actorCtx.actorList[ACTORTYPE_PLAYER].first, &this->actor) < ((f32) ((s32) this->actor.params >> 8) * 100.0f)) {
        if (((globalCtx->envCtx.unk_1E == 0) && (D_8011FB3C != 0)) && (globalCtx->skyboxId != 1)) {
            if ((globalCtx->envCtx.unk_20 == globalCtx->envCtx.unk_1F) && (D_8011FB38 = (u8)1U, phi_v1 = sp23, (globalCtx->envCtx.gloomySkyEvent == 0))) {
block_6:
                if ((globalCtx->envCtx.unk_1E == 0) && (phi_v1 = sp23, (globalCtx->envCtx.unk_1F != 1))) {
                    phi_v1 = sp23;
                    if (globalCtx->envCtx.unk_21 == 0) {
block_9:
                        D_8011FB38 = (u8)0U;
                        if (arg7 != D_8011FB30) {
                            D_8011FB30 = arg7;
                            if (globalCtx->envCtx.gloomySkyEvent == 0) {
                                globalCtx->envCtx.unk_19 = (u8)1U;
                                globalCtx->envCtx.gloomySky = arg2;
                                globalCtx->envCtx.unk_18 = arg3;
                                globalCtx->envCtx.unk_1A = arg6;
                                globalCtx->envCtx.unk_21 = (u8)1U;
                                globalCtx->envCtx.unk_1F = arg4;
                                globalCtx->envCtx.unk_20 = arg5;
                                D_8011FB34 = arg5;
                                globalCtx->envCtx.unk_24 = arg6;
                                globalCtx->envCtx.unk_22 = (u16) globalCtx->envCtx.unk_24;
                            }
                        }
                        phi_v1 = (u8)1U;
                    }
                } else {
                    goto block_9;
                }
            } else {
                phi_v1 = sp23;
                if (D_8011FB40 != 0) {
                    gSaveContext.dayTime = (u16) (gSaveContext.dayTime + 0x14);
                    phi_v1 = sp23;
                }
            }
        } else {
            D_8011FB38 = (u8)1U;
            phi_v1 = sp23;
            if (globalCtx->envCtx.gloomySkyEvent == 0) {
                goto block_6;
            }
        }
    }
    return phi_v1;
}