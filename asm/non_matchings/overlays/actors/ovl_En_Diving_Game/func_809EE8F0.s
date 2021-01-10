glabel func_809EE8F0
/* 01080 809EE8F0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01084 809EE8F4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01088 809EE8F8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0108C 809EE8FC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01090 809EE900 0C02927F */  jal     SkelAnime_Update
              
/* 01094 809EE904 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01098 809EE908 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0109C 809EE90C 0C042F6F */  jal     func_8010BDBC              
/* 010A0 809EE910 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 010A4 809EE914 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 010A8 809EE918 85CF0292 */  lh      $t7, 0x0292($t6)           ## 00000292
/* 010AC 809EE91C 55E2000D */  bnel    $t7, $v0, .L809EE954       
/* 010B0 809EE920 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 010B4 809EE924 0C041AF2 */  jal     func_80106BC8              
/* 010B8 809EE928 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 010BC 809EE92C 50400009 */  beql    $v0, $zero, .L809EE954     
/* 010C0 809EE930 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 010C4 809EE934 0C041B33 */  jal     func_80106CCC              
/* 010C8 809EE938 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 010CC 809EE93C 8FB90018 */  lw      $t9, 0x0018($sp)           
/* 010D0 809EE940 3C18809F */  lui     $t8, %hi(func_809EDD4C)    ## $t8 = 809F0000
/* 010D4 809EE944 2718DD4C */  addiu   $t8, $t8, %lo(func_809EDD4C) ## $t8 = 809EDD4C
/* 010D8 809EE948 10000004 */  beq     $zero, $zero, .L809EE95C   
/* 010DC 809EE94C AF380280 */  sw      $t8, 0x0280($t9)           ## 00000280
/* 010E0 809EE950 8FA40018 */  lw      $a0, 0x0018($sp)           
.L809EE954:
/* 010E4 809EE954 0C27B6C2 */  jal     func_809EDB08              
/* 010E8 809EE958 8FA5001C */  lw      $a1, 0x001C($sp)           
.L809EE95C:
/* 010EC 809EE95C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 010F0 809EE960 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 010F4 809EE964 03E00008 */  jr      $ra                        
/* 010F8 809EE968 00000000 */  nop
