.rdata
glabel D_8096D018
    .asciz "Demo_Du_inEnding_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

.text
glabel func_8096BC6C
/* 0219C 8096BC6C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 021A0 8096BC70 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 021A4 8096BC74 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 021A8 8096BC78 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 021AC 8096BC7C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 021B0 8096BC80 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 021B4 8096BC84 0C25A728 */  jal     func_80969CA0              
/* 021B8 8096BC88 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 021BC 8096BC8C 50400023 */  beql    $v0, $zero, .L8096BD1C     
/* 021C0 8096BC90 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 021C4 8096BC94 94460000 */  lhu     $a2, 0x0000($v0)           ## 00000000
/* 021C8 8096BC98 8E0301B0 */  lw      $v1, 0x01B0($s0)           ## 000001B0
/* 021CC 8096BC9C 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 021D0 8096BCA0 50C3001E */  beql    $a2, $v1, .L8096BD1C       
/* 021D4 8096BCA4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 021D8 8096BCA8 10C10009 */  beq     $a2, $at, .L8096BCD0       
/* 021DC 8096BCAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021E0 8096BCB0 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 021E4 8096BCB4 10C1000B */  beq     $a2, $at, .L8096BCE4       
/* 021E8 8096BCB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021EC 8096BCBC 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 021F0 8096BCC0 10C1000C */  beq     $a2, $at, .L8096BCF4       
/* 021F4 8096BCC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021F8 8096BCC8 1000000E */  beq     $zero, $zero, .L8096BD04   
/* 021FC 8096BCCC 3C048097 */  lui     $a0, %hi(D_8096D018)       ## $a0 = 80970000
.L8096BCD0:
/* 02200 8096BCD0 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02204 8096BCD4 0C25AEC9 */  jal     func_8096BB24              
/* 02208 8096BCD8 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 0220C 8096BCDC 1000000D */  beq     $zero, $zero, .L8096BD14   
/* 02210 8096BCE0 8FA60020 */  lw      $a2, 0x0020($sp)           
.L8096BCE4:
/* 02214 8096BCE4 0C25AEEA */  jal     func_8096BBA8              
/* 02218 8096BCE8 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 0221C 8096BCEC 10000009 */  beq     $zero, $zero, .L8096BD14   
/* 02220 8096BCF0 8FA60020 */  lw      $a2, 0x0020($sp)           
.L8096BCF4:
/* 02224 8096BCF4 0C25AEFA */  jal     func_8096BBE8              
/* 02228 8096BCF8 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 0222C 8096BCFC 10000005 */  beq     $zero, $zero, .L8096BD14   
/* 02230 8096BD00 8FA60020 */  lw      $a2, 0x0020($sp)           
.L8096BD04:
/* 02234 8096BD04 2484D018 */  addiu   $a0, $a0, %lo(D_8096D018)  ## $a0 = FFFFD018
/* 02238 8096BD08 0C00084C */  jal     osSyncPrintf
              
/* 0223C 8096BD0C AFA60020 */  sw      $a2, 0x0020($sp)           
/* 02240 8096BD10 8FA60020 */  lw      $a2, 0x0020($sp)           
.L8096BD14:
/* 02244 8096BD14 AE0601B0 */  sw      $a2, 0x01B0($s0)           ## 000001B0
/* 02248 8096BD18 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8096BD1C:
/* 0224C 8096BD1C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02250 8096BD20 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02254 8096BD24 03E00008 */  jr      $ra                        
/* 02258 8096BD28 00000000 */  nop
