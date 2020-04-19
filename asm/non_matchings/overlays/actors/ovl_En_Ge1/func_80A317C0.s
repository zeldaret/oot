glabel func_80A317C0
/* 00E50 80A317C0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00E54 80A317C4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00E58 80A317C8 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 00E5C 80A317CC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00E60 80A317D0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00E64 80A317D4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00E68 80A317D8 85C5001C */  lh      $a1, 0x001C($t6)           ## 0000001C
/* 00E6C 80A317DC 00052A03 */  sra     $a1, $a1,  8               
/* 00E70 80A317E0 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00E74 80A317E4 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00E78 80A317E8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00E7C 80A317EC 10400009 */  beq     $v0, $zero, .L80A31814     
/* 00E80 80A317F0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00E84 80A317F4 3C0F80A3 */  lui     $t7, %hi(func_80A3157C)    ## $t7 = 80A30000
/* 00E88 80A317F8 25EF157C */  addiu   $t7, $t7, %lo(func_80A3157C) ## $t7 = 80A3157C
/* 00E8C 80A317FC AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00E90 80A31800 24066018 */  addiu   $a2, $zero, 0x6018         ## $a2 = 00006018
/* 00E94 80A31804 0C28C31C */  jal     func_80A30C70              
/* 00E98 80A31808 3C0742C8 */  lui     $a3, 0x42C8                ## $a3 = 42C80000
/* 00E9C 80A3180C 10000008 */  beq     $zero, $zero, .L80A31830   
/* 00EA0 80A31810 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A31814:
/* 00EA4 80A31814 3C1880A3 */  lui     $t8, %hi(func_80A316F4)    ## $t8 = 80A30000
/* 00EA8 80A31818 271816F4 */  addiu   $t8, $t8, %lo(func_80A316F4) ## $t8 = 80A316F4
/* 00EAC 80A3181C AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00EB0 80A31820 24066017 */  addiu   $a2, $zero, 0x6017         ## $a2 = 00006017
/* 00EB4 80A31824 0C28C31C */  jal     func_80A30C70              
/* 00EB8 80A31828 3C0742C8 */  lui     $a3, 0x42C8                ## $a3 = 42C80000
/* 00EBC 80A3182C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A31830:
/* 00EC0 80A31830 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00EC4 80A31834 03E00008 */  jr      $ra                        
/* 00EC8 80A31838 00000000 */  nop
