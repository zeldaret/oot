#include "mycustomactor.h"
#include "assets/objects/object_blackcrow/blackcrow_skel.h"

#define FLAGS (ACTOR_FLAG_25 | ACTOR_FLAG_4 | ACTOR_FLAG_5 )

void CustomActor_Init(CustomActor* this, PlayState* play);
void CustomActor_Destroy(CustomActor* this, PlayState* play);
void CustomActor_Update(CustomActor* this, PlayState* play);
void CustomActor_Draw(CustomActor* this, PlayState* play);

//Fly Stuff
void CustomActor_PathInit(CustomActor* this, PlayState* play);
void CustomActor_FlySky(CustomActor* this, PlayState* play);
void CustomActor_WaitForC(CustomActor* this, PlayState* play);
void CustomActor_FlyCurve(CustomActor* this, PlayState* play);
void CustomActor_WaitEndCS(CustomActor* this, PlayState* play);

//GroundStuff
void CustomActor_ChangeFlags(CustomActor* this, PlayState* play);
void CustomActor_GroundBehaviour(CustomActor* this, PlayState* play);

//Misc
void CustomActor_ChangeMode(CustomActor* this, SkelAnime* skelAnime, AnimationHeader* animation);

void CustomActor_TestingShit(CustomActor* this, PlayState* play);

const ActorInit MyCustomActor_InitVars = {
    ACTOR_MYCUSTOM,
    ACTORCAT_PROP, //necessary for cutscene
    FLAGS,
    OBJECT_BLACKCROW,
    sizeof(CustomActor),
    (ActorFunc)CustomActor_Init,
    (ActorFunc)CustomActor_Destroy,
    (ActorFunc)CustomActor_Update,
    (ActorFunc)CustomActor_Draw,
};

