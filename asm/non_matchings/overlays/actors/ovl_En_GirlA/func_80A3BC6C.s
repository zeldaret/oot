.late_rodata
glabel jtbl_80A3D0F0
.word L80A3BD18
.word L80A3BD30
.word L80A3BD48
.word L80A3BCA0
.word L80A3BCB8
.word L80A3BCD0
.word L80A3BCE8
.word L80A3BD00

.text
glabel func_80A3BC6C
/* 0151C 80A3BC6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01520 80A3BC70 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01524 80A3BC74 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01528 80A3BC78 84AE001C */  lh      $t6, 0x001C($a1)           ## 0000001C
/* 0152C 80A3BC7C 25CFFFEB */  addiu   $t7, $t6, 0xFFEB           ## $t7 = FFFFFFEB
/* 01530 80A3BC80 2DE10008 */  sltiu   $at, $t7, 0x0008           
/* 01534 80A3BC84 10200035 */  beq     $at, $zero, .L80A3BD5C     
/* 01538 80A3BC88 000F7880 */  sll     $t7, $t7,  2               
/* 0153C 80A3BC8C 3C0180A4 */  lui     $at, %hi(jtbl_80A3D0F0)       ## $at = 80A40000
/* 01540 80A3BC90 002F0821 */  addu    $at, $at, $t7              
/* 01544 80A3BC94 8C2FD0F0 */  lw      $t7, %lo(jtbl_80A3D0F0)($at)  
/* 01548 80A3BC98 01E00008 */  jr      $t7                        
/* 0154C 80A3BC9C 00000000 */  nop
glabel L80A3BCA0
/* 01550 80A3BCA0 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 01554 80A3BCA4 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01558 80A3BCA8 94580EF0 */  lhu     $t8, 0x0EF0($v0)           ## 8015F550
/* 0155C 80A3BCAC 37190040 */  ori     $t9, $t8, 0x0040           ## $t9 = 00000040
/* 01560 80A3BCB0 1000002A */  beq     $zero, $zero, .L80A3BD5C   
/* 01564 80A3BCB4 A4590EF0 */  sh      $t9, 0x0EF0($v0)           ## 8015F550
glabel L80A3BCB8
/* 01568 80A3BCB8 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 0156C 80A3BCBC 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01570 80A3BCC0 94480EF0 */  lhu     $t0, 0x0EF0($v0)           ## 8015F550
/* 01574 80A3BCC4 35090080 */  ori     $t1, $t0, 0x0080           ## $t1 = 00000080
/* 01578 80A3BCC8 10000024 */  beq     $zero, $zero, .L80A3BD5C   
/* 0157C 80A3BCCC A4490EF0 */  sh      $t1, 0x0EF0($v0)           ## 8015F550
glabel L80A3BCD0
/* 01580 80A3BCD0 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 01584 80A3BCD4 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01588 80A3BCD8 944A0EF0 */  lhu     $t2, 0x0EF0($v0)           ## 8015F550
/* 0158C 80A3BCDC 354B0100 */  ori     $t3, $t2, 0x0100           ## $t3 = 00000100
/* 01590 80A3BCE0 1000001E */  beq     $zero, $zero, .L80A3BD5C   
/* 01594 80A3BCE4 A44B0EF0 */  sh      $t3, 0x0EF0($v0)           ## 8015F550
glabel L80A3BCE8
/* 01598 80A3BCE8 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 0159C 80A3BCEC 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 015A0 80A3BCF0 944C0EF0 */  lhu     $t4, 0x0EF0($v0)           ## 8015F550
/* 015A4 80A3BCF4 358D0200 */  ori     $t5, $t4, 0x0200           ## $t5 = 00000200
/* 015A8 80A3BCF8 10000018 */  beq     $zero, $zero, .L80A3BD5C   
/* 015AC 80A3BCFC A44D0EF0 */  sh      $t5, 0x0EF0($v0)           ## 8015F550
glabel L80A3BD00
/* 015B0 80A3BD00 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 015B4 80A3BD04 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 015B8 80A3BD08 944E0EF0 */  lhu     $t6, 0x0EF0($v0)           ## 8015F550
/* 015BC 80A3BD0C 35CF0400 */  ori     $t7, $t6, 0x0400           ## $t7 = 00000400
/* 015C0 80A3BD10 10000012 */  beq     $zero, $zero, .L80A3BD5C   
/* 015C4 80A3BD14 A44F0EF0 */  sh      $t7, 0x0EF0($v0)           ## 8015F550
glabel L80A3BD18
/* 015C8 80A3BD18 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 015CC 80A3BD1C 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 015D0 80A3BD20 94580EF0 */  lhu     $t8, 0x0EF0($v0)           ## 8015F550
/* 015D4 80A3BD24 37190008 */  ori     $t9, $t8, 0x0008           ## $t9 = 00000008
/* 015D8 80A3BD28 1000000C */  beq     $zero, $zero, .L80A3BD5C   
/* 015DC 80A3BD2C A4590EF0 */  sh      $t9, 0x0EF0($v0)           ## 8015F550
glabel L80A3BD30
/* 015E0 80A3BD30 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 015E4 80A3BD34 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 015E8 80A3BD38 94480EF0 */  lhu     $t0, 0x0EF0($v0)           ## 8015F550
/* 015EC 80A3BD3C 35090010 */  ori     $t1, $t0, 0x0010           ## $t1 = 00000010
/* 015F0 80A3BD40 10000006 */  beq     $zero, $zero, .L80A3BD5C   
/* 015F4 80A3BD44 A4490EF0 */  sh      $t1, 0x0EF0($v0)           ## 8015F550
glabel L80A3BD48
/* 015F8 80A3BD48 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 015FC 80A3BD4C 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01600 80A3BD50 944A0EF0 */  lhu     $t2, 0x0EF0($v0)           ## 8015F550
/* 01604 80A3BD54 354B0020 */  ori     $t3, $t2, 0x0020           ## $t3 = 00000020
/* 01608 80A3BD58 A44B0EF0 */  sh      $t3, 0x0EF0($v0)           ## 8015F550
.L80A3BD5C:
/* 0160C 80A3BD5C 84A401C8 */  lh      $a0, 0x01C8($a1)           ## 000001C8
/* 01610 80A3BD60 00042023 */  subu    $a0, $zero, $a0            
/* 01614 80A3BD64 00042400 */  sll     $a0, $a0, 16               
/* 01618 80A3BD68 0C021CC3 */  jal     Rupees_ChangeBy              
/* 0161C 80A3BD6C 00042403 */  sra     $a0, $a0, 16               
/* 01620 80A3BD70 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01624 80A3BD74 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01628 80A3BD78 03E00008 */  jr      $ra                        
/* 0162C 80A3BD7C 00000000 */  nop
