glabel func_80A45C50
/* 02F20 80A45C50 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02F24 80A45C54 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02F28 80A45C58 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 02F2C 80A45C5C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 02F30 80A45C60 C4860168 */  lwc1    $f6, 0x0168($a0)           ## 00000168
/* 02F34 80A45C64 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02F38 80A45C68 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02F3C 80A45C6C 46062032 */  c.eq.s  $f4, $f6                   
/* 02F40 80A45C70 00000000 */  nop
/* 02F44 80A45C74 4502000F */  bc1fl   .L80A45CB4                 
/* 02F48 80A45C78 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 02F4C 80A45C7C 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 02F50 80A45C80 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02F54 80A45C84 240538FC */  addiu   $a1, $zero, 0x38FC         ## $a1 = 000038FC
/* 02F58 80A45C88 31CF001F */  andi    $t7, $t6, 0x001F           ## $t7 = 00000000
/* 02F5C 80A45C8C 11E10005 */  beq     $t7, $at, .L80A45CA4       
/* 02F60 80A45C90 2406003C */  addiu   $a2, $zero, 0x003C         ## $a2 = 0000003C
/* 02F64 80A45C94 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02F68 80A45C98 240538FC */  addiu   $a1, $zero, 0x38FC         ## $a1 = 000038FC
/* 02F6C 80A45C9C 10000005 */  beq     $zero, $zero, .L80A45CB4   
/* 02F70 80A45CA0 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
.L80A45CA4:
/* 02F74 80A45CA4 3C048013 */  lui     $a0, %hi(D_801333D4)
/* 02F78 80A45CA8 0C03D149 */  jal     func_800F4524              
/* 02F7C 80A45CAC 248433D4 */  addiu   $a0, %lo(D_801333D4)
/* 02F80 80A45CB0 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
.L80A45CB4:
/* 02F84 80A45CB4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02F88 80A45CB8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 02F8C 80A45CBC 3319001F */  andi    $t9, $t8, 0x001F           ## $t9 = 00000000
/* 02F90 80A45CC0 17210010 */  bne     $t9, $at, .L80A45D04       
/* 02F94 80A45CC4 3C0580A5 */  lui     $a1, %hi(D_80A48348)       ## $a1 = 80A50000
/* 02F98 80A45CC8 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 02F9C 80A45CCC 24051068 */  addiu   $a1, $zero, 0x1068         ## $a1 = 00001068
/* 02FA0 80A45CD0 2406FF9D */  addiu   $a2, $zero, 0xFF9D         ## $a2 = FFFFFF9D
/* 02FA4 80A45CD4 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 02FA8 80A45CD8 0C02003E */  jal     func_800800F8              
/* 02FAC 80A45CDC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02FB0 80A45CE0 3C0580A5 */  lui     $a1, %hi(D_80A48348)       ## $a1 = 80A50000
/* 02FB4 80A45CE4 24A58348 */  addiu   $a1, $a1, %lo(D_80A48348)  ## $a1 = 80A48348
/* 02FB8 80A45CE8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 02FBC 80A45CEC 0C00D3B0 */  jal     func_80034EC0              
/* 02FC0 80A45CF0 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 02FC4 80A45CF4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 02FC8 80A45CF8 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 02FCC 80A45CFC 10000008 */  beq     $zero, $zero, .L80A45D20   
/* 02FD0 80A45D00 E6080168 */  swc1    $f8, 0x0168($s0)           ## 00000168
.L80A45D04:
/* 02FD4 80A45D04 24A58348 */  addiu   $a1, $a1, %lo(D_80A48348)  ## $a1 = FFFF8348
/* 02FD8 80A45D08 0C00D3B0 */  jal     func_80034EC0              
/* 02FDC 80A45D0C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 02FE0 80A45D10 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02FE4 80A45D14 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 02FE8 80A45D18 00000000 */  nop
/* 02FEC 80A45D1C E60A0168 */  swc1    $f10, 0x0168($s0)          ## 00000168
.L80A45D20:
/* 02FF0 80A45D20 3C0880A4 */  lui     $t0, %hi(func_80A46B40)    ## $t0 = 80A40000
/* 02FF4 80A45D24 25086B40 */  addiu   $t0, $t0, %lo(func_80A46B40) ## $t0 = 80A46B40
/* 02FF8 80A45D28 AE080190 */  sw      $t0, 0x0190($s0)           ## 00000190
/* 02FFC 80A45D2C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 03000 80A45D30 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 03004 80A45D34 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03008 80A45D38 03E00008 */  jr      $ra                        
/* 0300C 80A45D3C 00000000 */  nop
