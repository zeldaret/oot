glabel func_80AC7DAC
/* 0510C 80AC7DAC 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 05110 80AC7DB0 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 05114 80AC7DB4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 05118 80AC7DB8 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0511C 80AC7DBC AFB00024 */  sw      $s0, 0x0024($sp)           
/* 05120 80AC7DC0 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 05124 80AC7DC4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05128 80AC7DC8 3C0680AD */  lui     $a2, %hi(D_80AC93FC)       ## $a2 = 80AD0000
/* 0512C 80AC7DCC 24C693FC */  addiu   $a2, $a2, %lo(D_80AC93FC)  ## $a2 = 80AC93FC
/* 05130 80AC7DD0 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 05134 80AC7DD4 240710E0 */  addiu   $a3, $zero, 0x10E0         ## $a3 = 000010E0
/* 05138 80AC7DD8 0C031AB1 */  jal     func_800C6AC4              
/* 0513C 80AC7DDC AFA5004C */  sw      $a1, 0x004C($sp)           
/* 05140 80AC7DE0 0C024F46 */  jal     func_80093D18              
/* 05144 80AC7DE4 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 05148 80AC7DE8 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 0514C 80AC7DEC 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 05150 80AC7DF0 35EF0020 */  ori     $t7, $t7, 0x0020           ## $t7 = DB060020
/* 05154 80AC7DF4 8CA302C0 */  lw      $v1, 0x02C0($a1)           ## 000002C0
/* 05158 80AC7DF8 3C0480AD */  lui     $a0, %hi(D_80AC8EA0)       ## $a0 = 80AD0000
/* 0515C 80AC7DFC 3C0C8016 */  lui     $t4, 0x8016                ## $t4 = 80160000
/* 05160 80AC7E00 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 05164 80AC7E04 ACAE02C0 */  sw      $t6, 0x02C0($a1)           ## 000002C0
/* 05168 80AC7E08 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 0516C 80AC7E0C 861801F2 */  lh      $t8, 0x01F2($s0)           ## 000001F2
/* 05170 80AC7E10 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 05174 80AC7E14 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 05178 80AC7E18 0018C880 */  sll     $t9, $t8,  2               
/* 0517C 80AC7E1C 00992021 */  addu    $a0, $a0, $t9              
/* 05180 80AC7E20 8C848EA0 */  lw      $a0, %lo(D_80AC8EA0)($a0)  
/* 05184 80AC7E24 3C0F80AC */  lui     $t7, %hi(func_80AC74F4)    ## $t7 = 80AC0000
/* 05188 80AC7E28 25EF74F4 */  addiu   $t7, $t7, %lo(func_80AC74F4) ## $t7 = 80AC74F4
/* 0518C 80AC7E2C 00044900 */  sll     $t1, $a0,  4               
/* 05190 80AC7E30 00095702 */  srl     $t2, $t1, 28               
/* 05194 80AC7E34 000A5880 */  sll     $t3, $t2,  2               
/* 05198 80AC7E38 018B6021 */  addu    $t4, $t4, $t3              
/* 0519C 80AC7E3C 8D8C6FA8 */  lw      $t4, 0x6FA8($t4)           ## 80166FA8
/* 051A0 80AC7E40 00814024 */  and     $t0, $a0, $at              
/* 051A4 80AC7E44 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 051A8 80AC7E48 010C6821 */  addu    $t5, $t0, $t4              
/* 051AC 80AC7E4C 01A17021 */  addu    $t6, $t5, $at              
/* 051B0 80AC7E50 AC6E0004 */  sw      $t6, 0x0004($v1)           ## 00000004
/* 051B4 80AC7E54 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 051B8 80AC7E58 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 051BC 80AC7E5C 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 051C0 80AC7E60 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 051C4 80AC7E64 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 051C8 80AC7E68 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 051CC 80AC7E6C 0C0286B2 */  jal     func_800A1AC8              
/* 051D0 80AC7E70 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 051D4 80AC7E74 C6040238 */  lwc1    $f4, 0x0238($s0)           ## 00000238
/* 051D8 80AC7E78 8E060230 */  lw      $a2, 0x0230($s0)           ## 00000230
/* 051DC 80AC7E7C 8E070234 */  lw      $a3, 0x0234($s0)           ## 00000234
/* 051E0 80AC7E80 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 051E4 80AC7E84 92180251 */  lbu     $t8, 0x0251($s0)           ## 00000251
/* 051E8 80AC7E88 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 051EC 80AC7E8C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 051F0 80AC7E90 0C2B1D4A */  jal     func_80AC7528              
/* 051F4 80AC7E94 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 051F8 80AC7E98 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 051FC 80AC7E9C 0C2B1E72 */  jal     func_80AC79C8              
/* 05200 80AC7EA0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 05204 80AC7EA4 3C0680AD */  lui     $a2, %hi(D_80AC940C)       ## $a2 = 80AD0000
/* 05208 80AC7EA8 24C6940C */  addiu   $a2, $a2, %lo(D_80AC940C)  ## $a2 = 80AC940C
/* 0520C 80AC7EAC 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 05210 80AC7EB0 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 05214 80AC7EB4 0C031AD5 */  jal     func_800C6B54              
/* 05218 80AC7EB8 240710F4 */  addiu   $a3, $zero, 0x10F4         ## $a3 = 000010F4
/* 0521C 80AC7EBC 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 05220 80AC7EC0 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 05224 80AC7EC4 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 05228 80AC7EC8 03E00008 */  jr      $ra                        
/* 0522C 80AC7ECC 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000


