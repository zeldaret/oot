.late_rodata
glabel D_80937990
 .word 0xC4228000
glabel D_80937994
 .word 0xC4228000
glabel D_80937998
    .float 5000.0

.text
glabel BossSst_Init
/* 00000 8092C5D0 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00004 8092C5D4 AFB10030 */  sw      $s1, 0x0030($sp)
/* 00008 8092C5D8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0000C 8092C5DC AFBF0034 */  sw      $ra, 0x0034($sp)
/* 00010 8092C5E0 AFB0002C */  sw      $s0, 0x002C($sp)
/* 00014 8092C5E4 3C058093 */  lui     $a1, %hi(sInitChain)       ## $a1 = 80930000
/* 00018 8092C5E8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 8092C5EC 0C01E037 */  jal     Actor_ProcessInitChain

/* 00020 8092C5F0 24A5788C */  addiu   $a1, $a1, %lo(sInitChain)  ## $a1 = 8093788C
/* 00024 8092C5F4 260506B4 */  addiu   $a1, $s0, 0x06B4           ## $a1 = 000006B4
/* 00028 8092C5F8 AFA50044 */  sw      $a1, 0x0044($sp)
/* 0002C 8092C5FC 0C0170D9 */  jal     Collider_InitCylinder

/* 00030 8092C600 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00034 8092C604 260503D4 */  addiu   $a1, $s0, 0x03D4           ## $a1 = 000003D4
/* 00038 8092C608 AFA50040 */  sw      $a1, 0x0040($sp)
/* 0003C 8092C60C 0C016EFE */  jal     Collider_InitJntSph
/* 00040 8092C610 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00044 8092C614 3C058093 */  lui     $a1, %hi(D_8093782C)       ## $a1 = 80930000
/* 00048 8092C618 3C068093 */  lui     $a2, %hi(D_80937824)       ## $a2 = 80930000
/* 0004C 8092C61C 24C67824 */  addiu   $a2, $a2, %lo(D_80937824)  ## $a2 = 80937824
/* 00050 8092C620 24A5782C */  addiu   $a1, $a1, %lo(D_8093782C)  ## $a1 = 8093782C
/* 00054 8092C624 0C0187B5 */  jal     func_80061ED4
/* 00058 8092C628 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 0005C 8092C62C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00060 8092C630 0C00B2DD */  jal     Flags_SetSwitch

/* 00064 8092C634 24050014 */  addiu   $a1, $zero, 0x0014         ## $a1 = 00000014
/* 00068 8092C638 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 0006C 8092C63C 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 00070 8092C640 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00074 8092C644 15C100BA */  bne     $t6, $at, .L8092C930
/* 00078 8092C648 8FA50040 */  lw      $a1, 0x0040($sp)
/* 0007C 8092C64C 3C028093 */  lui     $v0, %hi(D_80937340)       ## $v0 = 80930000
/* 00080 8092C650 24427340 */  addiu   $v0, $v0, %lo(D_80937340)  ## $v0 = 80937340
/* 00084 8092C654 C4440004 */  lwc1    $f4, 0x0004($v0)           ## 80937344
/* 00088 8092C658 C4460008 */  lwc1    $f6, 0x0008($v0)           ## 80937348
/* 0008C 8092C65C 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 00090 8092C660 AFA4003C */  sw      $a0, 0x003C($sp)
/* 00094 8092C664 8C470000 */  lw      $a3, 0x0000($v0)           ## 80937340
/* 00098 8092C668 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0009C 8092C66C 24060166 */  addiu   $a2, $zero, 0x0166         ## $a2 = 00000166
/* 000A0 8092C670 AFA00018 */  sw      $zero, 0x0018($sp)
/* 000A4 8092C674 AFA0001C */  sw      $zero, 0x001C($sp)
/* 000A8 8092C678 AFA00020 */  sw      $zero, 0x0020($sp)
/* 000AC 8092C67C AFA00024 */  sw      $zero, 0x0024($sp)
/* 000B0 8092C680 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 000B4 8092C684 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 000B8 8092C688 E7A60014 */  swc1    $f6, 0x0014($sp)
/* 000BC 8092C68C 3C018094 */  lui     $at, %hi(D_80938CA0)       ## $at = 80940000
/* 000C0 8092C690 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 000C4 8092C694 3C070601 */  lui     $a3, 0x0601                ## $a3 = 06010000
/* 000C8 8092C698 260F01A8 */  addiu   $t7, $s0, 0x01A8           ## $t7 = 000001A8
/* 000CC 8092C69C 261802B6 */  addiu   $t8, $s0, 0x02B6           ## $t8 = 000002B6
/* 000D0 8092C6A0 2419002D */  addiu   $t9, $zero, 0x002D         ## $t9 = 0000002D
/* 000D4 8092C6A4 AC228CA0 */  sw      $v0, %lo(D_80938CA0)($at)
/* 000D8 8092C6A8 AFB90018 */  sw      $t9, 0x0018($sp)
/* 000DC 8092C6AC AFB80014 */  sw      $t8, 0x0014($sp)
/* 000E0 8092C6B0 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 000E4 8092C6B4 24E7E7B8 */  addiu   $a3, $a3, 0xE7B8           ## $a3 = 0600E7B8
/* 000E8 8092C6B8 24C67C40 */  addiu   $a2, $a2, 0x7C40           ## $a2 = 06017C40
/* 000EC 8092C6BC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000F0 8092C6C0 0C0291BE */  jal     SkelAnime_InitSV
/* 000F4 8092C6C4 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 000F8 8092C6C8 3C054788 */  lui     $a1, 0x4788                ## $a1 = 47880000
/* 000FC 8092C6CC 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00100 8092C6D0 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 00104 8092C6D4 34A5B800 */  ori     $a1, $a1, 0xB800           ## $a1 = 4788B800
/* 00108 8092C6D8 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 0010C 8092C6DC 0C00AC78 */  jal     ActorShape_Init

