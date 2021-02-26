glabel func_80AFCD60
/* 003C0 80AFCD60 3C0E8016 */  lui     $t6, %hi(gSaveContext+0x10)
/* 003C4 80AFCD64 8DCEE670 */  lw      $t6, %lo(gSaveContext+0x10)($t6)
/* 003C8 80AFCD68 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003CC 80AFCD6C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003D0 80AFCD70 15C00005 */  bne     $t6, $zero, .L80AFCD88     
/* 003D4 80AFCD74 240511C7 */  addiu   $a1, $zero, 0x11C7         ## $a1 = 000011C7
/* 003D8 80AFCD78 0C2BF3D2 */  jal     func_80AFCF48              
/* 003DC 80AFCD7C 00000000 */  nop
/* 003E0 80AFCD80 1000001A */  beq     $zero, $zero, .L80AFCDEC   
/* 003E4 80AFCD84 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFCD88:
/* 003E8 80AFCD88 0C00B821 */  jal     func_8002E084              
/* 003EC 80AFCD8C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 003F0 80AFCD90 10400013 */  beq     $v0, $zero, .L80AFCDE0     
/* 003F4 80AFCD94 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 003F8 80AFCD98 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 003FC 80AFCD9C 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00400 80AFCDA0 44815000 */  mtc1    $at, $f10                  ## $f10 = 6.00
/* 00404 80AFCDA4 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 00408 80AFCDA8 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 0040C 80AFCDAC 44819000 */  mtc1    $at, $f18                  ## $f18 = 60.00
/* 00410 80AFCDB0 46803220 */  cvt.s.w $f8, $f6                   
/* 00414 80AFCDB4 C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 00418 80AFCDB8 460A4402 */  mul.s   $f16, $f8, $f10            
/* 0041C 80AFCDBC 46109180 */  add.s   $f6, $f18, $f16            
/* 00420 80AFCDC0 4606203C */  c.lt.s  $f4, $f6                   
/* 00424 80AFCDC4 00000000 */  nop
/* 00428 80AFCDC8 45000005 */  bc1f    .L80AFCDE0                 
/* 0042C 80AFCDCC 00000000 */  nop
/* 00430 80AFCDD0 0C2BF4CF */  jal     func_80AFD33C              
/* 00434 80AFCDD4 00000000 */  nop
/* 00438 80AFCDD8 10000004 */  beq     $zero, $zero, .L80AFCDEC   
/* 0043C 80AFCDDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFCDE0:
/* 00440 80AFCDE0 0C2BF429 */  jal     func_80AFD0A4              
/* 00444 80AFCDE4 00000000 */  nop
/* 00448 80AFCDE8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFCDEC:
/* 0044C 80AFCDEC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00450 80AFCDF0 03E00008 */  jr      $ra                        
/* 00454 80AFCDF4 00000000 */  nop
