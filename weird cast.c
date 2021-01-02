void EnNy_Init(Actor *thisx, GlobalContext *globalCtx) {
    ColliderJntSph *sp28;
    ColliderJntSph *temp_a1;
    s16 temp_a1_2;

    Actor_ProcessInitChain(thisx, (InitChainEntry *) D_80ABE384);
    thisx->colChkInfo.damageTable = (DamageTable *) D_80ABE364;
    thisx->colChkInfo.health = 2;
    temp_a1 = thisx + 0x150;
    sp28 = temp_a1;
    Collider_InitJntSph(globalCtx, temp_a1);
    Collider_SetJntSph(globalCtx, temp_a1, thisx, (ColliderJntSphInit *) D_80ABE354, thisx + 0x170);
    ActorShape_Init(&thisx->shape, 0.0f, (void *) ActorShadow_DrawFunc_Circle, 20.0f);
    thisx->unk1CA = (u16)0;
    thisx->unk1D0 = (u8)0;
    Actor_SetScale(thisx, 0.01f);
    thisx->shape.rot.y = 0;
    thisx->speedXZ = 0.0f;
    temp_a1_2 = thisx->params;
    thisx->unk1CC = (u16)0;
    thisx->unk1CE = (u16)2;
    thisx->unk1D4 = 0xFF;
    thisx->unk1D8 = 0;
    thisx->velocity.y = 0.0f;
    thisx->unk1E8 = 0.0f;
    thisx->gravity = -0.4f;
    thisx->unk1E0 = 0.25f;
    if (temp_a1_2 == 0) {
        osSyncPrintf((const char *) "ニュウ イニシャル[ %d ] ！！\n", temp_a1_2);
        thisx->colChkInfo.mass = 0;
        thisx->unk1D4 = 0;
        thisx->unk1D8 = 0xFF;
        thisx->unk1E0 = 1.0f;
        func_80ABCDBC(thisx);
        return;
    }
    osSyncPrintf((const char *) "ダミーニュウ イニシャル[ %d ] ！！\n", temp_a1_2);
    sp28 = &func_80ABDBF8;
    osSyncPrintf((const char *) "En_Ny_actor_move2[ %x ] ！！\n", &func_80ABDBF8);
    thisx->colChkInfo.mass = 0xFF;
    thisx->unk164 = (u8)9;
    thisx->update = (void (*)(struct Actor *, struct GlobalContext *)) &func_80ABDBF8;
}
