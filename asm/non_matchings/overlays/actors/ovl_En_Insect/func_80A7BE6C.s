glabel func_80A7BE6C
/* 0004C 80A7BE6C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00050 80A7BE70 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00054 80A7BE74 3C014200 */  lui     $at, 0x4200                ## $at = 42000000
/* 00058 80A7BE78 44813000 */  mtc1    $at, $f6                   ## $f6 = 32.00
/* 0005C 80A7BE7C C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 00060 80A7BE80 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00064 80A7BE84 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00068 80A7BE88 4606203C */  c.lt.s  $f4, $f6                   
/* 0006C 80A7BE8C 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00070 80A7BE90 4502002D */  bc1fl   .L80A7BF48                 
/* 00074 80A7BE94 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00078 80A7BE98 8484008A */  lh      $a0, 0x008A($a0)           ## 0000008A
/* 0007C 80A7BE9C AFA60030 */  sw      $a2, 0x0030($sp)           
/* 00080 80A7BEA0 AFA20028 */  sw      $v0, 0x0028($sp)           
/* 00084 80A7BEA4 00812021 */  addu    $a0, $a0, $at              
/* 00088 80A7BEA8 00042400 */  sll     $a0, $a0, 16               
/* 0008C 80A7BEAC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00090 80A7BEB0 00042403 */  sra     $a0, $a0, 16               
/* 00094 80A7BEB4 3C014180 */  lui     $at, 0x4180                ## $at = 41800000
/* 00098 80A7BEB8 44814000 */  mtc1    $at, $f8                   ## $f8 = 16.00
/* 0009C 80A7BEBC 8FA20028 */  lw      $v0, 0x0028($sp)           
/* 000A0 80A7BEC0 8FAE0030 */  lw      $t6, 0x0030($sp)           
/* 000A4 80A7BEC4 46080282 */  mul.s   $f10, $f0, $f8             
/* 000A8 80A7BEC8 C4500024 */  lwc1    $f16, 0x0024($v0)          ## 00000024
/* 000AC 80A7BECC 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 000B0 80A7BED0 46105480 */  add.s   $f18, $f10, $f16           
/* 000B4 80A7BED4 E7B2001C */  swc1    $f18, 0x001C($sp)          
/* 000B8 80A7BED8 C4440028 */  lwc1    $f4, 0x0028($v0)           ## 00000028
/* 000BC 80A7BEDC E7A40020 */  swc1    $f4, 0x0020($sp)           
/* 000C0 80A7BEE0 85C4008A */  lh      $a0, 0x008A($t6)           ## 0000008A
/* 000C4 80A7BEE4 00812021 */  addu    $a0, $a0, $at              
/* 000C8 80A7BEE8 00042400 */  sll     $a0, $a0, 16               
/* 000CC 80A7BEEC 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 000D0 80A7BEF0 00042403 */  sra     $a0, $a0, 16               
/* 000D4 80A7BEF4 3C014180 */  lui     $at, 0x4180                ## $at = 41800000
/* 000D8 80A7BEF8 44813000 */  mtc1    $at, $f6                   ## $f6 = 16.00
/* 000DC 80A7BEFC 8FA20028 */  lw      $v0, 0x0028($sp)           
/* 000E0 80A7BF00 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 000E4 80A7BF04 46060202 */  mul.s   $f8, $f0, $f6              
/* 000E8 80A7BF08 C44A002C */  lwc1    $f10, 0x002C($v0)          ## 0000002C
/* 000EC 80A7BF0C 27A4001C */  addiu   $a0, $sp, 0x001C           ## $a0 = FFFFFFEC
/* 000F0 80A7BF10 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 000F4 80A7BF14 460A4400 */  add.s   $f16, $f8, $f10            
/* 000F8 80A7BF18 0C29EF90 */  jal     func_80A7BE40              
/* 000FC 80A7BF1C E7B00024 */  swc1    $f16, 0x0024($sp)          
/* 00100 80A7BF20 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 00104 80A7BF24 44819000 */  mtc1    $at, $f18                  ## $f18 = 400.00
/* 00108 80A7BF28 00000000 */  nop
/* 0010C 80A7BF2C 4612003E */  c.le.s  $f0, $f18                  
/* 00110 80A7BF30 00000000 */  nop
/* 00114 80A7BF34 45020004 */  bc1fl   .L80A7BF48                 
/* 00118 80A7BF38 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0011C 80A7BF3C 10000002 */  beq     $zero, $zero, .L80A7BF48   
/* 00120 80A7BF40 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00124 80A7BF44 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A7BF48:
/* 00128 80A7BF48 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0012C 80A7BF4C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00130 80A7BF50 03E00008 */  jr      $ra                        
/* 00134 80A7BF54 00000000 */  nop
