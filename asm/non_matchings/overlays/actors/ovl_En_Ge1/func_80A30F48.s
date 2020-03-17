glabel func_80A30F48
/* 005D8 80A30F48 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005DC 80A30F4C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005E0 80A30F50 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 005E4 80A30F54 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 005E8 80A30F58 848E008A */  lh      $t6, 0x008A($a0)           ## 0000008A
/* 005EC 80A30F5C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 005F0 80A30F60 01CF1023 */  subu    $v0, $t6, $t7              
/* 005F4 80A30F64 00021400 */  sll     $v0, $v0, 16               
/* 005F8 80A30F68 00021403 */  sra     $v0, $v0, 16               
/* 005FC 80A30F6C 04400003 */  bltz    $v0, .L80A30F7C            
/* 00600 80A30F70 00021823 */  subu    $v1, $zero, $v0            
/* 00604 80A30F74 10000001 */  beq     $zero, $zero, .L80A30F7C   
/* 00608 80A30F78 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80A30F7C:
/* 0060C 80A30F7C 28614301 */  slti    $at, $v1, 0x4301           
/* 00610 80A30F80 1020000C */  beq     $at, $zero, .L80A30FB4     
/* 00614 80A30F84 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00618 80A30F88 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 0061C 80A30F8C C4E40090 */  lwc1    $f4, 0x0090($a3)           ## 00000090
/* 00620 80A30F90 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00624 80A30F94 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00628 80A30F98 4606203C */  c.lt.s  $f4, $f6                   
/* 0062C 80A30F9C 00000000 */  nop
/* 00630 80A30FA0 45020005 */  bc1fl   .L80A30FB8                 
/* 00634 80A30FA4 90F8015D */  lbu     $t8, 0x015D($a3)           ## 0000015D
/* 00638 80A30FA8 0C28C3BA */  jal     func_80A30EE8              
/* 0063C 80A30FAC AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00640 80A30FB0 8FA70018 */  lw      $a3, 0x0018($sp)           
.L80A30FB4:
/* 00644 80A30FB4 90F8015D */  lbu     $t8, 0x015D($a3)           ## 0000015D
.L80A30FB8:
/* 00648 80A30FB8 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 0064C 80A30FBC 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00650 80A30FC0 33190002 */  andi    $t9, $t8, 0x0002           ## $t9 = 00000000
/* 00654 80A30FC4 53200005 */  beql    $t9, $zero, .L80A30FDC     
/* 00658 80A30FC8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0065C 80A30FCC 0C28C3BA */  jal     func_80A30EE8              
/* 00660 80A30FD0 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00664 80A30FD4 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00668 80A30FD8 8FA4001C */  lw      $a0, 0x001C($sp)           
.L80A30FDC:
/* 0066C 80A30FDC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00670 80A30FE0 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00674 80A30FE4 24E6014C */  addiu   $a2, $a3, 0x014C           ## $a2 = 0000014C
/* 00678 80A30FE8 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 0067C 80A30FEC 00812821 */  addu    $a1, $a0, $at              
/* 00680 80A30FF0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00684 80A30FF4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00688 80A30FF8 03E00008 */  jr      $ra                        
/* 0068C 80A30FFC 00000000 */  nop