/* 00110 8092C6E0 3C0742BE */  lui     $a3, 0x42BE                ## $a3 = 42BE0000
/* 00114 8092C6E4 3C078093 */  lui     $a3, %hi(sJntSphInit1)       ## $a3 = 80930000
/* 00118 8092C6E8 260803F4 */  addiu   $t0, $s0, 0x03F4           ## $t0 = 000003F4
/* 0011C 8092C6EC AFA80010 */  sw      $t0, 0x0010($sp)
/* 00120 8092C6F0 24E777BC */  addiu   $a3, $a3, %lo(sJntSphInit1)  ## $a3 = 809377BC
/* 00124 8092C6F4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00128 8092C6F8 8FA50040 */  lw      $a1, 0x0040($sp)
/* 0012C 8092C6FC 0C017014 */  jal     Collider_SetJntSph
/* 00130 8092C700 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00134 8092C704 3C078093 */  lui     $a3, %hi(sCylinderInit1)       ## $a3 = 80930000
/* 00138 8092C708 24E777CC */  addiu   $a3, $a3, %lo(sCylinderInit1)  ## $a3 = 809377CC
/* 0013C 8092C70C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00140 8092C710 8FA50044 */  lw      $a1, 0x0044($sp)
/* 00144 8092C714 0C01712B */  jal     Collider_SetCylinder

/* 00148 8092C718 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0014C 8092C71C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00150 8092C720 3C018094 */  lui     $at, %hi(D_80938C90)       ## $at = 80940000
/* 00154 8092C724 AC308C90 */  sw      $s0, %lo(D_80938C90)($at)
/* 00158 8092C728 E6000024 */  swc1    $f0, 0x0024($s0)           ## 00000024
/* 0015C 8092C72C 3C018093 */  lui     $at, %hi(D_80937990)       ## $at = 80930000
/* 00160 8092C730 E6000028 */  swc1    $f0, 0x0028($s0)           ## 00000028
/* 00164 8092C734 C4287990 */  lwc1    $f8, %lo(D_80937990)($at)
/* 00168 8092C738 8E0A0024 */  lw      $t2, 0x0024($s0)           ## 00000024
/* 0016C 8092C73C 8E090028 */  lw      $t1, 0x0028($s0)           ## 00000028
/* 00170 8092C740 E608002C */  swc1    $f8, 0x002C($s0)           ## 0000002C
/* 00174 8092C744 AE0A0008 */  sw      $t2, 0x0008($s0)           ## 00000008
/* 00178 8092C748 8E0A002C */  lw      $t2, 0x002C($s0)           ## 0000002C
/* 0017C 8092C74C 3C050001 */  lui     $a1, 0x0001                ## $a1 = 00010000
/* 00180 8092C750 A60000B6 */  sh      $zero, 0x00B6($s0)         ## 000000B6
/* 00184 8092C754 00B12821 */  addu    $a1, $a1, $s1
/* 00188 8092C758 AE09000C */  sw      $t1, 0x000C($s0)           ## 0000000C
/* 0018C 8092C75C AE0A0010 */  sw      $t2, 0x0010($s0)           ## 00000010
/* 00190 8092C760 80A51CBC */  lb      $a1, 0x1CBC($a1)           ## 00011CBC
/* 00194 8092C764 0C00B337 */  jal     Flags_GetClear

