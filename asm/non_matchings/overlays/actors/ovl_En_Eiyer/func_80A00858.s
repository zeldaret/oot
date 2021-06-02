glabel func_80A00858
/* 008B8 80A00858 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 008BC 80A0085C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 008C0 80A00860 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 008C4 80A00864 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 008C8 80A00868 0C02927F */  jal     SkelAnime_Update
              
/* 008CC 80A0086C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 008D0 80A00870 8FA30018 */  lw      $v1, 0x0018($sp)           
/* 008D4 80A00874 3C063F40 */  lui     $a2, 0x3F40                ## $a2 = 3F400000
/* 008D8 80A00878 24640028 */  addiu   $a0, $v1, 0x0028           ## $a0 = 00000028
/* 008DC 80A0087C 0C01DE80 */  jal     Math_StepToF
              
/* 008E0 80A00880 8C65000C */  lw      $a1, 0x000C($v1)           ## 0000000C
/* 008E4 80A00884 50400004 */  beql    $v0, $zero, .L80A00898     
/* 008E8 80A00888 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008EC 80A0088C 0C2800D6 */  jal     func_80A00358              
/* 008F0 80A00890 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 008F4 80A00894 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A00898:
/* 008F8 80A00898 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008FC 80A0089C 03E00008 */  jr      $ra                        
/* 00900 80A008A0 00000000 */  nop
