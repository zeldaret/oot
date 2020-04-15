.late_rodata
glabel D_80A4FE98
    .float 0.8

glabel D_80A4FE9C
 .word 0x3BE56042
glabel D_80A4FEA0
    .float 0.001

.text
glabel func_80A4E910
/* 005F0 80A4E910 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 005F4 80A4E914 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 005F8 80A4E918 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 005FC 80A4E91C AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00600 80A4E920 9082019F */  lbu     $v0, 0x019F($a0)           ## 0000019F
/* 00604 80A4E924 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00608 80A4E928 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0060C 80A4E92C 1440000C */  bne     $v0, $zero, .L80A4E960     
/* 00610 80A4E930 00000000 */  nop
/* 00614 80A4E934 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00618 80A4E938 24053831 */  addiu   $a1, $zero, 0x3831         ## $a1 = 00003831
/* 0061C 80A4E93C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00620 80A4E940 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 00624 80A4E944 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00628 80A4E948 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0062C 80A4E94C A6000200 */  sh      $zero, 0x0200($s0)         ## 00000200
/* 00630 80A4E950 A20E019F */  sb      $t6, 0x019F($s0)           ## 0000019F
/* 00634 80A4E954 E60401E8 */  swc1    $f4, 0x01E8($s0)           ## 000001E8
/* 00638 80A4E958 10000026 */  beq     $zero, $zero, .L80A4E9F4   
/* 0063C 80A4E95C E60601EC */  swc1    $f6, 0x01EC($s0)           ## 000001EC
.L80A4E960:
/* 00640 80A4E960 14410024 */  bne     $v0, $at, .L80A4E9F4       
/* 00644 80A4E964 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00648 80A4E968 3C0180A5 */  lui     $at, %hi(D_80A4FE98)       ## $at = 80A50000
/* 0064C 80A4E96C C428FE98 */  lwc1    $f8, %lo(D_80A4FE98)($at)  
/* 00650 80A4E970 3C0180A5 */  lui     $at, %hi(D_80A4FE9C)       ## $at = 80A50000
/* 00654 80A4E974 C42AFE9C */  lwc1    $f10, %lo(D_80A4FE9C)($at) 
/* 00658 80A4E978 3C0180A5 */  lui     $at, %hi(D_80A4FEA0)       ## $at = 80A50000
/* 0065C 80A4E97C C430FEA0 */  lwc1    $f16, %lo(D_80A4FEA0)($at) 
/* 00660 80A4E980 260F0200 */  addiu   $t7, $s0, 0x0200           ## $t7 = 00000200
/* 00664 80A4E984 24180007 */  addiu   $t8, $zero, 0x0007         ## $t8 = 00000007
/* 00668 80A4E988 AFB80020 */  sw      $t8, 0x0020($sp)           
/* 0066C 80A4E98C AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00670 80A4E990 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 00674 80A4E994 260601E8 */  addiu   $a2, $s0, 0x01E8           ## $a2 = 000001E8
/* 00678 80A4E998 260701EC */  addiu   $a3, $s0, 0x01EC           ## $a3 = 000001EC
/* 0067C 80A4E99C AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00680 80A4E9A0 E7A80014 */  swc1    $f8, 0x0014($sp)           
/* 00684 80A4E9A4 E7AA0018 */  swc1    $f10, 0x0018($sp)          
/* 00688 80A4E9A8 0C2939D5 */  jal     func_80A4E754              
/* 0068C 80A4E9AC E7B0001C */  swc1    $f16, 0x001C($sp)          
/* 00690 80A4E9B0 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 00694 80A4E9B4 00000000 */  nop
/* 00698 80A4E9B8 46120032 */  c.eq.s  $f0, $f18                  
/* 0069C 80A4E9BC 00000000 */  nop
/* 006A0 80A4E9C0 4502000D */  bc1fl   .L80A4E9F8                 
/* 006A4 80A4E9C4 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 006A8 80A4E9C8 0C02FF21 */  jal     func_800BFC84              
/* 006AC 80A4E9CC 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 006B0 80A4E9D0 14400004 */  bne     $v0, $zero, .L80A4E9E4     
/* 006B4 80A4E9D4 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 006B8 80A4E9D8 240571B1 */  addiu   $a1, $zero, 0x71B1         ## $a1 = 000071B1
/* 006BC 80A4E9DC 0C042DA0 */  jal     func_8010B680              
/* 006C0 80A4E9E0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
.L80A4E9E4:
/* 006C4 80A4E9E4 3C1980A5 */  lui     $t9, %hi(func_80A4F734)    ## $t9 = 80A50000
/* 006C8 80A4E9E8 2739F734 */  addiu   $t9, $t9, %lo(func_80A4F734) ## $t9 = 80A4F734
/* 006CC 80A4E9EC A200019C */  sb      $zero, 0x019C($s0)         ## 0000019C
/* 006D0 80A4E9F0 AE190198 */  sw      $t9, 0x0198($s0)           ## 00000198
.L80A4E9F4:
/* 006D4 80A4E9F4 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80A4E9F8:
/* 006D8 80A4E9F8 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 006DC 80A4E9FC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 006E0 80A4EA00 03E00008 */  jr      $ra                        
/* 006E4 80A4EA04 00000000 */  nop
