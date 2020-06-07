glabel func_809A9BA8
/* 00528 809A9BA8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0052C 809A9BAC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00530 809A9BB0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00534 809A9BB4 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00538 809A9BB8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0053C 809A9BBC 00A12021 */  addu    $a0, $a1, $at              
/* 00540 809A9BC0 84C50054 */  lh      $a1, 0x0054($a2)           ## 00000054
/* 00544 809A9BC4 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00548 809A9BC8 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 0054C 809A9BCC AFA4001C */  sw      $a0, 0x001C($sp)           
/* 00550 809A9BD0 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00554 809A9BD4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00558 809A9BD8 A4C20056 */  sh      $v0, 0x0056($a2)           ## 00000056
/* 0055C 809A9BDC 84C50056 */  lh      $a1, 0x0056($a2)           ## 00000056
/* 00560 809A9BE0 04A20006 */  bltzl   $a1, .L809A9BFC            
/* 00564 809A9BE4 A4C0005C */  sh      $zero, 0x005C($a2)         ## 0000005C
/* 00568 809A9BE8 0C026062 */  jal     Object_IsLoaded
              
/* 0056C 809A9BEC AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00570 809A9BF0 14400003 */  bne     $v0, $zero, .L809A9C00     
/* 00574 809A9BF4 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00578 809A9BF8 A4C0005C */  sh      $zero, 0x005C($a2)         ## 0000005C
.L809A9BFC:
/* 0057C 809A9BFC ACC00028 */  sw      $zero, 0x0028($a2)         ## 00000028
.L809A9C00:
/* 00580 809A9C00 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00584 809A9C04 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00588 809A9C08 03E00008 */  jr      $ra                        
/* 0058C 809A9C0C 00000000 */  nop
