glabel func_80972EA8
/* 01F58 80972EA8 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01F5C 80972EAC AFBF003C */  sw      $ra, 0x003C($sp)           
/* 01F60 80972EB0 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 01F64 80972EB4 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 01F68 80972EB8 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 01F6C 80972EBC 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01F70 80972EC0 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 01F74 80972EC4 51C00059 */  beql    $t6, $zero, .L8097302C     
/* 01F78 80972EC8 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 01F7C 80972ECC 8486018C */  lh      $a2, 0x018C($a0)           ## 0000018C
/* 01F80 80972ED0 00067880 */  sll     $t7, $a2,  2               
/* 01F84 80972ED4 00AFC021 */  addu    $t8, $a1, $t7              
/* 01F88 80972ED8 8F191D8C */  lw      $t9, 0x1D8C($t8)           ## 00001D8C
/* 01F8C 80972EDC 53200053 */  beql    $t9, $zero, .L8097302C     
/* 01F90 80972EE0 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 01F94 80972EE4 0C25D96B */  jal     func_809765AC              
/* 01F98 80972EE8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01F9C 80972EEC 8628018C */  lh      $t0, 0x018C($s1)           ## 0000018C
/* 01FA0 80972EF0 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01FA4 80972EF4 26041C24 */  addiu   $a0, $s0, 0x1C24           ## $a0 = 00001C24
/* 01FA8 80972EF8 00084880 */  sll     $t1, $t0,  2               
/* 01FAC 80972EFC 02095021 */  addu    $t2, $s0, $t1              
/* 01FB0 80972F00 8D4B1D8C */  lw      $t3, 0x1D8C($t2)           ## 00001D8C
/* 01FB4 80972F04 956C0000 */  lhu     $t4, 0x0000($t3)           ## 00000000
/* 01FB8 80972F08 15810018 */  bne     $t4, $at, .L80972F6C       
/* 01FBC 80972F0C 00000000 */  nop
/* 01FC0 80972F10 C6240024 */  lwc1    $f4, 0x0024($s1)           ## 00000024
/* 01FC4 80972F14 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 01FC8 80972F18 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01FCC 80972F1C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 01FD0 80972F20 C6260028 */  lwc1    $f6, 0x0028($s1)           ## 00000028
/* 01FD4 80972F24 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 01FD8 80972F28 2407008B */  addiu   $a3, $zero, 0x008B         ## $a3 = 0000008B
/* 01FDC 80972F2C E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 01FE0 80972F30 C628002C */  lwc1    $f8, 0x002C($s1)           ## 0000002C
/* 01FE4 80972F34 AFAD0028 */  sw      $t5, 0x0028($sp)           
/* 01FE8 80972F38 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 01FEC 80972F3C AFA00020 */  sw      $zero, 0x0020($sp)         
/* 01FF0 80972F40 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 01FF4 80972F44 0C00C916 */  jal     Actor_SpawnAsChild
              
/* 01FF8 80972F48 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 01FFC 80972F4C 10400007 */  beq     $v0, $zero, .L80972F6C     
/* 02000 80972F50 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 02004 80972F54 3C0E8097 */  lui     $t6, %hi(func_809729B8)    ## $t6 = 80970000
/* 02008 80972F58 25CE29B8 */  addiu   $t6, $t6, %lo(func_809729B8) ## $t6 = 809729B8
/* 0200C 80972F5C 3C053CA3 */  lui     $a1, 0x3CA3                ## $a1 = 3CA30000
/* 02010 80972F60 AC4E0194 */  sw      $t6, 0x0194($v0)           ## 00000194
/* 02014 80972F64 0C00B58B */  jal     Actor_SetScale
              
/* 02018 80972F68 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3CA3D70A
.L80972F6C:
/* 0201C 80972F6C 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 02020 80972F70 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 02024 80972F74 8C6F0000 */  lw      $t7, 0x0000($v1)           ## 8015E660
/* 02028 80972F78 240100A0 */  addiu   $at, $zero, 0x00A0         ## $at = 000000A0
/* 0202C 80972F7C 55E1002B */  bnel    $t7, $at, .L8097302C       
/* 02030 80972F80 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 02034 80972F84 8C621360 */  lw      $v0, 0x1360($v1)           ## 8015F9C0
/* 02038 80972F88 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0203C 80972F8C 10410007 */  beq     $v0, $at, .L80972FAC       
/* 02040 80972F90 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 02044 80972F94 10410014 */  beq     $v0, $at, .L80972FE8       
/* 02048 80972F98 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 0204C 80972F9C 5041001C */  beql    $v0, $at, .L80973010       
/* 02050 80972FA0 96191D74 */  lhu     $t9, 0x1D74($s0)           ## 00001D74
/* 02054 80972FA4 10000021 */  beq     $zero, $zero, .L8097302C   
/* 02058 80972FA8 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80972FAC:
/* 0205C 80972FAC 96021D74 */  lhu     $v0, 0x1D74($s0)           ## 00001D74
/* 02060 80972FB0 24010120 */  addiu   $at, $zero, 0x0120         ## $at = 00000120
/* 02064 80972FB4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02068 80972FB8 54410005 */  bnel    $v0, $at, .L80972FD0       
/* 0206C 80972FBC 2401027B */  addiu   $at, $zero, 0x027B         ## $at = 0000027B
/* 02070 80972FC0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02074 80972FC4 24051840 */  addiu   $a1, $zero, 0x1840         ## $a1 = 00001840
/* 02078 80972FC8 96021D74 */  lhu     $v0, 0x1D74($s0)           ## 00001D74
/* 0207C 80972FCC 2401027B */  addiu   $at, $zero, 0x027B         ## $at = 0000027B
.L80972FD0:
/* 02080 80972FD0 14410015 */  bne     $v0, $at, .L80973028       
/* 02084 80972FD4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02088 80972FD8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0208C 80972FDC 24051840 */  addiu   $a1, $zero, 0x1840         ## $a1 = 00001840
/* 02090 80972FE0 10000012 */  beq     $zero, $zero, .L8097302C   
/* 02094 80972FE4 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80972FE8:
/* 02098 80972FE8 96181D74 */  lhu     $t8, 0x1D74($s0)           ## 00001D74
/* 0209C 80972FEC 24010037 */  addiu   $at, $zero, 0x0037         ## $at = 00000037
/* 020A0 80972FF0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 020A4 80972FF4 5701000D */  bnel    $t8, $at, .L8097302C       
/* 020A8 80972FF8 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 020AC 80972FFC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 020B0 80973000 24051841 */  addiu   $a1, $zero, 0x1841         ## $a1 = 00001841
/* 020B4 80973004 10000009 */  beq     $zero, $zero, .L8097302C   
/* 020B8 80973008 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 020BC 8097300C 96191D74 */  lhu     $t9, 0x1D74($s0)           ## 00001D74
.L80973010:
/* 020C0 80973010 2401015E */  addiu   $at, $zero, 0x015E         ## $at = 0000015E
/* 020C4 80973014 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 020C8 80973018 57210004 */  bnel    $t9, $at, .L8097302C       
/* 020CC 8097301C 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 020D0 80973020 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 020D4 80973024 24051841 */  addiu   $a1, $zero, 0x1841         ## $a1 = 00001841
.L80973028:
/* 020D8 80973028 8FBF003C */  lw      $ra, 0x003C($sp)           
.L8097302C:
/* 020DC 8097302C 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 020E0 80973030 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 020E4 80973034 03E00008 */  jr      $ra                        
/* 020E8 80973038 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
