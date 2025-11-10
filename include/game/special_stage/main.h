#ifndef GUARD_SA1_SPECIAL_STAGE_H
#define GUARD_SA1_SPECIAL_STAGE_H

extern u16 gSpecialStageCollectedRings;
extern u16 gSpecialStageTargetRings; // TODO: another ring counter...
extern u8 gUnknown_03005730; // TODO: is this u8 or s8?
extern void CreateTempSoundTask(u16 songId);
extern void CreateSpStageTrickSoundTask(u16 expectedSongId, u16 resumeSongId);
extern void CreateSpecialStage(); // SA2: has 2 params
extern void CreateSpecialStageIntro();

#endif // GUARD_SA1_SPECIAL_STAGE_H