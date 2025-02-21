#ifndef SA1_UI_GRAPHICS_H
#define SA1_UI_GRAPHICS_H
#include "global.h"

#include "constants/ui_graphics.h"

/* This file was created using './scripts/extract_ui_graphics_data.py'.
   If you want to change a name or some other property,
   please change it in there and run the script again,
   so that they are adjusted in all auto-generated files! */

typedef struct UiGraphics {
    const u8 *tiles;
    const u16 *palette;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
    s32 unk18;
} UiGraphics;

extern const UiGraphics gUiGraphics[];

extern const u8 gUiGraphicsAsciiChars[];
extern const u16 gUiPaletteAsciiChars[];

extern const u8 gUiGraphics1UpIconSonic[];
extern const u16 gUiPalette1UpIconSonic[];

extern const u8 gUiGraphics1UpIconTails[];
extern const u16 gUiPalette1UpIconTails[];

extern const u8 gUiGraphics1UpIconKnuckles[];
extern const u16 gUiPalette1UpIconKnuckles[];

extern const u8 gUiGraphics1UpIconAmy[];
extern const u16 gUiPalette1UpIconAmy[];

extern const u8 gUiGraphicsHudRing[];
extern const u16 gUiPaletteHudRing[];

extern const u8 gUiGraphicsStageIntroSonic[];
extern const u16 gUiPaletteStageIntroSonic[];

extern const u8 gUiGraphicsStageIntroTails[];
extern const u16 gUiPaletteStageIntroTails[];

extern const u8 gUiGraphicsStageIntroKnuckles[];
extern const u16 gUiPaletteStageIntroKnuckles[];

extern const u8 gUiGraphicsStageIntroAmy[];
extern const u16 gUiPaletteStageIntroAmy[];

extern const u8 gUiGraphicsStageIntrochar_names[];
extern const u16 gUiPaletteStageIntrochar_names[];

extern const u8 gUiGraphicsStageResultSonic[];
extern const u16 gUiPaletteStageResultSonic[];

extern const u8 gUiGraphicsStageResultTails[];
extern const u16 gUiPaletteStageResultTails[];

extern const u8 gUiGraphicsStageResultKnuckles[];
extern const u16 gUiPaletteStageResultKnuckles[];

extern const u8 gUiGraphicsStageResultAmy[];
extern const u16 gUiPaletteStageResultAmy[];

extern const u8 gUiGraphicsStageResultAct12[];
extern const u16 gUiPaletteStageResultAct12[];

extern const u8 gUiGraphicsStageResultHeadlineBack[];
extern const u16 gUiPaletteStageResultHeadlineBack[];

extern const u8 gUiGraphicsStageNamesJapanese0[];
extern const u16 gUiPaletteStageNamesJapanese0[];

extern const u8 gUiGraphicsStageNamesJapanese1[];
extern const u16 gUiPaletteStageNamesJapanese1[];

extern const u8 gUiGraphicsStageNameNeoGreenHillZone[];
extern const u16 gUiPaletteStageNameNeoGreenHillZone[];

extern const u8 gUiGraphicsStageNameSecretBaseZone[];
extern const u16 gUiPaletteStageNameSecretBaseZone[];

extern const u8 gUiGraphicsStageNameCasinoParadiseZone[];
extern const u16 gUiPaletteStageNameCasinoParadiseZone[];

extern const u8 gUiGraphicsStageNameIceMountainZone[];
extern const u16 gUiPaletteStageNameIceMountainZone[];

extern const u8 gUiGraphicsStageNameAngelIslandZone[];
extern const u16 gUiPaletteStageNameAngelIslandZone[];

extern const u8 gUiGraphicsStageNameEggRocketZone[];
extern const u16 gUiPaletteStageNameEggRocketZone[];

extern const u8 gUiGraphicsStageNameCosmicAngelZone[];
extern const u16 gUiPaletteStageNameCosmicAngelZone[];

extern const u8 gUiGraphicsStageNameXZone[];
extern const u16 gUiPaletteStageNameXZone[];

extern const u8 gUiGraphicsStageNameTheMoonZone[];
extern const u16 gUiPaletteStageNameTheMoonZone[];

extern const u8 gUiGraphicsStageNameForestChaoGarden[];
extern const u16 gUiPaletteStageNameForestChaoGarden[];

extern const u8 gUiGraphicsStageNameFactoryChaoGarden[];
extern const u16 gUiPaletteStageNameFactoryChaoGarden[];

