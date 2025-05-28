#include "z64map_mark.h"

static MapMarkData sMapMarkDekuTree[] = {
    // Deku Tree minimap 0
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 3, 71, 50 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Deku Tree minimap 1
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Deku Tree minimap 2
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 1, 64, 62 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Deku Tree minimap 3
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 4, 76, 37 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Deku Tree minimap 4
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Deku Tree minimap 5
    {
        { MAP_MARK_CHEST,
          2,
          {
              { 0, 46, 50 },
              { 5, 76, 52 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Deku Tree minimap 6
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Deku Tree minimap 7
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Deku Tree minimap 8
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Deku Tree minimap 9
    {
        { MAP_MARK_BOSS,
          1,
          {
              { -1, 50, 23 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Deku Tree minimap 10
    {
        { MAP_MARK_CHEST,
          2,
          {
              { 2, 46, 50 },
              { 6, 58, 60 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Deku Tree minimap 11
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Deku Tree minimap 12
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
};

static MapMarkData sMapMarkDodongosCavern[] = {
    // Dodongo's Cavern minimap 0
    {
        { MAP_MARK_CHEST,
          2,
          {
              { 0, 69, 14 },
              { 4, 69, 30 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Dodongo's Cavern minimap 1
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Dodongo's Cavern minimap 2
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Dodongo's Cavern minimap 3
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Dodongo's Cavern minimap 4
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Dodongo's Cavern minimap 5
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 5, 54, 54 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Dodongo's Cavern minimap 6
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 2, 69, 54 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Dodongo's Cavern minimap 7
    {
        { MAP_MARK_BOSS,
          1,
          {
              { -1, 37, 49 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Dodongo's Cavern minimap 8
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Dodongo's Cavern minimap 9
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 3, 59, 53 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Dodongo's Cavern minimap 10
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Dodongo's Cavern minimap 11
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Dodongo's Cavern minimap 12
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Dodongo's Cavern minimap 13
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Dodongo's Cavern minimap 14
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 1, 68, 54 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Dodongo's Cavern minimap 15
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Dodongo's Cavern minimap 16
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Dodongo's Cavern minimap 17
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Dodongo's Cavern minimap 18
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
};

static MapMarkData sMapMarkJabuJabuBelly[] = {
    // Jabu-Jabu's Belly minimap 0
    {
        { MAP_MARK_CHEST,
          2,
          {
              { 3, 66, 50 },
              { 5, 72, 47 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Jabu-Jabu's Belly minimap 1
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 7, 72, 54 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Jabu-Jabu's Belly minimap 2
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Jabu-Jabu's Belly minimap 3
    {
        { MAP_MARK_CHEST,
          2,
          {
              { 4, 64, 62 },
              { 8, 79, 38 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Jabu-Jabu's Belly minimap 4
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Jabu-Jabu's Belly minimap 5
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 10, 64, 45 },
          } },
        { MAP_MARK_BOSS,
          1,
          {
              { -1, 67, 32 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Jabu-Jabu's Belly minimap 6
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Jabu-Jabu's Belly minimap 7
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Jabu-Jabu's Belly minimap 8
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Jabu-Jabu's Belly minimap 9
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Jabu-Jabu's Belly minimap 10
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Jabu-Jabu's Belly minimap 11
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 9, 68, 45 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Jabu-Jabu's Belly minimap 12
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Jabu-Jabu's Belly minimap 13
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Jabu-Jabu's Belly minimap 14
    {
        { MAP_MARK_CHEST,
          2,
          {
              { 1, 79, 33 },
              { 6, 61, 41 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Jabu-Jabu's Belly minimap 15
    {
        { MAP_MARK_CHEST,
          2,
          {
              { 0, 48, 57 },
              { 2, 77, 55 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
};

static MapMarkData sMapMarkForestTemple[] = {
    // Forest Temple minimap 0
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 1
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 2
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 3
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 4
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 5
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 6
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 0, 72, 57 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 7
    {
        { MAP_MARK_CHEST,
          2,
          {
              { 1, 69, 39 },
              { 9, 62, 65 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 8
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 9
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 9, 71, 59 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 10
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 11
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 12
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 13, 80, 53 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 13
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 15, 49, 50 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 14
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 15
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 6, 65, 53 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 16
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 17
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 11, 39, 35 },
          } },
        { MAP_MARK_BOSS,
          1,
          {
              { -1, 53, 5 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 18
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 2, 65, 54 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 19
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 14, 64, 31 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 20
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 21
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 22
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 3, 75, 53 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 23
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 12, 69, 52 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 24
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 5, 58, 27 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 25
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Forest Temple minimap 26
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
};

static MapMarkData sMapMarkFireTemple[] = {
    // Fire Temple minimap 0
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 1
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 2
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 7, 53, 70 },
          } },
        { MAP_MARK_BOSS,
          1,
          {
              { -1, 40, 47 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 3
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 4
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 11, 57, 48 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 5
    {
        { MAP_MARK_CHEST,
          2,
          {
              { 3, 67, 73 },
              { 6, 58, 76 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 6
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 7
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 8
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 9
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 10
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 11
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 12
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 13
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 14
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 15
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 16
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 17
    {
        { MAP_MARK_CHEST,
          2,
          {
              { 2, 78, 62 },
              { 12, 77, 58 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 18
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 19
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 4, 60, 54 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 20
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 21
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 22
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 1, 72, 68 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 23
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 8, 66, 57 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 24
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 25
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 26
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 27
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 28
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 29
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 30
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 31
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 32
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 33
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 34
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 35
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 5, 51, 61 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 36
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Fire Temple minimap 37
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
};

static MapMarkData sMapMarkWaterTemple[] = {
    // Water Temple minimap 0
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 1
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 2
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 6, 81, 68 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 3
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 4
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 5
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 6
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 7
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 8
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 9
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 5, 75, 55 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 10
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 11
    {
        { MAP_MARK_BOSS,
          1,
          {
              { -1, 77, 40 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 12
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 13
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 14
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 15
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 16
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 17
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 18
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 1, 74, 61 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 19
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 2, 73, 65 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 20
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 21
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 22
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 23
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 24
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 25
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 26
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 27
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 28
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 29
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 30
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 31
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 32
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 33
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 34
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 35
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 36
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 37
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 38
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 39
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 0, 73, 63 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 40
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 41
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 42
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Water Temple minimap 43
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
};

static MapMarkData sMapMarkSpiritTemple[] = {
    // Spirit Temple minimap 0
    {
        { MAP_MARK_CHEST,
          4,
          {
              { 26, 27, 35 },
              { 27, 36, 35 },
              { 30, 27, 28 },
              { 31, 36, 28 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 1
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 29, 67, 63 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 2
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 3
    {
        { MAP_MARK_CHEST,
          2,
          {
              { 0, 71, 62 },
              { 8, 71, 48 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 4
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 5
    {
        { MAP_MARK_CHEST,
          2,
          {
              { 3, 56, 54 },
              { 15, 69, 42 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 6
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 28, 60, 54 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 7
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 8
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 1, 76, 40 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 9
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 10
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 11
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 12
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 7, 70, 53 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 13
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 14
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 4, 68, 42 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 15
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 16
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 17
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 25, 78, 58 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 18
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 24, 78, 58 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 19
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 20
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 21
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 5, 71, 55 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 22
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 23
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 24
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 25
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 26
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 18, 75, 54 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 27
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 28
    {
        { MAP_MARK_CHEST,
          2,
          {
              { 6, 78, 55 },
              { 12, 70, 70 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 29
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 2, 76, 37 },
          } },
        { MAP_MARK_BOSS,
          1,
          {
              { -1, 57, 23 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 30
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 31
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Spirit Temple minimap 32
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
};

static MapMarkData sMapMarkShadowTemple[] = {
    // Shadow Temple minimap 0
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 1
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 1, 77, 64 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 2
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 3
    {
        { MAP_MARK_BOSS,
          1,
          {
              { -1, 77, 76 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 4
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 7, 76, 65 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 5
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 6
    {
        { MAP_MARK_CHEST,
          2,
          {
              { 2, 83, 67 },
              { 14, 84, 59 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 7
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 3, 76, 67 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 8
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 9
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 10
    {
        { MAP_MARK_CHEST,
          3,
          {
              { 4, 78, 62 },
              { 5, 74, 62 },
              { 6, 71, 68 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 11
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 9, 77, 64 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 12
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 13
    {
        { MAP_MARK_CHEST,
          2,
          {
              { 10, 71, 65 },
              { 11, 80, 65 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 14
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 16, 73, 64 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 15
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 16
    {
        { MAP_MARK_CHEST,
          2,
          {
              { 12, 87, 64 },
              { 22, 87, 68 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 17
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 13, 77, 66 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 18
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 19
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 21, 78, 66 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 20
    {
        { MAP_MARK_CHEST,
          2,
          {
              { 8, 76, 66 },
              { 20, 78, 68 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 21
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 14, 77, 62 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 22
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 23
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 15, 56, 67 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 24
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 25
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 16, 73, 64 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Shadow Temple minimap 26
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 14, 77, 62 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
};

static MapMarkData sMapMarkBottomWell[] = {
    // Bottom of the Well minimap 0
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 3, 60, 18 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Bottom of the Well minimap 1
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Bottom of the Well minimap 2
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Bottom of the Well minimap 3
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Bottom of the Well minimap 4
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 2, 73, 61 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Bottom of the Well minimap 5
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Bottom of the Well minimap 6
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Bottom of the Well minimap 7
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Bottom of the Well minimap 8
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Bottom of the Well minimap 9
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 1, 74, 66 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
};

static MapMarkData sMapMarkIceCavern[] = {
    // Ice Cavern minimap 0
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Ice Cavern minimap 1
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Ice Cavern minimap 2
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Ice Cavern minimap 3
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Ice Cavern minimap 4
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Ice Cavern minimap 5
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Ice Cavern minimap 6
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Ice Cavern minimap 7
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 2, 71, 59 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Ice Cavern minimap 8
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Ice Cavern minimap 9
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 0, 48, 36 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Ice Cavern minimap 10
    {
        { MAP_MARK_NONE, 0, { 0 } },
    },
    // Ice Cavern minimap 11
    {
        { MAP_MARK_CHEST,
          1,
          {
              { 1, 73, 67 },
          } },
        { MAP_MARK_NONE, 0, { 0 } },
    },
};

MapMarkData* gMapMarkDataTable[] = {
    sMapMarkDekuTree,    sMapMarkDodongosCavern, sMapMarkJabuJabuBelly, sMapMarkForestTemple, sMapMarkFireTemple,
    sMapMarkWaterTemple, sMapMarkSpiritTemple,   sMapMarkShadowTemple,  sMapMarkBottomWell,   sMapMarkIceCavern,
};