void CustomActor_SetupAction(CustomActor* this, CustomActorActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void CustomActor_Init(CustomActor* this, PlayState* play) {

    Path* path = &play->setupPathList[this->actor.params & 0xFF];

    SkelAnime_InitFlex(play, &this->skelAnime, &blackcrow_skel, &blackcrow_skelCrow_flyAnim, NULL, NULL, 18); //FlyingSkeleton
    SkelAnime_InitFlex(play, &this->skelAnime2, &blackcrow_skel2, &blackcrow_skel2TestrestAnim , NULL, NULL, 12); //GroundSkeleton

    //this->curSkelAnime = &this->skelAnime;
    //this->curSkelAnime = &this->skelAnime2;

    //Animation_Change(this->curSkelAnime, &blackcrow_skel2TestrestAnim, 1.0f, 0, Animation_GetLastFrame(&blackcrow_skel2TestrestAnim) , ANIMMODE_LOOP, 0.0f);
    //Animation_Change(this->curSkelAnime, &blackcrow_skelCrow_flyAnim, 1.0f, 0, Animation_GetLastFrame(&blackcrow_skelCrow_flyAnim) , ANIMMODE_LOOP, 0.0f);

    Actor_SetScale(&this -> actor, 0.04f);

    CustomActor_SetupAction(this, CustomActor_TestingShit);

    /*

    if (true){ //CS CHECK (not done yet)
         CustomActor_ChangeMode(this, &this->skelAnime, &blackcrow_skelCrow_flyAnim); //go cs

         this->timer = 0;
         /////////////Init Path
         this->endWaypoint = path->count - 1;
         this->currentWaypoint = 0;
         this->nextWaypoint = 1;
         this->pathDirection = 1;
         this->FrameCount = 45.0f;

         CustomActor_PathInit(this, play);
         CustomActor_SetupAction(this, CustomActor_FlySky);

    } else {
        
         CustomActor_ChangeMode(this, &this->skelAnime2, &blackcrow_skel2TestrestAnim); //cs done
         
         CustomActor_ChangeFlags(this,PlayState);
         CustomActor_SetupAction(this, CustomActor_GroundBehaviour);
         
    }*/
}

void CustomActor_ChangeMode(CustomActor* this, SkelAnime* skelAnime, AnimationHeader* animation) 
{
    this->curSkelAnime = skelAnime;
    Animation_Change(this->curSkelAnime, animation, 1.0f, 0.0f, Animation_GetLastFrame(animation), ANIMMODE_LOOP, 0.0f);
}

void CustomActor_ChangeFlags(CustomActor* this, PlayState* play)
{
    this->actor.flags &= ~ACTOR_FLAG_4; //No constant update
    this->actor.flags &= ~ACTOR_FLAG_5; //No constant draw
    this->actor.flags &= ~ACTOR_FLAG_25; // freeze when warp or ocarina
}

void CustomActor_PathInit(CustomActor* this, PlayState* play)
{
    Path* path = &play->setupPathList[this->actor.params & 0xFF];
    Vec3s* pointPos;
    Vec3s* nextPos;

    ///////////////Go to starting point
    pointPos = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + this->currentWaypoint;

    this->actor.world.pos.x = pointPos->x;
    this->actor.world.pos.y = pointPos->y;
    this->actor.world.pos.z = pointPos->z; 

    //////////////Face nextPoint
    nextPos = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + this->nextWaypoint;

    this->nextPosF.x = nextPos->x;
    this->nextPosF.y = nextPos->y;
    this->nextPosF.z = nextPos->z;

    //////// Prepare the FlySky

    // rotate towards point (yaw)

    this->actor.world.rot.y = (ABS((s16)Math_Vec3f_Yaw(&this->actor.world.pos, &this->nextPosF) - this->actor.world.rot.y)) + 0x7FFC;
    //

    //Speed to point
    this->SpeedToPoint =  Actor_WorldDistXYZToPoint(&this->actor, &this->nextPosF) / this->FrameCount; //frames = 44 (temps) v = d/t
    //

}

void CustomActor_TestingShit(CustomActor* this, PlayState* play)
{
    //creer new path faire follow le path et tester la rot pourquoi elle merde

    s16 PlayerAngle = this->actor.yawTowardsPlayer;
    s16 yawdiff = (ABS((s16)(this->actor.yawTowardsPlayer - this->actor.shape.rot.y)));

    Math_SmoothStepToS(&this->actor.world.rot.y, PlayerAngle , 1, 0x444, 0);


}

void CustomActor_FlySky(CustomActor* this, PlayState* play) 
{


    if (this->timer <= 45 ) {
        SkelAnime_Update(this->curSkelAnime);

        Math_StepToF(&this->actor.world.pos.x, this->nextPosF.x, this->SpeedToPoint);
        Math_StepToF(&this->actor.world.pos.z, this->nextPosF.z, this->SpeedToPoint);
        Math_StepToF(&this->actor.world.pos.y, this->nextPosF.y, this->SpeedToPoint);

        this->timer++;
    }
    else
    {
        this->currentWaypoint++ ; // = 1
        this->nextWaypoint++ ; // = 2
        CustomActor_SetupAction(this, CustomActor_WaitForC);
    }
}

void CustomActor_WaitForC(CustomActor* this, PlayState* play)
{

    if (this->timer >= 248 ){

        this->currentWaypoint++ ; // = 2
        this->nextWaypoint++ ; // = 3
        this->FrameCount = 10.0f;

        CustomActor_PathInit(this, play);

        //Change anim
        //Animation_Change(this->curSkelAnime, &blackcrow_skelFlyupwardsAnim, 1.0f, 0.0f, Animation_GetLastFrame(&blackcrow_skelFlyupwardsAnim), ANIMMODE_ONCE, 0.0f); //30 frames
        //

        CustomActor_SetupAction(this, CustomActor_FlyCurve);

    } else {

        this->timer++;

    }

}

void CustomActor_FlyCurve(CustomActor* this, PlayState* play)
{

    SkelAnime_Update(this->curSkelAnime);
    this->timer++;

    if ( ( 249 < this->timer) && (this->timer < 260 ) )
    {
        //fly point 2 à 3
        //tp link à peine en dessous de l'acteur à chaque frame

        Math_StepToF(&this->actor.world.pos.x, this->nextPosF.x, this->SpeedToPoint);
        Math_StepToF(&this->actor.world.pos.z, this->nextPosF.z, this->SpeedToPoint);
        Math_StepToF(&this->actor.world.pos.y, this->nextPosF.y, this->SpeedToPoint);

        if (this->timer == 259) //prepare 3 to 4
        {

            this->currentWaypoint++ ; // =3
            this->nextWaypoint++ ; // = 4
            this->FrameCount = 20.0f;
    
            CustomActor_PathInit(this, play);
    
        }


    }
    else if ( ( 260 <= this->timer) && (this->timer <= 280 ) )
    {
        //fly point 3 à 4
        //stop tp link en dessous de l'acteur, le laisser faire ses merdes
        Math_StepToF(&this->actor.world.pos.x, this->nextPosF.x, this->SpeedToPoint);
        Math_StepToF(&this->actor.world.pos.z, this->nextPosF.z, this->SpeedToPoint);
        Math_StepToF(&this->actor.world.pos.y, this->nextPosF.y, this->SpeedToPoint);
    }
    else 
    {
        //change action, tp under the map ,wait for cutscene to end
    }

}



void CustomActor_Destroy(CustomActor* this, PlayState* play) {

}

void CustomActor_Update(CustomActor* this, PlayState* play) {

    //SkelAnime_Update(this->curSkelAnime);

    //this->actor.world.pos.y = this->actor.home.pos.y + Rand_CenteredFloat(10.0f); //YOU CAN MOVE THE ACTOR WITH IT

    this->actor.shape.rot.y = this->actor.world.rot.y;

    this->actionFunc(this, play);

}

void CustomActor_Draw(CustomActor* this, PlayState* play) {
    GfxPrint printer;
    Gfx* gfx;

    OPEN_DISPS(play->state.gfxCtx, __FILE__, __LINE__);

    gfx = POLY_OPA_DISP + 1;
    gSPDisplayList(OVERLAY_DISP++, gfx);

    GfxPrint_Init(&printer);
    GfxPrint_Open(&printer, gfx);

    GfxPrint_SetColor(&printer, 255, 0, 255, 255);
    GfxPrint_SetPos(&printer, 1, 23);
    GfxPrint_Printf(&printer, "YawToPlayer: %d",this->actor.yawTowardsPlayer);

    // Crow pos
    GfxPrint_SetColor(&printer, 255, 0, 255, 255);
    GfxPrint_SetPos(&printer, 1, 24);
    GfxPrint_Printf(&printer, "Crow Pos xyz:");
    GfxPrint_SetColor(&printer, 255, 0, 255, 255);
    GfxPrint_SetPos(&printer, 1, 25);
    GfxPrint_Printf(&printer, "%f,%f,%f",this->actor.world.pos.x,this->actor.world.pos.y,this->actor.world.pos.z);
    //

    // 
    GfxPrint_SetColor(&printer, 255, 0, 255, 255);
    GfxPrint_SetPos(&printer, 1, 27);
    GfxPrint_Printf(&printer, "Where To Go xyz:");
    GfxPrint_SetColor(&printer, 255, 0, 255, 255);
    GfxPrint_SetPos(&printer, 1, 28);
    GfxPrint_Printf(&printer, "%f,%f,%f", this->nextPosF.x,this->nextPosF.y,this->nextPosF.z);
    //



    gfx = GfxPrint_Close(&printer);
    GfxPrint_Destroy(&printer);

    gSPEndDisplayList(gfx++);
    gSPBranchList(POLY_OPA_DISP, gfx);
    POLY_OPA_DISP = gfx;

    CLOSE_DISPS(play->state.gfxCtx, __FILE__, __LINE__);

    SkelAnime_DrawFlexOpa(play, this->curSkelAnime->skeleton, this->curSkelAnime->jointTable, this->curSkelAnime->dListCount, NULL, NULL, this);
}