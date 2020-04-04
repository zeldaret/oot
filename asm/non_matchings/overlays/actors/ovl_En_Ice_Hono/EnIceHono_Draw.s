glabel EnIceHono_Draw
/* 00E1C 80A73E0C 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 00E20 80A73E10 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 00E24 80A73E14 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00E28 80A73E18 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00E2C 80A73E1C AFB00034 */  sw      $s0, 0x0034($sp)           
/* 00E30 80A73E20 AFA40078 */  sw      $a0, 0x0078($sp)           
/* 00E34 80A73E24 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00E38 80A73E28 3C0680A7 */  lui     $a2, %hi(D_80A740D8)       ## $a2 = 80A70000
/* 00E3C 80A73E2C 24C640D8 */  addiu   $a2, $a2, %lo(D_80A740D8)  ## $a2 = 80A740D8
/* 00E40 80A73E30 27A4005C */  addiu   $a0, $sp, 0x005C           ## $a0 = FFFFFFE4
/* 00E44 80A73E34 240702B7 */  addiu   $a3, $zero, 0x02B7         ## $a3 = 000002B7
/* 00E48 80A73E38 0C031AB1 */  jal     Graph_OpenDisp              
/* 00E4C 80A73E3C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00E50 80A73E40 0C024F61 */  jal     func_80093D84              
/* 00E54 80A73E44 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00E58 80A73E48 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00E5C 80A73E4C 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 00E60 80A73E50 35EF0020 */  ori     $t7, $t7, 0x0020           ## $t7 = DB060020
/* 00E64 80A73E54 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 00E68 80A73E58 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 00E6C 80A73E5C AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 00E70 80A73E60 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00E74 80A73E64 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 00E78 80A73E68 24190040 */  addiu   $t9, $zero, 0x0040         ## $t9 = 00000040
/* 00E7C 80A73E6C 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00E80 80A73E70 AFA80018 */  sw      $t0, 0x0018($sp)           
/* 00E84 80A73E74 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00E88 80A73E78 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00E8C 80A73E7C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00E90 80A73E80 8E29009C */  lw      $t1, 0x009C($s1)           ## 0000009C
/* 00E94 80A73E84 240C0020 */  addiu   $t4, $zero, 0x0020         ## $t4 = 00000020
/* 00E98 80A73E88 240D0080 */  addiu   $t5, $zero, 0x0080         ## $t5 = 00000080
/* 00E9C 80A73E8C 00090823 */  subu    $at, $zero, $t1            
/* 00EA0 80A73E90 00015080 */  sll     $t2, $at,  2               
/* 00EA4 80A73E94 01415021 */  addu    $t2, $t2, $at              
/* 00EA8 80A73E98 000A5080 */  sll     $t2, $t2,  2               
/* 00EAC 80A73E9C 314B01FF */  andi    $t3, $t2, 0x01FF           ## $t3 = 00000000
/* 00EB0 80A73EA0 AFAB0020 */  sw      $t3, 0x0020($sp)           
/* 00EB4 80A73EA4 AFAD0028 */  sw      $t5, 0x0028($sp)           
/* 00EB8 80A73EA8 AFAC0024 */  sw      $t4, 0x0024($sp)           
/* 00EBC 80A73EAC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00EC0 80A73EB0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00EC4 80A73EB4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00EC8 80A73EB8 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 00ECC 80A73EBC AFA20058 */  sw      $v0, 0x0058($sp)           
/* 00ED0 80A73EC0 8FA30058 */  lw      $v1, 0x0058($sp)           
/* 00ED4 80A73EC4 3C0FFA00 */  lui     $t7, 0xFA00                ## $t7 = FA000000
/* 00ED8 80A73EC8 35EF8080 */  ori     $t7, $t7, 0x8080           ## $t7 = FA008080
/* 00EDC 80A73ECC AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00EE0 80A73ED0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00EE4 80A73ED4 3C01AAFF */  lui     $at, 0xAAFF                ## $at = AAFF0000
/* 00EE8 80A73ED8 3421FF00 */  ori     $at, $at, 0xFF00           ## $at = AAFFFF00
/* 00EEC 80A73EDC 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 00EF0 80A73EE0 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 00EF4 80A73EE4 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 00EF8 80A73EE8 8FB80078 */  lw      $t8, 0x0078($sp)           
/* 00EFC 80A73EEC 3C0C0096 */  lui     $t4, 0x0096                ## $t4 = 00960000
/* 00F00 80A73EF0 358CFF00 */  ori     $t4, $t4, 0xFF00           ## $t4 = 0096FF00
/* 00F04 80A73EF4 87190150 */  lh      $t9, 0x0150($t8)           ## 00000150
/* 00F08 80A73EF8 3C0BFB00 */  lui     $t3, 0xFB00                ## $t3 = FB000000
/* 00F0C 80A73EFC 332800FF */  andi    $t0, $t9, 0x00FF           ## $t0 = 00000000
/* 00F10 80A73F00 01014825 */  or      $t1, $t0, $at              ## $t1 = AAFFFF00
/* 00F14 80A73F04 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 00F18 80A73F08 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00F1C 80A73F0C 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00F20 80A73F10 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 00F24 80A73F14 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 00F28 80A73F18 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 00F2C 80A73F1C 862D07A0 */  lh      $t5, 0x07A0($s1)           ## 000007A0
/* 00F30 80A73F20 000D7080 */  sll     $t6, $t5,  2               
/* 00F34 80A73F24 022E7821 */  addu    $t7, $s1, $t6              
/* 00F38 80A73F28 0C016A7D */  jal     func_8005A9F4              
/* 00F3C 80A73F2C 8DE40790 */  lw      $a0, 0x0790($t7)           ## FA008810
/* 00F40 80A73F30 8FB80078 */  lw      $t8, 0x0078($sp)           
/* 00F44 80A73F34 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00F48 80A73F38 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00F4C 80A73F3C 871900B6 */  lh      $t9, 0x00B6($t8)           ## 000000B6
/* 00F50 80A73F40 00594023 */  subu    $t0, $v0, $t9              
/* 00F54 80A73F44 01014821 */  addu    $t1, $t0, $at              
/* 00F58 80A73F48 00095400 */  sll     $t2, $t1, 16               
/* 00F5C 80A73F4C 000A5C03 */  sra     $t3, $t2, 16               
/* 00F60 80A73F50 448B2000 */  mtc1    $t3, $f4                   ## $f4 = 0.00
/* 00F64 80A73F54 3C0180A7 */  lui     $at, %hi(D_80A74174)       ## $at = 80A70000
/* 00F68 80A73F58 C4284174 */  lwc1    $f8, %lo(D_80A74174)($at)  
/* 00F6C 80A73F5C 468021A0 */  cvt.s.w $f6, $f4                   
/* 00F70 80A73F60 46083302 */  mul.s   $f12, $f6, $f8             
/* 00F74 80A73F64 0C034348 */  jal     Matrix_RotateY              
/* 00F78 80A73F68 00000000 */  nop
/* 00F7C 80A73F6C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00F80 80A73F70 3C0DDA38 */  lui     $t5, 0xDA38                ## $t5 = DA380000
/* 00F84 80A73F74 35AD0003 */  ori     $t5, $t5, 0x0003           ## $t5 = DA380003
/* 00F88 80A73F78 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 00F8C 80A73F7C AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 00F90 80A73F80 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 00F94 80A73F84 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00F98 80A73F88 3C0580A7 */  lui     $a1, %hi(D_80A740EC)       ## $a1 = 80A70000
/* 00F9C 80A73F8C 24A540EC */  addiu   $a1, $a1, %lo(D_80A740EC)  ## $a1 = 80A740EC
/* 00FA0 80A73F90 240602CE */  addiu   $a2, $zero, 0x02CE         ## $a2 = 000002CE
/* 00FA4 80A73F94 0C0346A2 */  jal     Matrix_NewMtx              
/* 00FA8 80A73F98 AFA2004C */  sw      $v0, 0x004C($sp)           
/* 00FAC 80A73F9C 8FA3004C */  lw      $v1, 0x004C($sp)           
/* 00FB0 80A73FA0 3C180405 */  lui     $t8, 0x0405                ## $t8 = 04050000
/* 00FB4 80A73FA4 2718D4E0 */  addiu   $t8, $t8, 0xD4E0           ## $t8 = 0404D4E0
/* 00FB8 80A73FA8 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00FBC 80A73FAC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00FC0 80A73FB0 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 00FC4 80A73FB4 3C0680A7 */  lui     $a2, %hi(D_80A74100)       ## $a2 = 80A70000
/* 00FC8 80A73FB8 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 00FCC 80A73FBC AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 00FD0 80A73FC0 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 00FD4 80A73FC4 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 00FD8 80A73FC8 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 00FDC 80A73FCC 24C64100 */  addiu   $a2, $a2, %lo(D_80A74100)  ## $a2 = 80A74100
/* 00FE0 80A73FD0 27A4005C */  addiu   $a0, $sp, 0x005C           ## $a0 = FFFFFFE4
/* 00FE4 80A73FD4 0C031AD5 */  jal     Graph_CloseDisp              
/* 00FE8 80A73FD8 240702D2 */  addiu   $a3, $zero, 0x02D2         ## $a3 = 000002D2
/* 00FEC 80A73FDC 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00FF0 80A73FE0 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 00FF4 80A73FE4 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 00FF8 80A73FE8 03E00008 */  jr      $ra                        
/* 00FFC 80A73FEC 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000

