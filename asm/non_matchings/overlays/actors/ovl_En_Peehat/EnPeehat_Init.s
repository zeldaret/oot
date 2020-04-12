.late_rodata
glabel D_80AD2908
 .word 0x45834000
glabel D_80AD290C
 .word 0x3BC49BA6
glabel D_80AD2910
 .word 0x3B449BA6

.text
glabel EnPeehat_Init
/* 00008 80ACF4A8 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0000C 80ACF4AC AFB10028 */  sw      $s1, 0x0028($sp)           
/* 00010 80ACF4B0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00014 80ACF4B4 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00018 80ACF4B8 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 0001C 80ACF4BC 3C0580AD */  lui     $a1, %hi(D_80AD2810)       ## $a1 = 80AD0000
/* 00020 80ACF4C0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00024 80ACF4C4 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00028 80ACF4C8 24A52810 */  addiu   $a1, $a1, %lo(D_80AD2810)  ## $a1 = 80AD2810
/* 0002C 80ACF4CC 3C053D13 */  lui     $a1, 0x3D13                ## $a1 = 3D130000
/* 00030 80ACF4D0 34A574BD */  ori     $a1, $a1, 0x74BD           ## $a1 = 3D1374BD
/* 00034 80ACF4D4 0C00B58B */  jal     Actor_SetScale
              
/* 00038 80ACF4D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0003C 80ACF4DC 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00040 80ACF4E0 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00044 80ACF4E4 260E0190 */  addiu   $t6, $s0, 0x0190           ## $t6 = 00000190
/* 00048 80ACF4E8 260F0220 */  addiu   $t7, $s0, 0x0220           ## $t7 = 00000220
/* 0004C 80ACF4EC 24180018 */  addiu   $t8, $zero, 0x0018         ## $t8 = 00000018
/* 00050 80ACF4F0 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00054 80ACF4F4 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00058 80ACF4F8 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0005C 80ACF4FC 24E709C4 */  addiu   $a3, $a3, 0x09C4           ## $a3 = 060009C4
/* 00060 80ACF500 24C61C80 */  addiu   $a2, $a2, 0x1C80           ## $a2 = 06001C80
/* 00064 80ACF504 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00068 80ACF508 0C02915F */  jal     SkelAnime_Init
              
/* 0006C 80ACF50C 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00070 80ACF510 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00074 80ACF514 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 00078 80ACF518 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 0007C 80ACF51C 3C0542C8 */  lui     $a1, 0x42C8                ## $a1 = 42C80000
/* 00080 80ACF520 0C00AC78 */  jal     ActorShape_Init
              
