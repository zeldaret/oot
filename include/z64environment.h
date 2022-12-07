#ifndef _Z64ENVIRONMENT_H_
#define _Z64ENVIRONMENT_H_

#include "z64math.h"
#include "z64light.h"
#include "z64dma.h"

struct PlayState;
struct SkyboxContext;

#define FILL_SCREEN_OPA (1 << 0)
#define FILL_SCREEN_XLU (1 << 1)

#define NEXT_TIME_NONE 0xFFFF
#define NEXT_TIME_DAY (CLOCK_TIME(12, 0) + 1)
#define NEXT_TIME_NIGHT CLOCK_TIME(0, 0)
#define NEXT_TIME_DAY_SET 0xFFFE
#define NEXT_TIME_NIGHT_SET 0xFFFD

#define LIGHT_SETTING_MAX 31
#define LIGHT_SETTING_OVERRIDE_NONE 0xFF

// This mode disables the updating of lights in both light modes.
// With this mode enabled, the only way lights can change is via the adjustment arrays.
// This mode is not used in the original game.
#define LIGHT_SETTING_OVERRIDE_FULL_CONTROL 0xFE

#define LIGHT_BLENDRATE_OVERRIDE_NONE 0xFFFF
#define LIGHT_BLEND_OVERRIDE_NONE 0
#define LIGHT_BLEND_OVERRIDE_ON 1

// This mode disables the light system's automatic blending between
// light settings for `LIGHT_MODE_SETTINGS` (or using a light setting override).
// This is a bit of a hack used only by bosses in the original game.
#define LIGHT_BLEND_OVERRIDE_FULL_CONTROL 2

typedef enum {
    /* 0 */ LIGHT_MODE_TIME, // environment lights use `lightConfig` and change based on time of day
    /* 1 */ LIGHT_MODE_SETTINGS // environment lights use `lightSetting`
} LightMode;

typedef enum {
    /*  0 */ SKYBOX_DMA_INACTIVE,
    /*  1 */ SKYBOX_DMA_TEXTURE1_START,
    /*  2 */ SKYBOX_DMA_TEXTURE1_DONE,
    /*  3 */ SKYBOX_DMA_TLUT1_START,
    /* 11 */ SKYBOX_DMA_TEXTURE2_START = 11,
    /* 12 */ SKYBOX_DMA_TEXTURE2_DONE,
    /* 13 */ SKYBOX_DMA_TLUT2_START
} SkyboxDmaState;

typedef enum {
    /* 0 */ LIGHTNING_OFF, // no lightning
    /* 1 */ LIGHTNING_ON, // request ligtning strikes at random intervals
    /* 2 */ LIGHTNING_LAST // request one lightning strike before turning off
} LightningState;

typedef enum {
    /* 0 */ LIGHTNING_STRIKE_WAIT, // wait between lightning strikes. request bolts when timer hits 0
    /* 1 */ LIGHTNING_STRIKE_START, // fade in the flash. note: bolts are requested in the previous state
    /* 2 */ LIGHTNING_STRIKE_END // fade out the flash and go back to wait
} LightningStrikeState;

typedef enum {
    /* 0 */ WEATHER_MODE_CLEAR,
    /* 1 */ WEATHER_MODE_CLOUDY_CONFIG3, // scene must define settings for light config 3
    /* 2 */ WEATHER_MODE_CLOUDY_CONFIG2, // scene must define settings for light config 2
    /* 3 */ WEATHER_MODE_SNOW, // scene must define settings for light config 2
    /* 4 */ WEATHER_MODE_RAIN, // scene must define settings for light config 2
    /* 5 */ WEATHER_MODE_HEAVY_RAIN // scene must define settings for light config 4
} WeatherMode;

typedef enum {
    /* 0 */ CHANGE_SKYBOX_INACTIVE,
    /* 1 */ CHANGE_SKYBOX_REQUESTED,
    /* 2 */ CHANGE_SKYBOX_WAIT,
    /* 3 */ CHANGE_SKYBOX_ACTIVE
} ChangeSkyboxState;

typedef enum {
    /* 0 */ PRECIP_RAIN_MAX, // max number of raindrops that can draw; uses this or SOS_MAX, whichever is larger
    /* 1 */ PRECIP_RAIN_CUR, // current number of rain drops being drawn on screen
    /* 2 */ PRECIP_SNOW_CUR, // current number of snowflakes being drawn on screen
    /* 3 */ PRECIP_SNOW_MAX, // max number of snowflakes that can draw
    /* 4 */ PRECIP_SOS_MAX, // max number of rain drops requested from song of storms specifically
    /* 5 */ PRECIP_MAX
} PrecipitationData;

