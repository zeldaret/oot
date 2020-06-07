glabel func_8083F9D0
/* 0D7C0 8083F9D0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0D7C4 8083F9D4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0D7C8 8083F9D8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0D7CC 8083F9DC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0D7D0 8083F9E0 94AE0088 */  lhu     $t6, 0x0088($a1)           ## 00000088
/* 0D7D4 8083F9E4 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0D7D8 8083F9E8 31CF0200 */  andi    $t7, $t6, 0x0200           ## $t7 = 00000000
/* 0D7DC 8083F9EC 51E00021 */  beql    $t7, $zero, .L8083FA74     
/* 0D7E0 8083F9F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0D7E4 8083F9F4 8CB80680 */  lw      $t8, 0x0680($a1)           ## 00000680
/* 0D7E8 8083F9F8 3C088086 */  lui     $t0, %hi(D_80858AB4)       ## $t0 = 80860000
/* 0D7EC 8083F9FC 33190010 */  andi    $t9, $t8, 0x0010           ## $t9 = 00000000
/* 0D7F0 8083FA00 57200009 */  bnel    $t9, $zero, .L8083FA28     
/* 0D7F4 8083FA04 9205007C */  lbu     $a1, 0x007C($s0)           ## 0000007C
/* 0D7F8 8083FA08 8D088AB4 */  lw      $t0, %lo(D_80858AB4)($t0)  
/* 0D7FC 8083FA0C 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 0D800 8083FA10 34217FFF */  ori     $at, $at, 0x7FFF           ## $at = FFFF7FFF
/* 0D804 8083FA14 95090000 */  lhu     $t1, 0x0000($t0)           ## 80860000
/* 0D808 8083FA18 01215027 */  nor     $t2, $t1, $at              
/* 0D80C 8083FA1C 55400015 */  bnel    $t2, $zero, .L8083FA74     
/* 0D810 8083FA20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0D814 8083FA24 9205007C */  lbu     $a1, 0x007C($s0)           ## 0000007C
.L8083FA28:
/* 0D818 8083FA28 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 0D81C 8083FA2C 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 0D820 8083FA30 10A10004 */  beq     $a1, $at, .L8083FA44       
/* 0D824 8083FA34 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0D828 8083FA38 0C00FAE1 */  jal     DynaPolyInfo_GetActor
              ## DynaPolyInfo_getActor
/* 0D82C 8083FA3C 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 0D830 8083FA40 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L8083FA44:
/* 0D834 8083FA44 8E0B03C4 */  lw      $t3, 0x03C4($s0)           ## 000003C4
/* 0D838 8083FA48 546B000A */  bnel    $v1, $t3, .L8083FA74       
/* 0D83C 8083FA4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0D840 8083FA50 8E0C0680 */  lw      $t4, 0x0680($s0)           ## 00000680
/* 0D844 8083FA54 318D0010 */  andi    $t5, $t4, 0x0010           ## $t5 = 00000000
/* 0D848 8083FA58 11A00003 */  beq     $t5, $zero, .L8083FA68     
/* 0D84C 8083FA5C 00000000 */  nop
/* 0D850 8083FA60 10000010 */  beq     $zero, $zero, .L8083FAA4   
/* 0D854 8083FA64 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8083FA68:
/* 0D858 8083FA68 1000000E */  beq     $zero, $zero, .L8083FAA4   
/* 0D85C 8083FA6C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0D860 8083FA70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8083FA74:
/* 0D864 8083FA74 0C20E7FF */  jal     func_80839FFC              
/* 0D868 8083FA78 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 0D86C 8083FA7C 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 0D870 8083FA80 24C63100 */  addiu   $a2, $a2, 0x3100           ## $a2 = 04003100
/* 0D874 8083FA84 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0D878 8083FA88 0C20C899 */  jal     func_80832264              
/* 0D87C 8083FA8C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0D880 8083FA90 8E0E0680 */  lw      $t6, 0x0680($s0)           ## 00000680
/* 0D884 8083FA94 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 0D888 8083FA98 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 0D88C 8083FA9C 01C17824 */  and     $t7, $t6, $at              
/* 0D890 8083FAA0 AE0F0680 */  sw      $t7, 0x0680($s0)           ## 00000680
.L8083FAA4:
/* 0D894 8083FAA4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0D898 8083FAA8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0D89C 8083FAAC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0D8A0 8083FAB0 03E00008 */  jr      $ra                        
/* 0D8A4 8083FAB4 00000000 */  nop
