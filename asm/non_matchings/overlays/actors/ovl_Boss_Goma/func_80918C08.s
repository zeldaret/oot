.late_rodata
glabel D_8091B56C
 .word 0x419AAAAB

.text
glabel func_80918C08
/* 031F8 80918C08 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 031FC 80918C0C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03200 80918C10 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03204 80918C14 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03208 80918C18 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0320C 80918C1C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 03210 80918C20 0C02927F */  jal     SkelAnime_Update
              
/* 03214 80918C24 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 03218 80918C28 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 0321C 80918C2C 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 03220 80918C30 0C01E123 */  jal     Math_ApproachZeroF
              
/* 03224 80918C34 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 03228 80918C38 3C018092 */  lui     $at, %hi(D_8091B56C)       ## $at = 80920000
/* 0322C 80918C3C C424B56C */  lwc1    $f4, %lo(D_8091B56C)($at)  
/* 03230 80918C40 C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 03234 80918C44 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 03238 80918C48 4600203E */  c.le.s  $f4, $f0                   
/* 0323C 80918C4C 00000000 */  nop
/* 03240 80918C50 4500000F */  bc1f    .L80918C90                 
/* 03244 80918C54 00000000 */  nop
/* 03248 80918C58 44813000 */  mtc1    $at, $f6                   ## $f6 = 30.00
/* 0324C 80918C5C 8FAE002C */  lw      $t6, 0x002C($sp)           
/* 03250 80918C60 4606003E */  c.le.s  $f0, $f6                   
/* 03254 80918C64 00000000 */  nop
/* 03258 80918C68 45000009 */  bc1f    .L80918C90                 
/* 0325C 80918C6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03260 80918C70 0C00B69E */  jal     func_8002DA78              
/* 03264 80918C74 8DC51C44 */  lw      $a1, 0x1C44($t6)           ## 00001C44
/* 03268 80918C78 00022C00 */  sll     $a1, $v0, 16               
/* 0326C 80918C7C 00052C03 */  sra     $a1, $a1, 16               
/* 03270 80918C80 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 03274 80918C84 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 03278 80918C88 0C01E1EF */  jal     Math_ApproachS
              
/* 0327C 80918C8C 24070BB8 */  addiu   $a3, $zero, 0x0BB8         ## $a3 = 00000BB8
.L80918C90:
/* 03280 80918C90 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 03284 80918C94 0C028800 */  jal     Animation_LastFrame
              
/* 03288 80918C98 2484C468 */  addiu   $a0, $a0, 0xC468           ## $a0 = 0600C468
/* 0328C 80918C9C 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 03290 80918CA0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 03294 80918CA4 46804220 */  cvt.s.w $f8, $f8                   
/* 03298 80918CA8 44054000 */  mfc1    $a1, $f8                   
/* 0329C 80918CAC 0C0295B2 */  jal     Animation_OnFrame              
/* 032A0 80918CB0 00000000 */  nop
/* 032A4 80918CB4 1040000E */  beq     $v0, $zero, .L80918CF0     
/* 032A8 80918CB8 3C01437A */  lui     $at, 0x437A                ## $at = 437A0000
/* 032AC 80918CBC C60A0090 */  lwc1    $f10, 0x0090($s0)          ## 00000090
/* 032B0 80918CC0 44818000 */  mtc1    $at, $f16                  ## $f16 = 250.00
/* 032B4 80918CC4 00000000 */  nop
/* 032B8 80918CC8 4610503C */  c.lt.s  $f10, $f16                 
/* 032BC 80918CCC 00000000 */  nop
/* 032C0 80918CD0 45000005 */  bc1f    .L80918CE8                 
/* 032C4 80918CD4 00000000 */  nop
/* 032C8 80918CD8 0C2459D3 */  jal     func_8091674C              
/* 032CC 80918CDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 032D0 80918CE0 10000004 */  beq     $zero, $zero, .L80918CF4   
/* 032D4 80918CE4 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
.L80918CE8:
/* 032D8 80918CE8 0C24592B */  jal     func_809164AC              
/* 032DC 80918CEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80918CF0:
/* 032E0 80918CF0 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
.L80918CF4:
/* 032E4 80918CF4 A60F01B4 */  sh      $t7, 0x01B4($s0)           ## 000001B4
/* 032E8 80918CF8 A60001B8 */  sh      $zero, 0x01B8($s0)         ## 000001B8
/* 032EC 80918CFC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 032F0 80918D00 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 032F4 80918D04 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 032F8 80918D08 03E00008 */  jr      $ra                        
/* 032FC 80918D0C 00000000 */  nop
