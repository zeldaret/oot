glabel func_80ABF28C
/* 0056C 80ABF28C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00570 80ABF290 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00574 80ABF294 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 00578 80ABF298 24030006 */  addiu   $v1, $zero, 0x0006         ## $v1 = 00000006
/* 0057C 80ABF29C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00580 80ABF2A0 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 00584 80ABF2A4 848F015A */  lh      $t7, 0x015A($a0)           ## 0000015A
/* 00588 80ABF2A8 84990152 */  lh      $t9, 0x0152($a0)           ## 00000152
/* 0058C 80ABF2AC 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00590 80ABF2B0 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00594 80ABF2B4 14790005 */  bne     $v1, $t9, .L80ABF2CC       
/* 00598 80ABF2B8 A498015A */  sh      $t8, 0x015A($a0)           ## 0000015A
/* 0059C 80ABF2BC 3C088016 */  lui     $t0, 0x8016                ## $t0 = 80160000
/* 005A0 80ABF2C0 9108F925 */  lbu     $t0, -0x06DB($t0)          ## 8015F925
/* 005A4 80ABF2C4 5100007D */  beql    $t0, $zero, .L80ABF4BC     
/* 005A8 80ABF2C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ABF2CC:
/* 005AC 80ABF2CC 84C50154 */  lh      $a1, 0x0154($a2)           ## 00000154
/* 005B0 80ABF2D0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 005B4 80ABF2D4 04A2000E */  bltzl   $a1, .L80ABF310            
/* 005B8 80ABF2D8 84C50150 */  lh      $a1, 0x0150($a2)           ## 00000150
/* 005BC 80ABF2DC AFA60020 */  sw      $a2, 0x0020($sp)           
/* 005C0 80ABF2E0 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 005C4 80ABF2E4 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 005C8 80ABF2E8 24030006 */  addiu   $v1, $zero, 0x0006         ## $v1 = 00000006
/* 005CC 80ABF2EC 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 005D0 80ABF2F0 10400006 */  beq     $v0, $zero, .L80ABF30C     
/* 005D4 80ABF2F4 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 005D8 80ABF2F8 8CC90004 */  lw      $t1, 0x0004($a2)           ## 00000004
/* 005DC 80ABF2FC 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 005E0 80ABF300 01215024 */  and     $t2, $t1, $at              
/* 005E4 80ABF304 1000006C */  beq     $zero, $zero, .L80ABF4B8   
/* 005E8 80ABF308 ACCA0004 */  sw      $t2, 0x0004($a2)           ## 00000004
.L80ABF30C:
/* 005EC 80ABF30C 84C50150 */  lh      $a1, 0x0150($a2)           ## 00000150
.L80ABF310:
/* 005F0 80ABF310 24040004 */  addiu   $a0, $zero, 0x0004         ## $a0 = 00000004
/* 005F4 80ABF314 3C0B8016 */  lui     $t3, 0x8016                ## $t3 = 80160000
/* 005F8 80ABF318 14850005 */  bne     $a0, $a1, .L80ABF330       
/* 005FC 80ABF31C 00000000 */  nop
/* 00600 80ABF320 956BF53C */  lhu     $t3, -0x0AC4($t3)          ## 8015F53C
/* 00604 80ABF324 316C0800 */  andi    $t4, $t3, 0x0800           ## $t4 = 00000000
/* 00608 80ABF328 55800064 */  bnel    $t4, $zero, .L80ABF4BC     
/* 0060C 80ABF32C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ABF330:
/* 00610 80ABF330 14650004 */  bne     $v1, $a1, .L80ABF344       
/* 00614 80ABF334 3C0D8016 */  lui     $t5, 0x8016                ## $t5 = 80160000
/* 00618 80ABF338 95ADF536 */  lhu     $t5, -0x0ACA($t5)          ## 8015F536
/* 0061C 80ABF33C 31AE2000 */  andi    $t6, $t5, 0x2000           ## $t6 = 00000000
/* 00620 80ABF340 15C0005D */  bne     $t6, $zero, .L80ABF4B8     
.L80ABF344:
/* 00624 80ABF344 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
/* 00628 80ABF348 44812000 */  mtc1    $at, $f4                   ## $f4 = 90.00
/* 0062C 80ABF34C C4CC015C */  lwc1    $f12, 0x015C($a2)          ## 0000015C
/* 00630 80ABF350 C4C20090 */  lwc1    $f2, 0x0090($a2)           ## 00000090
/* 00634 80ABF354 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 00638 80ABF358 460C2180 */  add.s   $f6, $f4, $f12             
/* 0063C 80ABF35C 4606103C */  c.lt.s  $f2, $f6                   
/* 00640 80ABF360 00000000 */  nop
/* 00644 80ABF364 45020055 */  bc1fl   .L80ABF4BC                 
/* 00648 80ABF368 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0064C 80ABF36C C5E80028 */  lwc1    $f8, 0x0028($t7)           ## 00000028
/* 00650 80ABF370 C4CA0028 */  lwc1    $f10, 0x0028($a2)          ## 00000028
/* 00654 80ABF374 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00658 80ABF378 44818000 */  mtc1    $at, $f16                  ## $f16 = 80.00
/* 0065C 80ABF37C 460A4381 */  sub.s   $f14, $f8, $f10            
/* 00660 80ABF380 46007385 */  abs.s   $f14, $f14                 
/* 00664 80ABF384 4610703C */  c.lt.s  $f14, $f16                 
/* 00668 80ABF388 00000000 */  nop
/* 0066C 80ABF38C 4502004B */  bc1fl   .L80ABF4BC                 
/* 00670 80ABF390 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00674 80ABF394 8DF80680 */  lw      $t8, 0x0680($t7)           ## 00000680
/* 00678 80ABF398 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 0067C 80ABF39C 0018C9C0 */  sll     $t9, $t8,  7               
/* 00680 80ABF3A0 07230033 */  bgezl   $t9, .L80ABF470            
/* 00684 80ABF3A4 44819000 */  mtc1    $at, $f18                  ## $f18 = 50.00
/* 00688 80ABF3A8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0068C 80ABF3AC 10A10009 */  beq     $a1, $at, .L80ABF3D4       
/* 00690 80ABF3B0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00694 80ABF3B4 50A1000E */  beql    $a1, $at, .L80ABF3F0       
/* 00698 80ABF3B8 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 0069C 80ABF3BC 50A40012 */  beql    $a1, $a0, .L80ABF408       
/* 006A0 80ABF3C0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 006A4 80ABF3C4 10A30015 */  beq     $a1, $v1, .L80ABF41C       
/* 006A8 80ABF3C8 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 006AC 80ABF3CC 10000018 */  beq     $zero, $zero, .L80ABF430   
/* 006B0 80ABF3D0 3C0480AC */  lui     $a0, %hi(D_80AC0484)       ## $a0 = 80AC0000
.L80ABF3D4:
/* 006B4 80ABF3D4 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 006B8 80ABF3D8 24050024 */  addiu   $a1, $zero, 0x0024         ## $a1 = 00000024
/* 006BC 80ABF3DC 0C042F56 */  jal     func_8010BD58              
/* 006C0 80ABF3E0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 006C4 80ABF3E4 10000018 */  beq     $zero, $zero, .L80ABF448   
/* 006C8 80ABF3E8 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 006CC 80ABF3EC 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
.L80ABF3F0:
/* 006D0 80ABF3F0 24050027 */  addiu   $a1, $zero, 0x0027         ## $a1 = 00000027
/* 006D4 80ABF3F4 0C042F56 */  jal     func_8010BD58              
/* 006D8 80ABF3F8 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 006DC 80ABF3FC 10000012 */  beq     $zero, $zero, .L80ABF448   
/* 006E0 80ABF400 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 006E4 80ABF404 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
.L80ABF408:
/* 006E8 80ABF408 24050026 */  addiu   $a1, $zero, 0x0026         ## $a1 = 00000026
/* 006EC 80ABF40C 0C042F56 */  jal     func_8010BD58              
/* 006F0 80ABF410 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 006F4 80ABF414 1000000C */  beq     $zero, $zero, .L80ABF448   
/* 006F8 80ABF418 8FA60020 */  lw      $a2, 0x0020($sp)           
.L80ABF41C:
/* 006FC 80ABF41C 24050024 */  addiu   $a1, $zero, 0x0024         ## $a1 = 00000024
/* 00700 80ABF420 0C042F56 */  jal     func_8010BD58              
/* 00704 80ABF424 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00708 80ABF428 10000007 */  beq     $zero, $zero, .L80ABF448   
/* 0070C 80ABF42C 8FA60020 */  lw      $a2, 0x0020($sp)           
.L80ABF430:
/* 00710 80ABF430 24840484 */  addiu   $a0, $a0, %lo(D_80AC0484)  ## $a0 = 00000484
/* 00714 80ABF434 0C00084C */  jal     osSyncPrintf
              