extern const u8 gUiGraphicsStageNamePinballChaoGarden[];
extern const u16 gUiPaletteStageNamePinballChaoGarden[];

extern const u8 gUiGraphicsStageNameSpaceChaoGarden[];
extern const u16 gUiPaletteStageNameSpaceChaoGarden[];

extern const u8 gUiGraphicsTimerDigits[];
extern const u16 gUiPaletteTimerDigits[];

extern const u8 gUiGraphicsOK[];
extern const u16 gUiPaletteOK[];

extern const u8 gUiGraphicsGotThroughTexts[];
extern const u16 gUiPaletteGotThroughTexts[];

extern const u8 gUiGraphicsOverlayEnterName[];
extern const u16 gUiPaletteOverlayEnterName[];

extern const u8 gUiGraphicsOverlayCharacters[];
extern const u16 gUiPaletteOverlayCharacters[];

extern const u8 gUiGraphicsOverlayRedCorner[];
extern const u16 gUiPaletteOverlayRedCorner[];

extern const u8 gUiGraphicsOverlayCursors[];
extern const u16 gUiPaletteOverlayCursors[];

extern const u8 gUiGraphicsCharSelectZigZag[];
extern const u16 gUiPaletteCharSelectZigZag[];

extern const u8 gUiGraphicsCharSelectArrow[];
extern const u16 gUiPaletteCharSelectArrow[];

extern const u8 gUiGraphicsCharSelectNames[];
extern const u16 gUiPaletteCharSelectNames[];

extern const u8 gUiGraphicsCharSelectSelectACharacter[];
extern const u16 gUiPaletteCharSelectSelectACharacter[];

extern const u8 gUiGraphicsCharSelectBlackBox[];
extern const u16 gUiPaletteCharSelectBlackBox[];

extern const u8 gUiGraphicsCharSelectOK[];
extern const u16 gUiPaletteCharSelectOK[];

extern const u8 gUiGraphicsCharSelectBlackBox2[];
extern const u16 gUiPaletteCharSelectBlackBox2[];

extern const u8 gUiGraphicsSpecialStage46[];
extern const u16 gUiPaletteSpecialStage46[];

extern const u8 gUiGraphicsSpecialStageTextGotRings0[];
extern const u16 gUiPaletteSpecialStageTextGotRings0[];

extern const u8 gUiGraphicsSpecialStageTextGotRings1[];
extern const u16 gUiPaletteSpecialStageTextGotRings1[];

extern const u8 gUiGraphicsSpecialStageTextGotRings2[];
extern const u16 gUiPaletteSpecialStageTextGotRings2[];

extern const u8 gUiGraphicsSpecialStageTextStart[];
extern const u16 gUiPaletteSpecialStageTextStart[];

extern const u8 gUiGraphicsSpecialStageTextGotAChaosEmerald[];
extern const u16 gUiPaletteSpecialStageTextGotAChaosEmerald[];

extern const u8 gUiGraphicsSpecialStageTextSpecialStage[];
extern const u16 gUiPaletteSpecialStageTextSpecialStage[];

extern const u8 gUiGraphicsSpecialStage53[];
extern const u16 gUiPaletteSpecialStage53[];

extern const u8 gUiGraphicsSpecialStageChaosEmerald[];
extern const u16 gUiPaletteSpecialStageChaosEmerald[];

extern const u8 gUiGraphicsTransparent0[];
extern const u16 gUiPaletteTransparent0[];

extern const u8 gUiGraphicsTransparent1[];
extern const u16 gUiPaletteTransparent1[];

extern const u8 gUiGraphicsTransparent2[];
extern const u16 gUiPaletteTransparent2[];

extern const u8 gUiGraphicsTransparent3[];
extern const u16 gUiPaletteTransparent3[];

extern const u8 gUiGraphicsTransparent4[];
extern const u16 gUiPaletteTransparent4[];

extern const u8 gUiGraphicsTransparent5[];
extern const u16 gUiPaletteTransparent5[];

extern const u8 gUiGraphicsSoundTestBackground[];
extern const u16 gUiPaletteSoundTestBackground[];

extern const u8 gUiGraphicsSoundTestBox2[];
extern const u16 gUiPaletteSoundTestBox2[];

extern const u8 gUiGraphicsSoundTestBox3[];
extern const u16 gUiPaletteSoundTestBox3[];

extern const u8 gUiGraphicsSoundTestBox4[];
extern const u16 gUiPaletteSoundTestBox4[];

#endif // SA1_UI_GRAPHICS_H