/* 00084 80ACF524 3C0741D8 */  lui     $a3, 0x41D8                ## $a3 = 41D80000
/* 00088 80ACF528 8E080024 */  lw      $t0, 0x0024($s0)           ## 00000024
/* 0008C 80ACF52C 8E190028 */  lw      $t9, 0x0028($s0)           ## 00000028
/* 00090 80ACF530 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00094 80ACF534 AE080038 */  sw      $t0, 0x0038($s0)           ## 00000038
/* 00098 80ACF538 8E08002C */  lw      $t0, 0x002C($s0)           ## 0000002C
/* 0009C 80ACF53C 3C0B80AD */  lui     $t3, %hi(D_80AD27F0)       ## $t3 = 80AD0000
/* 000A0 80ACF540 240900FE */  addiu   $t1, $zero, 0x00FE         ## $t1 = 000000FE
/* 000A4 80ACF544 240A0006 */  addiu   $t2, $zero, 0x0006         ## $t2 = 00000006
/* 000A8 80ACF548 256B27F0 */  addiu   $t3, $t3, %lo(D_80AD27F0)  ## $t3 = 80AD27F0
/* 000AC 80ACF54C AE0002D4 */  sw      $zero, 0x02D4($s0)         ## 000002D4
/* 000B0 80ACF550 A6000032 */  sh      $zero, 0x0032($s0)         ## 00000032
/* 000B4 80ACF554 A20900AE */  sb      $t1, 0x00AE($s0)           ## 000000AE
/* 000B8 80ACF558 A20A00AF */  sb      $t2, 0x00AF($s0)           ## 000000AF
/* 000BC 80ACF55C AE0B0098 */  sw      $t3, 0x0098($s0)           ## 00000098
/* 000C0 80ACF560 26050300 */  addiu   $a1, $s0, 0x0300           ## $a1 = 00000300
/* 000C4 80ACF564 AE19003C */  sw      $t9, 0x003C($s0)           ## 0000003C
/* 000C8 80ACF568 E6040080 */  swc1    $f4, 0x0080($s0)           ## 00000080
/* 000CC 80ACF56C AE080040 */  sw      $t0, 0x0040($s0)           ## 00000040
/* 000D0 80ACF570 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 000D4 80ACF574 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 000D8 80ACF578 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000DC 80ACF57C 3C0780AD */  lui     $a3, %hi(D_80AD2740)       ## $a3 = 80AD0000
/* 000E0 80ACF580 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 000E4 80ACF584 24E72740 */  addiu   $a3, $a3, %lo(D_80AD2740)  ## $a3 = 80AD2740
/* 000E8 80ACF588 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000EC 80ACF58C 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 000F0 80ACF590 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000F4 80ACF594 260503AC */  addiu   $a1, $s0, 0x03AC           ## $a1 = 000003AC
/* 000F8 80ACF598 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 000FC 80ACF59C 0C017406 */  jal     func_8005D018              
/* 00100 80ACF5A0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00104 80ACF5A4 3C0780AD */  lui     $a3, %hi(D_80AD27A0)       ## $a3 = 80AD0000
/* 00108 80ACF5A8 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 0010C 80ACF5AC 24E727A0 */  addiu   $a3, $a3, %lo(D_80AD27A0)  ## $a3 = 80AD27A0
/* 00110 80ACF5B0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00114 80ACF5B4 0C017441 */  jal     func_8005D104              
/* 00118 80ACF5B8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0011C 80ACF5BC 2605034C */  addiu   $a1, $s0, 0x034C           ## $a1 = 0000034C
/* 00120 80ACF5C0 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00124 80ACF5C4 0C016EFE */  jal     func_8005BBF8              
/* 00128 80ACF5C8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0012C 80ACF5CC 3C0780AD */  lui     $a3, %hi(D_80AD2790)       ## $a3 = 80AD0000
/* 00130 80ACF5D0 260C036C */  addiu   $t4, $s0, 0x036C           ## $t4 = 0000036C
/* 00134 80ACF5D4 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00138 80ACF5D8 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 0013C 80ACF5DC 24E72790 */  addiu   $a3, $a3, %lo(D_80AD2790)  ## $a3 = 80AD2790
/* 00140 80ACF5E0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00144 80ACF5E4 0C017014 */  jal     func_8005C050              
/* 00148 80ACF5E8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0014C 80ACF5EC 3C014439 */  lui     $at, 0x4439                ## $at = 44390000
/* 00150 80ACF5F0 44813000 */  mtc1    $at, $f6                   ## $f6 = 740.00
/* 00154 80ACF5F4 3C014496 */  lui     $at, 0x4496                ## $at = 44960000
/* 00158 80ACF5F8 44814000 */  mtc1    $at, $f8                   ## $f8 = 1200.00
/* 0015C 80ACF5FC 3C01457A */  lui     $at, 0x457A                ## $at = 457A0000
/* 00160 80ACF600 44815000 */  mtc1    $at, $f10                  ## $f10 = 4000.00
/* 00164 80ACF604 3C014448 */  lui     $at, 0x4448                ## $at = 44480000
/* 00168 80ACF608 44818000 */  mtc1    $at, $f16                  ## $f16 = 800.00
/* 0016C 80ACF60C 3C0144E1 */  lui     $at, 0x44E1                ## $at = 44E10000
/* 00170 80ACF610 44819000 */  mtc1    $at, $f18                  ## $f18 = 1800.00
/* 00174 80ACF614 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00178 80ACF618 240D0048 */  addiu   $t5, $zero, 0x0048         ## $t5 = 00000048
/* 0017C 80ACF61C 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 00180 80ACF620 A20D0117 */  sb      $t5, 0x0117($s0)           ## 00000117
/* 00184 80ACF624 E60602DC */  swc1    $f6, 0x02DC($s0)           ## 000002DC
/* 00188 80ACF628 E60802D8 */  swc1    $f8, 0x02D8($s0)           ## 000002D8
/* 0018C 80ACF62C E60A00F4 */  swc1    $f10, 0x00F4($s0)          ## 000000F4
/* 00190 80ACF630 E61000F8 */  swc1    $f16, 0x00F8($s0)          ## 000000F8
/* 00194 80ACF634 10410008 */  beq     $v0, $at, .L80ACF658       
/* 00198 80ACF638 E61200FC */  swc1    $f18, 0x00FC($s0)          ## 000000FC
/* 0019C 80ACF63C 1040000A */  beq     $v0, $zero, .L80ACF668     
/* 001A0 80ACF640 3C0180AD */  lui     $at, %hi(D_80AD2908)       ## $at = 80AD0000
/* 001A4 80ACF644 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 001A8 80ACF648 10410016 */  beq     $v0, $at, .L80ACF6A4       
/* 001AC 80ACF64C 24180019 */  addiu   $t8, $zero, 0x0019         ## $t8 = 00000019
/* 001B0 80ACF650 1000002C */  beq     $zero, $zero, .L80ACF704   
/* 001B4 80ACF654 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80ACF658:
/* 001B8 80ACF658 0C2B3ECD */  jal     func_80ACFB34              
/* 001BC 80ACF65C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001C0 80ACF660 10000028 */  beq     $zero, $zero, .L80ACF704   
/* 001C4 80ACF664 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80ACF668:
/* 001C8 80ACF668 C4242908 */  lwc1    $f4, %lo(D_80AD2908)($at)  
/* 001CC 80ACF66C 3C01452F */  lui     $at, 0x452F                ## $at = 452F0000
/* 001D0 80ACF670 44813000 */  mtc1    $at, $f6                   ## $f6 = 2800.00
/* 001D4 80ACF674 3C0144AF */  lui     $at, 0x44AF                ## $at = 44AF0000
/* 001D8 80ACF678 44814000 */  mtc1    $at, $f8                   ## $f8 = 1400.00
/* 001DC 80ACF67C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001E0 80ACF680 E60400F4 */  swc1    $f4, 0x00F4($s0)           ## 000000F4
/* 001E4 80ACF684 E60602DC */  swc1    $f6, 0x02DC($s0)           ## 000002DC
/* 001E8 80ACF688 0C2B3F48 */  jal     func_80ACFD20              
/* 001EC 80ACF68C E60802D8 */  swc1    $f8, 0x02D8($s0)           ## 000002D8
/* 001F0 80ACF690 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 001F4 80ACF694 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 001F8 80ACF698 01C17824 */  and     $t7, $t6, $at              
/* 001FC 80ACF69C 10000018 */  beq     $zero, $zero, .L80ACF700   
/* 00200 80ACF6A0 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
.L80ACF6A4:
/* 00204 80ACF6A4 3C0180AD */  lui     $at, %hi(D_80AD290C)       ## $at = 80AD0000
/* 00208 80ACF6A8 C420290C */  lwc1    $f0, %lo(D_80AD290C)($at)  
/* 0020C 80ACF6AC 3C0180AD */  lui     $at, %hi(D_80AD2910)       ## $at = 80AD0000
/* 00210 80ACF6B0 3C090001 */  lui     $t1, 0x0001                ## $t1 = 00010000
/* 00214 80ACF6B4 E6000058 */  swc1    $f0, 0x0058($s0)           ## 00000058
/* 00218 80ACF6B8 E6000050 */  swc1    $f0, 0x0050($s0)           ## 00000050
/* 0021C 80ACF6BC C42A2910 */  lwc1    $f10, %lo(D_80AD2910)($at) 
/* 00220 80ACF6C0 2419000F */  addiu   $t9, $zero, 0x000F         ## $t9 = 0000000F
/* 00224 80ACF6C4 2408FFFB */  addiu   $t0, $zero, 0xFFFB         ## $t0 = FFFFFFFB
/* 00228 80ACF6C8 3529F824 */  ori     $t1, $t1, 0xF824           ## $t1 = 0001F824
/* 0022C 80ACF6CC 240A0011 */  addiu   $t2, $zero, 0x0011         ## $t2 = 00000011
/* 00230 80ACF6D0 240B0009 */  addiu   $t3, $zero, 0x0009         ## $t3 = 00000009
/* 00234 80ACF6D4 240C0049 */  addiu   $t4, $zero, 0x0049         ## $t4 = 00000049
/* 00238 80ACF6D8 A6180340 */  sh      $t8, 0x0340($s0)           ## 00000340
/* 0023C 80ACF6DC A6190342 */  sh      $t9, 0x0342($s0)           ## 00000342
/* 00240 80ACF6E0 A6080344 */  sh      $t0, 0x0344($s0)           ## 00000344
/* 00244 80ACF6E4 AE090320 */  sw      $t1, 0x0320($s0)           ## 00000320
/* 00248 80ACF6E8 A20A03BC */  sb      $t2, 0x03BC($s0)           ## 000003BC
/* 0024C 80ACF6EC A20B03BD */  sb      $t3, 0x03BD($s0)           ## 000003BD
/* 00250 80ACF6F0 A20C0117 */  sb      $t4, 0x0117($s0)           ## 00000117
/* 00254 80ACF6F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00258 80ACF6F8 0C2B41C8 */  jal     func_80AD0720              
/* 0025C 80ACF6FC E60A0054 */  swc1    $f10, 0x0054($s0)          ## 00000054
.L80ACF700:
/* 00260 80ACF700 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80ACF704:
/* 00264 80ACF704 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 00268 80ACF708 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 0026C 80ACF70C 03E00008 */  jr      $ra                        
/* 00270 80ACF710 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
