.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel bcopy
/* 007B10 80006F10 10C0001A */  beqz  $a2, ret
/* 007B14 80006F14 00A03825 */   move  $a3, $a1
/* 007B18 80006F18 10850018 */  beq   $a0, $a1, ret
/* 007B1C 80006F1C 00A4082A */   slt   $at, $a1, $a0
/* 007B20 80006F20 54200008 */  bnezl $at, goforwards
/* 007B24 80006F24 28C10010 */   slti  $at, $a2, 0x10
/* 007B28 80006F28 00861020 */  add   $v0, $a0, $a2
/* 007B2C 80006F2C 00A2082A */  slt   $at, $a1, $v0
/* 007B30 80006F30 50200004 */  beql  $at, $zero, goforwards
/* 007B34 80006F34 28C10010 */   slti  $at, $a2, 0x10
/* 007B38 80006F38 1000005B */  b     gobackwards
/* 007B3C 80006F3C 28C10010 */   slti  $at, $a2, 0x10
/* 007B40 80006F40 28C10010 */  slti  $at, $a2, 0x10
goforwards:
/* 007B44 80006F44 14200005 */  bnez  $at, forwards_bytecopy
/* 007B48 80006F48 00000000 */   nop   
/* 007B4C 80006F4C 30820003 */  andi  $v0, $a0, 3
/* 007B50 80006F50 30A30003 */  andi  $v1, $a1, 3
/* 007B54 80006F54 1043000B */  beq   $v0, $v1, forwalignable
/* 007B58 80006F58 00000000 */   nop   
forwards_bytecopy:
/* 007B5C 80006F5C 10C00007 */  beqz  $a2, ret
/* 007B60 80006F60 00000000 */   nop   
/* 007B64 80006F64 00861821 */  addu  $v1, $a0, $a2
.L80006F68:
/* 007B68 80006F68 80820000 */  lb    $v0, ($a0)
/* 007B6C 80006F6C 24840001 */  addiu $a0, $a0, 1
/* 007B70 80006F70 24A50001 */  addiu $a1, $a1, 1
/* 007B74 80006F74 1483FFFC */  bne   $a0, $v1, .L80006F68
/* 007B78 80006F78 A0A2FFFF */   sb    $v0, -1($a1)
ret:
/* 007B7C 80006F7C 03E00008 */  jr    $ra
/* 007B80 80006F80 00E01025 */   move  $v0, $a3

