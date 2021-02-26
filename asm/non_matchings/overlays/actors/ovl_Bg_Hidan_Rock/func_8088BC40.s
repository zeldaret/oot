.rdata
glabel D_8088BFF0
    .asciz "../z_bg_hidan_rock.c"
    .balign 4

glabel D_8088C008
    .asciz "../z_bg_hidan_rock.c"
    .balign 4

glabel D_8088C020
    .asciz "../z_bg_hidan_rock.c"
    .balign 4

.text
glabel func_8088BC40
/* 00BC0 8088BC40 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00BC4 8088BC44 AFBF001C */  sw      $ra, 0x001C($sp)
/* 00BC8 8088BC48 AFB00018 */  sw      $s0, 0x0018($sp)
/* 00BCC 8088BC4C AFA40058 */  sw      $a0, 0x0058($sp)
/* 00BD0 8088BC50 AFA5005C */  sw      $a1, 0x005C($sp)
/* 00BD4 8088BC54 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 00BD8 8088BC58 3C068089 */  lui     $a2, %hi(D_8088BFF0)       ## $a2 = 80890000
/* 00BDC 8088BC5C 24C6BFF0 */  addiu   $a2, $a2, %lo(D_8088BFF0)  ## $a2 = 8088BFF0
/* 00BE0 8088BC60 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFFE8
/* 00BE4 8088BC64 24070328 */  addiu   $a3, $zero, 0x0328         ## $a3 = 00000328
/* 00BE8 8088BC68 0C031AB1 */  jal     Graph_OpenDisps
/* 00BEC 8088BC6C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00BF0 8088BC70 8E0402D0 */  lw      $a0, 0x02D0($s0)           ## 000002D0
/* 00BF4 8088BC74 0C024DDD */  jal     Gfx_CallSetupDL
/* 00BF8 8088BC78 24050014 */  addiu   $a1, $zero, 0x0014         ## $a1 = 00000014
/* 00BFC 8088BC7C AE0202D0 */  sw      $v0, 0x02D0($s0)           ## 000002D0
/* 00C00 8088BC80 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 00C04 8088BC84 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 00C08 8088BC88 3C18FA00 */  lui     $t8, 0xFA00                ## $t8 = FA000000
/* 00C0C 8088BC8C 3C19FFFF */  lui     $t9, 0xFFFF                ## $t9 = FFFF0000
/* 00C10 8088BC90 37390096 */  ori     $t9, $t9, 0x0096           ## $t9 = FFFF0096
/* 00C14 8088BC94 37180001 */  ori     $t8, $t8, 0x0001           ## $t8 = FA000001
/* 00C18 8088BC98 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 00C1C 8088BC9C AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 00C20 8088BCA0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00C24 8088BCA4 3C0AFF00 */  lui     $t2, 0xFF00                ## $t2 = FF000000
/* 00C28 8088BCA8 354A00FF */  ori     $t2, $t2, 0x00FF           ## $t2 = FF0000FF
/* 00C2C 8088BCAC 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 00C30 8088BCB0 AE0802D0 */  sw      $t0, 0x02D0($s0)           ## 000002D0
/* 00C34 8088BCB4 3C09FB00 */  lui     $t1, 0xFB00                ## $t1 = FB000000
/* 00C38 8088BCB8 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 00C3C 8088BCBC AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 00C40 8088BCC0 8FA3005C */  lw      $v1, 0x005C($sp)
/* 00C44 8088BCC4 3C028089 */  lui     $v0, %hi(D_8088BF60)       ## $v0 = 80890000
/* 00C48 8088BCC8 2442BF60 */  addiu   $v0, $v0, %lo(D_8088BF60)  ## $v0 = 8088BF60
/* 00C4C 8088BCCC 906B0168 */  lbu     $t3, 0x0168($v1)           ## 00000168
/* 00C50 8088BCD0 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00C54 8088BCD4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00C58 8088BCD8 5560000C */  bnel    $t3, $zero, .L8088BD0C
/* 00C5C 8088BCDC C468000C */  lwc1    $f8, 0x000C($v1)           ## 0000000C
/* 00C60 8088BCE0 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00C64 8088BCE4 44813000 */  mtc1    $at, $f6                   ## $f6 = 40.00
/* 00C68 8088BCE8 C4440004 */  lwc1    $f4, 0x0004($v0)           ## 8088BF64
/* 00C6C 8088BCEC C44C0000 */  lwc1    $f12, 0x0000($v0)          ## 8088BF60
/* 00C70 8088BCF0 8C460008 */  lw      $a2, 0x0008($v0)           ## 8088BF68
/* 00C74 8088BCF4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00C78 8088BCF8 0C034261 */  jal     Matrix_Translate
/* 00C7C 8088BCFC 46062381 */  sub.s   $f14, $f4, $f6
/* 00C80 8088BD00 10000008 */  beq     $zero, $zero, .L8088BD24
/* 00C84 8088BD04 8FA20058 */  lw      $v0, 0x0058($sp)
/* 00C88 8088BD08 C468000C */  lwc1    $f8, 0x000C($v1)           ## 0000000C
.L8088BD0C:
/* 00C8C 8088BD0C 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.00
/* 00C90 8088BD10 C46C0008 */  lwc1    $f12, 0x0008($v1)          ## 00000008
/* 00C94 8088BD14 8C660010 */  lw      $a2, 0x0010($v1)           ## 00000010
/* 00C98 8088BD18 0C034261 */  jal     Matrix_Translate
/* 00C9C 8088BD1C 460A4381 */  sub.s   $f14, $f8, $f10
/* 00CA0 8088BD20 8FA20058 */  lw      $v0, 0x0058($sp)
.L8088BD24:
/* 00CA4 8088BD24 844C07A0 */  lh      $t4, 0x07A0($v0)           ## 000007A0
/* 00CA8 8088BD28 000C6880 */  sll     $t5, $t4,  2
/* 00CAC 8088BD2C 004D7021 */  addu    $t6, $v0, $t5
/* 00CB0 8088BD30 0C016A7D */  jal     Camera_GetCamDirYaw
/* 00CB4 8088BD34 8DC40790 */  lw      $a0, 0x0790($t6)           ## 00000790
/* 00CB8 8088BD38 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00CBC 8088BD3C 00412821 */  addu    $a1, $v0, $at
/* 00CC0 8088BD40 00052C00 */  sll     $a1, $a1, 16
/* 00CC4 8088BD44 00052C03 */  sra     $a1, $a1, 16
/* 00CC8 8088BD48 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 00CCC 8088BD4C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00CD0 8088BD50 0C034421 */  jal     Matrix_RotateRPY
/* 00CD4 8088BD54 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00CD8 8088BD58 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 00CDC 8088BD5C 3C01C128 */  lui     $at, 0xC128                ## $at = C1280000
/* 00CE0 8088BD60 44816000 */  mtc1    $at, $f12                  ## $f12 = -10.50
/* 00CE4 8088BD64 44067000 */  mfc1    $a2, $f14
/* 00CE8 8088BD68 0C034261 */  jal     Matrix_Translate
/* 00CEC 8088BD6C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00CF0 8088BD70 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00CF4 8088BD74 44816000 */  mtc1    $at, $f12                  ## $f12 = 6.00
/* 00CF8 8088BD78 8FAF005C */  lw      $t7, 0x005C($sp)
/* 00CFC 8088BD7C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00D00 8088BD80 44066000 */  mfc1    $a2, $f12
/* 00D04 8088BD84 0C0342A3 */  jal     Matrix_Scale
/* 00D08 8088BD88 C5EE016C */  lwc1    $f14, 0x016C($t7)          ## 0000016C
/* 00D0C 8088BD8C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00D10 8088BD90 8FA70058 */  lw      $a3, 0x0058($sp)
/* 00D14 8088BD94 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 00D18 8088BD98 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00D1C 8088BD9C AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 00D20 8088BDA0 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 00D24 8088BDA4 3C080001 */  lui     $t0, 0x0001                ## $t0 = 00010000
/* 00D28 8088BDA8 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00D2C 8088BDAC 01074021 */  addu    $t0, $t0, $a3
/* 00D30 8088BDB0 8D081DE4 */  lw      $t0, 0x1DE4($t0)           ## 00011DE4
/* 00D34 8088BDB4 3C048089 */  lui     $a0, %hi(D_8088BFC4)       ## $a0 = 80890000
/* 00D38 8088BDB8 3C0F8016 */  lui     $t7, %hi(gSegments)
/* 00D3C 8088BDBC 31090007 */  andi    $t1, $t0, 0x0007           ## $t1 = 00000000
/* 00D40 8088BDC0 00095080 */  sll     $t2, $t1,  2
/* 00D44 8088BDC4 008A2021 */  addu    $a0, $a0, $t2
/* 00D48 8088BDC8 8C84BFC4 */  lw      $a0, %lo(D_8088BFC4)($a0)
/* 00D4C 8088BDCC 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00D50 8088BDD0 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00D54 8088BDD4 00046100 */  sll     $t4, $a0,  4
/* 00D58 8088BDD8 000C6F02 */  srl     $t5, $t4, 28
/* 00D5C 8088BDDC 000D7080 */  sll     $t6, $t5,  2
/* 00D60 8088BDE0 01EE7821 */  addu    $t7, $t7, $t6
/* 00D64 8088BDE4 8DEF6FA8 */  lw      $t7, %lo(gSegments)($t7)
/* 00D68 8088BDE8 00815824 */  and     $t3, $a0, $at
/* 00D6C 8088BDEC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00D70 8088BDF0 016FC021 */  addu    $t8, $t3, $t7
/* 00D74 8088BDF4 0301C821 */  addu    $t9, $t8, $at
/* 00D78 8088BDF8 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 00D7C 8088BDFC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00D80 8088BE00 3C09DA38 */  lui     $t1, 0xDA38                ## $t1 = DA380000
/* 00D84 8088BE04 35290003 */  ori     $t1, $t1, 0x0003           ## $t1 = DA380003
/* 00D88 8088BE08 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 00D8C 8088BE0C AE0802D0 */  sw      $t0, 0x02D0($s0)           ## 000002D0
/* 00D90 8088BE10 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 00D94 8088BE14 3C058089 */  lui     $a1, %hi(D_8088C008)       ## $a1 = 80890000
/* 00D98 8088BE18 8CE40000 */  lw      $a0, 0x0000($a3)           ## 00000000
/* 00D9C 8088BE1C 24A5C008 */  addiu   $a1, $a1, %lo(D_8088C008)  ## $a1 = 8088C008
/* 00DA0 8088BE20 24060355 */  addiu   $a2, $zero, 0x0355         ## $a2 = 00000355
/* 00DA4 8088BE24 0C0346A2 */  jal     Matrix_NewMtx
/* 00DA8 8088BE28 AFA20030 */  sw      $v0, 0x0030($sp)
/* 00DAC 8088BE2C 8FA30030 */  lw      $v1, 0x0030($sp)
/* 00DB0 8088BE30 3C0D0601 */  lui     $t5, %hi(D_0600CA10)                ## $t5 = 06010000
/* 00DB4 8088BE34 25ADCA10 */  addiu   $t5, $t5, %lo(D_0600CA10)           ## $t5 = 0600CA10
/* 00DB8 8088BE38 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00DBC 8088BE3C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00DC0 8088BE40 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 00DC4 8088BE44 3C068089 */  lui     $a2, %hi(D_8088C020)       ## $a2 = 80890000
/* 00DC8 8088BE48 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00DCC 8088BE4C AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 00DD0 8088BE50 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 00DD4 8088BE54 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00DD8 8088BE58 8FAE0058 */  lw      $t6, 0x0058($sp)
/* 00DDC 8088BE5C 24C6C020 */  addiu   $a2, $a2, %lo(D_8088C020)  ## $a2 = 8088C020
/* 00DE0 8088BE60 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFFE8
/* 00DE4 8088BE64 24070359 */  addiu   $a3, $zero, 0x0359         ## $a3 = 00000359
/* 00DE8 8088BE68 0C031AD5 */  jal     Graph_CloseDisps
/* 00DEC 8088BE6C 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 00DF0 8088BE70 8FBF001C */  lw      $ra, 0x001C($sp)
/* 00DF4 8088BE74 8FB00018 */  lw      $s0, 0x0018($sp)
/* 00DF8 8088BE78 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 00DFC 8088BE7C 03E00008 */  jr      $ra
/* 00E00 8088BE80 00000000 */  nop
