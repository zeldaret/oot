glabel func_80A70C08
/* 01658 80A70C08 8489001C */  lh      $t1, 0x001C($a0)           ## 0000001C
/* 0165C 80A70C0C 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 01660 80A70C10 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 01664 80A70C14 312A007F */  andi    $t2, $t1, 0x007F           ## $t2 = 00000000
/* 01668 80A70C18 51400004 */  beql    $t2, $zero, .L80A70C2C     
/* 0166C 80A70C1C 8C6B0010 */  lw      $t3, 0x0010($v1)           ## 8015E670
/* 01670 80A70C20 03E00008 */  jr      $ra                        
/* 01674 80A70C24 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A70C28:
/* 01678 80A70C28 8C6B0010 */  lw      $t3, 0x0010($v1)           ## 8015E670
.L80A70C2C:
/* 0167C 80A70C2C 15600003 */  bne     $t3, $zero, .L80A70C3C     
/* 01680 80A70C30 00000000 */  nop
/* 01684 80A70C34 03E00008 */  jr      $ra                        
/* 01688 80A70C38 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A70C3C:
/* 0168C 80A70C3C 03E00008 */  jr      $ra                        
/* 01690 80A70C40 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
