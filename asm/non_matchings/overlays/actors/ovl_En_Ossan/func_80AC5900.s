.rdata
glabel D_80AC9274
    .asciz "%s[%d]:\x1b[32mズーム中！！\x1b[m\n"
    .balign 4

glabel D_80AC9294
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC92A4
    .asciz "店主の依頼 ( %d )\n"
    .balign 4

.text
glabel func_80AC5900
/* 02C60 80AC5900 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02C64 80AC5904 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02C68 80AC5908 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 02C6C 80AC590C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 02C70 80AC5910 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02C74 80AC5914 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 02C78 80AC5918 0C2B1924 */  jal     func_80AC6490              
/* 02C7C 80AC591C AFA60028 */  sw      $a2, 0x0028($sp)           
/* 02C80 80AC5920 14400009 */  bne     $v0, $zero, .L80AC5948     
/* 02C84 80AC5924 3C0480AD */  lui     $a0, %hi(D_80AC92A4)       ## $a0 = 80AD0000
/* 02C88 80AC5928 3C0480AD */  lui     $a0, %hi(D_80AC9274)       ## $a0 = 80AD0000
/* 02C8C 80AC592C 3C0580AD */  lui     $a1, %hi(D_80AC9294)       ## $a1 = 80AD0000
/* 02C90 80AC5930 24A59294 */  addiu   $a1, $a1, %lo(D_80AC9294)  ## $a1 = 80AC9294
/* 02C94 80AC5934 24849274 */  addiu   $a0, $a0, %lo(D_80AC9274)  ## $a0 = 80AC9274
/* 02C98 80AC5938 0C00084C */  jal     osSyncPrintf
              
/* 02C9C 80AC593C 24060AEE */  addiu   $a2, $zero, 0x0AEE         ## $a2 = 00000AEE
/* 02CA0 80AC5940 10000035 */  beq     $zero, $zero, .L80AC5A18   
/* 02CA4 80AC5944 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC5948:
/* 02CA8 80AC5948 3C058016 */  lui     $a1, %hi(gSaveContext+0xf16)
/* 02CAC 80AC594C 94A5F576 */  lhu     $a1, %lo(gSaveContext+0xf16)($a1)
/* 02CB0 80AC5950 248492A4 */  addiu   $a0, $a0, %lo(D_80AC92A4)  ## $a0 = FFFF92A4
/* 02CB4 80AC5954 0C00084C */  jal     osSyncPrintf
              
/* 02CB8 80AC5958 30A51000 */  andi    $a1, $a1, 0x1000           ## $a1 = 00000000
/* 02CBC 80AC595C 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 02CC0 80AC5960 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 02CC4 80AC5964 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02CC8 80AC5968 11C10005 */  beq     $t6, $at, .L80AC5980       
/* 02CCC 80AC596C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 02CD0 80AC5970 0C2B1565 */  jal     func_80AC5594              
/* 02CD4 80AC5974 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 02CD8 80AC5978 10000027 */  beq     $zero, $zero, .L80AC5A18   
/* 02CDC 80AC597C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC5980:
/* 02CE0 80AC5980 0C042F6F */  jal     func_8010BDBC              
/* 02CE4 80AC5984 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 02CE8 80AC5988 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 02CEC 80AC598C 14410021 */  bne     $v0, $at, .L80AC5A14       
/* 02CF0 80AC5990 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02CF4 80AC5994 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 02CF8 80AC5998 0C2B0E32 */  jal     func_80AC38C8              
/* 02CFC 80AC599C 26260014 */  addiu   $a2, $s1, 0x0014           ## $a2 = 00000014
/* 02D00 80AC59A0 5440001D */  bnel    $v0, $zero, .L80AC5A18     
/* 02D04 80AC59A4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02D08 80AC59A8 0C041AF2 */  jal     func_80106BC8              
/* 02D0C 80AC59AC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02D10 80AC59B0 10400018 */  beq     $v0, $zero, .L80AC5A14     
/* 02D14 80AC59B4 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 02D18 80AC59B8 00511021 */  addu    $v0, $v0, $s1              
/* 02D1C 80AC59BC 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 02D20 80AC59C0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 02D24 80AC59C4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02D28 80AC59C8 10400005 */  beq     $v0, $zero, .L80AC59E0     
/* 02D2C 80AC59CC 00000000 */  nop
/* 02D30 80AC59D0 50410008 */  beql    $v0, $at, .L80AC59F4       
/* 02D34 80AC59D4 92180252 */  lbu     $t8, 0x0252($s0)           ## 00000252
/* 02D38 80AC59D8 1000000F */  beq     $zero, $zero, .L80AC5A18   
/* 02D3C 80AC59DC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC59E0:
/* 02D40 80AC59E0 0C2B153D */  jal     func_80AC54F4              
/* 02D44 80AC59E4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02D48 80AC59E8 1000000B */  beq     $zero, $zero, .L80AC5A18   
/* 02D4C 80AC59EC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02D50 80AC59F0 92180252 */  lbu     $t8, 0x0252($s0)           ## 00000252
.L80AC59F4:
/* 02D54 80AC59F4 860F01FE */  lh      $t7, 0x01FE($s0)           ## 000001FE
/* 02D58 80AC59F8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02D5C 80AC59FC 0018C880 */  sll     $t9, $t8,  2               
/* 02D60 80AC5A00 02194021 */  addu    $t0, $s0, $t9              
/* 02D64 80AC5A04 A60F01FC */  sh      $t7, 0x01FC($s0)           ## 000001FC
/* 02D68 80AC5A08 8D090200 */  lw      $t1, 0x0200($t0)           ## 00000200
/* 02D6C 80AC5A0C 0C042DC8 */  jal     func_8010B720              
/* 02D70 80AC5A10 9525010E */  lhu     $a1, 0x010E($t1)           ## 0000010E
.L80AC5A14:
/* 02D74 80AC5A14 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC5A18:
/* 02D78 80AC5A18 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 02D7C 80AC5A1C 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 02D80 80AC5A20 03E00008 */  jr      $ra                        
/* 02D84 80AC5A24 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
