.late_rodata
glabel D_808554C4
 .word 0x48435000
glabel D_808554C8
 .word 0x4A742400

.text
glabel func_80848EF8
/* 16CE8 80848EF8 3C0E8012 */  lui     $t6, 0x8012                ## $t6 = 80120000
/* 16CEC 80848EFC 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 16CF0 80848F00 8DEFE704 */  lw      $t7, -0x18FC($t7)          ## 8015E704
/* 16CF4 80848F04 8DCE7174 */  lw      $t6, 0x7174($t6)           ## 80127174
/* 16CF8 80848F08 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 16CFC 80848F0C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 16D00 80848F10 01CFC024 */  and     $t8, $t6, $t7              
/* 16D04 80848F14 1300001D */  beq     $t8, $zero, .L80848F8C     
/* 16D08 80848F18 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 16D0C 80848F1C C48406A4 */  lwc1    $f4, 0x06A4($a0)           ## 000006A4
/* 16D10 80848F20 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 16D14 80848F24 3C018085 */  lui     $at, %hi(D_808554C4)       ## $at = 80850000
/* 16D18 80848F28 C42A54C4 */  lwc1    $f10, %lo(D_808554C4)($at) 
/* 16D1C 80848F2C 46062202 */  mul.s   $f8, $f4, $f6              
/* 16D20 80848F30 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 16D24 80848F34 24050078 */  addiu   $a1, $zero, 0x0078         ## $a1 = 00000078
/* 16D28 80848F38 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 16D2C 80848F3C 2407000A */  addiu   $a3, $zero, 0x000A         ## $a3 = 0000000A
/* 16D30 80848F40 46085001 */  sub.s   $f0, $f10, $f8             
/* 16D34 80848F44 4602003C */  c.lt.s  $f0, $f2                   
/* 16D38 80848F48 00000000 */  nop
/* 16D3C 80848F4C 45020003 */  bc1fl   .L80848F5C                 
/* 16D40 80848F50 C49006A0 */  lwc1    $f16, 0x06A0($a0)          ## 000006A0
/* 16D44 80848F54 46001006 */  mov.s   $f0, $f2                   
/* 16D48 80848F58 C49006A0 */  lwc1    $f16, 0x06A0($a0)          ## 000006A0
.L80848F5C:
/* 16D4C 80848F5C 3C018085 */  lui     $at, %hi(D_808554C8)       ## $at = 80850000
/* 16D50 80848F60 46008480 */  add.s   $f18, $f16, $f0            
/* 16D54 80848F64 E49206A0 */  swc1    $f18, 0x06A0($a0)          ## 000006A0
/* 16D58 80848F68 C48606A0 */  lwc1    $f6, 0x06A0($a0)           ## 000006A0
/* 16D5C 80848F6C C42454C8 */  lwc1    $f4, %lo(D_808554C8)($at)  
/* 16D60 80848F70 4606203C */  c.lt.s  $f4, $f6                   
/* 16D64 80848F74 00000000 */  nop
/* 16D68 80848F78 45020005 */  bc1fl   .L80848F90                 
/* 16D6C 80848F7C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 16D70 80848F80 E48206A0 */  swc1    $f2, 0x06A0($a0)           ## 000006A0
/* 16D74 80848F84 0C20C993 */  jal     func_8083264C              
/* 16D78 80848F88 AFA00010 */  sw      $zero, 0x0010($sp)         
.L80848F8C:
/* 16D7C 80848F8C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80848F90:
/* 16D80 80848F90 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 16D84 80848F94 03E00008 */  jr      $ra                        
/* 16D88 80848F98 00000000 */  nop


