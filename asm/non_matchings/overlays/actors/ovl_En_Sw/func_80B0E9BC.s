glabel func_80B0E9BC
/* 02C0C 80B0E9BC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 02C10 80B0E9C0 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 02C14 80B0E9C4 8FAE0034 */  lw      $t6, 0x0034($sp)           
/* 02C18 80B0E9C8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02C1C 80B0E9CC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 02C20 80B0E9D0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02C24 80B0E9D4 3C0540C0 */  lui     $a1, 0x40C0                ## $a1 = 40C00000
/* 02C28 80B0E9D8 240603E8 */  addiu   $a2, $zero, 0x03E8         ## $a2 = 000003E8
/* 02C2C 80B0E9DC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02C30 80B0E9E0 0C2C390C */  jal     func_80B0E430              
/* 02C34 80B0E9E4 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 02C38 80B0E9E8 1040001A */  beq     $v0, $zero, .L80B0EA54     
/* 02C3C 80B0E9EC 26020448 */  addiu   $v0, $s0, 0x0448           ## $v0 = 00000448
/* 02C40 80B0E9F0 8C580000 */  lw      $t8, 0x0000($v0)           ## 00000448
/* 02C44 80B0E9F4 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 02C48 80B0E9F8 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
/* 02C4C 80B0E9FC AFB80004 */  sw      $t8, 0x0004($sp)           
/* 02C50 80B0EA00 8C460004 */  lw      $a2, 0x0004($v0)           ## 0000044C
/* 02C54 80B0EA04 8FA50004 */  lw      $a1, 0x0004($sp)           
/* 02C58 80B0EA08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02C5C 80B0EA0C AFA60008 */  sw      $a2, 0x0008($sp)           
/* 02C60 80B0EA10 8C470008 */  lw      $a3, 0x0008($v0)           ## 00000450
/* 02C64 80B0EA14 AFA20028 */  sw      $v0, 0x0028($sp)           
/* 02C68 80B0EA18 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 02C6C 80B0EA1C 0C2C38C5 */  jal     func_80B0E314              
/* 02C70 80B0EA20 AFA7000C */  sw      $a3, 0x000C($sp)           
/* 02C74 80B0EA24 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 02C78 80B0EA28 0C01DFE4 */  jal     Math_Vec3f_DistXYZ
              
/* 02C7C 80B0EA2C 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 02C80 80B0EA30 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 02C84 80B0EA34 44813000 */  mtc1    $at, $f6                   ## $f6 = 4.00
/* 02C88 80B0EA38 3C1980B1 */  lui     $t9, %hi(func_80B0E5E0)    ## $t9 = 80B10000
/* 02C8C 80B0EA3C 2739E5E0 */  addiu   $t9, $t9, %lo(func_80B0E5E0) ## $t9 = 80B0E5E0
/* 02C90 80B0EA40 4600303C */  c.lt.s  $f6, $f0                   
/* 02C94 80B0EA44 00000000 */  nop
/* 02C98 80B0EA48 45030003 */  bc1tl   .L80B0EA58                 
/* 02C9C 80B0EA4C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02CA0 80B0EA50 AE190190 */  sw      $t9, 0x0190($s0)           ## 00000190
.L80B0EA54:
/* 02CA4 80B0EA54 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B0EA58:
/* 02CA8 80B0EA58 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02CAC 80B0EA5C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 02CB0 80B0EA60 03E00008 */  jr      $ra                        
/* 02CB4 80B0EA64 00000000 */  nop


