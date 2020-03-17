glabel func_80AC47DC
/* 01B3C 80AC47DC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01B40 80AC47E0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01B44 80AC47E4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01B48 80AC47E8 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 01B4C 80AC47EC 90AE0252 */  lbu     $t6, 0x0252($a1)           ## 00000252
/* 01B50 80AC47F0 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01B54 80AC47F4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01B58 80AC47F8 000E7880 */  sll     $t7, $t6,  2               
/* 01B5C 80AC47FC 00AFC021 */  addu    $t8, $a1, $t7              
/* 01B60 80AC4800 8F190200 */  lw      $t9, 0x0200($t8)           ## 00000200
/* 01B64 80AC4804 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 01B68 80AC4808 0C2B0E21 */  jal     func_80AC3884              
/* 01B6C 80AC480C AFB90024 */  sw      $t9, 0x0024($sp)           
/* 01B70 80AC4810 10400003 */  beq     $v0, $zero, .L80AC4820     
/* 01B74 80AC4814 00000000 */  nop
/* 01B78 80AC4818 10000052 */  beq     $zero, $zero, .L80AC4964   
/* 01B7C 80AC481C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AC4820:
/* 01B80 80AC4820 0C041AF2 */  jal     func_80106BC8              
/* 01B84 80AC4824 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01B88 80AC4828 5040004E */  beql    $v0, $zero, .L80AC4964     
/* 01B8C 80AC482C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 01B90 80AC4830 8FA20024 */  lw      $v0, 0x0024($sp)           
/* 01B94 80AC4834 24010026 */  addiu   $at, $zero, 0x0026         ## $at = 00000026
/* 01B98 80AC4838 8448001C */  lh      $t0, 0x001C($v0)           ## 0000001C
/* 01B9C 80AC483C 11010044 */  beq     $t0, $at, .L80AC4950       
/* 01BA0 80AC4840 00000000 */  nop
/* 01BA4 80AC4844 844901A8 */  lh      $t1, 0x01A8($v0)           ## 000001A8
/* 01BA8 80AC4848 15200041 */  bne     $t1, $zero, .L80AC4950     
/* 01BAC 80AC484C 00000000 */  nop
/* 01BB0 80AC4850 920B0252 */  lbu     $t3, 0x0252($s0)           ## 00000252
/* 01BB4 80AC4854 860A01FC */  lh      $t2, 0x01FC($s0)           ## 000001FC
/* 01BB8 80AC4858 000B6080 */  sll     $t4, $t3,  2               
/* 01BBC 80AC485C 020C6821 */  addu    $t5, $s0, $t4              
/* 01BC0 80AC4860 A60A01FE */  sh      $t2, 0x01FE($s0)           ## 000001FE
/* 01BC4 80AC4864 8DAE0200 */  lw      $t6, 0x0200($t5)           ## 00000200
/* 01BC8 80AC4868 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01BCC 80AC486C 0C042DC8 */  jal     func_8010B720              
/* 01BD0 80AC4870 95C501A0 */  lhu     $a1, 0x01A0($t6)           ## 000001A0
/* 01BD4 80AC4874 AE000288 */  sw      $zero, 0x0288($s0)         ## 00000288
/* 01BD8 80AC4878 AE0002C0 */  sw      $zero, 0x02C0($s0)         ## 000002C0
/* 01BDC 80AC487C 8FAF0024 */  lw      $t7, 0x0024($sp)           
/* 01BE0 80AC4880 85F8001C */  lh      $t8, 0x001C($t7)           ## 0000001C
/* 01BE4 80AC4884 2719FFFD */  addiu   $t9, $t8, 0xFFFD           ## $t9 = FFFFFFFD
/* 01BE8 80AC4888 2F21002D */  sltiu   $at, $t9, 0x002D           
/* 01BEC 80AC488C 10200029 */  beq     $at, $zero, .L80AC4934     
/* 01BF0 80AC4890 0019C880 */  sll     $t9, $t9,  2               
/* 01BF4 80AC4894 3C0180AD */  lui     $at, %hi(jtbl_80AC9518)       ## $at = 80AD0000
/* 01BF8 80AC4898 00390821 */  addu    $at, $at, $t9              
/* 01BFC 80AC489C 8C399518 */  lw      $t9, %lo(jtbl_80AC9518)($at)  
/* 01C00 80AC48A0 03200008 */  jr      $t9                        
/* 01C04 80AC48A4 00000000 */  nop
glabel L80AC48A8
/* 01C08 80AC48A8 0C01E221 */  jal     func_80078884              
/* 01C0C 80AC48AC 24044808 */  addiu   $a0, $zero, 0x4808         ## $a0 = 00004808
/* 01C10 80AC48B0 24080018 */  addiu   $t0, $zero, 0x0018         ## $t0 = 00000018
/* 01C14 80AC48B4 A2000251 */  sb      $zero, 0x0251($s0)         ## 00000251
/* 01C18 80AC48B8 A60801FC */  sh      $t0, 0x01FC($s0)           ## 000001FC
/* 01C1C 80AC48BC 10000029 */  beq     $zero, $zero, .L80AC4964   
/* 01C20 80AC48C0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
glabel L80AC48C4
/* 01C24 80AC48C4 0C01E221 */  jal     func_80078884              
/* 01C28 80AC48C8 24044808 */  addiu   $a0, $zero, 0x4808         ## $a0 = 00004808
/* 01C2C 80AC48CC 2409000A */  addiu   $t1, $zero, 0x000A         ## $t1 = 0000000A
/* 01C30 80AC48D0 A2000251 */  sb      $zero, 0x0251($s0)         ## 00000251
/* 01C34 80AC48D4 A60901FC */  sh      $t1, 0x01FC($s0)           ## 000001FC
/* 01C38 80AC48D8 10000022 */  beq     $zero, $zero, .L80AC4964   
/* 01C3C 80AC48DC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
glabel L80AC48E0
/* 01C40 80AC48E0 0C01E221 */  jal     func_80078884              
/* 01C44 80AC48E4 24044808 */  addiu   $a0, $zero, 0x4808         ## $a0 = 00004808
/* 01C48 80AC48E8 240A000B */  addiu   $t2, $zero, 0x000B         ## $t2 = 0000000B
/* 01C4C 80AC48EC A2000251 */  sb      $zero, 0x0251($s0)         ## 00000251
/* 01C50 80AC48F0 A60A01FC */  sh      $t2, 0x01FC($s0)           ## 000001FC
/* 01C54 80AC48F4 1000001B */  beq     $zero, $zero, .L80AC4964   
/* 01C58 80AC48F8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
glabel L80AC48FC
/* 01C5C 80AC48FC 0C01E221 */  jal     func_80078884              
/* 01C60 80AC4900 24044806 */  addiu   $a0, $zero, 0x4806         ## $a0 = 00004806
/* 01C64 80AC4904 240B000C */  addiu   $t3, $zero, 0x000C         ## $t3 = 0000000C
/* 01C68 80AC4908 A2000251 */  sb      $zero, 0x0251($s0)         ## 00000251
/* 01C6C 80AC490C A60B01FC */  sh      $t3, 0x01FC($s0)           ## 000001FC
/* 01C70 80AC4910 10000014 */  beq     $zero, $zero, .L80AC4964   
/* 01C74 80AC4914 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
glabel L80AC4918
/* 01C78 80AC4918 0C01E221 */  jal     func_80078884              
/* 01C7C 80AC491C 24044808 */  addiu   $a0, $zero, 0x4808         ## $a0 = 00004808
/* 01C80 80AC4920 240C000D */  addiu   $t4, $zero, 0x000D         ## $t4 = 0000000D
/* 01C84 80AC4924 A2000251 */  sb      $zero, 0x0251($s0)         ## 00000251
/* 01C88 80AC4928 A60C01FC */  sh      $t4, 0x01FC($s0)           ## 000001FC
/* 01C8C 80AC492C 1000000D */  beq     $zero, $zero, .L80AC4964   
/* 01C90 80AC4930 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
glabel L80AC4934
.L80AC4934:
/* 01C94 80AC4934 0C01E221 */  jal     func_80078884              
/* 01C98 80AC4938 24044808 */  addiu   $a0, $zero, 0x4808         ## $a0 = 00004808
/* 01C9C 80AC493C 240D0009 */  addiu   $t5, $zero, 0x0009         ## $t5 = 00000009
/* 01CA0 80AC4940 A2000251 */  sb      $zero, 0x0251($s0)         ## 00000251
/* 01CA4 80AC4944 A60D01FC */  sh      $t5, 0x01FC($s0)           ## 000001FC
/* 01CA8 80AC4948 10000006 */  beq     $zero, $zero, .L80AC4964   
/* 01CAC 80AC494C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AC4950:
/* 01CB0 80AC4950 0C01E221 */  jal     func_80078884              
/* 01CB4 80AC4954 24044806 */  addiu   $a0, $zero, 0x4806         ## $a0 = 00004806
/* 01CB8 80AC4958 10000002 */  beq     $zero, $zero, .L80AC4964   
/* 01CBC 80AC495C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 01CC0 80AC4960 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AC4964:
/* 01CC4 80AC4964 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01CC8 80AC4968 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01CCC 80AC496C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01CD0 80AC4970 03E00008 */  jr      $ra                        
/* 01CD4 80AC4974 00000000 */  nop


