glabel func_80A64F14
/* 09C24 80A64F14 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 09C28 80A64F18 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 09C2C 80A64F1C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 09C30 80A64F20 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 09C34 80A64F24 00C08025 */  or      $s0, $a2, $zero            ## $s0 = 00000000
/* 09C38 80A64F28 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 09C3C 80A64F2C 0C00B6E3 */  jal     func_8002DB8C              
/* 09C40 80A64F30 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 09C44 80A64F34 3C014296 */  lui     $at, 0x4296                ## $at = 42960000
/* 09C48 80A64F38 44812000 */  mtc1    $at, $f4                   ## $f4 = 75.00
/* 09C4C 80A64F3C 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 09C50 80A64F40 4600203C */  c.lt.s  $f4, $f0                   
/* 09C54 80A64F44 00000000 */  nop
/* 09C58 80A64F48 45020004 */  bc1fl   .L80A64F5C                 
/* 09C5C 80A64F4C C4A60028 */  lwc1    $f6, 0x0028($a1)           ## 00000028
/* 09C60 80A64F50 1000002B */  beq     $zero, $zero, .L80A65000   
/* 09C64 80A64F54 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 09C68 80A64F58 C4A60028 */  lwc1    $f6, 0x0028($a1)           ## 00000028
.L80A64F5C:
/* 09C6C 80A64F5C C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 09C70 80A64F60 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 09C74 80A64F64 44815000 */  mtc1    $at, $f10                  ## $f10 = 30.00
/* 09C78 80A64F68 46083001 */  sub.s   $f0, $f6, $f8              
/* 09C7C 80A64F6C 46000005 */  abs.s   $f0, $f0                   
/* 09C80 80A64F70 4600503C */  c.lt.s  $f10, $f0                  
/* 09C84 80A64F74 00000000 */  nop
/* 09C88 80A64F78 45000003 */  bc1f    .L80A64F88                 
/* 09C8C 80A64F7C 00000000 */  nop
/* 09C90 80A64F80 1000001F */  beq     $zero, $zero, .L80A65000   
/* 09C94 80A64F84 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A64F88:
/* 09C98 80A64F88 0C00B69E */  jal     func_8002DA78              
/* 09C9C 80A64F8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 09CA0 80A64F90 860E0032 */  lh      $t6, 0x0032($s0)           ## 00000032
/* 09CA4 80A64F94 004E2023 */  subu    $a0, $v0, $t6              
/* 09CA8 80A64F98 00042400 */  sll     $a0, $a0, 16               
/* 09CAC 80A64F9C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 09CB0 80A64FA0 00042403 */  sra     $a0, $a0, 16               
/* 09CB4 80A64FA4 3C0180A6 */  lui     $at, %hi(D_80A669C0)       ## $at = 80A60000
/* 09CB8 80A64FA8 C43069C0 */  lwc1    $f16, %lo(D_80A669C0)($at) 
/* 09CBC 80A64FAC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 09CC0 80A64FB0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 09CC4 80A64FB4 4610003C */  c.lt.s  $f0, $f16                  
/* 09CC8 80A64FB8 00000000 */  nop
/* 09CCC 80A64FBC 45000003 */  bc1f    .L80A64FCC                 
/* 09CD0 80A64FC0 00000000 */  nop
/* 09CD4 80A64FC4 1000000E */  beq     $zero, $zero, .L80A65000   
/* 09CD8 80A64FC8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A64FCC:
/* 09CDC 80A64FCC 0C2993B5 */  jal     func_80A64ED4              
/* 09CE0 80A64FD0 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 09CE4 80A64FD4 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 09CE8 80A64FD8 54410004 */  bnel    $v0, $at, .L80A64FEC       
/* 09CEC 80A64FDC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 09CF0 80A64FE0 10000007 */  beq     $zero, $zero, .L80A65000   
/* 09CF4 80A64FE4 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
/* 09CF8 80A64FE8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L80A64FEC:
/* 09CFC 80A64FEC 54410004 */  bnel    $v0, $at, .L80A65000       
/* 09D00 80A64FF0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 09D04 80A64FF4 10000002 */  beq     $zero, $zero, .L80A65000   
/* 09D08 80A64FF8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 09D0C 80A64FFC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A65000:
/* 09D10 80A65000 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 09D14 80A65004 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 09D18 80A65008 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 09D1C 80A6500C 03E00008 */  jr      $ra                        
/* 09D20 80A65010 00000000 */  nop


