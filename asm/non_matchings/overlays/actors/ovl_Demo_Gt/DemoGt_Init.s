.rdata
glabel D_809829FC
    .asciz "Demo_Gt_Actor_ct そんな引数は無い!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n"
    .balign 4

.late_rodata
.late_rodata_alignment 4
glabel jtbl_80982B54
.word L809824A4
.word L809824B4
.word L809824C4
.word L80982524
.word L80982524
.word L809824D4
.word L809824E4
.word L809824F4
.word L80982524
.word L80982524
.word L80982524
.word L80982524
.word L80982524
.word L80982524
.word L80982524
.word L80982524
.word L80982524
.word L80982524
.word L80982524
.word L80982524
.word L80982524
.word L80982524
.word L80982524
.word L80982504
.word L80982514

.text
glabel DemoGt_Init
/* 04E04 80982474 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04E08 80982478 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04E0C 8098247C 948E001C */  lhu     $t6, 0x001C($a0)           ## 0000001C
/* 04E10 80982480 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 04E14 80982484 2DC10019 */  sltiu   $at, $t6, 0x0019           
/* 04E18 80982488 10200026 */  beq     $at, $zero, .L80982524     
/* 04E1C 8098248C 000E7080 */  sll     $t6, $t6,  2               
/* 04E20 80982490 3C018098 */  lui     $at, %hi(jtbl_80982B54)       ## $at = 80980000
/* 04E24 80982494 002E0821 */  addu    $at, $at, $t6              
/* 04E28 80982498 8C2E2B54 */  lw      $t6, %lo(jtbl_80982B54)($at)  
/* 04E2C 8098249C 01C00008 */  jr      $t6                        
/* 04E30 809824A0 00000000 */  nop
glabel L809824A4
/* 04E34 809824A4 0C25FBAA */  jal     func_8097EEA8              
/* 04E38 809824A8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 04E3C 809824AC 10000024 */  beq     $zero, $zero, .L80982540   
/* 04E40 809824B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L809824B4
/* 04E44 809824B4 0C25FE41 */  jal     func_8097F904              
/* 04E48 809824B8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 04E4C 809824BC 10000020 */  beq     $zero, $zero, .L80982540   
/* 04E50 809824C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L809824C4
/* 04E54 809824C4 0C260044 */  jal     func_80980110              
/* 04E58 809824C8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 04E5C 809824CC 1000001C */  beq     $zero, $zero, .L80982540   
/* 04E60 809824D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L809824D4
/* 04E64 809824D4 0C2603C0 */  jal     func_80980F00              
/* 04E68 809824D8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 04E6C 809824DC 10000018 */  beq     $zero, $zero, .L80982540   
/* 04E70 809824E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L809824E4
/* 04E74 809824E4 0C2604F3 */  jal     func_809813CC              
/* 04E78 809824E8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 04E7C 809824EC 10000014 */  beq     $zero, $zero, .L80982540   
/* 04E80 809824F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L809824F4
/* 04E84 809824F4 0C260629 */  jal     func_809818A4              
/* 04E88 809824F8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 04E8C 809824FC 10000010 */  beq     $zero, $zero, .L80982540   
/* 04E90 80982500 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80982504
/* 04E94 80982504 0C260725 */  jal     func_80981C94              
/* 04E98 80982508 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 04E9C 8098250C 1000000C */  beq     $zero, $zero, .L80982540   
/* 04EA0 80982510 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80982514
/* 04EA4 80982514 0C260815 */  jal     func_80982054              
/* 04EA8 80982518 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 04EAC 8098251C 10000008 */  beq     $zero, $zero, .L80982540   
/* 04EB0 80982520 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80982524
.L80982524:
/* 04EB4 80982524 3C048098 */  lui     $a0, %hi(D_809829FC)       ## $a0 = 80980000
/* 04EB8 80982528 248429FC */  addiu   $a0, $a0, %lo(D_809829FC)  ## $a0 = 809829FC
/* 04EBC 8098252C 0C00084C */  jal     osSyncPrintf
              
/* 04EC0 80982530 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 04EC4 80982534 0C00B55C */  jal     Actor_Kill
              
/* 04EC8 80982538 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 04ECC 8098253C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80982540:
/* 04ED0 80982540 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04ED4 80982544 03E00008 */  jr      $ra                        
/* 04ED8 80982548 00000000 */  nop
