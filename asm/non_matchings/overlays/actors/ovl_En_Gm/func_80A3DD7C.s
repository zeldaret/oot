glabel func_80A3DD7C
/* 0069C 80A3DD7C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 006A0 80A3DD80 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006A4 80A3DD84 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 006A8 80A3DD88 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 006AC 80A3DD8C 0C042F6F */  jal     func_8010BDBC              
/* 006B0 80A3DD90 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 006B4 80A3DD94 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 006B8 80A3DD98 10410004 */  beq     $v0, $at, .L80A3DDAC       
/* 006BC 80A3DD9C 304500FF */  andi    $a1, $v0, 0x00FF           ## $a1 = 00000000
/* 006C0 80A3DDA0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 006C4 80A3DDA4 54410017 */  bnel    $v0, $at, .L80A3DE04       
/* 006C8 80A3DDA8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A3DDAC:
/* 006CC 80A3DDAC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 006D0 80A3DDB0 0C041AF2 */  jal     func_80106BC8              
/* 006D4 80A3DDB4 A3A5001F */  sb      $a1, 0x001F($sp)           
/* 006D8 80A3DDB8 10400011 */  beq     $v0, $zero, .L80A3DE00     
/* 006DC 80A3DDBC 93A5001F */  lbu     $a1, 0x001F($sp)           
/* 006E0 80A3DDC0 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 006E4 80A3DDC4 3C0E80A4 */  lui     $t6, %hi(func_80A3DC44)    ## $t6 = 80A40000
/* 006E8 80A3DDC8 25CEDC44 */  addiu   $t6, $t6, %lo(func_80A3DC44) ## $t6 = 80A3DC44
/* 006EC 80A3DDCC 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 006F0 80A3DDD0 14A1000B */  bne     $a1, $at, .L80A3DE00       
/* 006F4 80A3DDD4 ADEE026C */  sw      $t6, 0x026C($t7)           ## 0000026C
/* 006F8 80A3DDD8 8FB90024 */  lw      $t9, 0x0024($sp)           
/* 006FC 80A3DDDC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00700 80A3DDE0 24180036 */  addiu   $t8, $zero, 0x0036         ## $t8 = 00000036
/* 00704 80A3DDE4 00390821 */  addu    $at, $at, $t9              
/* 00708 80A3DDE8 A03803DC */  sb      $t8, 0x03DC($at)           ## 000103DC
/* 0070C 80A3DDEC 8FA90024 */  lw      $t1, 0x0024($sp)           
/* 00710 80A3DDF0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00714 80A3DDF4 24080004 */  addiu   $t0, $zero, 0x0004         ## $t0 = 00000004
/* 00718 80A3DDF8 00290821 */  addu    $at, $at, $t1              
/* 0071C 80A3DDFC A02804BF */  sb      $t0, 0x04BF($at)           ## 000104BF
.L80A3DE00:
/* 00720 80A3DE00 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A3DE04:
/* 00724 80A3DE04 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00728 80A3DE08 03E00008 */  jr      $ra                        
/* 0072C 80A3DE0C 00000000 */  nop
