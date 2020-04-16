glabel EnRiverSound_Draw
/* 00758 80AE7088 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0075C 80AE708C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00760 80AE7090 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00764 80AE7094 908E014C */  lbu     $t6, 0x014C($a0)           ## 0000014C
/* 00768 80AE7098 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0076C 80AE709C 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00770 80AE70A0 55C00004 */  bnel    $t6, $zero, .L80AE70B4     
/* 00774 80AE70A4 84E2001C */  lh      $v0, 0x001C($a3)           ## 0000001C
/* 00778 80AE70A8 10000045 */  beq     $zero, $zero, .L80AE71C0   
/* 0077C 80AE70AC A08F014C */  sb      $t7, 0x014C($a0)           ## 0000014C
/* 00780 80AE70B0 84E2001C */  lh      $v0, 0x001C($a3)           ## 0000001C
.L80AE70B4:
/* 00784 80AE70B4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00788 80AE70B8 50400006 */  beql    $v0, $zero, .L80AE70D4     
/* 0078C 80AE70BC 90F8014D */  lbu     $t8, 0x014D($a3)           ## 0000014D
/* 00790 80AE70C0 10410003 */  beq     $v0, $at, .L80AE70D0       
/* 00794 80AE70C4 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00798 80AE70C8 5441000B */  bnel    $v0, $at, .L80AE70F8       
/* 0079C 80AE70CC 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
.L80AE70D0:
/* 007A0 80AE70D0 90F8014D */  lbu     $t8, 0x014D($a3)           ## 0000014D
.L80AE70D4:
/* 007A4 80AE70D4 3C0580AE */  lui     $a1, %hi(D_80AE7224)       ## $a1 = 80AE0000
/* 007A8 80AE70D8 24E400E4 */  addiu   $a0, $a3, 0x00E4           ## $a0 = 000000E4
/* 007AC 80AE70DC 0018C880 */  sll     $t9, $t8,  2               
/* 007B0 80AE70E0 00B92821 */  addu    $a1, $a1, $t9              
/* 007B4 80AE70E4 0C03D18D */  jal     func_800F4634              
/* 007B8 80AE70E8 8CA57224 */  lw      $a1, %lo(D_80AE7224)($a1)  
/* 007BC 80AE70EC 10000035 */  beq     $zero, $zero, .L80AE71C4   
/* 007C0 80AE70F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007C4 80AE70F4 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
.L80AE70F8:
/* 007C8 80AE70F8 54410006 */  bnel    $v0, $at, .L80AE7114       
/* 007CC 80AE70FC 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 007D0 80AE7100 0C03D295 */  jal     func_800F4A54              
/* 007D4 80AE7104 2404005A */  addiu   $a0, $zero, 0x005A         ## $a0 = 0000005A
/* 007D8 80AE7108 1000002E */  beq     $zero, $zero, .L80AE71C4   
/* 007DC 80AE710C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007E0 80AE7110 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
.L80AE7114:
/* 007E4 80AE7114 14410005 */  bne     $v0, $at, .L80AE712C       
/* 007E8 80AE7118 24E400E4 */  addiu   $a0, $a3, 0x00E4           ## $a0 = 000000E4
/* 007EC 80AE711C 0C03D38C */  jal     func_800F4E30              
/* 007F0 80AE7120 8CE50090 */  lw      $a1, 0x0090($a3)           ## 00000090
/* 007F4 80AE7124 10000027 */  beq     $zero, $zero, .L80AE71C4   
/* 007F8 80AE7128 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE712C:
/* 007FC 80AE712C 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 00800 80AE7130 14410006 */  bne     $v0, $at, .L80AE714C       
/* 00804 80AE7134 24E40008 */  addiu   $a0, $a3, 0x0008           ## $a0 = 00000008
/* 00808 80AE7138 2405003E */  addiu   $a1, $zero, 0x003E         ## $a1 = 0000003E
/* 0080C 80AE713C 0C03D4A8 */  jal     func_800F52A0              
/* 00810 80AE7140 240603E8 */  addiu   $a2, $zero, 0x03E8         ## $a2 = 000003E8
/* 00814 80AE7144 1000001F */  beq     $zero, $zero, .L80AE71C4   
/* 00818 80AE7148 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE714C:
/* 0081C 80AE714C 24010013 */  addiu   $at, $zero, 0x0013         ## $at = 00000013
/* 00820 80AE7150 14410006 */  bne     $v0, $at, .L80AE716C       
/* 00824 80AE7154 24E40008 */  addiu   $a0, $a3, 0x0008           ## $a0 = 00000008
/* 00828 80AE7158 24050028 */  addiu   $a1, $zero, 0x0028         ## $a1 = 00000028
/* 0082C 80AE715C 0C03D4A8 */  jal     func_800F52A0              
/* 00830 80AE7160 24060320 */  addiu   $a2, $zero, 0x0320         ## $a2 = 00000320
/* 00834 80AE7164 10000017 */  beq     $zero, $zero, .L80AE71C4   
/* 00838 80AE7168 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE716C:
/* 0083C 80AE716C 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 00840 80AE7170 10410008 */  beq     $v0, $at, .L80AE7194       
/* 00844 80AE7174 00024040 */  sll     $t0, $v0,  1               
/* 00848 80AE7178 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 0084C 80AE717C 10410005 */  beq     $v0, $at, .L80AE7194       
/* 00850 80AE7180 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 00854 80AE7184 10410003 */  beq     $v0, $at, .L80AE7194       
/* 00858 80AE7188 24010012 */  addiu   $at, $zero, 0x0012         ## $at = 00000012
/* 0085C 80AE718C 14410007 */  bne     $v0, $at, .L80AE71AC       
/* 00860 80AE7190 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
.L80AE7194:
/* 00864 80AE7194 3C0480AE */  lui     $a0, %hi(D_80AE71F8)       ## $a0 = 80AE0000
/* 00868 80AE7198 00882021 */  addu    $a0, $a0, $t0              
/* 0086C 80AE719C 0C01E233 */  jal     func_800788CC              
/* 00870 80AE71A0 948471F8 */  lhu     $a0, %lo(D_80AE71F8)($a0)  
/* 00874 80AE71A4 10000007 */  beq     $zero, $zero, .L80AE71C4   
/* 00878 80AE71A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE71AC:
/* 0087C 80AE71AC 00024840 */  sll     $t1, $v0,  1               
/* 00880 80AE71B0 3C0580AE */  lui     $a1, %hi(D_80AE71F8)       ## $a1 = 80AE0000
/* 00884 80AE71B4 00A92821 */  addu    $a1, $a1, $t1              
/* 00888 80AE71B8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0088C 80AE71BC 94A571F8 */  lhu     $a1, %lo(D_80AE71F8)($a1)  
.L80AE71C0:
/* 00890 80AE71C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE71C4:
/* 00894 80AE71C4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00898 80AE71C8 03E00008 */  jr      $ra                        
/* 0089C 80AE71CC 00000000 */  nop
