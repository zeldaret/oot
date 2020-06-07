glabel func_80B8664C
/* 0051C 80B8664C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00520 80B86650 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00524 80B86654 0C00BCCD */  jal     func_8002F334              
/* 00528 80B86658 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0052C 80B8665C 10400013 */  beq     $v0, $zero, .L80B866AC     
/* 00530 80B86660 3C198016 */  lui     $t9, %hi(gSegments)
/* 00534 80B86664 3C020201 */  lui     $v0, 0x0201                ## $v0 = 02010000
/* 00538 80B86668 2442F870 */  addiu   $v0, $v0, 0xF870           ## $v0 = 0200F870
/* 0053C 80B8666C 00027100 */  sll     $t6, $v0,  4               
/* 00540 80B86670 000E7F02 */  srl     $t7, $t6, 28               
/* 00544 80B86674 000FC080 */  sll     $t8, $t7,  2               
/* 00548 80B86678 0338C821 */  addu    $t9, $t9, $t8              
/* 0054C 80B8667C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00550 80B86680 8F396FA8 */  lw      $t9, %lo(gSegments)($t9)
/* 00554 80B86684 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00558 80B86688 00414024 */  and     $t0, $v0, $at              
/* 0055C 80B8668C 8FAB001C */  lw      $t3, 0x001C($sp)           
/* 00560 80B86690 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00564 80B86694 03284821 */  addu    $t1, $t9, $t0              
/* 00568 80B86698 01215021 */  addu    $t2, $t1, $at              
/* 0056C 80B8669C 3C018016 */  lui     $at, %hi(gSaveContext+0x1414)
/* 00570 80B866A0 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 00574 80B866A4 AD6A1D68 */  sw      $t2, 0x1D68($t3)           ## 00001D68
/* 00578 80B866A8 A02CFA74 */  sb      $t4, %lo(gSaveContext+0x1414)($at)
.L80B866AC:
/* 0057C 80B866AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00580 80B866B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00584 80B866B4 03E00008 */  jr      $ra                        
/* 00588 80B866B8 00000000 */  nop
