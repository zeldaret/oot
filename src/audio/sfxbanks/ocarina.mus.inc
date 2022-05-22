.table table_ocarina
entry ocarina_ocarina
entry ocarina_voidout
entry env_door_open_oca
entry ocarina_warp_in
entry ocarina_warp_out
entry env_grotto_exit
entry ocarina_respawn
entry ocarina_ocarina

.channel ocarina_ocarina
ldi 80
stio 1
ldio 7
and 7
ldseq addr_5F30
stseq 0, chan_5F0C+1
ldio 7
and 7
ldseq addr_5F38
stseq 0, layer_5F2B+3
.channel chan_5F0C
instr FONT00_INSTR_OCARINA_0
ldio 5
rbltz chan_5F15
stseq 0, layer_5F29+1
.channel chan_5F15
ldlayer 0, layer_5F28
.channel chan_5F18
ldio 6
rbltz chan_5F21
stseq 0, @+1
vibdepth 0
.channel chan_5F21
ldi 1
call delay_varyingvol
rjump chan_5F18

.layer layer_5F28
legato
.layer layer_5F29
transpose 0
.layer layer_5F2B
notedv PITCH_C4, 0x1E0, 127
end

.array addr_5F30
byte 0x34
byte 0x55
byte 0x56
byte 0x59
byte 0x53
byte 0x52
byte 0x34
byte 0x34

.array addr_5F38
byte 115
byte 115
byte 100
byte 115
byte 100
byte 115
byte 115
byte 115

.channel ocarina_warp_out
ldi 129
.channel chan_5F42
vibfreq 64
vibdepthgrad 4, 8, 8
stseq 0, layer_5F5C+1
instr FONT00_INSTR_FAIRY
env envelope_66FC
releaserate 240
ldlayer 0, layer_5F5A
ldlayer 1, layer_5F5C
end

.layer layer_5F5A
transpose 24

.layer layer_5F5C
portamento 0x81, 15, 255
notedv PITCH_G3, 0x8C, 80
end

.channel ocarina_warp_in
ldi 130
rjump chan_5F42

.channel ocarina_voidout
ldi 80
stseq 0, layer_5F90+1
ldi 129
.channel chan_5F71
stseq 0, layer_5F8C+1
ldi 20
stio 1
gain 15
ldlayer 0, layer_5F84
vibfreq 8
vibdepthgrad 4, 40, 8
end

.layer layer_5F84
instr FONT00_INSTR_SHIMMER
transpose 48
env envelope_6740, 251
.layer layer_5F8C
portamento 0x81, 32, 224
.layer layer_5F90
notedv PITCH_DF2, 0x50, 105
ldelay 0x60
end

.channel ocarina_respawn
ldi 40
stseq 0, layer_5F90+1
ldi 130
rjump chan_5F71
