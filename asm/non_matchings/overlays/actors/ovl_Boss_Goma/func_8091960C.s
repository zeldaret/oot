glabel func_8091960C
/* 03BFC 8091960C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03C00 80919610 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03C04 80919614 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 03C08 80919618 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03C0C 8091961C AFA70018 */  sw      $a3, 0x0018($sp)           
/* 03C10 80919620 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 03C14 80919624 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 03C18 80919628 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 03C1C 8091962C 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 03C20 80919630 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 03C24 80919634 0C01E123 */  jal     Math_ApproachZeroF
              
/* 03C28 80919638 24E40068 */  addiu   $a0, $a3, 0x0068           ## $a0 = 00000068
/* 03C2C 8091963C 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 03C30 80919640 84EE01D2 */  lh      $t6, 0x01D2($a3)           ## 000001D2
/* 03C34 80919644 55C0002C */  bnel    $t6, $zero, .L809196F8     
/* 03C38 80919648 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03C3C 8091964C 84E201A4 */  lh      $v0, 0x01A4($a3)           ## 000001A4
/* 03C40 80919650 1440000B */  bne     $v0, $zero, .L80919680     
/* 03C44 80919654 00000000 */  nop
/* 03C48 80919658 84EF01A6 */  lh      $t7, 0x01A6($a3)           ## 000001A6
/* 03C4C 8091965C 15E00008 */  bne     $t7, $zero, .L80919680     
/* 03C50 80919660 00000000 */  nop
/* 03C54 80919664 84F801A8 */  lh      $t8, 0x01A8($a3)           ## 000001A8
/* 03C58 80919668 17000005 */  bne     $t8, $zero, .L80919680     
/* 03C5C 8091966C 00000000 */  nop
/* 03C60 80919670 0C2458C7 */  jal     func_8091631C              
/* 03C64 80919674 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 03C68 80919678 1000001F */  beq     $zero, $zero, .L809196F8   
/* 03C6C 8091967C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80919680:
/* 03C70 80919680 0443000C */  bgezl   $v0, .L809196B4            
/* 03C74 80919684 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 03C78 80919688 84F901A6 */  lh      $t9, 0x01A6($a3)           ## 000001A6
/* 03C7C 8091968C 07230009 */  bgezl   $t9, .L809196B4            
/* 03C80 80919690 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 03C84 80919694 84E801A8 */  lh      $t0, 0x01A8($a3)           ## 000001A8
/* 03C88 80919698 05030006 */  bgezl   $t0, .L809196B4            
/* 03C8C 8091969C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 03C90 809196A0 0C24586C */  jal     func_809161B0              
/* 03C94 809196A4 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 03C98 809196A8 10000013 */  beq     $zero, $zero, .L809196F8   
/* 03C9C 809196AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03CA0 809196B0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809196B4:
/* 03CA4 809196B4 00024840 */  sll     $t1, $v0,  1               
.L809196B8:
/* 03CA8 809196B8 00E95021 */  addu    $t2, $a3, $t1              
/* 03CAC 809196BC 854B01A4 */  lh      $t3, 0x01A4($t2)           ## 000001A4
/* 03CB0 809196C0 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 03CB4 809196C4 00021400 */  sll     $v0, $v0, 16               
/* 03CB8 809196C8 15600005 */  bne     $t3, $zero, .L809196E0     
/* 03CBC 809196CC 00021403 */  sra     $v0, $v0, 16               
/* 03CC0 809196D0 0C2458AA */  jal     func_809162A8              
/* 03CC4 809196D4 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 03CC8 809196D8 10000007 */  beq     $zero, $zero, .L809196F8   
/* 03CCC 809196DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809196E0:
/* 03CD0 809196E0 28410003 */  slti    $at, $v0, 0x0003           
/* 03CD4 809196E4 5420FFF4 */  bnel    $at, $zero, .L809196B8     
/* 03CD8 809196E8 00024840 */  sll     $t1, $v0,  1               
/* 03CDC 809196EC 0C245906 */  jal     func_80916418              
/* 03CE0 809196F0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 03CE4 809196F4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809196F8:
/* 03CE8 809196F8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03CEC 809196FC 03E00008 */  jr      $ra                        
/* 03CF0 80919700 00000000 */  nop
