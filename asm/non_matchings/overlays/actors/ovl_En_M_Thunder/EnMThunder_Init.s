glabel EnMThunder_Init
/* 00008 80A9EFE8 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0000C 80A9EFEC AFB00024 */  sw      $s0, 0x0024($sp)           
/* 00010 80A9EFF0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00014 80A9EFF4 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00018 80A9EFF8 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 0001C 80A9EFFC 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 00020 80A9F000 8CB11C44 */  lw      $s1, 0x1C44($a1)           ## 00001C44
/* 00024 80A9F004 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00028 80A9F008 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 0002C 80A9F00C AFA50030 */  sw      $a1, 0x0030($sp)           
/* 00030 80A9F010 0C0170D9 */  jal     Collider_InitCylinder
              
/* 00034 80A9F014 AFA60044 */  sw      $a2, 0x0044($sp)           
/* 00038 80A9F018 3C0780AA */  lui     $a3, %hi(D_80AA0420)       ## $a3 = 80AA0000
/* 0003C 80A9F01C 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00040 80A9F020 24E70420 */  addiu   $a3, $a3, %lo(D_80AA0420)  ## $a3 = 80AA0420
/* 00044 80A9F024 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00048 80A9F028 0C01712B */  jal     Collider_SetCylinder
              
/* 0004C 80A9F02C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00050 80A9F030 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00054 80A9F034 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 00058 80A9F038 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 0005C 80A9F03C 4600218D */  trunc.w.s $f6, $f4                   
/* 00060 80A9F040 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 00064 80A9F044 2604019C */  addiu   $a0, $s0, 0x019C           ## $a0 = 0000019C
/* 00068 80A9F048 4600428D */  trunc.w.s $f10, $f8                  
/* 0006C 80A9F04C 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 00070 80A9F050 44053000 */  mfc1    $a1, $f6                   
/* 00074 80A9F054 4600848D */  trunc.w.s $f18, $f16                 
/* 00078 80A9F058 44065000 */  mfc1    $a2, $f10                  
/* 0007C 80A9F05C A21801C7 */  sb      $t8, 0x01C7($s0)           ## 000001C7
/* 00080 80A9F060 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 00084 80A9F064 44079000 */  mfc1    $a3, $f18                  
/* 00088 80A9F068 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 0008C 80A9F06C 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 00090 80A9F070 00052C00 */  sll     $a1, $a1, 16               
/* 00094 80A9F074 00063400 */  sll     $a2, $a2, 16               
/* 00098 80A9F078 00073C00 */  sll     $a3, $a3, 16               
/* 0009C 80A9F07C 00073C03 */  sra     $a3, $a3, 16               
/* 000A0 80A9F080 00063403 */  sra     $a2, $a2, 16               
/* 000A4 80A9F084 00052C03 */  sra     $a1, $a1, 16               
/* 000A8 80A9F088 AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 000AC 80A9F08C AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 000B0 80A9F090 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 000B4 80A9F094 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 000B8 80A9F098 0C01E763 */  jal     Lights_PointNoGlowSetInfo
              
/* 000BC 80A9F09C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 000C0 80A9F0A0 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 000C4 80A9F0A4 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 000C8 80A9F0A8 0C01E9D9 */  jal     LightContext_InsertLight
              
/* 000CC 80A9F0AC 248507A8 */  addiu   $a1, $a0, 0x07A8           ## $a1 = 000007A8
/* 000D0 80A9F0B0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 000D4 80A9F0B4 240D0028 */  addiu   $t5, $zero, 0x0028         ## $t5 = 00000028
/* 000D8 80A9F0B8 240EFFEC */  addiu   $t6, $zero, 0xFFEC         ## $t6 = FFFFFFEC
/* 000DC 80A9F0BC 240F0008 */  addiu   $t7, $zero, 0x0008         ## $t7 = 00000008
/* 000E0 80A9F0C0 AE020198 */  sw      $v0, 0x0198($s0)           ## 00000198
/* 000E4 80A9F0C4 A600018C */  sh      $zero, 0x018C($s0)         ## 0000018C
/* 000E8 80A9F0C8 A60D018E */  sh      $t5, 0x018E($s0)           ## 0000018E
/* 000EC 80A9F0CC A60E0190 */  sh      $t6, 0x0190($s0)           ## 00000190
/* 000F0 80A9F0D0 A60F01C4 */  sh      $t7, 0x01C4($s0)           ## 000001C4
/* 000F4 80A9F0D4 E60001B4 */  swc1    $f0, 0x01B4($s0)           ## 000001B4
/* 000F8 80A9F0D8 8E390908 */  lw      $t9, 0x0908($s1)           ## 00000908
/* 000FC 80A9F0DC 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00100 80A9F0E0 240AFFFF */  addiu   $t2, $zero, 0xFFFF         ## $t2 = FFFFFFFF
/* 00104 80A9F0E4 AE190024 */  sw      $t9, 0x0024($s0)           ## 00000024
/* 00108 80A9F0E8 8E38090C */  lw      $t8, 0x090C($s1)           ## 0000090C
/* 0010C 80A9F0EC 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 00110 80A9F0F0 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 00114 80A9F0F4 AE180028 */  sw      $t8, 0x0028($s0)           ## 00000028
/* 00118 80A9F0F8 8E390910 */  lw      $t9, 0x0910($s1)           ## 00000910
/* 0011C 80A9F0FC E60001AC */  swc1    $f0, 0x01AC($s0)           ## 000001AC
/* 00120 80A9F100 E60001BC */  swc1    $f0, 0x01BC($s0)           ## 000001BC
/* 00124 80A9F104 AE19002C */  sw      $t9, 0x002C($s0)           ## 0000002C
/* 00128 80A9F108 862800B6 */  lh      $t0, 0x00B6($s1)           ## 000000B6
/* 0012C 80A9F10C A20A0003 */  sb      $t2, 0x0003($s0)           ## 00000003
/* 00130 80A9F110 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00134 80A9F114 01014821 */  addu    $t1, $t0, $at              
/* 00138 80A9F118 0C00B58B */  jal     Actor_SetScale
              
