glabel func_80A3DF60
/* 00880 80A3DF60 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00884 80A3DF64 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00888 80A3DF68 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0088C 80A3DF6C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00890 80A3DF70 0C042F6F */  jal     func_8010BDBC              
/* 00894 80A3DF74 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00898 80A3DF78 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 0089C 80A3DF7C 5441000C */  bnel    $v0, $at, .L80A3DFB0       
/* 008A0 80A3DF80 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008A4 80A3DF84 0C041AF2 */  jal     func_80106BC8              
/* 008A8 80A3DF88 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 008AC 80A3DF8C 50400008 */  beql    $v0, $zero, .L80A3DFB0     
/* 008B0 80A3DF90 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008B4 80A3DF94 0C021CC3 */  jal     Rupees_ChangeBy              
/* 008B8 80A3DF98 2404FF38 */  addiu   $a0, $zero, 0xFF38         ## $a0 = FFFFFF38
/* 008BC 80A3DF9C 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 008C0 80A3DFA0 3C0E80A4 */  lui     $t6, %hi(func_80A3DC44)    ## $t6 = 80A40000
/* 008C4 80A3DFA4 25CEDC44 */  addiu   $t6, $t6, %lo(func_80A3DC44) ## $t6 = 80A3DC44
/* 008C8 80A3DFA8 ADEE026C */  sw      $t6, 0x026C($t7)           ## 0000026C
/* 008CC 80A3DFAC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A3DFB0:
/* 008D0 80A3DFB0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008D4 80A3DFB4 03E00008 */  jr      $ra                        
/* 008D8 80A3DFB8 00000000 */  nop