typedef enum {
    /* 0 */ STORM_REQUEST_NONE,
    /* 1 */ STORM_REQUEST_START,
    /* 2 */ STORM_REQUEST_STOP
} StormRequest;

typedef enum {
    /* 0 */ STORM_STATE_OFF,
    /* 1 */ STORM_STATE_ON
} StormState;

typedef enum {
    /* 0x00 */ TIMESEQ_DAY_BGM,
    /* 0x01 */ TIMESEQ_FADE_DAY_BGM,
    /* 0x02 */ TIMESEQ_NIGHT_BEGIN_SFX,
    /* 0x03 */ TIMESEQ_EARLY_NIGHT_CRITTERS,
    /* 0x04 */ TIMESEQ_NIGHT_DELAY,
    /* 0x05 */ TIMESEQ_NIGHT_CRITTERS,
    /* 0x06 */ TIMESEQ_DAY_BEGIN_SFX,
    /* 0x07 */ TIMESEQ_MORNING_CRITTERS,
    /* 0x08 */ TIMESEQ_DAY_DELAY,
    /* 0xFF */ TIMESEQ_DISABLED = 0xFF
} TimeBasedSeqState;

typedef enum {
    /* 0 */ SANDSTORM_OFF,
    /* 1 */ SANDSTORM_FILL,
    /* 2 */ SANDSTORM_UNFILL,
    /* 3 */ SANDSTORM_ACTIVE,
    /* 4 */ SANDSTORM_DISSIPATE
} SandstormState;

typedef struct {
    /* 0x00 */ u8 state;
    /* 0x01 */ u8 flashRed;
    /* 0x02 */ u8 flashGreen;
    /* 0x03 */ u8 flashBlue;
    /* 0x04 */ u8 flashAlphaTarget;
    /* 0x08 */ f32 delayTimer;
} LightningStrike; // size = 0xC

typedef struct {
    /* 0x00 */ u16 startTime;
    /* 0x02 */ u16 endTime;
    /* 0x04 */ u8 changeSkybox;
    /* 0x05 */ u8 skybox1Index;
    /* 0x06 */ u8 skybox2Index;
} TimeBasedSkyboxEntry; // size = 0x8

typedef struct {
    /* 0x00 */ u8 ambientColor[3];
    /* 0x03 */ s8 light1Dir[3];
    /* 0x06 */ u8 light1Color[3];
    /* 0x09 */ s8 light2Dir[3];
    /* 0x0C */ u8 light2Color[3];
    /* 0x0F */ u8 fogColor[3];
    /* 0x12 */ s16 fogNear; // ranges from 0-1000 (0: starts immediately, 1000: no fog), but is clamped to ENV_FOGNEAR_MAX
    /* 0x14 */ s16 zFar; // Max depth (render distance) of the view as a whole. fogFar will always match zFar
} CurrentEnvLightSettings; // size = 0x16

// `EnvLightSettings` is very similar to `CurrentEnvLightSettings` with one key difference.
// The light settings data in the scene packs blend rate information with the fog near value.
// The blendRate determines how fast the current light settings fade to the next one 
// (under LIGHT_MODE_SETTINGS, otherwise unused). 

// Get blend rate from `EnvLightSettings.blendRateAndFogNear` in 0-255 range
#define ENV_LIGHT_SETTINGS_BLEND_RATE_U8(blendRateAndFogNear) (((blendRateAndFogNear) >> 10) * 4)
#define ENV_LIGHT_SETTINGS_FOG_NEAR(blendRateAndFogNear) ((blendRateAndFogNear) & 0x3FF)

typedef struct {
    /* 0x00 */ u8 ambientColor[3];
    /* 0x03 */ s8 light1Dir[3];
    /* 0x06 */ u8 light1Color[3];
    /* 0x09 */ s8 light2Dir[3];
    /* 0x0C */ u8 light2Color[3];
    /* 0x0F */ u8 fogColor[3];
    /* 0x12 */ s16 blendRateAndFogNear; 
    /* 0x14 */ s16 zFar;
} EnvLightSettings; // size = 0x16

// ZAPD compatibility typedefs
// TODO: Remove when ZAPD adds support for them
typedef EnvLightSettings LightSettings;