/* 0013C 80A9F11C A60900B6 */  sh      $t1, 0x00B6($s0)           ## 000000B6
/* 00140 80A9F120 A20001CA */  sb      $zero, 0x01CA($s0)         ## 000001CA
/* 00144 80A9F124 8E2B0680 */  lw      $t3, 0x0680($s1)           ## 00000680
/* 00148 80A9F128 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 0014C 80A9F12C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00150 80A9F130 000B6380 */  sll     $t4, $t3, 14               
/* 00154 80A9F134 05810054 */  bgez    $t4, .L80A9F288            
/* 00158 80A9F138 3C0580AA */  lui     $a1, %hi(func_80A9F408)    ## $a1 = 80AA0000
/* 0015C 80A9F13C 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00160 80A9F140 904D003A */  lbu     $t5, 0x003A($v0)           ## 8015E69A
/* 00164 80A9F144 11A0000E */  beq     $t5, $zero, .L80A9F180     
/* 00168 80A9F148 00000000 */  nop
/* 0016C 80A9F14C 844E13F0 */  lh      $t6, 0x13F0($v0)           ## 8015FA50
/* 00170 80A9F150 15C0000B */  bne     $t6, $zero, .L80A9F180     
/* 00174 80A9F154 00000000 */  nop
/* 00178 80A9F158 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 0017C 80A9F15C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00180 80A9F160 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00184 80A9F164 3042FF00 */  andi    $v0, $v0, 0xFF00           ## $v0 = 0000E600
/* 00188 80A9F168 00021203 */  sra     $v0, $v0,  8               
/* 0018C 80A9F16C 1040001D */  beq     $v0, $zero, .L80A9F1E4     
/* 00190 80A9F170 00022C00 */  sll     $a1, $v0, 16               
/* 00194 80A9F174 0C021DC2 */  jal     func_80087708              
/* 00198 80A9F178 00052C03 */  sra     $a1, $a1, 16               
/* 0019C 80A9F17C 14400019 */  bne     $v0, $zero, .L80A9F1E4     
.L80A9F180:
/* 001A0 80A9F180 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 001A4 80A9F184 3C0F8013 */  lui     $t7, %hi(D_801333E8)
/* 001A8 80A9F188 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 001AC 80A9F18C 25EF33E8 */  addiu   $t7, %lo(D_801333E8)
/* 001B0 80A9F190 262500E4 */  addiu   $a1, $s1, 0x00E4           ## $a1 = 000000E4
/* 001B4 80A9F194 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 001B8 80A9F198 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 001BC 80A9F19C AFA70010 */  sw      $a3, 0x0010($sp)           
/* 001C0 80A9F1A0 24041823 */  addiu   $a0, $zero, 0x1823         ## $a0 = 00001823
/* 001C4 80A9F1A4 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 001C8 80A9F1A8 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 001CC 80A9F1AC 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 001D0 80A9F1B0 3C188013 */  lui     $t8, %hi(D_801333E8)
/* 001D4 80A9F1B4 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 001D8 80A9F1B8 271833E8 */  addiu   $t8, %lo(D_801333E8)
/* 001DC 80A9F1BC 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 001E0 80A9F1C0 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 001E4 80A9F1C4 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 001E8 80A9F1C8 24041818 */  addiu   $a0, $zero, 0x1818         ## $a0 = 00001818
/* 001EC 80A9F1CC 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 001F0 80A9F1D0 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 001F4 80A9F1D4 0C00B55C */  jal     Actor_Kill
              
