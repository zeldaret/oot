glabel func_80A7B024
/* 02074 80A7B024 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02078 80A7B028 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0207C 80A7B02C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02080 80A7B030 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 02084 80A7B034 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 02088 80A7B038 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 0208C 80A7B03C 8C430440 */  lw      $v1, 0x0440($v0)           ## 00000440
/* 02090 80A7B040 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02094 80A7B044 24070026 */  addiu   $a3, $zero, 0x0026         ## $a3 = 00000026
/* 02098 80A7B048 50600003 */  beql    $v1, $zero, .L80A7B058     
/* 0209C 80A7B04C A44F0110 */  sh      $t7, 0x0110($v0)           ## 00000110
/* 020A0 80A7B050 A46E0110 */  sh      $t6, 0x0110($v1)           ## 00000110
/* 020A4 80A7B054 A44F0110 */  sh      $t7, 0x0110($v0)           ## 00000110
.L80A7B058:
/* 020A8 80A7B058 8FB80018 */  lw      $t8, 0x0018($sp)           
/* 020AC 80A7B05C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 020B0 80A7B060 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 020B4 80A7B064 87190308 */  lh      $t9, 0x0308($t8)           ## 00000308
/* 020B8 80A7B068 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 020BC 80A7B06C 57210025 */  bnel    $t9, $at, .L80A7B104       
/* 020C0 80A7B070 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 020C4 80A7B074 94430ED6 */  lhu     $v1, 0x0ED6($v0)           ## 8015F536
/* 020C8 80A7B078 30680800 */  andi    $t0, $v1, 0x0800           ## $t0 = 00000000
/* 020CC 80A7B07C 55000009 */  bnel    $t0, $zero, .L80A7B0A4     
/* 020D0 80A7B080 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 020D4 80A7B084 94440F0C */  lhu     $a0, 0x0F0C($v0)           ## 8015F56C
/* 020D8 80A7B088 346A0800 */  ori     $t2, $v1, 0x0800           ## $t2 = 00000800
/* 020DC 80A7B08C 30890800 */  andi    $t1, $a0, 0x0800           ## $t1 = 00000000
/* 020E0 80A7B090 11200003 */  beq     $t1, $zero, .L80A7B0A0     
/* 020E4 80A7B094 348B0800 */  ori     $t3, $a0, 0x0800           ## $t3 = 00000800
/* 020E8 80A7B098 A44A0ED6 */  sh      $t2, 0x0ED6($v0)           ## 8015F536
/* 020EC 80A7B09C A44B0F0C */  sh      $t3, 0x0F0C($v0)           ## 8015F56C
.L80A7B0A0:
/* 020F0 80A7B0A0 8FA40018 */  lw      $a0, 0x0018($sp)           
.L80A7B0A4:
/* 020F4 80A7B0A4 0C29E6EB */  jal     func_80A79BAC              
/* 020F8 80A7B0A8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 020FC 80A7B0AC 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 02100 80A7B0B0 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 02104 80A7B0B4 944C13FA */  lhu     $t4, 0x13FA($v0)           ## 8015FA5A
/* 02108 80A7B0B8 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 0210C 80A7B0BC 34217FFF */  ori     $at, $at, 0x7FFF           ## $at = FFFF7FFF
/* 02110 80A7B0C0 318EFFF0 */  andi    $t6, $t4, 0xFFF0           ## $t6 = 00000000
/* 02114 80A7B0C4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02118 80A7B0C8 01C17824 */  and     $t7, $t6, $at              
/* 0211C 80A7B0CC A44E13FA */  sh      $t6, 0x13FA($v0)           ## 8015FA5A
/* 02120 80A7B0D0 35F88000 */  ori     $t8, $t7, 0x8000           ## $t8 = 00008000
/* 02124 80A7B0D4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02128 80A7B0D8 A45813FA */  sh      $t8, 0x13FA($v0)           ## 8015FA5A
/* 0212C 80A7B0DC 24190004 */  addiu   $t9, $zero, 0x0004         ## $t9 = 00000004
/* 02130 80A7B0E0 00250821 */  addu    $at, $at, $a1              
/* 02134 80A7B0E4 A03904BF */  sb      $t9, 0x04BF($at)           ## 000104BF
/* 02138 80A7B0E8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0213C 80A7B0EC 24080036 */  addiu   $t0, $zero, 0x0036         ## $t0 = 00000036
/* 02140 80A7B0F0 00250821 */  addu    $at, $at, $a1              
/* 02144 80A7B0F4 A02803DC */  sb      $t0, 0x03DC($at)           ## 000103DC
/* 02148 80A7B0F8 8FA90018 */  lw      $t1, 0x0018($sp)           
/* 0214C 80A7B0FC A5200308 */  sh      $zero, 0x0308($t1)         ## 00000308
/* 02150 80A7B100 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A7B104:
/* 02154 80A7B104 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02158 80A7B108 03E00008 */  jr      $ra                        
/* 0215C 80A7B10C 00000000 */  nop