typedef struct {
    /* 0x00 */ char unk_00[0x02];
    /* 0x02 */ u16 sceneTimeSpeed; // time speed value from the scene file
    /* 0x04 */ Vec3f sunPos; // moon position can be found by negating the sun position
    /* 0x10 */ u8 skybox1Index;
    /* 0x11 */ u8 skybox2Index;
    /* 0x12 */ char unk_12[0x01];
    /* 0x13 */ u8 skyboxBlend;
    /* 0x14 */ char unk_14[0x01];
    /* 0x15 */ u8 skyboxDisabled;
    /* 0x16 */ u8 sunMoonDisabled;
    /* 0x17 */ u8 skyboxConfig; // only used for `LIGHT_MODE_TIME`
    /* 0x18 */ u8 changeSkyboxNextConfig;
    /* 0x19 */ u8 changeSkyboxState;
    /* 0x1A */ u16 changeSkyboxTimer;
    /* 0x1C */ char unk_1C[0x02];
    /* 0x1E */ u8 lightMode;
    /* 0x1F */ u8 lightConfig; // only used for `LIGHT_MODE_TIME`
    /* 0x20 */ u8 changeLightNextConfig;
    /* 0x21 */ u8 changeLightEnabled;
    /* 0x22 */ u16 changeLightTimer;
    /* 0x24 */ u16 changeDuration; // total time to change skybox and light configs
    /* 0x26 */ char unk_26[0x02];
    /* 0x28 */ LightInfo dirLight1; // used as sunlight for `LIGHT_MODE_TIME`
    /* 0x36 */ LightInfo dirLight2; // used as moonlight for `LIGHT_MODE_TIME`
    /* 0x44 */ s8 skyboxDmaState;
    /* 0x48 */ DmaRequest dmaRequest;
    /* 0x68 */ OSMesgQueue loadQueue;
    /* 0x80 */ OSMesg loadMsg;
    /* 0x84 */ f32 glareAlpha;
    /* 0x88 */ f32 lensFlareAlphaScale;
    /* 0x8C */ s16 adjAmbientColor[3];
    /* 0x92 */ s16 adjLight1Color[3];
    /* 0x98 */ s16 adjFogColor[3];
    /* 0x9E */ s16 adjFogNear;
    /* 0xA0 */ s16 adjZFar;
    /* 0xA2 */ char unk_A2[0x06];
    /* 0xA8 */ Vec3s windDirection;
    /* 0xB0 */ f32 windSpeed;
    /* 0xB4 */ u8 numLightSettings;
    /* 0xB8 */ EnvLightSettings* lightSettingsList; // list of light settings from the scene file
    /* 0xBC */ u8 lightBlendEnabled; // only used with `LIGHT_MODE_SETTINGS` or on override
    /* 0xBD */ u8 lightSetting; // only used with `LIGHT_MODE_SETTINGS` or on override
    /* 0xBE */ u8 prevLightSetting;
    /* 0xBF */ u8 lightSettingOverride;
    /* 0xC0 */ CurrentEnvLightSettings lightSettings; // settings for the currently "live" lights
    /* 0xD6 */ u16 lightBlendRateOverride;
    /* 0xD8 */ f32 lightBlend; // only used with `LIGHT_MODE_SETTINGS` or on setting override
    /* 0xDC */ u8 lightBlendOverride;
    /* 0xDD */ u8 stormRequest; // "rain_evt_trg"
    /* 0xDE */ u8 stormState;
    /* 0xDF */ u8 lightningState;
    /* 0xE0 */ u8 timeSeqState;
    /* 0xE1 */ u8 fillScreen;
    /* 0xE2 */ u8 screenFillColor[4];
    /* 0xE6 */ u8 sandstormState;
    /* 0xE7 */ u8 sandstormPrimA;
    /* 0xE8 */ u8 sandstormEnvA;
    /* 0xE9 */ u8 customSkyboxFilter;
    /* 0xEA */ u8 skyboxFilterColor[4];
    /* 0xEE */ u8 precipitation[PRECIP_MAX];
    /* 0xF3 */ char unk_F3[0x09];
} EnvironmentContext; // size = 0xFC

extern u8 gSkyboxIsChanging;
extern TimeBasedSkyboxEntry gTimeBasedSkyboxConfigs[][9];

void Environment_UpdateSkybox(u8 skyboxId, EnvironmentContext* envCtx, struct SkyboxContext* skyboxCtx);
void Environment_DrawSkyboxFilters(struct PlayState* play);

#endif
