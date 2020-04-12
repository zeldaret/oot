.late_rodata
glabel D_8090DBB0
    .float 5000.0

glabel D_8090DBB4
    .float 3000.0

.text
glabel func_808FFBBC
/* 02C7C 808FFBBC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02C80 808FFBC0 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 02C84 808FFBC4 30C600FF */  andi    $a2, $a2, 0x00FF           ## $a2 = 00000000
/* 02C88 808FFBC8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02C8C 808FFBCC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02C90 808FFBD0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02C94 808FFBD4 14C00004 */  bne     $a2, $zero, .L808FFBE8     
/* 02C98 808FFBD8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02C9C 808FFBDC 908E0313 */  lbu     $t6, 0x0313($a0)           ## 00000313
/* 02CA0 808FFBE0 51C00021 */  beql    $t6, $zero, .L808FFC68     
/* 02CA4 808FFBE4 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
.L808FFBE8:
/* 02CA8 808FFBE8 C6040320 */  lwc1    $f4, 0x0320($s0)           ## 00000320
/* 02CAC 808FFBEC 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 02CB0 808FFBF0 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 02CB4 808FFBF4 4600218D */  trunc.w.s $f6, $f4                   
/* 02CB8 808FFBF8 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 02CBC 808FFBFC 44073000 */  mfc1    $a3, $f6                   
/* 02CC0 808FFC00 00000000 */  nop
/* 02CC4 808FFC04 00073C00 */  sll     $a3, $a3, 16               
/* 02CC8 808FFC08 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 02CCC 808FFC0C 00073C03 */  sra     $a3, $a3, 16               
/* 02CD0 808FFC10 92180334 */  lbu     $t8, 0x0334($s0)           ## 00000334
/* 02CD4 808FFC14 3C018091 */  lui     $at, %hi(D_8090DBB4)       ## $at = 80910000
/* 02CD8 808FFC18 26040320 */  addiu   $a0, $s0, 0x0320           ## $a0 = 00000320
/* 02CDC 808FFC1C 13000007 */  beq     $t8, $zero, .L808FFC3C     
/* 02CE0 808FFC20 00000000 */  nop
/* 02CE4 808FFC24 3C018091 */  lui     $at, %hi(D_8090DBB0)       ## $at = 80910000
/* 02CE8 808FFC28 C420DBB0 */  lwc1    $f0, %lo(D_8090DBB0)($at)  
/* 02CEC 808FFC2C 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 02CF0 808FFC30 44811000 */  mtc1    $at, $f2                   ## $f2 = 200.00
/* 02CF4 808FFC34 10000006 */  beq     $zero, $zero, .L808FFC50   
/* 02CF8 808FFC38 44050000 */  mfc1    $a1, $f0                   
.L808FFC3C:
/* 02CFC 808FFC3C C420DBB4 */  lwc1    $f0, %lo(D_8090DBB4)($at)  
/* 02D00 808FFC40 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 02D04 808FFC44 44811000 */  mtc1    $at, $f2                   ## $f2 = 30.00
/* 02D08 808FFC48 00000000 */  nop
/* 02D0C 808FFC4C 44050000 */  mfc1    $a1, $f0                   
.L808FFC50:
/* 02D10 808FFC50 44071000 */  mfc1    $a3, $f2                   
/* 02D14 808FFC54 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02D18 808FFC58 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02D1C 808FFC5C 10000005 */  beq     $zero, $zero, .L808FFC74   
/* 02D20 808FFC60 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02D24 808FFC64 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
.L808FFC68:
/* 02D28 808FFC68 00000000 */  nop
/* 02D2C 808FFC6C E6080320 */  swc1    $f8, 0x0320($s0)           ## 00000320
/* 02D30 808FFC70 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808FFC74:
/* 02D34 808FFC74 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02D38 808FFC78 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02D3C 808FFC7C 03E00008 */  jr      $ra                        
/* 02D40 808FFC80 00000000 */  nop
