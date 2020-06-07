glabel func_80AB3150
/* 023C0 80AB3150 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 023C4 80AB3154 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 023C8 80AB3158 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 023CC 80AB315C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 023D0 80AB3160 24A50BC0 */  addiu   $a1, $a1, 0x0BC0           ## $a1 = 06000BC0
/* 023D4 80AB3164 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 023D8 80AB3168 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 023DC 80AB316C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 023E0 80AB3170 0C2AC528 */  jal     func_80AB14A0              
/* 023E4 80AB3174 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 023E8 80AB3178 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 023EC 80AB317C 240E0014 */  addiu   $t6, $zero, 0x0014         ## $t6 = 00000014
/* 023F0 80AB3180 AC8E0278 */  sw      $t6, 0x0278($a0)           ## 00000278
/* 023F4 80AB3184 AC80027C */  sw      $zero, 0x027C($a0)         ## 0000027C
/* 023F8 80AB3188 A08000C8 */  sb      $zero, 0x00C8($a0)         ## 000000C8
/* 023FC 80AB318C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02400 80AB3190 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02404 80AB3194 03E00008 */  jr      $ra                        
/* 02408 80AB3198 00000000 */  nop
