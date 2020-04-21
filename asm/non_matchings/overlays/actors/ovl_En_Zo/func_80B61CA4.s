glabel func_80B61CA4
/* 01A84 80B61CA4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01A88 80B61CA8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01A8C 80B61CAC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01A90 80B61CB0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01A94 80B61CB4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01A98 80B61CB8 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 01A9C 80B61CBC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01AA0 80B61CC0 0C0295B2 */  jal     func_800A56C8              
/* 01AA4 80B61CC4 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 01AA8 80B61CC8 1040000E */  beq     $v0, $zero, .L80B61D04     
/* 01AAC 80B61CCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01AB0 80B61CD0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01AB4 80B61CD4 24052809 */  addiu   $a1, $zero, 0x2809         ## $a1 = 00002809
/* 01AB8 80B61CD8 0C2D83AC */  jal     func_80B60EB0              
/* 01ABC 80B61CDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01AC0 80B61CE0 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 01AC4 80B61CE4 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 01AC8 80B61CE8 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01ACC 80B61CEC 01C17824 */  and     $t7, $t6, $at              
/* 01AD0 80B61CF0 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 01AD4 80B61CF4 44812000 */  mtc1    $at, $f4                   ## $f4 = -4.00
/* 01AD8 80B61CF8 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 01ADC 80B61CFC E6060168 */  swc1    $f6, 0x0168($s0)           ## 00000168
/* 01AE0 80B61D00 E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
.L80B61D04:
/* 01AE4 80B61D04 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 01AE8 80B61D08 C60A0168 */  lwc1    $f10, 0x0168($s0)          ## 00000168
/* 01AEC 80B61D0C 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 01AF0 80B61D10 460A403C */  c.lt.s  $f8, $f10                  
/* 01AF4 80B61D14 00000000 */  nop
/* 01AF8 80B61D18 45030030 */  bc1tl   .L80B61DDC                 
/* 01AFC 80B61D1C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01B00 80B61D20 44818000 */  mtc1    $at, $f16                  ## $f16 = 80.00
/* 01B04 80B61D24 C6120084 */  lwc1    $f18, 0x0084($s0)          ## 00000084
/* 01B08 80B61D28 3C063ECC */  lui     $a2, 0x3ECC                ## $a2 = 3ECC0000
/* 01B0C 80B61D2C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3ECCCCCD
/* 01B10 80B61D30 4612803C */  c.lt.s  $f16, $f18                 
/* 01B14 80B61D34 26040060 */  addiu   $a0, $s0, 0x0060           ## $a0 = 00000060
/* 01B18 80B61D38 3C05BF80 */  lui     $a1, 0xBF80                ## $a1 = BF800000
/* 01B1C 80B61D3C 3C073F19 */  lui     $a3, 0x3F19                ## $a3 = 3F190000
/* 01B20 80B61D40 45010005 */  bc1t    .L80B61D58                 
/* 01B24 80B61D44 00000000 */  nop
/* 01B28 80B61D48 96180088 */  lhu     $t8, 0x0088($s0)           ## 00000088
/* 01B2C 80B61D4C 33190001 */  andi    $t9, $t8, 0x0001           ## $t9 = 00000000
/* 01B30 80B61D50 5320000A */  beql    $t9, $zero, .L80B61D7C     
/* 01B34 80B61D54 C6040648 */  lwc1    $f4, 0x0648($s0)           ## 00000648
.L80B61D58:
/* 01B38 80B61D58 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01B3C 80B61D5C 34E7999A */  ori     $a3, $a3, 0x999A           ## $a3 = 3F19999A
/* 01B40 80B61D60 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 01B44 80B61D64 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 01B48 80B61D68 26040648 */  addiu   $a0, $s0, 0x0648           ## $a0 = 00000648
/* 01B4C 80B61D6C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01B50 80B61D70 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01B54 80B61D74 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 01B58 80B61D78 C6040648 */  lwc1    $f4, 0x0648($s0)           ## 00000648
.L80B61D7C:
/* 01B5C 80B61D7C 3C0580B6 */  lui     $a1, %hi(D_80B624E4)       ## $a1 = 80B60000
/* 01B60 80B61D80 24A524E4 */  addiu   $a1, $a1, %lo(D_80B624E4)  ## $a1 = 80B624E4
/* 01B64 80B61D84 4600218D */  trunc.w.s $f6, $f4                   
/* 01B68 80B61D88 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01B6C 80B61D8C 44093000 */  mfc1    $t1, $f6                   
/* 01B70 80B61D90 00000000 */  nop
/* 01B74 80B61D94 00095400 */  sll     $t2, $t1, 16               
/* 01B78 80B61D98 000A5C03 */  sra     $t3, $t2, 16               
/* 01B7C 80B61D9C 5560000F */  bnel    $t3, $zero, .L80B61DDC     
/* 01B80 80B61DA0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01B84 80B61DA4 0C00D3B0 */  jal     func_80034EC0              
/* 01B88 80B61DA8 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 01B8C 80B61DAC 8E0D0008 */  lw      $t5, 0x0008($s0)           ## 00000008
/* 01B90 80B61DB0 8E0C000C */  lw      $t4, 0x000C($s0)           ## 0000000C
/* 01B94 80B61DB4 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 01B98 80B61DB8 AE0D0024 */  sw      $t5, 0x0024($s0)           ## 00000024
/* 01B9C 80B61DBC 8E0D0010 */  lw      $t5, 0x0010($s0)           ## 00000010
/* 01BA0 80B61DC0 3C0E80B6 */  lui     $t6, %hi(func_80B619D4)    ## $t6 = 80B60000
/* 01BA4 80B61DC4 25CE19D4 */  addiu   $t6, $t6, %lo(func_80B619D4) ## $t6 = 80B619D4
/* 01BA8 80B61DC8 AE0E0190 */  sw      $t6, 0x0190($s0)           ## 00000190
/* 01BAC 80B61DCC AE0C0028 */  sw      $t4, 0x0028($s0)           ## 00000028
/* 01BB0 80B61DD0 E6080648 */  swc1    $f8, 0x0648($s0)           ## 00000648
/* 01BB4 80B61DD4 AE0D002C */  sw      $t5, 0x002C($s0)           ## 0000002C
/* 01BB8 80B61DD8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B61DDC:
/* 01BBC 80B61DDC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01BC0 80B61DE0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01BC4 80B61DE4 03E00008 */  jr      $ra                        
/* 01BC8 80B61DE8 00000000 */  nop
