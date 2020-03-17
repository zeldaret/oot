glabel func_80AA0778
/* 000E8 80AA0778 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 000EC 80AA077C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000F0 80AA0780 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 000F4 80AA0784 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 000F8 80AA0788 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 000FC 80AA078C A7A3001E */  sh      $v1, 0x001E($sp)           
/* 00100 80AA0790 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00104 80AA0794 0C042F6F */  jal     func_8010BDBC              
/* 00108 80AA0798 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 0010C 80AA079C 2C41000A */  sltiu   $at, $v0, 0x000A           
/* 00110 80AA07A0 87A3001E */  lh      $v1, 0x001E($sp)           
/* 00114 80AA07A4 10200042 */  beq     $at, $zero, .L80AA08B0     
/* 00118 80AA07A8 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 0011C 80AA07AC 00027080 */  sll     $t6, $v0,  2               
/* 00120 80AA07B0 3C0180AA */  lui     $at, %hi(jtbl_80AA1700)       ## $at = 80AA0000
/* 00124 80AA07B4 002E0821 */  addu    $at, $at, $t6              
/* 00128 80AA07B8 8C2E1700 */  lw      $t6, %lo(jtbl_80AA1700)($at)  
/* 0012C 80AA07BC 01C00008 */  jr      $t6                        
/* 00130 80AA07C0 00000000 */  nop
glabel L80AA07C4
/* 00134 80AA07C4 8FAF0024 */  lw      $t7, 0x0024($sp)           
/* 00138 80AA07C8 95F8010E */  lhu     $t8, 0x010E($t7)           ## 0000010E
/* 0013C 80AA07CC 2719DFBF */  addiu   $t9, $t8, 0xDFBF           ## $t9 = FFFFDFBF
/* 00140 80AA07D0 2F210021 */  sltiu   $at, $t9, 0x0021           
/* 00144 80AA07D4 10200027 */  beq     $at, $zero, .L80AA0874     
/* 00148 80AA07D8 0019C880 */  sll     $t9, $t9,  2               
/* 0014C 80AA07DC 3C0180AA */  lui     $at, %hi(jtbl_80AA1728)       ## $at = 80AA0000
/* 00150 80AA07E0 00390821 */  addu    $at, $at, $t9              
/* 00154 80AA07E4 8C391728 */  lw      $t9, %lo(jtbl_80AA1728)($at)  
/* 00158 80AA07E8 03200008 */  jr      $t9                        
/* 0015C 80AA07EC 00000000 */  nop
glabel L80AA07F0
/* 00160 80AA07F0 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00164 80AA07F4 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00168 80AA07F8 94480F08 */  lhu     $t0, 0x0F08($v0)           ## 8015F568
/* 0016C 80AA07FC 944A0ED6 */  lhu     $t2, 0x0ED6($v0)           ## 8015F536
/* 00170 80AA0800 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 00174 80AA0804 35090010 */  ori     $t1, $t0, 0x0010           ## $t1 = 00000010
/* 00178 80AA0808 354B0001 */  ori     $t3, $t2, 0x0001           ## $t3 = 00000001
/* 0017C 80AA080C A4490F08 */  sh      $t1, 0x0F08($v0)           ## 8015F568
/* 00180 80AA0810 10000027 */  beq     $zero, $zero, .L80AA08B0   
/* 00184 80AA0814 A44B0ED6 */  sh      $t3, 0x0ED6($v0)           ## 8015F536
glabel L80AA0818
/* 00188 80AA0818 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0018C 80AA081C 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00190 80AA0820 944C0ED6 */  lhu     $t4, 0x0ED6($v0)           ## 8015F536
/* 00194 80AA0824 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 00198 80AA0828 358D0020 */  ori     $t5, $t4, 0x0020           ## $t5 = 00000020
/* 0019C 80AA082C 10000020 */  beq     $zero, $zero, .L80AA08B0   
/* 001A0 80AA0830 A44D0ED6 */  sh      $t5, 0x0ED6($v0)           ## 8015F536
glabel L80AA0834
/* 001A4 80AA0834 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 001A8 80AA0838 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 001AC 80AA083C 944E0F08 */  lhu     $t6, 0x0F08($v0)           ## 8015F568
/* 001B0 80AA0840 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 001B4 80AA0844 35CF0020 */  ori     $t7, $t6, 0x0020           ## $t7 = 00000020
/* 001B8 80AA0848 10000019 */  beq     $zero, $zero, .L80AA08B0   
/* 001BC 80AA084C A44F0F08 */  sh      $t7, 0x0F08($v0)           ## 8015F568
glabel L80AA0850
/* 001C0 80AA0850 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 001C4 80AA0854 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 001C8 80AA0858 94580ED6 */  lhu     $t8, 0x0ED6($v0)           ## 8015F536
/* 001CC 80AA085C 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 001D0 80AA0860 37190040 */  ori     $t9, $t8, 0x0040           ## $t9 = 00000040
/* 001D4 80AA0864 10000012 */  beq     $zero, $zero, .L80AA08B0   
/* 001D8 80AA0868 A4590ED6 */  sh      $t9, 0x0ED6($v0)           ## 8015F536
glabel L80AA086C
/* 001DC 80AA086C 10000010 */  beq     $zero, $zero, .L80AA08B0   
/* 001E0 80AA0870 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
glabel L80AA0874
.L80AA0874:
/* 001E4 80AA0874 1000000E */  beq     $zero, $zero, .L80AA08B0   
/* 001E8 80AA0878 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
glabel L80AA087C
/* 001EC 80AA087C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 001F0 80AA0880 0C041AF2 */  jal     func_80106BC8              
/* 001F4 80AA0884 A7A3001E */  sh      $v1, 0x001E($sp)           
/* 001F8 80AA0888 10400009 */  beq     $v0, $zero, .L80AA08B0     
/* 001FC 80AA088C 87A3001E */  lh      $v1, 0x001E($sp)           
/* 00200 80AA0890 10000007 */  beq     $zero, $zero, .L80AA08B0   
/* 00204 80AA0894 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
glabel L80AA0898
/* 00208 80AA0898 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 0020C 80AA089C 0C041AF2 */  jal     func_80106BC8              
/* 00210 80AA08A0 A7A3001E */  sh      $v1, 0x001E($sp)           
/* 00214 80AA08A4 10400002 */  beq     $v0, $zero, .L80AA08B0     
/* 00218 80AA08A8 87A3001E */  lh      $v1, 0x001E($sp)           
/* 0021C 80AA08AC 24030003 */  addiu   $v1, $zero, 0x0003         ## $v1 = 00000003
glabel L80AA08B0
.L80AA08B0:
/* 00220 80AA08B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00224 80AA08B4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00228 80AA08B8 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000003
/* 0022C 80AA08BC 03E00008 */  jr      $ra                        
/* 00230 80AA08C0 00000000 */  nop


