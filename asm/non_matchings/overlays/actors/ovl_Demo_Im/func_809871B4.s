glabel func_809871B4
/* 025D4 809871B4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 025D8 809871B8 10A00007 */  beq     $a1, $zero, .L809871D8     
/* 025DC 809871BC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 025E0 809871C0 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 025E4 809871C4 24A5FB10 */  addiu   $a1, $a1, 0xFB10           ## $a1 = 0600FB10
/* 025E8 809871C8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 025EC 809871CC 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 025F0 809871D0 0C2614A0 */  jal     func_80985280              
/* 025F4 809871D4 AFA00010 */  sw      $zero, 0x0010($sp)         
.L809871D8:
/* 025F8 809871D8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 025FC 809871DC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02600 809871E0 03E00008 */  jr      $ra                        
/* 02604 809871E4 00000000 */  nop


