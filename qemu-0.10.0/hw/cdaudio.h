#ifndef CDAUDIO_H
#define CDAUDIO_H

#include "block.h"
#include "audio/audio.h"

void cdaudio_init(BlockDriverState *bs);
void cdaudio_set_bs(BlockDriverState *bs);
void cdaudio_play_lba(int start_lba, int nb_sectors);
void cdaudio_pause(int active);
void cdaudio_stop(void);

#endif /* CDAUDIO_H */
