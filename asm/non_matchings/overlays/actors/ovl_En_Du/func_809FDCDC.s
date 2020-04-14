.late_rodata
glabel jtbl_809FF460
.word L809FDDA0
.word L809FDDA0
.word L809FDD14
.word L809FDDA0
.word L809FDDA0
.word L809FDDA0
.word L809FDD88
.word L809FDDA0
.word L809FDDA0
.word L809FDDA0

.text
glabel func_809FDCDC
/* 000AC 809FDCDC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000B0 809FDCE0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000B4 809FDCE4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000B8 809FDCE8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 000BC 809FDCEC 0C042F6F */  jal     func_8010BDBC              
/* 000C0 809FDCF0 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 000C4 809FDCF4 2C41000A */  sltiu   $at, $v0, 0x000A           
/* 000C8 809FDCF8 10200029 */  beq     $at, $zero, .L809FDDA0     
/* 000CC 809FDCFC 00027080 */  sll     $t6, $v0,  2               
/* 000D0 809FDD00 3C0180A0 */  lui     $at, %hi(jtbl_809FF460)       ## $at = 80A00000
/* 000D4 809FDD04 002E0821 */  addu    $at, $at, $t6              
/* 000D8 809FDD08 8C2EF460 */  lw      $t6, %lo(jtbl_809FF460)($at)  
/* 000DC 809FDD0C 01C00008 */  jr      $t6                        
/* 000E0 809FDD10 00000000 */  nop
glabel L809FDD14
/* 000E4 809FDD14 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 000E8 809FDD18 2401301A */  addiu   $at, $zero, 0x301A         ## $at = 0000301A
/* 000EC 809FDD1C 95E2010E */  lhu     $v0, 0x010E($t7)           ## 0000010E
/* 000F0 809FDD20 10410009 */  beq     $v0, $at, .L809FDD48       
/* 000F4 809FDD24 2401301C */  addiu   $at, $zero, 0x301C         ## $at = 0000301C
/* 000F8 809FDD28 1041000E */  beq     $v0, $at, .L809FDD64       
/* 000FC 809FDD2C 2401301F */  addiu   $at, $zero, 0x301F         ## $at = 0000301F
/* 00100 809FDD30 1041000C */  beq     $v0, $at, .L809FDD64       
/* 00104 809FDD34 24013020 */  addiu   $at, $zero, 0x3020         ## $at = 00003020
/* 00108 809FDD38 1041000C */  beq     $v0, $at, .L809FDD6C       
/* 0010C 809FDD3C 00000000 */  nop
/* 00110 809FDD40 10000018 */  beq     $zero, $zero, .L809FDDA4   
/* 00114 809FDD44 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809FDD48:
/* 00118 809FDD48 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0011C 809FDD4C 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00120 809FDD50 94580F1A */  lhu     $t8, 0x0F1A($v0)           ## 8015F57A
/* 00124 809FDD54 37190008 */  ori     $t9, $t8, 0x0008           ## $t9 = 00000008
/* 00128 809FDD58 A4590F1A */  sh      $t9, 0x0F1A($v0)           ## 8015F57A
/* 0012C 809FDD5C 10000011 */  beq     $zero, $zero, .L809FDDA4   
/* 00130 809FDD60 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809FDD64:
/* 00134 809FDD64 1000000F */  beq     $zero, $zero, .L809FDDA4   
/* 00138 809FDD68 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
.L809FDD6C:
/* 0013C 809FDD6C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00140 809FDD70 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00144 809FDD74 94480ED8 */  lhu     $t0, 0x0ED8($v0)           ## 8015F538
/* 00148 809FDD78 35090004 */  ori     $t1, $t0, 0x0004           ## $t1 = 00000004
/* 0014C 809FDD7C A4490ED8 */  sh      $t1, 0x0ED8($v0)           ## 8015F538
/* 00150 809FDD80 10000008 */  beq     $zero, $zero, .L809FDDA4   
/* 00154 809FDD84 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
glabel L809FDD88
/* 00158 809FDD88 0C041AF2 */  jal     func_80106BC8              
/* 0015C 809FDD8C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00160 809FDD90 50400004 */  beql    $v0, $zero, .L809FDDA4     
/* 00164 809FDD94 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00168 809FDD98 10000002 */  beq     $zero, $zero, .L809FDDA4   
/* 0016C 809FDD9C 24020003 */  addiu   $v0, $zero, 0x0003         ## $v0 = 00000003
glabel L809FDDA0
.L809FDDA0:
/* 00170 809FDDA0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L809FDDA4:
/* 00174 809FDDA4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00178 809FDDA8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0017C 809FDDAC 03E00008 */  jr      $ra                        
/* 00180 809FDDB0 00000000 */  nop
