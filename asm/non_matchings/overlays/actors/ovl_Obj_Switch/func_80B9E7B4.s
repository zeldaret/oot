.rdata
glabel D_80B9EEB4
    .asciz "../z_obj_switch.c"
    .balign 4

glabel D_80B9EEC8
    .asciz "../z_obj_switch.c"
    .balign 4

glabel D_80B9EEDC
    .asciz "../z_obj_switch.c"
    .balign 4

.text
glabel func_80B9E7B4
/* 015A4 80B9E7B4 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 015A8 80B9E7B8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 015AC 80B9E7BC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 015B0 80B9E7C0 AFA40050 */  sw      $a0, 0x0050($sp)           
/* 015B4 80B9E7C4 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 015B8 80B9E7C8 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 015BC 80B9E7CC 3C0680BA */  lui     $a2, %hi(D_80B9EEB4)       ## $a2 = 80BA0000
/* 015C0 80B9E7D0 24C6EEB4 */  addiu   $a2, $a2, %lo(D_80B9EEB4)  ## $a2 = 80B9EEB4
/* 015C4 80B9E7D4 000FC103 */  sra     $t8, $t7,  4               
/* 015C8 80B9E7D8 33190007 */  andi    $t9, $t8, 0x0007           ## $t9 = 00000000
/* 015CC 80B9E7DC AFB90048 */  sw      $t9, 0x0048($sp)           
/* 015D0 80B9E7E0 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 015D4 80B9E7E4 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFE4
/* 015D8 80B9E7E8 240705B3 */  addiu   $a3, $zero, 0x05B3         ## $a3 = 000005B3
/* 015DC 80B9E7EC 0C031AB1 */  jal     Graph_OpenDisps              
/* 015E0 80B9E7F0 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 015E4 80B9E7F4 8FA90054 */  lw      $t1, 0x0054($sp)           
/* 015E8 80B9E7F8 0C024F46 */  jal     func_80093D18              
/* 015EC 80B9E7FC 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 015F0 80B9E800 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 015F4 80B9E804 3C0BDA38 */  lui     $t3, 0xDA38                ## $t3 = DA380000
/* 015F8 80B9E808 356B0003 */  ori     $t3, $t3, 0x0003           ## $t3 = DA380003
/* 015FC 80B9E80C 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 01600 80B9E810 AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 01604 80B9E814 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 01608 80B9E818 8FAC0054 */  lw      $t4, 0x0054($sp)           
/* 0160C 80B9E81C 3C0580BA */  lui     $a1, %hi(D_80B9EEC8)       ## $a1 = 80BA0000
/* 01610 80B9E820 24A5EEC8 */  addiu   $a1, $a1, %lo(D_80B9EEC8)  ## $a1 = 80B9EEC8
/* 01614 80B9E824 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 01618 80B9E828 240605B6 */  addiu   $a2, $zero, 0x05B6         ## $a2 = 000005B6
/* 0161C 80B9E82C 0C0346A2 */  jal     Matrix_NewMtx              
/* 01620 80B9E830 AFA20030 */  sw      $v0, 0x0030($sp)           
/* 01624 80B9E834 8FA30030 */  lw      $v1, 0x0030($sp)           
/* 01628 80B9E838 3C0EDB06 */  lui     $t6, 0xDB06                ## $t6 = DB060000
/* 0162C 80B9E83C 35CE0020 */  ori     $t6, $t6, 0x0020           ## $t6 = DB060020
/* 01630 80B9E840 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 01634 80B9E844 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 01638 80B9E848 8FA50048 */  lw      $a1, 0x0048($sp)           
/* 0163C 80B9E84C 3C0480BA */  lui     $a0, %hi(D_80B9ED98)       ## $a0 = 80BA0000
/* 01640 80B9E850 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 01644 80B9E854 AE0D02C0 */  sw      $t5, 0x02C0($s0)           ## 000002C0
/* 01648 80B9E858 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 0164C 80B9E85C 8FB80050 */  lw      $t8, 0x0050($sp)           
/* 01650 80B9E860 00057900 */  sll     $t7, $a1,  4               
/* 01654 80B9E864 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 01658 80B9E868 87190170 */  lh      $t9, 0x0170($t8)           ## 00000170
/* 0165C 80B9E86C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 01660 80B9E870 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 01664 80B9E874 00194080 */  sll     $t0, $t9,  2               
/* 01668 80B9E878 01E84821 */  addu    $t1, $t7, $t0              
/* 0166C 80B9E87C 00892021 */  addu    $a0, $a0, $t1              
/* 01670 80B9E880 8C84ED98 */  lw      $a0, %lo(D_80B9ED98)($a0)  
/* 01674 80B9E884 3C08DE00 */  lui     $t0, 0xDE00                ## $t0 = DE000000
/* 01678 80B9E888 00054880 */  sll     $t1, $a1,  2               
/* 0167C 80B9E88C 00045900 */  sll     $t3, $a0,  4               
/* 01680 80B9E890 000B6702 */  srl     $t4, $t3, 28               
/* 01684 80B9E894 000C6880 */  sll     $t5, $t4,  2               
/* 01688 80B9E898 01CD7021 */  addu    $t6, $t6, $t5              
/* 0168C 80B9E89C 8DCE6FA8 */  lw      $t6, 0x6FA8($t6)           ## 80166FA8
/* 01690 80B9E8A0 00815024 */  and     $t2, $a0, $at              
/* 01694 80B9E8A4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01698 80B9E8A8 014EC021 */  addu    $t8, $t2, $t6              
/* 0169C 80B9E8AC 0301C821 */  addu    $t9, $t8, $at              
/* 016A0 80B9E8B0 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 016A4 80B9E8B4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 016A8 80B9E8B8 3C0B80BA */  lui     $t3, %hi(D_80B9EDB8)       ## $t3 = 80BA0000
/* 016AC 80B9E8BC 01695821 */  addu    $t3, $t3, $t1              
/* 016B0 80B9E8C0 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 016B4 80B9E8C4 AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 016B8 80B9E8C8 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 016BC 80B9E8CC 8D6BEDB8 */  lw      $t3, %lo(D_80B9EDB8)($t3)  
/* 016C0 80B9E8D0 3C0680BA */  lui     $a2, %hi(D_80B9EEDC)       ## $a2 = 80BA0000
/* 016C4 80B9E8D4 24C6EEDC */  addiu   $a2, $a2, %lo(D_80B9EEDC)  ## $a2 = 80B9EEDC
/* 016C8 80B9E8D8 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 016CC 80B9E8DC 8FAC0054 */  lw      $t4, 0x0054($sp)           
/* 016D0 80B9E8E0 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFE4
/* 016D4 80B9E8E4 240705BF */  addiu   $a3, $zero, 0x05BF         ## $a3 = 000005BF
/* 016D8 80B9E8E8 0C031AD5 */  jal     Graph_CloseDisps              
/* 016DC 80B9E8EC 8D850000 */  lw      $a1, 0x0000($t4)           ## 00000000
/* 016E0 80B9E8F0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 016E4 80B9E8F4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 016E8 80B9E8F8 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 016EC 80B9E8FC 03E00008 */  jr      $ra                        
/* 016F0 80B9E900 00000000 */  nop
