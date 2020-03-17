glabel EnBrob_Init
/* 00000 809CAB10 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00004 809CAB14 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 00008 809CAB18 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0000C 809CAB1C AFB10028 */  sw      $s1, 0x0028($sp)           
/* 00010 809CAB20 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00014 809CAB24 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00018 809CAB28 260E01B0 */  addiu   $t6, $s0, 0x01B0           ## $t6 = 000001B0
/* 0001C 809CAB2C 260F01EC */  addiu   $t7, $s0, 0x01EC           ## $t7 = 000001EC
/* 00020 809CAB30 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00024 809CAB34 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00028 809CAB38 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 0002C 809CAB3C 2418000A */  addiu   $t8, $zero, 0x000A         ## $t8 = 0000000A
/* 00030 809CAB40 AFA00034 */  sw      $zero, 0x0034($sp)         
/* 00034 809CAB44 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00038 809CAB48 24E71750 */  addiu   $a3, $a3, 0x1750           ## $a3 = 06001750
/* 0003C 809CAB4C 24C615D8 */  addiu   $a2, $a2, 0x15D8           ## $a2 = 060015D8
/* 00040 809CAB50 26050164 */  addiu   $a1, $s0, 0x0164           ## $a1 = 00000164
/* 00044 809CAB54 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00048 809CAB58 0C0291BE */  jal     func_800A46F8              
/* 0004C 809CAB5C AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00050 809CAB60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00054 809CAB64 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00058 809CAB68 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0005C 809CAB6C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00060 809CAB70 24841A70 */  addiu   $a0, $a0, 0x1A70           ## $a0 = 06001A70
/* 00064 809CAB74 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00068 809CAB78 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFF4
/* 0006C 809CAB7C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00070 809CAB80 26250810 */  addiu   $a1, $s1, 0x0810           ## $a1 = 00000810
/* 00074 809CAB84 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00078 809CAB88 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 0007C 809CAB8C 8FA70034 */  lw      $a3, 0x0034($sp)           
/* 00080 809CAB90 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00084 809CAB94 26050228 */  addiu   $a1, $s0, 0x0228           ## $a1 = 00000228
/* 00088 809CAB98 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 0008C 809CAB9C 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00090 809CABA0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00094 809CABA4 3C07809D */  lui     $a3, %hi(D_809CBA80)       ## $a3 = 809D0000
/* 00098 809CABA8 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 0009C 809CABAC 24E7BA80 */  addiu   $a3, $a3, %lo(D_809CBA80)  ## $a3 = 809CBA80
/* 000A0 809CABB0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000A4 809CABB4 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 000A8 809CABB8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000AC 809CABBC 26050274 */  addiu   $a1, $s0, 0x0274           ## $a1 = 00000274
/* 000B0 809CABC0 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 000B4 809CABC4 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 000B8 809CABC8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000BC 809CABCC 3C07809D */  lui     $a3, %hi(D_809CBA80)       ## $a3 = 809D0000
/* 000C0 809CABD0 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 000C4 809CABD4 24E7BA80 */  addiu   $a3, $a3, %lo(D_809CBA80)  ## $a3 = 809CBA80
/* 000C8 809CABD8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000CC 809CABDC 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 000D0 809CABE0 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000D4 809CABE4 3C06809D */  lui     $a2, %hi(D_809CBAAC)       ## $a2 = 809D0000
/* 000D8 809CABE8 24C6BAAC */  addiu   $a2, $a2, %lo(D_809CBAAC)  ## $a2 = 809CBAAC
/* 000DC 809CABEC 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 000E0 809CABF0 0C0187B5 */  jal     func_80061ED4              
/* 000E4 809CABF4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 000E8 809CABF8 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 000EC 809CABFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000F0 809CAC00 3C053BA3 */  lui     $a1, 0x3BA3                ## $a1 = 3BA30000
/* 000F4 809CAC04 00194203 */  sra     $t0, $t9,  8               
/* 000F8 809CAC08 310900FF */  andi    $t1, $t0, 0x00FF           ## $t1 = 00000000
/* 000FC 809CAC0C 15200016 */  bne     $t1, $zero, .L809CAC68     
/* 00100 809CAC10 00000000 */  nop
/* 00104 809CAC14 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 00108 809CAC18 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 0010C 809CAC1C 0C00B58B */  jal     Actor_SetScale
              
