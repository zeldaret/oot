.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_8011FAF0
    .incbin "baserom.z64", 0xB96C90, 0x40

glabel D_8011FB30
    .incbin "baserom.z64", 0xB96CD0, 0x4

glabel D_8011FB34
    .incbin "baserom.z64", 0xB96CD4, 0x4

glabel D_8011FB38
    .incbin "baserom.z64", 0xB96CD8, 0x4

glabel D_8011FB3C
    .incbin "baserom.z64", 0xB96CDC, 0x4

glabel D_8011FB40
    .incbin "baserom.z64", 0xB96CE0, 0x4

glabel D_8011FB44
    .incbin "baserom.z64", 0xB96CE4, 0x4

glabel D_8011FB48
    .incbin "baserom.z64", 0xB96CE8, 0xD4

glabel D_8011FC1C
    .incbin "baserom.z64", 0xB96DBC, 0x120

glabel D_8011FD3C
    .word _vr_fine0_staticSegmentRomStart
    .word _vr_fine0_staticSegmentRomEnd
    .word _vr_fine0_pal_staticSegmentRomStart
    .word _vr_fine0_pal_staticSegmentRomEnd
    .word _vr_fine1_staticSegmentRomStart
    .word _vr_fine1_staticSegmentRomEnd
    .word _vr_fine1_pal_staticSegmentRomStart
    .word _vr_fine1_pal_staticSegmentRomEnd
    .word _vr_fine2_staticSegmentRomStart
    .word _vr_fine2_staticSegmentRomEnd
    .word _vr_fine2_pal_staticSegmentRomStart
    .word _vr_fine2_pal_staticSegmentRomEnd
    .word _vr_fine3_staticSegmentRomStart
    .word _vr_fine3_staticSegmentRomEnd
    .word _vr_fine3_pal_staticSegmentRomStart
    .word _vr_fine3_pal_staticSegmentRomEnd
    .word _vr_cloud0_staticSegmentRomStart
    .word _vr_cloud0_staticSegmentRomEnd
    .word _vr_cloud0_pal_staticSegmentRomStart
    .word _vr_cloud0_pal_staticSegmentRomEnd
    .word _vr_cloud1_staticSegmentRomStart
    .word _vr_cloud1_staticSegmentRomEnd
    .word _vr_cloud1_pal_staticSegmentRomStart
    .word _vr_cloud1_pal_staticSegmentRomEnd
    .word _vr_cloud2_staticSegmentRomStart
    .word _vr_cloud2_staticSegmentRomEnd
    .word _vr_cloud2_pal_staticSegmentRomStart
    .word _vr_cloud2_pal_staticSegmentRomEnd
    .word _vr_cloud3_staticSegmentRomStart
    .word _vr_cloud3_staticSegmentRomEnd
    .word _vr_cloud3_pal_staticSegmentRomStart
    .word _vr_cloud3_pal_staticSegmentRomEnd
    .word _vr_holy0_staticSegmentRomStart
    .word _vr_holy0_staticSegmentRomEnd
    .word _vr_holy0_pal_staticSegmentRomStart
    .word _vr_holy0_pal_staticSegmentRomEnd

glabel D_8011FDCC
    .incbin "baserom.z64", 0xB96F6C, 0x4

glabel D_8011FDD0
    .incbin "baserom.z64", 0xB96F70, 0x4

glabel D_8011FDD4
    .incbin "baserom.z64", 0xB96F74, 0x4

glabel D_8011FDD8
    .incbin "baserom.z64", 0xB96F78, 0x28

glabel D_8011FE00
    .incbin "baserom.z64", 0xB96FA0, 0x20

glabel D_8011FE20
    .incbin "baserom.z64", 0xB96FC0, 0x28

glabel D_8011FE48
    .incbin "baserom.z64", 0xB96FE8, 0x28

glabel D_8011FE70
    .incbin "baserom.z64", 0xB97010, 0xC

glabel D_8011FE7C
    .incbin "baserom.z64", 0xB9701C, 0xC

glabel D_8011FE88
    .incbin "baserom.z64", 0xB97028, 0xC

glabel D_8011FE94
    .incbin "baserom.z64", 0xB97034, 0xC

glabel D_8011FEA0
    .incbin "baserom.z64", 0xB97040, 0x24

glabel D_8011FEC4
    .incbin "baserom.z64", 0xB97064, 0xC

glabel D_8011FED0
    .incbin "baserom.z64", 0xB97070, 0x10
