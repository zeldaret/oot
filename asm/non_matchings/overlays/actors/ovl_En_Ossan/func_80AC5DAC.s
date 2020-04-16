glabel func_80AC5DAC
/* 0310C 80AC5DAC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03110 80AC5DB0 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 03114 80AC5DB4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03118 80AC5DB8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0311C 80AC5DBC AFB10018 */  sw      $s1, 0x0018($sp)           
/* 03120 80AC5DC0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 03124 80AC5DC4 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 03128 80AC5DC8 0C042F6F */  jal     func_8010BDBC              
/* 0312C 80AC5DCC 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 03130 80AC5DD0 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 03134 80AC5DD4 54410042 */  bnel    $v0, $at, .L80AC5EE0       
/* 03138 80AC5DD8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0313C 80AC5DDC 0C041AF2 */  jal     func_80106BC8              
/* 03140 80AC5DE0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 03144 80AC5DE4 5040003E */  beql    $v0, $zero, .L80AC5EE0     
/* 03148 80AC5DE8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0314C 80AC5DEC 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 03150 80AC5DF0 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 03154 80AC5DF4 55C1002D */  bnel    $t6, $at, .L80AC5EAC       
/* 03158 80AC5DF8 92090252 */  lbu     $t1, 0x0252($s0)           ## 00000252
/* 0315C 80AC5DFC 920F0252 */  lbu     $t7, 0x0252($s0)           ## 00000252
/* 03160 80AC5E00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03164 80AC5E04 000FC080 */  sll     $t8, $t7,  2               
/* 03168 80AC5E08 0218C821 */  addu    $t9, $s0, $t8              
/* 0316C 80AC5E0C 8F280200 */  lw      $t0, 0x0200($t9)           ## 00000200
/* 03170 80AC5E10 0C2B191B */  jal     func_80AC646C              
/* 03174 80AC5E14 AFA80020 */  sw      $t0, 0x0020($sp)           
/* 03178 80AC5E18 92090252 */  lbu     $t1, 0x0252($s0)           ## 00000252
/* 0317C 80AC5E1C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 03180 80AC5E20 00095080 */  sll     $t2, $t1,  2               
/* 03184 80AC5E24 020A5821 */  addu    $t3, $s0, $t2              
/* 03188 80AC5E28 8D650200 */  lw      $a1, 0x0200($t3)           ## 00000200
/* 0318C 80AC5E2C 8CB901B0 */  lw      $t9, 0x01B0($a1)           ## 000001B0
/* 03190 80AC5E30 0320F809 */  jalr    $ra, $t9                   
/* 03194 80AC5E34 00000000 */  nop
/* 03198 80AC5E38 8FAC0020 */  lw      $t4, 0x0020($sp)           
/* 0319C 80AC5E3C 24010022 */  addiu   $at, $zero, 0x0022         ## $at = 00000022
/* 031A0 80AC5E40 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 031A4 80AC5E44 858D001C */  lh      $t5, 0x001C($t4)           ## 0000001C
/* 031A8 80AC5E48 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 031AC 80AC5E4C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 031B0 80AC5E50 15A10011 */  bne     $t5, $at, .L80AC5E98       
/* 031B4 80AC5E54 00000000 */  nop
/* 031B8 80AC5E58 94620EF6 */  lhu     $v0, 0x0EF6($v1)           ## 8015F556
/* 031BC 80AC5E5C 240570AB */  addiu   $a1, $zero, 0x70AB         ## $a1 = 000070AB
/* 031C0 80AC5E60 304E8000 */  andi    $t6, $v0, 0x8000           ## $t6 = 00000000
/* 031C4 80AC5E64 15C0000C */  bne     $t6, $zero, .L80AC5E98     
/* 031C8 80AC5E68 344F8000 */  ori     $t7, $v0, 0x8000           ## $t7 = 00008000
/* 031CC 80AC5E6C A46F0EF6 */  sh      $t7, 0x0EF6($v1)           ## 8015F556
/* 031D0 80AC5E70 0C042DC8 */  jal     func_8010B720              
/* 031D4 80AC5E74 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 031D8 80AC5E78 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 031DC 80AC5E7C A21801EB */  sb      $t8, 0x01EB($s0)           ## 000001EB
/* 031E0 80AC5E80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 031E4 80AC5E84 0C2B0BCB */  jal     func_80AC2F2C              
/* 031E8 80AC5E88 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 031EC 80AC5E8C 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 031F0 80AC5E90 10000012 */  beq     $zero, $zero, .L80AC5EDC   
/* 031F4 80AC5E94 A60801FC */  sh      $t0, 0x01FC($s0)           ## 000001FC
.L80AC5E98:
/* 031F8 80AC5E98 0C2B0DEA */  jal     func_80AC37A8              
/* 031FC 80AC5E9C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 03200 80AC5EA0 1000000F */  beq     $zero, $zero, .L80AC5EE0   
/* 03204 80AC5EA4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03208 80AC5EA8 92090252 */  lbu     $t1, 0x0252($s0)           ## 00000252
.L80AC5EAC:
/* 0320C 80AC5EAC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 03210 80AC5EB0 00095080 */  sll     $t2, $t1,  2               
/* 03214 80AC5EB4 020A5821 */  addu    $t3, $s0, $t2              
/* 03218 80AC5EB8 8D650200 */  lw      $a1, 0x0200($t3)           ## 00000200
/* 0321C 80AC5EBC 8CB901C4 */  lw      $t9, 0x01C4($a1)           ## 000001C4
/* 03220 80AC5EC0 0320F809 */  jalr    $ra, $t9                   
/* 03224 80AC5EC4 00000000 */  nop
/* 03228 80AC5EC8 240C0011 */  addiu   $t4, $zero, 0x0011         ## $t4 = 00000011
/* 0322C 80AC5ECC A60C01FC */  sh      $t4, 0x01FC($s0)           ## 000001FC
/* 03230 80AC5ED0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 03234 80AC5ED4 0C042DC8 */  jal     func_8010B720              
/* 03238 80AC5ED8 2405006B */  addiu   $a1, $zero, 0x006B         ## $a1 = 0000006B
.L80AC5EDC:
/* 0323C 80AC5EDC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC5EE0:
/* 03240 80AC5EE0 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 03244 80AC5EE4 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 03248 80AC5EE8 03E00008 */  jr      $ra                        
/* 0324C 80AC5EEC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
