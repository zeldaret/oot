.late_rodata
glabel D_808ABE14
    .float -550.0

.text
glabel BgSpot01Idomizu_Init
/* 00000 808ABAE0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 808ABAE4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00008 808ABAE8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0000C 808ABAEC 3C05808B */  lui     $a1, %hi(D_808ABDB0)       ## $a1 = 808B0000
/* 00010 808ABAF0 24A5BDB0 */  addiu   $a1, $a1, %lo(D_808ABDB0)  ## $a1 = 808ABDB0
/* 00014 808ABAF4 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00018 808ABAF8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0001C 808ABAFC 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00020 808ABB00 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00024 808ABB04 944E0EE0 */  lhu     $t6, 0x0EE0($v0)           ## 8015F540
/* 00028 808ABB08 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0002C 808ABB0C 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 00030 808ABB10 31CF0080 */  andi    $t7, $t6, 0x0080           ## $t7 = 00000000
/* 00034 808ABB14 15E00008 */  bne     $t7, $zero, .L808ABB38     
/* 00038 808ABB18 3C19808B */  lui     $t9, %hi(func_808ABB84)    ## $t9 = 808B0000
/* 0003C 808ABB1C 8C580004 */  lw      $t8, 0x0004($v0)           ## 8015E664
/* 00040 808ABB20 24020011 */  addiu   $v0, $zero, 0x0011         ## $v0 = 00000011
/* 00044 808ABB24 13000003 */  beq     $t8, $zero, .L808ABB34     
/* 00048 808ABB28 00000000 */  nop
/* 0004C 808ABB2C 10000001 */  beq     $zero, $zero, .L808ABB34   
/* 00050 808ABB30 24020005 */  addiu   $v0, $zero, 0x0005         ## $v0 = 00000005
.L808ABB34:
/* 00054 808ABB34 14410004 */  bne     $v0, $at, .L808ABB48       
.L808ABB38:
/* 00058 808ABB38 3C01808B */  lui     $at, %hi(D_808ABE14)       ## $at = 808B0000
/* 0005C 808ABB3C C424BE14 */  lwc1    $f4, %lo(D_808ABE14)($at)  
/* 00060 808ABB40 10000005 */  beq     $zero, $zero, .L808ABB58   
/* 00064 808ABB44 E4840150 */  swc1    $f4, 0x0150($a0)           ## 00000150
.L808ABB48:
/* 00068 808ABB48 3C014250 */  lui     $at, 0x4250                ## $at = 42500000
/* 0006C 808ABB4C 44813000 */  mtc1    $at, $f6                   ## $f6 = 52.00
/* 00070 808ABB50 00000000 */  nop
/* 00074 808ABB54 E4860150 */  swc1    $f6, 0x0150($a0)           ## 00000150
.L808ABB58:
/* 00078 808ABB58 C4880150 */  lwc1    $f8, 0x0150($a0)           ## 00000150
/* 0007C 808ABB5C 2739BB84 */  addiu   $t9, $t9, %lo(func_808ABB84) ## $t9 = 808ABB84
/* 00080 808ABB60 AC99014C */  sw      $t9, 0x014C($a0)           ## 0000014C
/* 00084 808ABB64 E4880028 */  swc1    $f8, 0x0028($a0)           ## 00000028
/* 00088 808ABB68 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0008C 808ABB6C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00090 808ABB70 03E00008 */  jr      $ra                        
/* 00094 808ABB74 00000000 */  nop
