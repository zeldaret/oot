#include "z_kaleido_scope.h"

static const Vtx sMarkBossVtx[] = {
    VTX(-4, 4, 0, 0, 0, 255, 255, 255, 255),
    VTX(-4, -4, 0, 0, 256, 255, 255, 255, 255),
    VTX(4, 4, 0, 256, 0, 255, 255, 255, 255),
    VTX(4, -4, 0, 256, 256, 255, 255, 255, 255),
};

static const Vtx sMarkChestVtx[] = {
    VTX(-4, 4, 0, 0, 0, 255, 255, 255, 255),
    VTX(-4, -4, 0, 0, 256, 255, 255, 255, 255),
    VTX(4, 4, 0, 256, 0, 255, 255, 255, 255),
    VTX(4, -4, 0, 256, 256, 255, 255, 255, 255),
};

PauseMapMarksData gPauseMapMarkDataTable[] = {
    // Deku Tree map 0
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          2,
          {
              { 2, 40.0f, -33.0f },
              { 6, 49.0f, -42.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Deku Tree map 1
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          2,
          {
              { 1, 48.0f, -63.0f },
              { 5, 52.0f, -68.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Deku Tree map 2
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          1,
          {
              { 3, 84.0f, -39.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Deku Tree map 3
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          1,
          {
              { 4, 77.0f, -26.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Deku Tree map 4
    {
        { PAUSE_MAP_MARK_BOSS,
          23,
          sMarkBossVtx,
          4,
          1,
          {
              { -1, 55.0f, 0.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Dodongo's Cavern map 0
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          3,
          {
              { 10, 25.0f, -41.0f },
              { 4, 53.0f, -47.0f },
              { 6, 58.0f, -59.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Dodongo's Cavern map 1
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          2,
          {
              { 5, 13.0f, -60.0f },
              { 8, 20.0f, -49.0f },
          } },
        { PAUSE_MAP_MARK_BOSS,
          23,
          sMarkBossVtx,
          4,
          1,
          {
              { -1, 23.0f, -25.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Jabu-Jabu's Belly map 0
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          3,
          {
              { 1, 67.0f, -13.0f },
              { 2, 28.0f, -13.0f },
              { 4, 38.0f, 0.0f },
          } },
        { PAUSE_MAP_MARK_BOSS,
          23,
          sMarkBossVtx,
          4,
          1,
          {
              { -1, 65.0f, -37.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Jabu-Jabu's Belly map 1
    {
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Forest Temple map 0
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          7,
          {
              { 1, 50.0f, -12.0f },
              { 3, 46.0f, -66.0f },
              { 4, 20.0f, -38.0f },
              { 12, 49.0f, -3.0f },
              { 13, 39.0f, 0.0f },
              { 14, 18.0f, -2.0f },
              { 15, 59.0f, 0.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Forest Temple map 1
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          4,
          {
              { 0, 49.0f, -3.0f },
              { 2, 12.0f, -26.0f },
              { 5, 74.0f, -13.0f },
              { 7, 82.0f, -22.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Forest Temple map 2
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          1,
          {
              { 9, 31.0f, -29.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Forest Temple map 3
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          1,
          {
              { 11, 40.0f, -41.0f },
          } },
        { PAUSE_MAP_MARK_BOSS,
          23,
          sMarkBossVtx,
          4,
          1,
          {
              { -1, 50.0f, -11.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Fire Temple map 0
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          2,
          {
              { 5, 22.0f, -41.0f },
              { 13, 74.0f, -29.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Fire Temple map 1
    {
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Fire Temple map 2
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          6,
          {
              { 3, 76.0f, -48.0f },
              { 6, 72.0f, -50.0f },
              { 7, 44.0f, -17.0f },
              { 8, 63.0f, -12.0f },
              { 9, 30.0f, -34.0f },
              { 10, 61.0f, -31.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Fire Temple map 3
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          1,
          {
              { 11, 78.0f, -34.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Fire Temple map 4
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          5,
          {
              { 0, 48.0f, -17.0f },
              { 1, 35.0f, -45.0f },
              { 2, 67.0f, -58.0f },
              { 4, 74.0f, -15.0f },
              { 12, 47.0f, -27.0f },
          } },
        { PAUSE_MAP_MARK_BOSS,
          23,
          sMarkBossVtx,
          4,
          1,
          {
              { -1, 26.0f, -34.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Water Temple map 0
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          3,
          {
              { 2, 88.0f, -60.0f },
              { 7, 23.0f, -2.0f },
              { 9, 84.0f, -45.0f },
          } },
        { PAUSE_MAP_MARK_BOSS,
          23,
          sMarkBossVtx,
          4,
          1,
          {
              { -1, 62.0f, -23.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Water Temple map 1
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          2,
          {
              { 0, 86.0f, -60.0f },
              { 8, 76.0f, -72.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Water Temple map 2
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          4,
          {
              { 1, 88.0f, -60.0f },
              { 3, 42.0f, -21.0f },
              { 5, 47.0f, -15.0f },
              { 10, 33.0f, -31.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Water Temple map 3
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          1,
          {
              { 6, 77.0f, -66.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Spirit Temple map 0
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          2,
          {
              { 10, 59.0f, -9.0f },
              { 18, 32.0f, -20.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Spirit Temple map 1
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          5,
          {
              { 1, 20.0f, -43.0f },
              { 5, 83.0f, -26.0f },
              { 15, 57.0f, -14.0f },
              { 20, 81.0f, -55.0f },
              { 21, 87.0f, -55.0f },
          } },
        { PAUSE_MAP_MARK_BOSS,
          23,
          sMarkBossVtx,
          4,
          1,
          {
              { -1, 47.0f, 0.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Spirit Temple map 2
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          6,
          {
              { 2, 41.0f, -16.0f },
              { 3, 47.0f, -17.0f },
              { 6, 27.0f, -16.0f },
              { 12, 29.0f, -20.0f },
              { 13, 70.0f, -22.0f },
              { 14, 70.0f, -25.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Spirit Temple map 3
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          4,
          {
              { 0, 38.0f, -17.0f },
              { 4, 55.0f, -14.0f },
              { 8, 15.0f, -14.0f },
              { 7, 78.0f, -3.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Shadow Temple map 0
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          2,
          {
              { 1, 41.0f, -17.0f },
              { 7, 27.0f, -24.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Shadow Temple map 1
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          2,
          {
              { 2, 81.0f, -20.0f },
              { 3, 74.0f, -37.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Shadow Temple map 2
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          2,
          {
              { 12, 96.0f, -51.0f },
              { 22, 96.0f, -55.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Shadow Temple map 3
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          10,
          {
              { 4, 43.0f, -66.0f },
              { 5, 37.0f, -66.0f },
              { 6, 33.0f, -72.0f },
              { 8, 85.0f, -18.0f },
              { 9, 61.0f, -42.0f },
              { 10, 15.0f, -4.0f },
              { 11, 25.0f, -4.0f },
              { 13, 19.0f, -29.0f },
              { 21, 92.0f, -29.0f },
              { 20, 87.0f, -20.0f },
          } },
        { PAUSE_MAP_MARK_BOSS,
          23,
          sMarkBossVtx,
          4,
          1,
          {
              { -1, 31.0f, -45.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Bottom of the Well map 0
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          9,
          {
              { 1, 51.0f, -24.0f },
              { 3, 84.0f, -38.0f },
              { 4, 31.0f, -2.0f },
              { 5, 67.0f, -27.0f },
              { 8, 46.0f, -27.0f },
              { 10, 82.0f, -12.0f },
              { 12, 80.0f, -16.0f },
              { 14, 62.0f, -24.0f },
              { 20, 89.0f, -38.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Bottom of the Well map 1
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          3,
          {
              { 2, 54.0f, -27.0f },
              { 9, 28.0f, -17.0f },
              { 16, 56.0f, -38.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Bottom of the Well map 2
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          1,
          {
              { 7, 71.0f, -33.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
    // Ice Cavern map 0
    {
        { PAUSE_MAP_MARK_CHEST,
          23,
          sMarkChestVtx,
          4,
          3,
          {
              { 0, 66.0f, -2.0f },
              { 1, 77.0f, -46.0f },
              { 2, 27.0f, -45.0f },
          } },
        { PAUSE_MAP_MARK_NONE, 0, NULL, 0, 0, { 0 } },
    },
};