forwalignable:
/* 007B84 80006F84 10400018 */  beqz  $v0, forwards_32
/* 007B88 80006F88 24010001 */   li    $at, 1
/* 007B8C 80006F8C 1041000F */  beq   $v0, $at, forw_copy3
/* 007B90 80006F90 24010002 */   li    $at, 2
/* 007B94 80006F94 50410008 */  beql  $v0, $at, forw_copy2
/* 007B98 80006F98 84820000 */   lh    $v0, ($a0)
/* 007B9C 80006F9C 80820000 */  lb    $v0, ($a0)
/* 007BA0 80006FA0 24840001 */  addiu $a0, $a0, 1
/* 007BA4 80006FA4 24A50001 */  addiu $a1, $a1, 1
/* 007BA8 80006FA8 24C6FFFF */  addiu $a2, $a2, -1
/* 007BAC 80006FAC 1000000E */  b     forwards_32
/* 007BB0 80006FB0 A0A2FFFF */   sb    $v0, -1($a1)
/* 007BB4 80006FB4 84820000 */  lh    $v0, ($a0)
forw_copy2:
/* 007BB8 80006FB8 24840002 */  addiu $a0, $a0, 2
/* 007BBC 80006FBC 24A50002 */  addiu $a1, $a1, 2
/* 007BC0 80006FC0 24C6FFFE */  addiu $a2, $a2, -2
/* 007BC4 80006FC4 10000008 */  b     forwards_32
/* 007BC8 80006FC8 A4A2FFFE */   sh    $v0, -2($a1)
forw_copy3:
/* 007BCC 80006FCC 80820000 */  lb    $v0, ($a0)
/* 007BD0 80006FD0 84830001 */  lh    $v1, 1($a0)
/* 007BD4 80006FD4 24840003 */  addiu $a0, $a0, 3
/* 007BD8 80006FD8 24A50003 */  addiu $a1, $a1, 3
/* 007BDC 80006FDC 24C6FFFD */  addiu $a2, $a2, -3
/* 007BE0 80006FE0 A0A2FFFD */  sb    $v0, -3($a1)
/* 007BE4 80006FE4 A4A3FFFE */  sh    $v1, -2($a1)
forwards_32:
/* 007BE8 80006FE8 28C10020 */  slti  $at, $a2, 0x20
/* 007BEC 80006FEC 54200016 */  bnezl $at, .L80007048
/* 007BF0 80006FF0 28C10010 */   slti  $at, $a2, 0x10
/* 007BF4 80006FF4 8C820000 */  lw    $v0, ($a0)
/* 007BF8 80006FF8 8C830004 */  lw    $v1, 4($a0)
/* 007BFC 80006FFC 8C880008 */  lw    $t0, 8($a0)
/* 007C00 80007000 8C89000C */  lw    $t1, 0xc($a0)
/* 007C04 80007004 8C8A0010 */  lw    $t2, 0x10($a0)
/* 007C08 80007008 8C8B0014 */  lw    $t3, 0x14($a0)
/* 007C0C 8000700C 8C8C0018 */  lw    $t4, 0x18($a0)
/* 007C10 80007010 8C8D001C */  lw    $t5, 0x1c($a0)
/* 007C14 80007014 24840020 */  addiu $a0, $a0, 0x20
/* 007C18 80007018 24A50020 */  addiu $a1, $a1, 0x20
/* 007C1C 8000701C 24C6FFE0 */  addiu $a2, $a2, -0x20
/* 007C20 80007020 ACA2FFE0 */  sw    $v0, -0x20($a1)
/* 007C24 80007024 ACA3FFE4 */  sw    $v1, -0x1c($a1)
/* 007C28 80007028 ACA8FFE8 */  sw    $t0, -0x18($a1)
/* 007C2C 8000702C ACA9FFEC */  sw    $t1, -0x14($a1)
/* 007C30 80007030 ACAAFFF0 */  sw    $t2, -0x10($a1)
/* 007C34 80007034 ACABFFF4 */  sw    $t3, -0xc($a1)
/* 007C38 80007038 ACACFFF8 */  sw    $t4, -8($a1)
/* 007C3C 8000703C 1000FFEA */  b     forwards_32
/* 007C40 80007040 ACADFFFC */   sw    $t5, -4($a1)
forwards_16:
/* 007C44 80007044 28C10010 */  slti  $at, $a2, 0x10
.L80007048:
/* 007C48 80007048 5420000E */  bnezl $at, .L80007084
/* 007C4C 8000704C 28C10004 */   slti  $at, $a2, 4
/* 007C50 80007050 8C820000 */  lw    $v0, ($a0)
/* 007C54 80007054 8C830004 */  lw    $v1, 4($a0)
/* 007C58 80007058 8C880008 */  lw    $t0, 8($a0)
/* 007C5C 8000705C 8C89000C */  lw    $t1, 0xc($a0)
/* 007C60 80007060 24840010 */  addiu $a0, $a0, 0x10
/* 007C64 80007064 24A50010 */  addiu $a1, $a1, 0x10
/* 007C68 80007068 24C6FFF0 */  addiu $a2, $a2, -0x10
/* 007C6C 8000706C ACA2FFF0 */  sw    $v0, -0x10($a1)
/* 007C70 80007070 ACA3FFF4 */  sw    $v1, -0xc($a1)
/* 007C74 80007074 ACA8FFF8 */  sw    $t0, -8($a1)
/* 007C78 80007078 1000FFF2 */  b     forwards_16
/* 007C7C 8000707C ACA9FFFC */   sw    $t1, -4($a1)
forwards_4:
/* 007C80 80007080 28C10004 */  slti  $at, $a2, 4
.L80007084:
/* 007C84 80007084 1420FFB5 */  bnez  $at, forwards_bytecopy
/* 007C88 80007088 00000000 */   nop   
/* 007C8C 8000708C 8C820000 */  lw    $v0, ($a0)
/* 007C90 80007090 24840004 */  addiu $a0, $a0, 4
/* 007C94 80007094 24A50004 */  addiu $a1, $a1, 4
/* 007C98 80007098 24C6FFFC */  addiu $a2, $a2, -4
/* 007C9C 8000709C 1000FFF8 */  b     forwards_4
/* 007CA0 800070A0 ACA2FFFC */   sw    $v0, -4($a1)
/* 007CA4 800070A4 28C10010 */  slti  $at, $a2, 0x10
gobackwards:
/* 007CA8 800070A8 00862020 */  add   $a0, $a0, $a2
/* 007CAC 800070AC 14200005 */  bnez  $at, backwards_bytecopy
/* 007CB0 800070B0 00A62820 */   add   $a1, $a1, $a2
/* 007CB4 800070B4 30820003 */  andi  $v0, $a0, 3
/* 007CB8 800070B8 30A30003 */  andi  $v1, $a1, 3
/* 007CBC 800070BC 1043000D */  beq   $v0, $v1, backalignable
/* 007CC0 800070C0 00000000 */   nop   
backwards_bytecopy:
/* 007CC4 800070C4 10C0FFAD */  beqz  $a2, ret
/* 007CC8 800070C8 00000000 */   nop   
/* 007CCC 800070CC 2484FFFF */  addiu $a0, $a0, -1
/* 007CD0 800070D0 24A5FFFF */  addiu $a1, $a1, -1
/* 007CD4 800070D4 00861823 */  subu  $v1, $a0, $a2
.L800070D8:
/* 007CD8 800070D8 80820000 */  lb    $v0, ($a0)
/* 007CDC 800070DC 2484FFFF */  addiu $a0, $a0, -1
/* 007CE0 800070E0 24A5FFFF */  addiu $a1, $a1, -1
/* 007CE4 800070E4 1483FFFC */  bne   $a0, $v1, .L800070D8
/* 007CE8 800070E8 A0A20001 */   sb    $v0, 1($a1)
/* 007CEC 800070EC 03E00008 */  jr    $ra
/* 007CF0 800070F0 00E01025 */   move  $v0, $a3

