glabel func_80A99504
/* 02754 80A99504 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02758 80A99508 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0275C 80A9950C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02760 80A99510 0C00BD04 */  jal     Actor_HasParent              
/* 02764 80A99514 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02768 80A99518 10400006 */  beq     $v0, $zero, .L80A99534     
/* 0276C 80A9951C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02770 80A99520 3C0E80AA */  lui     $t6, %hi(func_80A99560)    ## $t6 = 80AA0000
/* 02774 80A99524 25CE9560 */  addiu   $t6, $t6, %lo(func_80A99560) ## $t6 = 80A99560
/* 02778 80A99528 AC800118 */  sw      $zero, 0x0118($a0)         ## 00000118
/* 0277C 80A9952C 10000008 */  beq     $zero, $zero, .L80A99550   
/* 02780 80A99530 AC8E0190 */  sw      $t6, 0x0190($a0)           ## 00000190
.L80A99534:
/* 02784 80A99534 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 02788 80A99538 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 0278C 80A9953C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02790 80A99540 24060021 */  addiu   $a2, $zero, 0x0021         ## $a2 = 00000021
/* 02794 80A99544 3C0742F0 */  lui     $a3, 0x42F0                ## $a3 = 42F00000
/* 02798 80A99548 0C00BD0D */  jal     Actor_GiveItemToPlayerInRange              
/* 0279C 80A9954C E7A40010 */  swc1    $f4, 0x0010($sp)           
.L80A99550:
/* 027A0 80A99550 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 027A4 80A99554 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 027A8 80A99558 03E00008 */  jr      $ra                        
/* 027AC 80A9955C 00000000 */  nop
