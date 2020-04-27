glabel func_809EF8F4
/* 005A4 809EF8F4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005A8 809EF8F8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005AC 809EF8FC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 005B0 809EF900 0C0218E2 */  jal     Item_CheckObtainability              
/* 005B4 809EF904 24040003 */  addiu   $a0, $zero, 0x0003         ## $a0 = 00000003
/* 005B8 809EF908 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 005BC 809EF90C 14410003 */  bne     $v0, $at, .L809EF91C       
/* 005C0 809EF910 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005C4 809EF914 10000021 */  beq     $zero, $zero, .L809EF99C   
/* 005C8 809EF918 24020003 */  addiu   $v0, $zero, 0x0003         ## $v0 = 00000003
.L809EF91C:
/* 005CC 809EF91C 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 005D0 809EF920 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 005D4 809EF924 3C088012 */  lui     $t0, %hi(gUpgradeMasks)
/* 005D8 809EF928 8D0871B0 */  lw      $t0, %lo(gUpgradeMasks)($t0)
/* 005DC 809EF92C 8C5900A0 */  lw      $t9, 0x00A0($v0)           ## 8015E700
/* 005E0 809EF930 3C0A8012 */  lui     $t2, %hi(gUpgradeShifts)
/* 005E4 809EF934 914A71F4 */  lbu     $t2, %lo(gUpgradeShifts)($t2)
/* 005E8 809EF938 3C0E8012 */  lui     $t6, %hi(gItemSlots+3)
/* 005EC 809EF93C 91CE7467 */  lbu     $t6, %lo(gItemSlots+3)($t6)
/* 005F0 809EF940 03284824 */  and     $t1, $t9, $t0              
/* 005F4 809EF944 01495807 */  srav    $t3, $t1, $t2              
/* 005F8 809EF948 000B6040 */  sll     $t4, $t3,  1               
/* 005FC 809EF94C 3C0D8012 */  lui     $t5, %hi(gUpgradeCapacities)
/* 00600 809EF950 01AC6821 */  addu    $t5, $t5, $t4              
/* 00604 809EF954 004E7821 */  addu    $t7, $v0, $t6              
/* 00608 809EF958 81F8008C */  lb      $t8, 0x008C($t7)           ## 0000008C
/* 0060C 809EF95C 95AD71FC */  lhu     $t5, %lo(gUpgradeCapacities)($t5)
/* 00610 809EF960 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 00614 809EF964 030D082A */  slt     $at, $t8, $t5              
/* 00618 809EF968 54200004 */  bnel    $at, $zero, .L809EF97C     
/* 0061C 809EF96C 8DF902C0 */  lw      $t9, 0x02C0($t7)           ## 000002C0
/* 00620 809EF970 1000000A */  beq     $zero, $zero, .L809EF99C   
/* 00624 809EF974 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00628 809EF978 8DF902C0 */  lw      $t9, 0x02C0($t7)           ## 000002C0
.L809EF97C:
/* 0062C 809EF97C 844E0034 */  lh      $t6, 0x0034($v0)           ## 00000035
/* 00630 809EF980 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
/* 00634 809EF984 87280000 */  lh      $t0, 0x0000($t9)           ## 00000000
/* 00638 809EF988 01C8082A */  slt     $at, $t6, $t0              
/* 0063C 809EF98C 10200003 */  beq     $at, $zero, .L809EF99C     
/* 00640 809EF990 00000000 */  nop
/* 00644 809EF994 10000001 */  beq     $zero, $zero, .L809EF99C   
/* 00648 809EF998 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809EF99C:
/* 0064C 809EF99C 03E00008 */  jr      $ra                        
/* 00650 809EF9A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