backalignable:
/* 007CF4 800070F4 10400018 */  beqz  $v0, backwards_32
/* 007CF8 800070F8 24010003 */   li    $at, 3
/* 007CFC 800070FC 1041000F */  beq   $v0, $at, back_copy3
/* 007D00 80007100 24010002 */   li    $at, 2
/* 007D04 80007104 50410008 */  beql  $v0, $at, back_copy2
/* 007D08 80007108 8482FFFE */   lh    $v0, -2($a0)
/* 007D0C 8000710C 8082FFFF */  lb    $v0, -1($a0)
/* 007D10 80007110 2484FFFF */  addiu $a0, $a0, -1
/* 007D14 80007114 24A5FFFF */  addiu $a1, $a1, -1
/* 007D18 80007118 24C6FFFF */  addiu $a2, $a2, -1
/* 007D1C 8000711C 1000000E */  b     backwards_32
/* 007D20 80007120 A0A20000 */   sb    $v0, ($a1)
/* 007D24 80007124 8482FFFE */  lh    $v0, -2($a0)
back_copy2:
/* 007D28 80007128 2484FFFE */  addiu $a0, $a0, -2
/* 007D2C 8000712C 24A5FFFE */  addiu $a1, $a1, -2
/* 007D30 80007130 24C6FFFE */  addiu $a2, $a2, -2
/* 007D34 80007134 10000008 */  b     backwards_32
/* 007D38 80007138 A4A20000 */   sh    $v0, ($a1)
back_copy3:
/* 007D3C 8000713C 8082FFFF */  lb    $v0, -1($a0)
/* 007D40 80007140 8483FFFD */  lh    $v1, -3($a0)
/* 007D44 80007144 2484FFFD */  addiu $a0, $a0, -3
/* 007D48 80007148 24A5FFFD */  addiu $a1, $a1, -3
/* 007D4C 8000714C 24C6FFFD */  addiu $a2, $a2, -3
/* 007D50 80007150 A0A20002 */  sb    $v0, 2($a1)
/* 007D54 80007154 A4A30000 */  sh    $v1, ($a1)
backwards_32:
/* 007D58 80007158 28C10020 */  slti  $at, $a2, 0x20
/* 007D5C 8000715C 54200016 */  bnezl $at, .L800071B8
/* 007D60 80007160 28C10010 */   slti  $at, $a2, 0x10
/* 007D64 80007164 8C82FFFC */  lw    $v0, -4($a0)
/* 007D68 80007168 8C83FFF8 */  lw    $v1, -8($a0)
/* 007D6C 8000716C 8C88FFF4 */  lw    $t0, -0xc($a0)
/* 007D70 80007170 8C89FFF0 */  lw    $t1, -0x10($a0)
/* 007D74 80007174 8C8AFFEC */  lw    $t2, -0x14($a0)
/* 007D78 80007178 8C8BFFE8 */  lw    $t3, -0x18($a0)
/* 007D7C 8000717C 8C8CFFE4 */  lw    $t4, -0x1c($a0)
/* 007D80 80007180 8C8DFFE0 */  lw    $t5, -0x20($a0)
/* 007D84 80007184 2484FFE0 */  addiu $a0, $a0, -0x20
/* 007D88 80007188 24A5FFE0 */  addiu $a1, $a1, -0x20
/* 007D8C 8000718C 24C6FFE0 */  addiu $a2, $a2, -0x20
/* 007D90 80007190 ACA2001C */  sw    $v0, 0x1c($a1)
/* 007D94 80007194 ACA30018 */  sw    $v1, 0x18($a1)
/* 007D98 80007198 ACA80014 */  sw    $t0, 0x14($a1)
/* 007D9C 8000719C ACA90010 */  sw    $t1, 0x10($a1)
/* 007DA0 800071A0 ACAA000C */  sw    $t2, 0xc($a1)
/* 007DA4 800071A4 ACAB0008 */  sw    $t3, 8($a1)
/* 007DA8 800071A8 ACAC0004 */  sw    $t4, 4($a1)
/* 007DAC 800071AC 1000FFEA */  b     backwards_32
/* 007DB0 800071B0 ACAD0000 */   sw    $t5, ($a1)
backwards_16:
/* 007DB4 800071B4 28C10010 */  slti  $at, $a2, 0x10
.L800071B8:
/* 007DB8 800071B8 5420000E */  bnezl $at, .L800071F4
/* 007DBC 800071BC 28C10004 */   slti  $at, $a2, 4
/* 007DC0 800071C0 8C82FFFC */  lw    $v0, -4($a0)
/* 007DC4 800071C4 8C83FFF8 */  lw    $v1, -8($a0)
/* 007DC8 800071C8 8C88FFF4 */  lw    $t0, -0xc($a0)
/* 007DCC 800071CC 8C89FFF0 */  lw    $t1, -0x10($a0)
/* 007DD0 800071D0 2484FFF0 */  addiu $a0, $a0, -0x10
/* 007DD4 800071D4 24A5FFF0 */  addiu $a1, $a1, -0x10
/* 007DD8 800071D8 24C6FFF0 */  addiu $a2, $a2, -0x10
/* 007DDC 800071DC ACA2000C */  sw    $v0, 0xc($a1)
/* 007DE0 800071E0 ACA30008 */  sw    $v1, 8($a1)
/* 007DE4 800071E4 ACA80004 */  sw    $t0, 4($a1)
/* 007DE8 800071E8 1000FFF2 */  b     backwards_16
/* 007DEC 800071EC ACA90000 */   sw    $t1, ($a1)
backwards_4:
/* 007DF0 800071F0 28C10004 */  slti  $at, $a2, 4
.L800071F4:
/* 007DF4 800071F4 1420FFB3 */  bnez  $at, backwards_bytecopy
/* 007DF8 800071F8 00000000 */   nop   
/* 007DFC 800071FC 8C82FFFC */  lw    $v0, -4($a0)
/* 007E00 80007200 2484FFFC */  addiu $a0, $a0, -4
/* 007E04 80007204 24A5FFFC */  addiu $a1, $a1, -4
/* 007E08 80007208 24C6FFFC */  addiu $a2, $a2, -4
/* 007E0C 8000720C 1000FFF8 */  b     backwards_4
/* 007E10 80007210 ACA20000 */   sw    $v0, ($a1)
