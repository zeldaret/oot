glabel func_80B95CA4
/* 002D4 80B95CA4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002D8 80B95CA8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002DC 80B95CAC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 002E0 80B95CB0 84820014 */  lh      $v0, 0x0014($a0)           ## 00000014
/* 002E4 80B95CB4 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 002E8 80B95CB8 848301B4 */  lh      $v1, 0x01B4($a0)           ## 000001B4
/* 002EC 80B95CBC 04400009 */  bltz    $v0, .L80B95CE4            
/* 002F0 80B95CC0 2841001A */  slti    $at, $v0, 0x001A           
/* 002F4 80B95CC4 10200007 */  beq     $at, $zero, .L80B95CE4     
/* 002F8 80B95CC8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002FC 80B95CCC 00037200 */  sll     $t6, $v1,  8               
/* 00300 80B95CD0 004E3025 */  or      $a2, $v0, $t6              ## $a2 = 00000000
/* 00304 80B95CD4 00063400 */  sll     $a2, $a2, 16               
/* 00308 80B95CD8 00063403 */  sra     $a2, $a2, 16               
/* 0030C 80B95CDC 0C007D52 */  jal     Item_DropCollectible
              
/* 00310 80B95CE0 24E50024 */  addiu   $a1, $a3, 0x0024           ## $a1 = 00000024
.L80B95CE4:
/* 00314 80B95CE4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00318 80B95CE8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0031C 80B95CEC 03E00008 */  jr      $ra                        
/* 00320 80B95CF0 00000000 */  nop