/* 00198 8092C768 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0019C 8092C76C 10400022 */  beq     $v0, $zero, .L8092C7F8
/* 001A0 8092C770 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 001A4 8092C774 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 001A8 8092C778 44818000 */  mtc1    $at, $f16                  ## $f16 = 400.00
/* 001AC 8092C77C 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 001B0 8092C780 240BFFFF */  addiu   $t3, $zero, 0xFFFF         ## $t3 = FFFFFFFF
/* 001B4 8092C784 AFAB0024 */  sw      $t3, 0x0024($sp)
/* 001B8 8092C788 8FA4003C */  lw      $a0, 0x003C($sp)
/* 001BC 8092C78C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 001C0 8092C790 2406005D */  addiu   $a2, $zero, 0x005D         ## $a2 = 0000005D
/* 001C4 8092C794 3C07C248 */  lui     $a3, 0xC248                ## $a3 = C2480000
/* 001C8 8092C798 AFA00018 */  sw      $zero, 0x0018($sp)
/* 001CC 8092C79C AFA0001C */  sw      $zero, 0x001C($sp)
/* 001D0 8092C7A0 AFA00020 */  sw      $zero, 0x0020($sp)
/* 001D4 8092C7A4 E7B00014 */  swc1    $f16, 0x0014($sp)
/* 001D8 8092C7A8 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 001DC 8092C7AC E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 001E0 8092C7B0 3C01C348 */  lui     $at, 0xC348                ## $at = C3480000
/* 001E4 8092C7B4 44812000 */  mtc1    $at, $f4                   ## $f4 = -200.00
/* 001E8 8092C7B8 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 001EC 8092C7BC 8FA4003C */  lw      $a0, 0x003C($sp)
/* 001F0 8092C7C0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 001F4 8092C7C4 2406005F */  addiu   $a2, $zero, 0x005F         ## $a2 = 0000005F
/* 001F8 8092C7C8 3C07C248 */  lui     $a3, 0xC248                ## $a3 = C2480000
/* 001FC 8092C7CC AFA00018 */  sw      $zero, 0x0018($sp)
/* 00200 8092C7D0 AFA0001C */  sw      $zero, 0x001C($sp)
/* 00204 8092C7D4 AFA00020 */  sw      $zero, 0x0020($sp)
/* 00208 8092C7D8 AFA00024 */  sw      $zero, 0x0024($sp)
/* 0020C 8092C7DC E7A40014 */  swc1    $f4, 0x0014($sp)
/* 00210 8092C7E0 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00214 8092C7E4 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 00218 8092C7E8 0C00B55C */  jal     Actor_Kill