/* 00110 809CAC20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00114 809CAC24 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 00118 809CAC28 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 0011C 809CAC2C 314B00FF */  andi    $t3, $t2, 0x00FF           ## $t3 = 00000000
/* 00120 809CAC30 A60B001C */  sh      $t3, 0x001C($s0)           ## 0000001C
/* 00124 809CAC34 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00128 809CAC38 1041001D */  beq     $v0, $at, .L809CACB0       
/* 0012C 809CAC3C 304C00FF */  andi    $t4, $v0, 0x00FF           ## $t4 = 00000000
/* 00130 809CAC40 448C2000 */  mtc1    $t4, $f4                   ## $f4 = 0.00
/* 00134 809CAC44 3C01809D */  lui     $at, %hi(D_809CBAC0)       ## $at = 809D0000
/* 00138 809CAC48 C428BAC0 */  lwc1    $f8, %lo(D_809CBAC0)($at)  
/* 0013C 809CAC4C 468021A0 */  cvt.s.w $f6, $f4                   
/* 00140 809CAC50 C6100054 */  lwc1    $f16, 0x0054($s0)          ## 00000054
/* 00144 809CAC54 46083282 */  mul.s   $f10, $f6, $f8             
/* 00148 809CAC58 00000000 */  nop
/* 0014C 809CAC5C 460A8482 */  mul.s   $f18, $f16, $f10           
/* 00150 809CAC60 10000013 */  beq     $zero, $zero, .L809CACB0   
/* 00154 809CAC64 E6120054 */  swc1    $f18, 0x0054($s0)          ## 00000054
.L809CAC68:
/* 00158 809CAC68 0C00B58B */  jal     Actor_SetScale
              
