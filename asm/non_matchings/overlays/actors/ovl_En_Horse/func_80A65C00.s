.rdata
glabel D_80A6682C
    .asciz "../z_en_horse.c"
    .balign 4

glabel D_80A6683C
    .asciz "../z_en_horse.c"
    .balign 4

.text
glabel func_80A65C00
/* 0A910 80A65C00 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 0A914 80A65C04 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0A918 80A65C08 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0A91C 80A65C0C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0A920 80A65C10 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 0A924 80A65C14 AFA60058 */  sw      $a2, 0x0058($sp)           
/* 0A928 80A65C18 AFA7005C */  sw      $a3, 0x005C($sp)           
/* 0A92C 80A65C1C AFAE0048 */  sw      $t6, 0x0048($sp)           
/* 0A930 80A65C20 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 0A934 80A65C24 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0A938 80A65C28 3C0680A6 */  lui     $a2, %hi(D_80A6682C)       ## $a2 = 80A60000
/* 0A93C 80A65C2C 24C6682C */  addiu   $a2, $a2, %lo(D_80A6682C)  ## $a2 = 80A6682C
/* 0A940 80A65C30 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFE4
/* 0A944 80A65C34 24072186 */  addiu   $a3, $zero, 0x2186         ## $a3 = 00002186
/* 0A948 80A65C38 0C031AB1 */  jal     Graph_OpenDisps              
/* 0A94C 80A65C3C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 0A950 80A65C40 8FA60058 */  lw      $a2, 0x0058($sp)           
/* 0A954 80A65C44 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 0A958 80A65C48 8FA80044 */  lw      $t0, 0x0044($sp)           
/* 0A95C 80A65C4C 54C10020 */  bnel    $a2, $at, .L80A65CD0       
/* 0A960 80A65C50 8E0A0158 */  lw      $t2, 0x0158($s0)           ## 00000158
/* 0A964 80A65C54 8E180158 */  lw      $t8, 0x0158($s0)           ## 00000158
/* 0A968 80A65C58 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 0A96C 80A65C5C 3C0580A6 */  lui     $a1, %hi(D_80A667F8)       ## $a1 = 80A60000
/* 0A970 80A65C60 1700001A */  bne     $t8, $zero, .L80A65CCC     
/* 0A974 80A65C64 354A0020 */  ori     $t2, $t2, 0x0020           ## $t2 = DB060020
/* 0A978 80A65C68 9219037A */  lbu     $t9, 0x037A($s0)           ## 0000037A
/* 0A97C 80A65C6C 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 0A980 80A65C70 3C0480A6 */  lui     $a0, %hi(D_80A667EC)       ## $a0 = 80A60000
/* 0A984 80A65C74 00B92821 */  addu    $a1, $a1, $t9              
/* 0A988 80A65C78 90A567F8 */  lbu     $a1, %lo(D_80A667F8)($a1)  
/* 0A98C 80A65C7C 24690008 */  addiu   $t1, $v1, 0x0008           ## $t1 = 00000008
/* 0A990 80A65C80 AD0902C0 */  sw      $t1, 0x02C0($t0)           ## 000002C0
/* 0A994 80A65C84 00055880 */  sll     $t3, $a1,  2               
/* 0A998 80A65C88 008B2021 */  addu    $a0, $a0, $t3              
/* 0A99C 80A65C8C AC6A0000 */  sw      $t2, 0x0000($v1)           ## 00000000
/* 0A9A0 80A65C90 8C8467EC */  lw      $a0, %lo(D_80A667EC)($a0)  
/* 0A9A4 80A65C94 3C188016 */  lui     $t8, %hi(gSegments)
/* 0A9A8 80A65C98 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 0A9AC 80A65C9C 00046900 */  sll     $t5, $a0,  4               
/* 0A9B0 80A65CA0 000D7702 */  srl     $t6, $t5, 28               
/* 0A9B4 80A65CA4 000E7880 */  sll     $t7, $t6,  2               
/* 0A9B8 80A65CA8 030FC021 */  addu    $t8, $t8, $t7              
/* 0A9BC 80A65CAC 8F186FA8 */  lw      $t8, %lo(gSegments)($t8)
/* 0A9C0 80A65CB0 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 0A9C4 80A65CB4 00816024 */  and     $t4, $a0, $at              
/* 0A9C8 80A65CB8 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0A9CC 80A65CBC 0198C821 */  addu    $t9, $t4, $t8              
/* 0A9D0 80A65CC0 03214821 */  addu    $t1, $t9, $at              
/* 0A9D4 80A65CC4 10000013 */  beq     $zero, $zero, .L80A65D14   
/* 0A9D8 80A65CC8 AC690004 */  sw      $t1, 0x0004($v1)           ## 00000004
.L80A65CCC:
/* 0A9DC 80A65CCC 8E0A0158 */  lw      $t2, 0x0158($s0)           ## 00000158
.L80A65CD0:
/* 0A9E0 80A65CD0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0A9E4 80A65CD4 55410010 */  bnel    $t2, $at, .L80A65D18       
/* 0A9E8 80A65CD8 8FAF0054 */  lw      $t7, 0x0054($sp)           
/* 0A9EC 80A65CDC 8E0B01F0 */  lw      $t3, 0x01F0($s0)           ## 000001F0
/* 0A9F0 80A65CE0 2401001E */  addiu   $at, $zero, 0x001E         ## $at = 0000001E
/* 0A9F4 80A65CE4 000B6B40 */  sll     $t5, $t3, 13               
/* 0A9F8 80A65CE8 05A3000B */  bgezl   $t5, .L80A65D18            
/* 0A9FC 80A65CEC 8FAF0054 */  lw      $t7, 0x0054($sp)           
/* 0AA00 80A65CF0 14C10008 */  bne     $a2, $at, .L80A65D14       
/* 0AA04 80A65CF4 8FAE0054 */  lw      $t6, 0x0054($sp)           
/* 0AA08 80A65CF8 8DC40000 */  lw      $a0, 0x0000($t6)           ## 00000000
/* 0AA0C 80A65CFC 3C070600 */  lui     $a3, %hi(D_06006530)                ## $a3 = 06000000
/* 0AA10 80A65D00 24E76530 */  addiu   $a3, $a3, %lo(D_06006530)           ## $a3 = 06006530
/* 0AA14 80A65D04 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0AA18 80A65D08 0C0297D8 */  jal     func_800A5F60              
/* 0AA1C 80A65D0C 26050160 */  addiu   $a1, $s0, 0x0160           ## $a1 = 00000160
/* 0AA20 80A65D10 AFA00048 */  sw      $zero, 0x0048($sp)         
.L80A65D14:
/* 0AA24 80A65D14 8FAF0054 */  lw      $t7, 0x0054($sp)           
.L80A65D18:
/* 0AA28 80A65D18 3C0680A6 */  lui     $a2, %hi(D_80A6683C)       ## $a2 = 80A60000
/* 0AA2C 80A65D1C 24C6683C */  addiu   $a2, $a2, %lo(D_80A6683C)  ## $a2 = 80A6683C
/* 0AA30 80A65D20 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFE4
/* 0AA34 80A65D24 24072199 */  addiu   $a3, $zero, 0x2199         ## $a3 = 00002199
/* 0AA38 80A65D28 0C031AD5 */  jal     Graph_CloseDisps              
/* 0AA3C 80A65D2C 8DE50000 */  lw      $a1, 0x0000($t7)           ## 00000000
/* 0AA40 80A65D30 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0AA44 80A65D34 8FA20048 */  lw      $v0, 0x0048($sp)           
/* 0AA48 80A65D38 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0AA4C 80A65D3C 03E00008 */  jr      $ra                        
/* 0AA50 80A65D40 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
