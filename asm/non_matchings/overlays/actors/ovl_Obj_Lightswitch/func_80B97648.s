glabel func_80B97648
/* 00AA8 80B97648 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00AAC 80B9764C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00AB0 80B97650 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00AB4 80B97654 0C016C66 */  jal     func_8005B198              
/* 00AB8 80B97658 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00ABC 80B9765C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00AC0 80B97660 908E0002 */  lbu     $t6, 0x0002($a0)           ## 00000002
/* 00AC4 80B97664 104E0004 */  beq     $v0, $t6, .L80B97678       
/* 00AC8 80B97668 00000000 */  nop
/* 00ACC 80B9766C 848F01B2 */  lh      $t7, 0x01B2($a0)           ## 000001B2
/* 00AD0 80B97670 5DE00004 */  bgtzl   $t7, .L80B97684            
/* 00AD4 80B97674 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B97678:
/* 00AD8 80B97678 0C2E5DA4 */  jal     func_80B97690              
/* 00ADC 80B9767C 00000000 */  nop
/* 00AE0 80B97680 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B97684:
/* 00AE4 80B97684 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00AE8 80B97688 03E00008 */  jr      $ra                        
/* 00AEC 80B9768C 00000000 */  nop
