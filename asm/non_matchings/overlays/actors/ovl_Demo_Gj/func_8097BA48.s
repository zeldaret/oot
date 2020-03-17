glabel func_8097BA48
/* 03118 8097BA48 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 0311C 8097BA4C AFB1001C */  sw      $s1, 0x001C($sp)           
/* 03120 8097BA50 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 03124 8097BA54 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 03128 8097BA58 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0312C 8097BA5C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03130 8097BA60 AFB20020 */  sw      $s2, 0x0020($sp)           
/* 03134 8097BA64 0C25E5F9 */  jal     func_809797E4              
/* 03138 8097BA68 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 0313C 8097BA6C 10400005 */  beq     $v0, $zero, .L8097BA84     
/* 03140 8097BA70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03144 8097BA74 0C00B55C */  jal     Actor_Kill
              
/* 03148 8097BA78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0314C 8097BA7C 1000002F */  beq     $zero, $zero, .L8097BB3C   
/* 03150 8097BA80 26120184 */  addiu   $s2, $s0, 0x0184           ## $s2 = 00000184
.L8097BA84:
/* 03154 8097BA84 26120184 */  addiu   $s2, $s0, 0x0184           ## $s2 = 00000184
/* 03158 8097BA88 02403025 */  or      $a2, $s2, $zero            ## $a2 = 00000184
/* 0315C 8097BA8C 0C25E269 */  jal     func_809789A4              
/* 03160 8097BA90 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 03164 8097BA94 10400014 */  beq     $v0, $zero, .L8097BAE8     
/* 03168 8097BA98 27AE003C */  addiu   $t6, $sp, 0x003C           ## $t6 = FFFFFFE4
/* 0316C 8097BA9C 3C0F8098 */  lui     $t7, %hi(D_8097BEC4)       ## $t7 = 80980000
/* 03170 8097BAA0 25EFBEC4 */  addiu   $t7, $t7, %lo(D_8097BEC4)  ## $t7 = 8097BEC4
/* 03174 8097BAA4 8DF90000 */  lw      $t9, 0x0000($t7)           ## 8097BEC4
/* 03178 8097BAA8 8DF80004 */  lw      $t8, 0x0004($t7)           ## 8097BEC8
/* 0317C 8097BAAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03180 8097BAB0 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFE4
/* 03184 8097BAB4 8DF90008 */  lw      $t9, 0x0008($t7)           ## 8097BECC
/* 03188 8097BAB8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0318C 8097BABC ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFE8
/* 03190 8097BAC0 0C25E2E4 */  jal     func_80978B90              
/* 03194 8097BAC4 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFEC
/* 03198 8097BAC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0319C 8097BACC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 031A0 8097BAD0 0C25EE4F */  jal     func_8097B93C              
/* 031A4 8097BAD4 27A6003C */  addiu   $a2, $sp, 0x003C           ## $a2 = FFFFFFE4
/* 031A8 8097BAD8 0C00B55C */  jal     Actor_Kill
              
/* 031AC 8097BADC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 031B0 8097BAE0 10000017 */  beq     $zero, $zero, .L8097BB40   
/* 031B4 8097BAE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8097BAE8:
/* 031B8 8097BAE8 8E080268 */  lw      $t0, 0x0268($s0)           ## 00000268
/* 031BC 8097BAEC 51000014 */  beql    $t0, $zero, .L8097BB40     
/* 031C0 8097BAF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 031C4 8097BAF4 8E0B026C */  lw      $t3, 0x026C($s0)           ## 0000026C
/* 031C8 8097BAF8 27A90030 */  addiu   $t1, $sp, 0x0030           ## $t1 = FFFFFFD8
/* 031CC 8097BAFC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 031D0 8097BB00 AD2B0000 */  sw      $t3, 0x0000($t1)           ## FFFFFFD8
/* 031D4 8097BB04 8E0A0270 */  lw      $t2, 0x0270($s0)           ## 00000270
/* 031D8 8097BB08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 031DC 8097BB0C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 031E0 8097BB10 AD2A0004 */  sw      $t2, 0x0004($t1)           ## FFFFFFDC
/* 031E4 8097BB14 8E0B0274 */  lw      $t3, 0x0274($s0)           ## 00000274
/* 031E8 8097BB18 AD2B0008 */  sw      $t3, 0x0008($t1)           ## FFFFFFE0
/* 031EC 8097BB1C 0C25E2E4 */  jal     func_80978B90              
/* 031F0 8097BB20 E7A40034 */  swc1    $f4, 0x0034($sp)           
/* 031F4 8097BB24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 031F8 8097BB28 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 031FC 8097BB2C 0C25EE4F */  jal     func_8097B93C              
/* 03200 8097BB30 27A60030 */  addiu   $a2, $sp, 0x0030           ## $a2 = FFFFFFD8
/* 03204 8097BB34 0C00B55C */  jal     Actor_Kill
              
/* 03208 8097BB38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8097BB3C:
/* 0320C 8097BB3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8097BB40:
/* 03210 8097BB40 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 03214 8097BB44 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000184
/* 03218 8097BB48 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0321C 8097BB4C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 03220 8097BB50 02212821 */  addu    $a1, $s1, $at              
/* 03224 8097BB54 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 03228 8097BB58 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 0322C 8097BB5C 02403025 */  or      $a2, $s2, $zero            ## $a2 = 00000184
/* 03230 8097BB60 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 03234 8097BB64 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03238 8097BB68 8FB1001C */  lw      $s1, 0x001C($sp)           
/* 0323C 8097BB6C 8FB20020 */  lw      $s2, 0x0020($sp)           
/* 03240 8097BB70 03E00008 */  jr      $ra                        
/* 03244 8097BB74 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000


