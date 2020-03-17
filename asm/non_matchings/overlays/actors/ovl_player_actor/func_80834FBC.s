glabel func_80834FBC
/* 02DAC 80834FBC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02DB0 80834FC0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02DB4 80834FC4 8C82011C */  lw      $v0, 0x011C($a0)           ## 0000011C
/* 02DB8 80834FC8 50400010 */  beql    $v0, $zero, .L8083500C     
/* 02DBC 80834FCC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 02DC0 80834FD0 8C8E03AC */  lw      $t6, 0x03AC($a0)           ## 000003AC
/* 02DC4 80834FD4 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 02DC8 80834FD8 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 02DCC 80834FDC 15C00008 */  bne     $t6, $zero, .L80835000     
/* 02DD0 80834FE0 240700FA */  addiu   $a3, $zero, 0x00FA         ## $a3 = 000000FA
/* 02DD4 80834FE4 AC8203AC */  sw      $v0, 0x03AC($a0)           ## 000003AC
/* 02DD8 80834FE8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02DDC 80834FEC 0C20C993 */  jal     func_8083264C              
/* 02DE0 80834FF0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02DE4 80834FF4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02DE8 80834FF8 0C00BDF7 */  jal     func_8002F7DC              
/* 02DEC 80834FFC 24051828 */  addiu   $a1, $zero, 0x1828         ## $a1 = 00001828
.L80835000:
/* 02DF0 80835000 10000002 */  beq     $zero, $zero, .L8083500C   
/* 02DF4 80835004 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 02DF8 80835008 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8083500C:
/* 02DFC 8083500C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02E00 80835010 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02E04 80835014 03E00008 */  jr      $ra                        
/* 02E08 80835018 00000000 */  nop


