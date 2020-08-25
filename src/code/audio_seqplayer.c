#include <ultra64.h>
#include <global.h>

extern u8 D_80130470[];
extern AudioListItem gLayerFreeList;

u16 func_800E9D48(void* arg0);
u16 func_800E9D5C(void* arg0);

u16 func_800E9340(void* arg0, u8 arg1) {
    u8 temp_v0 = D_80130470[arg1];
    u8 loBits = temp_v0 & 3;
    u16 ret = 0;
    if (loBits == 1) {
        if ((temp_v0 & 0x80) == 0) {
            ret = func_800E9D48(arg0);
        } else {
            ret = func_800E9D5C(arg0);
        }
    }
    return ret;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800E93A8.s")

void Audio_SequenceChannelInit(SequenceChannel* seqChannel);
s32 Audio_SeqChannelSetLayer(SequenceChannel* seqChannel, s32 layerIndex);

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/Audio_SequenceChannelInit.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/Audio_SeqChannelSetLayer.s")

void Audio_SeqChannelLayerDisable(SequenceChannelLayer* layer) {
    if (layer != NULL) {
        if (IS_SEQUENCE_CHANNEL_VALID(layer->seqChannel) && layer->seqChannel->seqPlayer->finished == 1) {
            Audio_SeqChanLayerNoteRelease(layer);
        } else {
            Audio_SeqChanLayerNoteDecay(layer);
        }
        layer->enabled = 0;
        layer->finished = 1;
    }
}

void Audio_SeqChannelLayerFree(SequenceChannel* seqChannel, s32 layerIndex) {
    SequenceChannelLayer* layer = seqChannel->layers[layerIndex];

    if (layer != NULL) {
        Audio_AudioListPushBack(&gLayerFreeList, &layer->listItem);
        Audio_SeqChannelLayerDisable(layer);
        seqChannel->layers[layerIndex] = NULL;
    }
}

void Audio_SequenceChannelDisable(SequenceChannel* seqChannel) {
    s32 i;
    for (i = 0; i < 4; i++) {
        Audio_SeqChannelLayerFree(seqChannel, i);
    }

    Audio_NotePoolClear(&seqChannel->notePool);
    seqChannel->enabled = 0;
    seqChannel->finished = 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800E9934.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800E9A2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800E9AAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800E9B44.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/Audio_SequencePlayerDisable.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/Audio_AudioListPushBack.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/Audio_AudioListPopBack.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800E9CA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800E9D48.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800E9D5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800E9D94.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800E9DD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800E9ED8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800E9F64.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EA0C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EA440.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EAAE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EAEF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EAF24.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EAF98.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EB044.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EB068.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EBD58.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EC564.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EC618.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EC668.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EC734.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EC80C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/func_800EC8DC.s")