/* 0015C 809CAC6C 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 0000D70A
/* 00160 809CAC70 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
/* 00164 809CAC74 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00168 809CAC78 31AE00FF */  andi    $t6, $t5, 0x00FF           ## $t6 = 00000000
/* 0016C 809CAC7C A60E001C */  sh      $t6, 0x001C($s0)           ## 0000001C
/* 00170 809CAC80 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00174 809CAC84 1041000A */  beq     $v0, $at, .L809CACB0       
/* 00178 809CAC88 304F00FF */  andi    $t7, $v0, 0x00FF           ## $t7 = 00000000
/* 0017C 809CAC8C 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 00180 809CAC90 3C01809D */  lui     $at, %hi(D_809CBAC4)       ## $at = 809D0000
/* 00184 809CAC94 C428BAC4 */  lwc1    $f8, %lo(D_809CBAC4)($at)  
/* 00188 809CAC98 468021A0 */  cvt.s.w $f6, $f4                   
/* 0018C 809CAC9C C60A0054 */  lwc1    $f10, 0x0054($s0)          ## 00000054
/* 00190 809CACA0 46083402 */  mul.s   $f16, $f6, $f8             
/* 00194 809CACA4 00000000 */  nop
/* 00198 809CACA8 46105482 */  mul.s   $f18, $f10, $f16           
/* 0019C 809CACAC E6120054 */  swc1    $f18, 0x0054($s0)          ## 00000054
.L809CACB0:
/* 001A0 809CACB0 86180268 */  lh      $t8, 0x0268($s0)           ## 00000268
/* 001A4 809CACB4 C6080050 */  lwc1    $f8, 0x0050($s0)           ## 00000050
/* 001A8 809CACB8 860B02B4 */  lh      $t3, 0x02B4($s0)           ## 000002B4
/* 001AC 809CACBC 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 001B0 809CACC0 3C01809D */  lui     $at, %hi(D_809CBAC8)       ## $at = 809D0000
/* 001B4 809CACC4 C6120054 */  lwc1    $f18, 0x0054($s0)          ## 00000054
/* 001B8 809CACC8 468021A0 */  cvt.s.w $f6, $f4                   
/* 001BC 809CACCC 860E02B6 */  lh      $t6, 0x02B6($s0)           ## 000002B6
/* 001C0 809CACD0 861902B8 */  lh      $t9, 0x02B8($s0)           ## 000002B8
/* 001C4 809CACD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001C8 809CACD8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 001CC 809CACDC 46083282 */  mul.s   $f10, $f6, $f8             
/* 001D0 809CACE0 4600540D */  trunc.w.s $f16, $f10                 
/* 001D4 809CACE4 448B5000 */  mtc1    $t3, $f10                  ## $f10 = 0.00
/* 001D8 809CACE8 44088000 */  mfc1    $t0, $f16                  
/* 001DC 809CACEC 46805420 */  cvt.s.w $f16, $f10                 
/* 001E0 809CACF0 A6080268 */  sh      $t0, 0x0268($s0)           ## 00000268
/* 001E4 809CACF4 C424BAC8 */  lwc1    $f4, %lo(D_809CBAC8)($at)  
/* 001E8 809CACF8 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 001EC 809CACFC A600026C */  sh      $zero, 0x026C($s0)         ## 0000026C
/* 001F0 809CAD00 46049182 */  mul.s   $f6, $f18, $f4             
/* 001F4 809CAD04 C6120050 */  lwc1    $f18, 0x0050($s0)          ## 00000050
/* 001F8 809CAD08 AE0001A8 */  sw      $zero, 0x01A8($s0)         ## 000001A8
/* 001FC 809CAD0C 46128102 */  mul.s   $f4, $f16, $f18            
/* 00200 809CAD10 C6100054 */  lwc1    $f16, 0x0054($s0)          ## 00000054
/* 00204 809CAD14 4600320D */  trunc.w.s $f8, $f6                   
/* 00208 809CAD18 4600218D */  trunc.w.s $f6, $f4                   
/* 0020C 809CAD1C 440A4000 */  mfc1    $t2, $f8                   
/* 00210 809CAD20 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 00214 809CAD24 440D3000 */  mfc1    $t5, $f6                   
/* 00218 809CAD28 468042A0 */  cvt.s.w $f10, $f8                  
/* 0021C 809CAD2C 44993000 */  mtc1    $t9, $f6                   ## $f6 = 0.00
/* 00220 809CAD30 A60A026A */  sh      $t2, 0x026A($s0)           ## 0000026A
/* 00224 809CAD34 8E0A0004 */  lw      $t2, 0x0004($s0)           ## 00000004
/* 00228 809CAD38 A60D02B4 */  sh      $t5, 0x02B4($s0)           ## 000002B4
/* 0022C 809CAD3C 46803220 */  cvt.s.w $f8, $f6                   
/* 00230 809CAD40 46105482 */  mul.s   $f18, $f10, $f16           
/* 00234 809CAD44 C60A0054 */  lwc1    $f10, 0x0054($s0)          ## 00000054
/* 00238 809CAD48 01415824 */  and     $t3, $t2, $at              
/* 0023C 809CAD4C AE0B0004 */  sw      $t3, 0x0004($s0)           ## 00000004
/* 00240 809CAD50 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00244 809CAD54 4600910D */  trunc.w.s $f4, $f18                  
/* 00248 809CAD58 4600848D */  trunc.w.s $f18, $f16                 
/* 0024C 809CAD5C 44182000 */  mfc1    $t8, $f4                   
/* 00250 809CAD60 44099000 */  mfc1    $t1, $f18                  
/* 00254 809CAD64 A61802B6 */  sh      $t8, 0x02B6($s0)           ## 000002B6
/* 00258 809CAD68 0C272B77 */  jal     func_809CADDC              
/* 0025C 809CAD6C A60902B8 */  sh      $t1, 0x02B8($s0)           ## 000002B8
/* 00260 809CAD70 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00264 809CAD74 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 00268 809CAD78 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 0026C 809CAD7C 03E00008 */  jr      $ra                        
/* 00270 809CAD80 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000


