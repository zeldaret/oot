.late_rodata
glabel D_808A605C
 .word 0xC54E4000
glabel D_808A6060
 .word 0x44DFE000
glabel D_808A6064
 .word 0x4508F000

.text
glabel func_808A5724
/* 001B4 808A5724 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 001B8 808A5728 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 001BC 808A572C 3C01808A */  lui     $at, %hi(D_808A605C)       ## $at = 808A0000
/* 001C0 808A5730 C424605C */  lwc1    $f4, %lo(D_808A605C)($at)  
/* 001C4 808A5734 C460002C */  lwc1    $f0, 0x002C($v1)           ## 0000002C
/* 001C8 808A5738 3C01C4E6 */  lui     $at, 0xC4E6                ## $at = C4E60000
/* 001CC 808A573C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 001D0 808A5740 4600203C */  c.lt.s  $f4, $f0                   
/* 001D4 808A5744 24630024 */  addiu   $v1, $v1, 0x0024           ## $v1 = 00000024
/* 001D8 808A5748 45000002 */  bc1f    .L808A5754                 
/* 001DC 808A574C 00000000 */  nop
/* 001E0 808A5750 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L808A5754:
/* 001E4 808A5754 1040001D */  beq     $v0, $zero, .L808A57CC     
/* 001E8 808A5758 00000000 */  nop
/* 001EC 808A575C 44813000 */  mtc1    $at, $f6                   ## $f6 = -1840.00
/* 001F0 808A5760 3C01808A */  lui     $at, %hi(D_808A6060)       ## $at = 808A0000
/* 001F4 808A5764 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 001F8 808A5768 4606003C */  c.lt.s  $f0, $f6                   
/* 001FC 808A576C 00000000 */  nop
/* 00200 808A5770 45000002 */  bc1f    .L808A577C                 
/* 00204 808A5774 00000000 */  nop
/* 00208 808A5778 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L808A577C:
/* 0020C 808A577C 10400013 */  beq     $v0, $zero, .L808A57CC     
/* 00210 808A5780 00000000 */  nop
/* 00214 808A5784 C4600000 */  lwc1    $f0, 0x0000($v1)           ## 00000024
/* 00218 808A5788 C4286060 */  lwc1    $f8, %lo(D_808A6060)($at)  
/* 0021C 808A578C 3C01808A */  lui     $at, %hi(D_808A6064)       ## $at = 808A0000
/* 00220 808A5790 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00224 808A5794 4600403C */  c.lt.s  $f8, $f0                   
/* 00228 808A5798 00000000 */  nop
/* 0022C 808A579C 45000002 */  bc1f    .L808A57A8                 
/* 00230 808A57A0 00000000 */  nop
/* 00234 808A57A4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L808A57A8:
/* 00238 808A57A8 10400008 */  beq     $v0, $zero, .L808A57CC     
/* 0023C 808A57AC 00000000 */  nop
/* 00240 808A57B0 C42A6064 */  lwc1    $f10, %lo(D_808A6064)($at) 
/* 00244 808A57B4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00248 808A57B8 460A003C */  c.lt.s  $f0, $f10                  
/* 0024C 808A57BC 00000000 */  nop
/* 00250 808A57C0 45000002 */  bc1f    .L808A57CC                 
/* 00254 808A57C4 00000000 */  nop
/* 00258 808A57C8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L808A57CC:
/* 0025C 808A57CC 03E00008 */  jr      $ra                        
/* 00260 808A57D0 00000000 */  nop