/* 0021C 8092C7EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00220 8092C7F0 10000094 */  beq     $zero, $zero, .L8092CA44
/* 00224 8092C7F4 8FBF0034 */  lw      $ra, 0x0034($sp)
.L8092C7F8:
/* 00228 8092C7F8 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 0022C 8092C7FC C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 00230 8092C800 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.00
/* 00234 8092C804 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 00238 8092C808 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 0023C 8092C80C C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 00240 8092C810 44812000 */  mtc1    $at, $f4                   ## $f4 = 400.00
/* 00244 8092C814 46083280 */  add.s   $f10, $f6, $f8
/* 00248 8092C818 AFA00018 */  sw      $zero, 0x0018($sp)
/* 0024C 8092C81C 8FA4003C */  lw      $a0, 0x003C($sp)
/* 00250 8092C820 46049180 */  add.s   $f6, $f18, $f4
/* 00254 8092C824 44075000 */  mfc1    $a3, $f10
/* 00258 8092C828 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0025C 8092C82C 240600E9 */  addiu   $a2, $zero, 0x00E9         ## $a2 = 000000E9
/* 00260 8092C830 E7A60014 */  swc1    $f6, 0x0014($sp)
/* 00264 8092C834 860C00B6 */  lh      $t4, 0x00B6($s0)           ## 000000B6
/* 00268 8092C838 AFA00024 */  sw      $zero, 0x0024($sp)
/* 0026C 8092C83C AFA00020 */  sw      $zero, 0x0020($sp)
/* 00270 8092C840 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00274 8092C844 AFAC001C */  sw      $t4, 0x001C($sp)
/* 00278 8092C848 3C038094 */  lui     $v1, %hi(D_80938C98)       ## $v1 = 80940000
/* 0027C 8092C84C 24638C98 */  addiu   $v1, $v1, %lo(D_80938C98)  ## $v1 = 80938C98
/* 00280 8092C850 AC620000 */  sw      $v0, 0x0000($v1)           ## 80938C98
/* 00284 8092C854 C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 00288 8092C858 3C01C348 */  lui     $at, 0xC348                ## $at = C3480000
/* 0028C 8092C85C 44815000 */  mtc1    $at, $f10                  ## $f10 = -200.00
/* 00290 8092C860 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 00294 8092C864 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 00298 8092C868 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 0029C 8092C86C C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 002A0 8092C870 44813000 */  mtc1    $at, $f6                   ## $f6 = 400.00
/* 002A4 8092C874 460A4400 */  add.s   $f16, $f8, $f10
/* 002A8 8092C878 AFA00018 */  sw      $zero, 0x0018($sp)
/* 002AC 8092C87C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 002B0 8092C880 46062200 */  add.s   $f8, $f4, $f6
/* 002B4 8092C884 44078000 */  mfc1    $a3, $f16
/* 002B8 8092C888 8FA4003C */  lw      $a0, 0x003C($sp)
/* 002BC 8092C88C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 002C0 8092C890 E7A80014 */  swc1    $f8, 0x0014($sp)
/* 002C4 8092C894 860D00B6 */  lh      $t5, 0x00B6($s0)           ## 000000B6
/* 002C8 8092C898 AFAE0024 */  sw      $t6, 0x0024($sp)
/* 002CC 8092C89C AFA00020 */  sw      $zero, 0x0020($sp)
/* 002D0 8092C8A0 240600E9 */  addiu   $a2, $zero, 0x00E9         ## $a2 = 000000E9
/* 002D4 8092C8A4 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 002D8 8092C8A8 AFAD001C */  sw      $t5, 0x001C($sp)
/* 002DC 8092C8AC 3C038094 */  lui     $v1, %hi(D_80938C98)       ## $v1 = 80940000
/* 002E0 8092C8B0 24638C98 */  addiu   $v1, $v1, %lo(D_80938C98)  ## $v1 = 80938C98
/* 002E4 8092C8B4 8C780000 */  lw      $t8, 0x0000($v1)           ## 80938C98
/* 002E8 8092C8B8 AC620004 */  sw      $v0, 0x0004($v1)           ## 80938C9C
/* 002EC 8092C8BC 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 002F0 8092C8C0 AF02011C */  sw      $v0, 0x011C($t8)           ## 0000011C
/* 002F4 8092C8C4 8C680004 */  lw      $t0, 0x0004($v1)           ## 80938C9C
/* 002F8 8092C8C8 8C790000 */  lw      $t9, 0x0000($v1)           ## 80938C98
/* 002FC 8092C8CC 3C0B8093 */  lui     $t3, %hi(func_80934338)    ## $t3 = 80930000
/* 00300 8092C8D0 3C0C8093 */  lui     $t4, %hi(func_809352DC)    ## $t4 = 80930000
/* 00304 8092C8D4 AD19011C */  sw      $t9, 0x011C($t0)           ## 0000011C
/* 00308 8092C8D8 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
/* 0030C 8092C8DC 256B4338 */  addiu   $t3, $t3, %lo(func_80934338) ## $t3 = 80934338
/* 00310 8092C8E0 258C52DC */  addiu   $t4, $t4, %lo(func_809352DC) ## $t4 = 809352DC
/* 00314 8092C8E4 01215024 */  and     $t2, $t1, $at
/* 00318 8092C8E8 AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
/* 0031C 8092C8EC AE0B0130 */  sw      $t3, 0x0130($s0)           ## 00000130
/* 00320 8092C8F0 AE0C0134 */  sw      $t4, 0x0134($s0)           ## 00000134
/* 00324 8092C8F4 3C018093 */  lui     $at, %hi(D_80937994)       ## $at = 80930000
/* 00328 8092C8F8 C42A7994 */  lwc1    $f10, %lo(D_80937994)($at)
/* 0032C 8092C8FC 3C01457A */  lui     $at, 0x457A                ## $at = 457A0000
/* 00330 8092C900 44818000 */  mtc1    $at, $f16                  ## $f16 = 4000.00
/* 00334 8092C904 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00338 8092C908 E60A03C4 */  swc1    $f10, 0x03C4($s0)          ## 000003C4
/* 0033C 8092C90C 0C24B2A8 */  jal     func_8092CAA0
/* 00340 8092C910 E610004C */  swc1    $f16, 0x004C($s0)          ## 0000004C
/* 00344 8092C914 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00348 8092C918 8FA5003C */  lw      $a1, 0x003C($sp)
/* 0034C 8092C91C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00350 8092C920 0C00CDD2 */  jal     Actor_ChangeType

