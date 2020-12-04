.rdata
glabel D_809151F0
    .asciz "VOISE               2  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n"
    .balign 4

glabel D_8091522C
    .asciz "VOISE               2  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n"
    .balign 4

.text
glabel func_809120BC
/* 01A7C 809120BC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01A80 809120C0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01A84 809120C4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01A88 809120C8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01A8C 809120CC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01A90 809120D0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01A94 809120D4 0C02927F */  jal     SkelAnime_Update
              
/* 01A98 809120D8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01A9C 809120DC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01AA0 809120E0 0C0295B2 */  jal     SkelAnime_StopAtFrame              
/* 01AA4 809120E4 3C0540A0 */  lui     $a1, 0x40A0                ## $a1 = 40A00000
/* 01AA8 809120E8 10400009 */  beq     $v0, $zero, .L80912110     
/* 01AAC 809120EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01AB0 809120F0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01AB4 809120F4 240538B2 */  addiu   $a1, $zero, 0x38B2         ## $a1 = 000038B2
/* 01AB8 809120F8 3C048091 */  lui     $a0, %hi(D_809151F0)       ## $a0 = 80910000
/* 01ABC 809120FC 0C00084C */  jal     osSyncPrintf
              
/* 01AC0 80912100 248451F0 */  addiu   $a0, $a0, %lo(D_809151F0)  ## $a0 = 809151F0
/* 01AC4 80912104 3C048091 */  lui     $a0, %hi(D_8091522C)       ## $a0 = 80910000
/* 01AC8 80912108 0C00084C */  jal     osSyncPrintf
              
/* 01ACC 8091210C 2484522C */  addiu   $a0, $a0, %lo(D_8091522C)  ## $a0 = 8091522C
.L80912110:
/* 01AD0 80912110 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01AD4 80912114 0C0295B2 */  jal     SkelAnime_StopAtFrame              
/* 01AD8 80912118 8E0501D0 */  lw      $a1, 0x01D0($s0)           ## 000001D0
/* 01ADC 8091211C 10400003 */  beq     $v0, $zero, .L8091212C     
/* 01AE0 80912120 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01AE4 80912124 0C24453A */  jal     func_809114E8              
/* 01AE8 80912128 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
.L8091212C:
/* 01AEC 8091212C C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 01AF0 80912130 C606005C */  lwc1    $f6, 0x005C($s0)           ## 0000005C
/* 01AF4 80912134 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 01AF8 80912138 C6100064 */  lwc1    $f16, 0x0064($s0)          ## 00000064
/* 01AFC 8091213C 46062200 */  add.s   $f8, $f4, $f6              
/* 01B00 80912140 2604005C */  addiu   $a0, $s0, 0x005C           ## $a0 = 0000005C
/* 01B04 80912144 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 01B08 80912148 46105480 */  add.s   $f18, $f10, $f16           
/* 01B0C 8091214C E6080024 */  swc1    $f8, 0x0024($s0)           ## 00000024
/* 01B10 80912150 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 01B14 80912154 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 01B18 80912158 E612002C */  swc1    $f18, 0x002C($s0)          ## 0000002C
/* 01B1C 8091215C 26040064 */  addiu   $a0, $s0, 0x0064           ## $a0 = 00000064
/* 01B20 80912160 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 01B24 80912164 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 01B28 80912168 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 01B2C 8091216C 86040194 */  lh      $a0, 0x0194($s0)           ## 00000194
/* 01B30 80912170 00800821 */  addu    $at, $a0, $zero            
/* 01B34 80912174 00042080 */  sll     $a0, $a0,  2               
/* 01B38 80912178 00812023 */  subu    $a0, $a0, $at              
/* 01B3C 8091217C 00042100 */  sll     $a0, $a0,  4               
/* 01B40 80912180 00812023 */  subu    $a0, $a0, $at              
/* 01B44 80912184 000420C0 */  sll     $a0, $a0,  3               
/* 01B48 80912188 00812023 */  subu    $a0, $a0, $at              
/* 01B4C 8091218C 00042080 */  sll     $a0, $a0,  2               
/* 01B50 80912190 00042400 */  sll     $a0, $a0, 16               
/* 01B54 80912194 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01B58 80912198 00042403 */  sra     $a0, $a0, 16               
/* 01B5C 8091219C 46000180 */  add.s   $f6, $f0, $f0              
/* 01B60 809121A0 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 01B64 809121A4 920E01CA */  lbu     $t6, 0x01CA($s0)           ## 000001CA
/* 01B68 809121A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B6C 809121AC 46062200 */  add.s   $f8, $f4, $f6              
/* 01B70 809121B0 11C00006 */  beq     $t6, $zero, .L809121CC     
/* 01B74 809121B4 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 01B78 809121B8 A20001CA */  sb      $zero, 0x01CA($s0)         ## 000001CA
/* 01B7C 809121BC 0C244808 */  jal     func_80912020              
/* 01B80 809121C0 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01B84 809121C4 240F0050 */  addiu   $t7, $zero, 0x0050         ## $t7 = 00000050
/* 01B88 809121C8 A60F01BC */  sh      $t7, 0x01BC($s0)           ## 000001BC
.L809121CC:
/* 01B8C 809121CC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01B90 809121D0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01B94 809121D4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01B98 809121D8 03E00008 */  jr      $ra                        
/* 01B9C 809121DC 00000000 */  nop
