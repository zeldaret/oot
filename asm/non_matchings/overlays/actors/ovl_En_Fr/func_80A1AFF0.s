glabel func_80A1AFF0
/* 00650 80A1AFF0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00654 80A1AFF4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00658 80A1AFF8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0065C 80A1AFFC AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00660 80A1B000 908F037A */  lbu     $t7, 0x037A($a0)           ## 0000037A
/* 00664 80A1B004 908E037B */  lbu     $t6, 0x037B($a0)           ## 0000037B
/* 00668 80A1B008 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0066C 80A1B00C 51CF001F */  beql    $t6, $t7, .L80A1B08C       
/* 00670 80A1B010 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00674 80A1B014 C4840024 */  lwc1    $f4, 0x0024($a0)           ## 00000024
/* 00678 80A1B018 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0067C 80A1B01C 44814000 */  mtc1    $at, $f8                   ## $f8 = 10.00
/* 00680 80A1B020 E7A4002C */  swc1    $f4, 0x002C($sp)           
/* 00684 80A1B024 C4860028 */  lwc1    $f6, 0x0028($a0)           ## 00000028
/* 00688 80A1B028 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 0068C 80A1B02C 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00690 80A1B030 46083281 */  sub.s   $f10, $f6, $f8             
/* 00694 80A1B034 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00698 80A1B038 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0069C 80A1B03C E7AA0030 */  swc1    $f10, 0x0030($sp)          
/* 006A0 80A1B040 C490002C */  lwc1    $f16, 0x002C($a0)          ## 0000002C
/* 006A4 80A1B044 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 006A8 80A1B048 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 006AC 80A1B04C AFB90014 */  sw      $t9, 0x0014($sp)           
/* 006B0 80A1B050 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 006B4 80A1B054 0C00A527 */  jal     EffectSsGSplash_Spawn              
/* 006B8 80A1B058 E7B00034 */  swc1    $f16, 0x0034($sp)          
/* 006BC 80A1B05C 9208037A */  lbu     $t0, 0x037A($s0)           ## 0000037A
/* 006C0 80A1B060 240528C5 */  addiu   $a1, $zero, 0x28C5         ## $a1 = 000028C5
/* 006C4 80A1B064 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006C8 80A1B068 15000005 */  bne     $t0, $zero, .L80A1B080     
/* 006CC 80A1B06C 00000000 */  nop
/* 006D0 80A1B070 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 006D4 80A1B074 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006D8 80A1B078 10000004 */  beq     $zero, $zero, .L80A1B08C   
/* 006DC 80A1B07C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A1B080:
/* 006E0 80A1B080 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 006E4 80A1B084 24052817 */  addiu   $a1, $zero, 0x2817         ## $a1 = 00002817
/* 006E8 80A1B088 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A1B08C:
/* 006EC 80A1B08C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 006F0 80A1B090 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 006F4 80A1B094 03E00008 */  jr      $ra                        
/* 006F8 80A1B098 00000000 */  nop