/* 00354 8092C924 24070009 */  addiu   $a3, $zero, 0x0009         ## $a3 = 00000009
/* 00358 8092C928 10000046 */  beq     $zero, $zero, .L8092CA44
/* 0035C 8092C92C 8FBF0034 */  lw      $ra, 0x0034($sp)
.L8092C930:
/* 00360 8092C930 3C078093 */  lui     $a3, %hi(sJntSphInit2)       ## $a3 = 80930000
/* 00364 8092C934 260D03F4 */  addiu   $t5, $s0, 0x03F4           ## $t5 = 000003F4
/* 00368 8092C938 AFAD0010 */  sw      $t5, 0x0010($sp)
/* 0036C 8092C93C 24E77620 */  addiu   $a3, $a3, %lo(sJntSphInit2)  ## $a3 = 80937620
/* 00370 8092C940 0C017014 */  jal     Collider_SetJntSph
/* 00374 8092C944 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00378 8092C948 3C078093 */  lui     $a3, %hi(sCylinderInit2)       ## $a3 = 80930000
/* 0037C 8092C94C 24E777F8 */  addiu   $a3, $a3, %lo(sCylinderInit2)  ## $a3 = 809377F8
/* 00380 8092C950 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00384 8092C954 8FA50044 */  lw      $a1, 0x0044($sp)
/* 00388 8092C958 0C01712B */  jal     Collider_SetCylinder

