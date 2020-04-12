.late_rodata
glabel D_80ABE4B8
    .float 0.7

glabel D_80ABE4BC
 .word 0x40333333

.text
glabel func_80ABCD40
/* 00190 80ABCD40 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00194 80ABCD44 C4860084 */  lwc1    $f6, 0x0084($a0)           ## 00000084
/* 00198 80ABCD48 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0019C 80ABCD4C 4606203C */  c.lt.s  $f4, $f6                   
/* 001A0 80ABCD50 00000000 */  nop
/* 001A4 80ABCD54 45020005 */  bc1fl   .L80ABCD6C                 
/* 001A8 80ABCD58 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 001AC 80ABCD5C 3C0180AC */  lui     $at, %hi(D_80ABE4B8)       ## $at = 80AC0000
/* 001B0 80ABCD60 10000003 */  beq     $zero, $zero, .L80ABCD70   
/* 001B4 80ABCD64 C420E4B8 */  lwc1    $f0, %lo(D_80ABE4B8)($at)  
/* 001B8 80ABCD68 44810000 */  mtc1    $at, $f0                   ## $f0 = -0.00
.L80ABCD6C:
/* 001BC 80ABCD6C 00000000 */  nop
.L80ABCD70:
/* 001C0 80ABCD70 3C0180AC */  lui     $at, %hi(D_80ABE4BC)       ## $at = 80AC0000
/* 001C4 80ABCD74 C428E4BC */  lwc1    $f8, %lo(D_80ABE4BC)($at)  
/* 001C8 80ABCD78 46004282 */  mul.s   $f10, $f8, $f0             
/* 001CC 80ABCD7C 03E00008 */  jr      $ra                        
/* 001D0 80ABCD80 E48A01E8 */  swc1    $f10, 0x01E8($a0)          ## 000001E8
