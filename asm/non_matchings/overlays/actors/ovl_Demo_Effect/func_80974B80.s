.rdata
glabel D_8097699C
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_809769B0
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_809769C4
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_809769D8
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_809769EC
    .asciz "../z_demo_effect.c"
    .balign 4

.late_rodata
glabel D_80976D44
    .float 0.19198622

glabel D_80976D48
    .float 2.0943952

glabel D_80976D4C
    .float 0.19198622

glabel D_80976D50
    .float 4.1887903

glabel D_80976D54
    .float 0.19198622

.text
glabel func_80974B80
/* 03C30 80974B80 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 03C34 80974B84 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 03C38 80974B88 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 03C3C 80974B8C AFB00038 */  sw      $s0, 0x0038($sp)           
/* 03C40 80974B90 AFA40090 */  sw      $a0, 0x0090($sp)           
/* 03C44 80974B94 AFA50094 */  sw      $a1, 0x0094($sp)           
/* 03C48 80974B98 0305C021 */  addu    $t8, $t8, $a1              
/* 03C4C 80974B9C 8F181DE4 */  lw      $t8, 0x1DE4($t8)           ## 00011DE4
/* 03C50 80974BA0 8C880118 */  lw      $t0, 0x0118($a0)           ## 00000118
/* 03C54 80974BA4 3C068097 */  lui     $a2, %hi(D_8097699C)       ## $a2 = 80970000
/* 03C58 80974BA8 3319FFFF */  andi    $t9, $t8, 0xFFFF           ## $t9 = 00000000
/* 03C5C 80974BAC AFB90084 */  sw      $t9, 0x0084($sp)           
/* 03C60 80974BB0 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 03C64 80974BB4 24C6699C */  addiu   $a2, $a2, %lo(D_8097699C)  ## $a2 = 8097699C
/* 03C68 80974BB8 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFE0
/* 03C6C 80974BBC 24070A4A */  addiu   $a3, $zero, 0x0A4A         ## $a3 = 00000A4A
/* 03C70 80974BC0 AFA80088 */  sw      $t0, 0x0088($sp)           
/* 03C74 80974BC4 0C031AB1 */  jal     Graph_OpenDisps              
/* 03C78 80974BC8 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 03C7C 80974BCC 8FA80088 */  lw      $t0, 0x0088($sp)           
/* 03C80 80974BD0 5100000D */  beql    $t0, $zero, .L80974C08     
/* 03C84 80974BD4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 03C88 80974BD8 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 03C8C 80974BDC 3C0BFA00 */  lui     $t3, 0xFA00                ## $t3 = FA000000
/* 03C90 80974BE0 356B8080 */  ori     $t3, $t3, 0x8080           ## $t3 = FA008080
/* 03C94 80974BE4 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 03C98 80974BE8 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 03C9C 80974BEC AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 03CA0 80974BF0 910D0186 */  lbu     $t5, 0x0186($t0)           ## 00000186
/* 03CA4 80974BF4 2401AA00 */  addiu   $at, $zero, 0xAA00         ## $at = FFFFAA00
/* 03CA8 80974BF8 01A17025 */  or      $t6, $t5, $at              ## $t6 = FFFFAA00
/* 03CAC 80974BFC 10000009 */  beq     $zero, $zero, .L80974C24   
/* 03CB0 80974C00 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 03CB4 80974C04 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
.L80974C08:
/* 03CB8 80974C08 3C19FA00 */  lui     $t9, 0xFA00                ## $t9 = FA000000
/* 03CBC 80974C0C 37398080 */  ori     $t9, $t9, 0x8080           ## $t9 = FA008080
/* 03CC0 80974C10 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 03CC4 80974C14 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 03CC8 80974C18 240FAAFF */  addiu   $t7, $zero, 0xAAFF         ## $t7 = FFFFAAFF
/* 03CCC 80974C1C AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 03CD0 80974C20 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
.L80974C24:
/* 03CD4 80974C24 8FAA0094 */  lw      $t2, 0x0094($sp)           
/* 03CD8 80974C28 0C024F61 */  jal     func_80093D84              
/* 03CDC 80974C2C 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000008
/* 03CE0 80974C30 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 03CE4 80974C34 8FA90084 */  lw      $t1, 0x0084($sp)           
/* 03CE8 80974C38 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 03CEC 80974C3C 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 03CF0 80974C40 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 03CF4 80974C44 358C0020 */  ori     $t4, $t4, 0x0020           ## $t4 = DB060020
/* 03CF8 80974C48 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 03CFC 80974C4C 8FAD0094 */  lw      $t5, 0x0094($sp)           
/* 03D00 80974C50 00093040 */  sll     $a2, $t1,  1               
/* 03D04 80974C54 30C601FF */  andi    $a2, $a2, 0x01FF           ## $a2 = 00000000
/* 03D08 80974C58 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 03D0C 80974C5C 240801FF */  addiu   $t0, $zero, 0x01FF         ## $t0 = 000001FF
/* 03D10 80974C60 01065023 */  subu    $t2, $t0, $a2              
/* 03D14 80974C64 240C0040 */  addiu   $t4, $zero, 0x0040         ## $t4 = 00000040
/* 03D18 80974C68 240B0040 */  addiu   $t3, $zero, 0x0040         ## $t3 = 00000040
/* 03D1C 80974C6C 24180080 */  addiu   $t8, $zero, 0x0080         ## $t8 = 00000080
/* 03D20 80974C70 24190080 */  addiu   $t9, $zero, 0x0080         ## $t9 = 00000080
/* 03D24 80974C74 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 03D28 80974C78 312E01FF */  andi    $t6, $t1, 0x01FF           ## $t6 = 00000000
/* 03D2C 80974C7C 010E3823 */  subu    $a3, $t0, $t6              
/* 03D30 80974C80 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 03D34 80974C84 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 03D38 80974C88 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 03D3C 80974C8C AFAB0024 */  sw      $t3, 0x0024($sp)           
/* 03D40 80974C90 AFAC0028 */  sw      $t4, 0x0028($sp)           
/* 03D44 80974C94 AFAA001C */  sw      $t2, 0x001C($sp)           
/* 03D48 80974C98 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 03D4C 80974C9C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 03D50 80974CA0 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 03D54 80974CA4 AFA20064 */  sw      $v0, 0x0064($sp)           
/* 03D58 80974CA8 8FA30064 */  lw      $v1, 0x0064($sp)           
/* 03D5C 80974CAC 0C034213 */  jal     Matrix_Push              
/* 03D60 80974CB0 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 03D64 80974CB4 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 03D68 80974CB8 0C034348 */  jal     Matrix_RotateY              
/* 03D6C 80974CBC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 03D70 80974CC0 3C018097 */  lui     $at, %hi(D_80976D44)       ## $at = 80970000
/* 03D74 80974CC4 C42C6D44 */  lwc1    $f12, %lo(D_80976D44)($at) 
/* 03D78 80974CC8 0C0342DC */  jal     Matrix_RotateX              
/* 03D7C 80974CCC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 03D80 80974CD0 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 03D84 80974CD4 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 03D88 80974CD8 44817000 */  mtc1    $at, $f14                  ## $f14 = 150.00
/* 03D8C 80974CDC 44066000 */  mfc1    $a2, $f12                  
/* 03D90 80974CE0 0C034261 */  jal     Matrix_Translate              
/* 03D94 80974CE4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 03D98 80974CE8 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 03D9C 80974CEC 3C0EDA38 */  lui     $t6, 0xDA38                ## $t6 = DA380000
/* 03DA0 80974CF0 35CE0003 */  ori     $t6, $t6, 0x0003           ## $t6 = DA380003
/* 03DA4 80974CF4 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 03DA8 80974CF8 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 03DAC 80974CFC AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 03DB0 80974D00 8FB80094 */  lw      $t8, 0x0094($sp)           
/* 03DB4 80974D04 3C058097 */  lui     $a1, %hi(D_809769B0)       ## $a1 = 80970000
/* 03DB8 80974D08 24A569B0 */  addiu   $a1, $a1, %lo(D_809769B0)  ## $a1 = 809769B0
/* 03DBC 80974D0C 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 03DC0 80974D10 24060A65 */  addiu   $a2, $zero, 0x0A65         ## $a2 = 00000A65
/* 03DC4 80974D14 0C0346A2 */  jal     Matrix_NewMtx              
/* 03DC8 80974D18 AFA20060 */  sw      $v0, 0x0060($sp)           
/* 03DCC 80974D1C 8FA30060 */  lw      $v1, 0x0060($sp)           
/* 03DD0 80974D20 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 03DD4 80974D24 24840980 */  addiu   $a0, $a0, 0x0980           ## $a0 = 06000980
/* 03DD8 80974D28 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 03DDC 80974D2C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 03DE0 80974D30 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 03DE4 80974D34 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 03DE8 80974D38 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 03DEC 80974D3C AC440004 */  sw      $a0, 0x0004($v0)           ## 00000004
/* 03DF0 80974D40 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 03DF4 80974D44 0C034221 */  jal     Matrix_Pull              
/* 03DF8 80974D48 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 03DFC 80974D4C 0C034213 */  jal     Matrix_Push              
/* 03E00 80974D50 00000000 */  nop
/* 03E04 80974D54 3C018097 */  lui     $at, %hi(D_80976D48)       ## $at = 80970000
/* 03E08 80974D58 C42C6D48 */  lwc1    $f12, %lo(D_80976D48)($at) 
/* 03E0C 80974D5C 0C034348 */  jal     Matrix_RotateY              
/* 03E10 80974D60 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 03E14 80974D64 3C018097 */  lui     $at, %hi(D_80976D4C)       ## $at = 80970000
/* 03E18 80974D68 C42C6D4C */  lwc1    $f12, %lo(D_80976D4C)($at) 
/* 03E1C 80974D6C 0C0342DC */  jal     Matrix_RotateX              
/* 03E20 80974D70 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 03E24 80974D74 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 03E28 80974D78 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 03E2C 80974D7C 44817000 */  mtc1    $at, $f14                  ## $f14 = 150.00
/* 03E30 80974D80 44066000 */  mfc1    $a2, $f12                  
/* 03E34 80974D84 0C034261 */  jal     Matrix_Translate              
/* 03E38 80974D88 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 03E3C 80974D8C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 03E40 80974D90 3C0BDA38 */  lui     $t3, 0xDA38                ## $t3 = DA380000
/* 03E44 80974D94 356B0003 */  ori     $t3, $t3, 0x0003           ## $t3 = DA380003
/* 03E48 80974D98 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 03E4C 80974D9C AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 03E50 80974DA0 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 03E54 80974DA4 8FAC0094 */  lw      $t4, 0x0094($sp)           
/* 03E58 80974DA8 3C058097 */  lui     $a1, %hi(D_809769C4)       ## $a1 = 80970000
/* 03E5C 80974DAC 24A569C4 */  addiu   $a1, $a1, %lo(D_809769C4)  ## $a1 = 809769C4
/* 03E60 80974DB0 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 03E64 80974DB4 24060A70 */  addiu   $a2, $zero, 0x0A70         ## $a2 = 00000A70
/* 03E68 80974DB8 0C0346A2 */  jal     Matrix_NewMtx              
/* 03E6C 80974DBC AFA20058 */  sw      $v0, 0x0058($sp)           
/* 03E70 80974DC0 8FA30058 */  lw      $v1, 0x0058($sp)           
/* 03E74 80974DC4 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 03E78 80974DC8 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 03E7C 80974DCC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 03E80 80974DD0 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 03E84 80974DD4 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 03E88 80974DD8 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 03E8C 80974DDC 8FB80048 */  lw      $t8, 0x0048($sp)           
/* 03E90 80974DE0 0C034221 */  jal     Matrix_Pull              
/* 03E94 80974DE4 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 03E98 80974DE8 0C034213 */  jal     Matrix_Push              
/* 03E9C 80974DEC 00000000 */  nop
/* 03EA0 80974DF0 3C018097 */  lui     $at, %hi(D_80976D50)       ## $at = 80970000
/* 03EA4 80974DF4 C42C6D50 */  lwc1    $f12, %lo(D_80976D50)($at) 
/* 03EA8 80974DF8 0C034348 */  jal     Matrix_RotateY              
/* 03EAC 80974DFC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 03EB0 80974E00 3C018097 */  lui     $at, %hi(D_80976D54)       ## $at = 80970000
/* 03EB4 80974E04 C42C6D54 */  lwc1    $f12, %lo(D_80976D54)($at) 
/* 03EB8 80974E08 0C0342DC */  jal     Matrix_RotateX              
/* 03EBC 80974E0C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 03EC0 80974E10 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 03EC4 80974E14 44817000 */  mtc1    $at, $f14                  ## $f14 = 150.00
/* 03EC8 80974E18 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 03ECC 80974E1C 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 03ED0 80974E20 0C034261 */  jal     Matrix_Translate              
/* 03ED4 80974E24 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 03ED8 80974E28 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 03EDC 80974E2C 3C0FDA38 */  lui     $t7, 0xDA38                ## $t7 = DA380000
/* 03EE0 80974E30 35EF0003 */  ori     $t7, $t7, 0x0003           ## $t7 = DA380003
/* 03EE4 80974E34 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 03EE8 80974E38 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 03EEC 80974E3C AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 03EF0 80974E40 8FAA0094 */  lw      $t2, 0x0094($sp)           
/* 03EF4 80974E44 3C058097 */  lui     $a1, %hi(D_809769D8)       ## $a1 = 80970000
/* 03EF8 80974E48 24A569D8 */  addiu   $a1, $a1, %lo(D_809769D8)  ## $a1 = 809769D8
/* 03EFC 80974E4C 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 03F00 80974E50 24060A7B */  addiu   $a2, $zero, 0x0A7B         ## $a2 = 00000A7B
/* 03F04 80974E54 0C0346A2 */  jal     Matrix_NewMtx              
/* 03F08 80974E58 AFA20050 */  sw      $v0, 0x0050($sp)           
/* 03F0C 80974E5C 8FA30050 */  lw      $v1, 0x0050($sp)           
/* 03F10 80974E60 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 03F14 80974E64 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 03F18 80974E68 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 03F1C 80974E6C 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 03F20 80974E70 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 03F24 80974E74 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 03F28 80974E78 8FAD0048 */  lw      $t5, 0x0048($sp)           
/* 03F2C 80974E7C 0C034221 */  jal     Matrix_Pull              
/* 03F30 80974E80 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 03F34 80974E84 8FAE0094 */  lw      $t6, 0x0094($sp)           
/* 03F38 80974E88 3C068097 */  lui     $a2, %hi(D_809769EC)       ## $a2 = 80970000
/* 03F3C 80974E8C 24C669EC */  addiu   $a2, $a2, %lo(D_809769EC)  ## $a2 = 809769EC
/* 03F40 80974E90 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFE0
/* 03F44 80974E94 24070A80 */  addiu   $a3, $zero, 0x0A80         ## $a3 = 00000A80
/* 03F48 80974E98 0C031AD5 */  jal     Graph_CloseDisps              
/* 03F4C 80974E9C 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 03F50 80974EA0 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 03F54 80974EA4 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 03F58 80974EA8 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000
/* 03F5C 80974EAC 03E00008 */  jr      $ra                        
/* 03F60 80974EB0 00000000 */  nop