/* 0038C 8092C95C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00390 8092C960 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00394 8092C964 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00398 8092C968 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 0039C 8092C96C 15C00017 */  bne     $t6, $zero, .L8092C9CC
/* 003A0 8092C970 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 003A4 8092C974 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 003A8 8092C978 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 003AC 8092C97C 260F01A8 */  addiu   $t7, $s0, 0x01A8           ## $t7 = 000001A8
/* 003B0 8092C980 261802B6 */  addiu   $t8, $s0, 0x02B6           ## $t8 = 000002B6
/* 003B4 8092C984 2419001B */  addiu   $t9, $zero, 0x001B         ## $t9 = 0000001B
/* 003B8 8092C988 AFB90018 */  sw      $t9, 0x0018($sp)
/* 003BC 8092C98C AFB80014 */  sw      $t8, 0x0014($sp)
/* 003C0 8092C990 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 003C4 8092C994 24E702E8 */  addiu   $a3, $a3, 0x02E8           ## $a3 = 060002E8
/* 003C8 8092C998 24C64DE0 */  addiu   $a2, $a2, 0x4DE0           ## $a2 = 06004DE0
/* 003CC 8092C99C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 003D0 8092C9A0 0C0291BE */  jal     SkelAnime_InitSV
/* 003D4 8092C9A4 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 003D8 8092C9A8 8E0303F0 */  lw      $v1, 0x03F0($s0)           ## 000003F0
/* 003DC 8092C9AC 2404FFFF */  addiu   $a0, $zero, 0xFFFF         ## $a0 = FFFFFFFF
/* 003E0 8092C9B0 A2040194 */  sb      $a0, 0x0194($s0)           ## 00000194
/* 003E4 8092C9B4 8468002C */  lh      $t0, 0x002C($v1)           ## 0000002C
/* 003E8 8092C9B8 01040019 */  multu   $t0, $a0
/* 003EC 8092C9BC 00004812 */  mflo    $t1
/* 003F0 8092C9C0 A469002C */  sh      $t1, 0x002C($v1)           ## 0000002C
/* 003F4 8092C9C4 1000000D */  beq     $zero, $zero, .L8092C9FC
/* 003F8 8092C9C8 00000000 */  nop
.L8092C9CC:
/* 003FC 8092C9CC 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00400 8092C9D0 260A01A8 */  addiu   $t2, $s0, 0x01A8           ## $t2 = 000001A8
/* 00404 8092C9D4 260B02B6 */  addiu   $t3, $s0, 0x02B6           ## $t3 = 000002B6
/* 00408 8092C9D8 240C001B */  addiu   $t4, $zero, 0x001B         ## $t4 = 0000001B
/* 0040C 8092C9DC AFAC0018 */  sw      $t4, 0x0018($sp)
/* 00410 8092C9E0 AFAB0014 */  sw      $t3, 0x0014($sp)
/* 00414 8092C9E4 AFAA0010 */  sw      $t2, 0x0010($sp)
/* 00418 8092C9E8 24E75860 */  addiu   $a3, $a3, 0x5860           ## $a3 = 06005860
/* 0041C 8092C9EC 0C0291BE */  jal     SkelAnime_InitSV
/* 00420 8092C9F0 24C6A350 */  addiu   $a2, $a2, 0xA350           ## $a2 = FFFFA350
/* 00424 8092C9F4 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 00428 8092C9F8 A20D0194 */  sb      $t5, 0x0194($s0)           ## 00000194
.L8092C9FC:
/* 0042C 8092C9FC 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00430 8092CA00 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 00434 8092CA04 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00438 8092CA08 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0043C 8092CA0C 0C00AC78 */  jal     ActorShape_Init

/* 00440 8092CA10 3C0742BE */  lui     $a3, 0x42BE                ## $a3 = 42BE0000
/* 00444 8092CA14 240EF254 */  addiu   $t6, $zero, 0xF254         ## $t6 = FFFFF254
/* 00448 8092CA18 8E0F0004 */  lw      $t7, 0x0004($s0)           ## 00000004
/* 0044C 8092CA1C A60E019E */  sh      $t6, 0x019E($s0)           ## 0000019E
/* 00450 8092CA20 3C018093 */  lui     $at, %hi(D_80937998)       ## $at = 80930000
/* 00454 8092CA24 C4327998 */  lwc1    $f18, %lo(D_80937998)($at)
/* 00458 8092CA28 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 0045C 8092CA2C 01E1C024 */  and     $t8, $t7, $at
/* 00460 8092CA30 AE180004 */  sw      $t8, 0x0004($s0)           ## 00000004
/* 00464 8092CA34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00468 8092CA38 0C24BEF9 */  jal     func_8092FBE4
/* 0046C 8092CA3C E612004C */  swc1    $f18, 0x004C($s0)          ## 0000004C
/* 00470 8092CA40 8FBF0034 */  lw      $ra, 0x0034($sp)
.L8092CA44:
/* 00474 8092CA44 8FB0002C */  lw      $s0, 0x002C($sp)
/* 00478 8092CA48 8FB10030 */  lw      $s1, 0x0030($sp)
/* 0047C 8092CA4C 03E00008 */  jr      $ra
/* 00480 8092CA50 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