/* 00718 80ABF438 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 0071C 80ABF43C 0C00B55C */  jal     Actor_Kill
              
/* 00720 80ABF440 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00724 80ABF444 8FA60020 */  lw      $a2, 0x0020($sp)           
.L80ABF448:
/* 00728 80ABF448 8FA8001C */  lw      $t0, 0x001C($sp)           
/* 0072C 80ABF44C 3C010080 */  lui     $at, 0x0080                ## $at = 00800000
/* 00730 80ABF450 3C0B80AC */  lui     $t3, %hi(func_80ABF4C8)    ## $t3 = 80AC0000
/* 00734 80ABF454 8D090680 */  lw      $t1, 0x0680($t0)           ## 00000680
/* 00738 80ABF458 256BF4C8 */  addiu   $t3, $t3, %lo(func_80ABF4C8) ## $t3 = 80ABF4C8
/* 0073C 80ABF45C 01215025 */  or      $t2, $t1, $at              ## $t2 = 00800000
/* 00740 80ABF460 AD0A0680 */  sw      $t2, 0x0680($t0)           ## 00000680
/* 00744 80ABF464 10000014 */  beq     $zero, $zero, .L80ABF4B8   
/* 00748 80ABF468 ACCB014C */  sw      $t3, 0x014C($a2)           ## 0000014C
/* 0074C 80ABF46C 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.00
.L80ABF470:
/* 00750 80ABF470 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00754 80ABF474 460C9100 */  add.s   $f4, $f18, $f12            
/* 00758 80ABF478 4604103C */  c.lt.s  $f2, $f4                   
/* 0075C 80ABF47C 00000000 */  nop
/* 00760 80ABF480 4502000E */  bc1fl   .L80ABF4BC                 
/* 00764 80ABF484 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00768 80ABF488 44813000 */  mtc1    $at, $f6                   ## $f6 = 40.00
/* 0076C 80ABF48C 00000000 */  nop
/* 00770 80ABF490 4606703C */  c.lt.s  $f14, $f6                  
/* 00774 80ABF494 00000000 */  nop
/* 00778 80ABF498 45020008 */  bc1fl   .L80ABF4BC                 
/* 0077C 80ABF49C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00780 80ABF4A0 A4C0015A */  sh      $zero, 0x015A($a2)         ## 0000015A
/* 00784 80ABF4A4 8FAC001C */  lw      $t4, 0x001C($sp)           
/* 00788 80ABF4A8 3C010080 */  lui     $at, 0x0080                ## $at = 00800000
/* 0078C 80ABF4AC 8D8D0680 */  lw      $t5, 0x0680($t4)           ## 00000680
/* 00790 80ABF4B0 01A17025 */  or      $t6, $t5, $at              ## $t6 = 00800000
/* 00794 80ABF4B4 AD8E0680 */  sw      $t6, 0x0680($t4)           ## 00000680
.L80ABF4B8:
/* 00798 80ABF4B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ABF4BC:
/* 0079C 80ABF4BC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 007A0 80ABF4C0 03E00008 */  jr      $ra                        
/* 007A4 80ABF4C4 00000000 */  nop