/* 001F8 80A9F1D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001FC 80A9F1DC 1000002E */  beq     $zero, $zero, .L80A9F298   
/* 00200 80A9F1E0 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A9F1E4:
/* 00204 80A9F1E4 8E390680 */  lw      $t9, 0x0680($s1)           ## 00000680
/* 00208 80A9F1E8 3C01FFFD */  lui     $at, 0xFFFD                ## $at = FFFD0000
/* 0020C 80A9F1EC 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFDFFFF
/* 00210 80A9F1F0 03214024 */  and     $t0, $t9, $at              
/* 00214 80A9F1F4 AE280680 */  sw      $t0, 0x0680($s1)           ## 00000680
/* 00218 80A9F1F8 920201C7 */  lbu     $v0, 0x01C7($s0)           ## 000001C7
/* 0021C 80A9F1FC 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 00220 80A9F200 3C0A80AA */  lui     $t2, %hi(D_80AA044C)       ## $t2 = 80AA0000
/* 00224 80A9F204 00024880 */  sll     $t1, $v0,  2               
/* 00228 80A9F208 A20301CA */  sb      $v1, 0x01CA($s0)           ## 000001CA
/* 0022C 80A9F20C 01495021 */  addu    $t2, $t2, $t1              
/* 00230 80A9F210 8D4A044C */  lw      $t2, %lo(D_80AA044C)($t2)  
/* 00234 80A9F214 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00238 80A9F218 A20301C6 */  sb      $v1, 0x01C6($s0)           ## 000001C6
/* 0023C 80A9F21C 14410004 */  bne     $v0, $at, .L80A9F230       
/* 00240 80A9F220 AE0A0164 */  sw      $t2, 0x0164($s0)           ## 00000164
/* 00244 80A9F224 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 00248 80A9F228 10000003 */  beq     $zero, $zero, .L80A9F238   
/* 0024C 80A9F22C A20B01C9 */  sb      $t3, 0x01C9($s0)           ## 000001C9
.L80A9F230:
/* 00250 80A9F230 240C0004 */  addiu   $t4, $zero, 0x0004         ## $t4 = 00000004
/* 00254 80A9F234 A20C01C9 */  sb      $t4, 0x01C9($s0)           ## 000001C9
.L80A9F238:
/* 00258 80A9F238 3C0580AA */  lui     $a1, %hi(func_80A9F9B4)    ## $a1 = 80AA0000
/* 0025C 80A9F23C 24A5F9B4 */  addiu   $a1, $a1, %lo(func_80A9F9B4) ## $a1 = 80A9F9B4
/* 00260 80A9F240 0C2A7BF8 */  jal     func_80A9EFE0              
/* 00264 80A9F244 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00268 80A9F248 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 0026C 80A9F24C 240D0008 */  addiu   $t5, $zero, 0x0008         ## $t5 = 00000008
/* 00270 80A9F250 3C0E8013 */  lui     $t6, %hi(D_801333E8)
/* 00274 80A9F254 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 00278 80A9F258 A60D01C4 */  sh      $t5, 0x01C4($s0)           ## 000001C4
/* 0027C 80A9F25C 25CE33E8 */  addiu   $t6, %lo(D_801333E8)
/* 00280 80A9F260 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00284 80A9F264 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00288 80A9F268 2404182E */  addiu   $a0, $zero, 0x182E         ## $a0 = 0000182E
/* 0028C 80A9F26C 262500E4 */  addiu   $a1, $s1, 0x00E4           ## $a1 = 000000E4
/* 00290 80A9F270 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00294 80A9F274 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00298 80A9F278 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0029C 80A9F27C 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 002A0 80A9F280 10000003 */  beq     $zero, $zero, .L80A9F290   
/* 002A4 80A9F284 E60401AC */  swc1    $f4, 0x01AC($s0)           ## 000001AC
.L80A9F288:
/* 002A8 80A9F288 0C2A7BF8 */  jal     func_80A9EFE0              
/* 002AC 80A9F28C 24A5F408 */  addiu   $a1, $a1, %lo(func_80A9F408) ## $a1 = FFFFF408
.L80A9F290:
/* 002B0 80A9F290 AE00011C */  sw      $zero, 0x011C($s0)         ## 0000011C
/* 002B4 80A9F294 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A9F298:
/* 002B8 80A9F298 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 002BC 80A9F29C 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 002C0 80A9F2A0 03E00008 */  jr      $ra                        
/* 002C4 80A9F2A4 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
