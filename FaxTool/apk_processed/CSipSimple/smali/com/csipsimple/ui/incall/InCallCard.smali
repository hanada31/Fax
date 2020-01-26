.class public Lcom/csipsimple/ui/incall/InCallCard;
.super Landroid/widget/FrameLayout;
.source "InCallCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/incall/InCallCard$ContactLoadedHandler;,
        Lcom/csipsimple/ui/incall/InCallCard$LoadCallerInfoMessage;
    }
.end annotation


# static fields
.field private static final LOAD_CALLER_INFO:I = 0x0

.field private static final THIS_FILE:Ljava/lang/String; = "InCallCard"

.field private static maxRatio:F

.field private static minButtonRation:F

.field private static minRatio:F

.field private static final userHandler:Landroid/os/Handler;


# instance fields
.field private added:Z

.field private btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field private cachedCanRecord:Z

.field private cachedInvState:I

.field private cachedIsHold:Z

.field private cachedIsRecording:Z

.field private cachedMediaState:I

.field private cachedRemoteUri:Ljava/lang/String;

.field private cachedVideo:Z

.field private callInfo:Lcom/csipsimple/api/SipCallSession;

.field private callSecureBar:Landroid/view/ViewGroup;

.field private callSecureText:Landroid/widget/TextView;

.field private callStatusText:Landroid/widget/TextView;

.field private canVideo:Z

.field private elapsedTime:Landroid/widget/Chronometer;

.field private endCallBar:Landroid/view/ViewGroup;

.field private final handler:Landroid/os/Handler;

.field private hasVideo:Z

.field private mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

.field private onTriggerListener:Lcom/csipsimple/ui/incall/IOnCallActionTrigger;

.field private photo:Landroid/widget/ImageView;

.field private final postLayout:Ljava/lang/Runnable;

.field private prefs:Lcom/csipsimple/utils/PreferencesProviderWrapper;

.field private remoteName:Landroid/widget/TextView;

.field private remoteSipAddress:Landroid/widget/TextView;

.field private renderView:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 218
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/csipsimple/ui/incall/InCallCard;->minRatio:F

    .line 220
    const/high16 v0, 0x3fa00000    # 1.25f

    sput v0, Lcom/csipsimple/ui/incall/InCallCard;->maxRatio:F

    .line 222
    const/high16 v0, 0x3f400000    # 0.75f

    sput v0, Lcom/csipsimple/ui/incall/InCallCard;->minButtonRation:F

    .line 456
    new-instance v0, Lcom/csipsimple/ui/incall/InCallCard$ContactLoadedHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/csipsimple/ui/incall/InCallCard$ContactLoadedHandler;-><init>(Lcom/csipsimple/ui/incall/InCallCard$ContactLoadedHandler;)V

    sput-object v0, Lcom/csipsimple/ui/incall/InCallCard;->userHandler:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    const-string v1, ""

    iput-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedRemoteUri:Ljava/lang/String;

    .line 70
    const/4 v1, -0x1

    iput v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedInvState:I

    .line 71
    const/4 v1, 0x4

    iput v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedMediaState:I

    .line 72
    iput-boolean v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedCanRecord:Z

    .line 73
    iput-boolean v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedIsRecording:Z

    .line 74
    iput-boolean v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedIsHold:Z

    .line 75
    iput-boolean v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedVideo:Z

    .line 84
    iput-boolean v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->hasVideo:Z

    .line 85
    iput-boolean v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->canVideo:Z

    .line 128
    iput-boolean v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->added:Z

    .line 225
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->handler:Landroid/os/Handler;

    .line 226
    new-instance v1, Lcom/csipsimple/ui/incall/InCallCard$1;

    invoke-direct {v1, p0}, Lcom/csipsimple/ui/incall/InCallCard$1;-><init>(Lcom/csipsimple/ui/incall/InCallCard;)V

    iput-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->postLayout:Ljava/lang/Runnable;

    .line 92
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 93
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03003c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 95
    new-instance v1, Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-direct {v1, p1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->prefs:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    .line 96
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->prefs:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v2, "use_video"

    invoke-virtual {v1, v2}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->canVideo:Z

    .line 97
    invoke-direct {p0}, Lcom/csipsimple/ui/incall/InCallCard;->initControllerView()V

    .line 98
    return-void
.end method

.method static synthetic access$0()F
    .locals 1

    .prologue
    .line 218
    sget v0, Lcom/csipsimple/ui/incall/InCallCard;->minRatio:F

    return v0
.end method

.method static synthetic access$1()F
    .locals 1

    .prologue
    .line 220
    sget v0, Lcom/csipsimple/ui/incall/InCallCard;->maxRatio:F

    return v0
.end method

.method static synthetic access$2()F
    .locals 1

    .prologue
    .line 222
    sget v0, Lcom/csipsimple/ui/incall/InCallCard;->minButtonRation:F

    return v0
.end method

.method static synthetic access$3(Lcom/csipsimple/ui/incall/InCallCard;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/csipsimple/ui/incall/InCallCard;->hasVideo:Z

    return v0
.end method

.method static synthetic access$4(Lcom/csipsimple/ui/incall/InCallCard;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/csipsimple/ui/incall/InCallCard;->updateMenuView()V

    return-void
.end method

.method static synthetic access$5(Lcom/csipsimple/ui/incall/InCallCard;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallCard;->photo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/csipsimple/ui/incall/InCallCard;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallCard;->remoteName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/csipsimple/ui/incall/InCallCard;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedRemoteUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 456
    sget-object v0, Lcom/csipsimple/ui/incall/InCallCard;->userHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dispatchTriggerEvent(I)V
    .locals 3
    .param p1, "whichHandle"    # I

    .prologue
    .line 500
    const-string v0, "InCallCard"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispatch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->onTriggerListener:Lcom/csipsimple/ui/incall/IOnCallActionTrigger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallCard;->onTriggerListener:Lcom/csipsimple/ui/incall/IOnCallActionTrigger;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallCard;->onTriggerListener:Lcom/csipsimple/ui/incall/IOnCallActionTrigger;

    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-interface {v0, p1, v1}, Lcom/csipsimple/ui/incall/IOnCallActionTrigger;->onTrigger(ILcom/csipsimple/api/SipCallSession;)V

    .line 504
    :cond_0
    return-void
.end method

.method private initControllerView()V
    .locals 4

    .prologue
    .line 101
    const v2, 0x7f0600b0

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/incall/InCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->photo:Landroid/widget/ImageView;

    .line 102
    const v2, 0x7f0600b3

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/incall/InCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->remoteName:Landroid/widget/TextView;

    .line 103
    const v2, 0x7f0600b4

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/incall/InCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->remoteSipAddress:Landroid/widget/TextView;

    .line 104
    const v2, 0x7f0600b5

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/incall/InCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Chronometer;

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->elapsedTime:Landroid/widget/Chronometer;

    .line 105
    const v2, 0x7f0600b6

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/incall/InCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->callStatusText:Landroid/widget/TextView;

    .line 106
    const v2, 0x7f0600b7

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/incall/InCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->callSecureBar:Landroid/view/ViewGroup;

    .line 107
    const v2, 0x7f0600b9

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/incall/InCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->callSecureText:Landroid/widget/TextView;

    .line 108
    const v2, 0x7f0600ba

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/incall/InCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->endCallBar:Landroid/view/ViewGroup;

    .line 112
    const v2, 0x7f0600bb

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/incall/InCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, "btn":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    new-instance v2, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/InCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 116
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;)V

    .line 117
    new-instance v1, Lcom/actionbarsherlock/view/MenuInflater;

    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/InCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/actionbarsherlock/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 118
    .local v1, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v2, 0x7f0e0002

    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 120
    new-instance v2, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/InCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    .line 121
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 123
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;)V

    .line 125
    invoke-direct {p0}, Lcom/csipsimple/ui/incall/InCallCard;->updateMenuView()V

    .line 126
    return-void
.end method

.method private setVisibleWithFade(Landroid/view/View;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "in"    # Z

    .prologue
    const/16 v2, 0x8

    .line 516
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_2

    if-eqz p2, :cond_0

    .line 525
    :cond_2
    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/InCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz p2, :cond_3

    const/high16 v1, 0x10a0000

    :goto_1
    invoke-static {v3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 526
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 527
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 528
    if-eqz p2, :cond_4

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 525
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_3
    const v1, 0x10a0001

    goto :goto_1

    .restart local v0    # "anim":Landroid/view/animation/Animation;
    :cond_4
    move v1, v2

    .line 528
    goto :goto_2
.end method

.method private updateCallStateBar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 313
    iget v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedInvState:I

    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v2}, Lcom/csipsimple/api/SipCallSession;->getCallState()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 314
    iget v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedMediaState:I

    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v2}, Lcom/csipsimple/api/SipCallSession;->getMediaStatus()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 350
    :goto_0
    return-void

    .line 318
    :cond_0
    const/4 v0, -0x1

    .line 320
    .local v0, "stateText":I
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->isAfterEnded()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 322
    const v0, 0x7f0b0044

    .line 335
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->isBeforeConfirmed()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->isIncoming()Z

    move-result v1

    if-nez v1, :cond_3

    .line 336
    :cond_2
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->isAfterEnded()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 337
    :cond_3
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->endCallBar:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 342
    :goto_2
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 343
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callStatusText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 344
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callStatusText:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/csipsimple/ui/incall/InCallCard;->setVisibleWithFade(Landroid/view/View;Z)V

    goto :goto_0

    .line 323
    :cond_4
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->isLocalHeld()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->isRemoteHeld()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 325
    :cond_5
    const v0, 0x7f0b004d

    goto :goto_1

    .line 326
    :cond_6
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->isBeforeConfirmed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 329
    const v0, 0x7f0b0046

    goto :goto_1

    .line 332
    :cond_7
    const v0, 0x7f0b0041

    goto :goto_1

    .line 339
    :cond_8
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->endCallBar:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 346
    :cond_9
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callStatusText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v3}, Lcom/csipsimple/ui/incall/InCallCard;->setVisibleWithFade(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private updateElapsedTimer()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 406
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    if-nez v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->elapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    .line 408
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->elapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v4}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 444
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->elapsedTime:Landroid/widget/Chronometer;

    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v2}, Lcom/csipsimple/api/SipCallSession;->getConnectStart()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 414
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callSecureBar:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v2}, Lcom/csipsimple/api/SipCallSession;->isSecure()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/csipsimple/ui/incall/InCallCard;->setVisibleWithFade(Landroid/view/View;Z)V

    .line 415
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callSecureText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v2}, Lcom/csipsimple/api/SipCallSession;->getMediaSecureInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->getCallState()I

    move-result v0

    .line 418
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 437
    :pswitch_0
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->elapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    .line 438
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->elapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v4}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_0

    .line 423
    :pswitch_1
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->elapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v5}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_0

    .line 426
    :pswitch_2
    const-string v1, "InCallCard"

    const-string v2, "we start the timer now "

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->isLocalHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->elapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    .line 429
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->elapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v5}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_0

    .line 431
    :cond_1
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->elapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->start()V

    .line 432
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->elapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v4}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_0

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateMenuView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 130
    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/InCallCard;->getWidth()I

    move-result v3

    .line 131
    .local v3, "w":I
    if-gtz v3, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/InCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 134
    :cond_0
    add-int/lit8 v3, v3, -0x64

    .line 135
    iget-boolean v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->added:Z

    if-nez v4, :cond_1

    .line 136
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 137
    const/4 v4, -0x1

    const/4 v5, -0x2

    .line 136
    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 138
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const v4, 0x7f0600b1

    invoke-virtual {p0, v4}, Lcom/csipsimple/ui/incall/InCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 139
    .local v2, "menuViewWrapper":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, v6}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 140
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, v3, v6}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 142
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 143
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, v2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/actionbarsherlock/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    .line 144
    .local v1, "menuView":Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;
    invoke-static {}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->getInstance()Lcom/actionbarsherlock/internal/utils/UtilityWrapper;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 145
    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iput-boolean v6, p0, Lcom/csipsimple/ui/incall/InCallCard;->added:Z

    .line 151
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "menuView":Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;
    .end local v2    # "menuViewWrapper":Landroid/view/ViewGroup;
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, v3, v6}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 149
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, v6}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    goto :goto_0
.end method

.method private updateQuickActions()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 272
    iget v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedInvState:I

    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v4}, Lcom/csipsimple/api/SipCallSession;->getCallState()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 273
    iget v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedMediaState:I

    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v4}, Lcom/csipsimple/api/SipCallSession;->getMediaStatus()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 274
    iget-boolean v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedIsRecording:Z

    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v4}, Lcom/csipsimple/api/SipCallSession;->isRecording()Z

    move-result v4

    if-ne v3, v4, :cond_0

    .line 275
    iget-boolean v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedCanRecord:Z

    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v4}, Lcom/csipsimple/api/SipCallSession;->canRecord()Z

    move-result v4

    if-ne v3, v4, :cond_0

    .line 276
    iget-boolean v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedIsHold:Z

    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v4}, Lcom/csipsimple/api/SipCallSession;->isLocalHeld()Z

    move-result v4

    if-ne v3, v4, :cond_0

    .line 277
    iget-boolean v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedVideo:Z

    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v4}, Lcom/csipsimple/api/SipCallSession;->mediaHasVideo()Z

    move-result v4

    if-ne v3, v4, :cond_0

    .line 278
    const-string v1, "InCallCard"

    const-string v2, "Nothing changed, ignore this update"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v3}, Lcom/csipsimple/api/SipCallSession;->isBeforeConfirmed()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v3}, Lcom/csipsimple/api/SipCallSession;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 283
    .local v0, "active":Z
    :goto_1
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v4, 0x7f060037

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 284
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v4, 0x7f060036

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 285
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v3}, Lcom/csipsimple/api/SipCallSession;->isAfterEnded()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v3}, Lcom/csipsimple/api/SipCallSession;->isBeforeConfirmed()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v3}, Lcom/csipsimple/api/SipCallSession;->isIncoming()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v3}, Lcom/csipsimple/api/SipCallSession;->isBeforeConfirmed()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    move v0, v1

    .line 286
    :goto_2
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v4, 0x7f06010f

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 287
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v3}, Lcom/csipsimple/api/SipCallSession;->isAfterEnded()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v3}, Lcom/csipsimple/api/SipCallSession;->isBeforeConfirmed()Z

    move-result v3

    if-nez v3, :cond_6

    move v0, v1

    .line 288
    :goto_3
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v4, 0x7f060110

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 289
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v4, 0x7f060111

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 290
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v4, 0x7f060114

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 291
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v4, 0x7f060112

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    .line 292
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v3}, Lcom/csipsimple/api/SipCallSession;->isLocalHeld()Z

    move-result v3

    if-eqz v3, :cond_7

    const v3, 0x7f0b004e

    :goto_4
    invoke-interface {v4, v3}, Lcom/actionbarsherlock/view/MenuItem;->setTitle(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 293
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v4, 0x7f060115

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    if-eqz v0, :cond_8

    iget-boolean v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->canVideo:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v3}, Lcom/csipsimple/api/SipCallSession;->mediaHasVideo()Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v1

    :goto_5
    invoke-interface {v4, v3}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 294
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v3}, Lcom/csipsimple/api/SipCallSession;->isAfterEnded()Z

    move-result v3

    if-eqz v3, :cond_9

    move v0, v2

    .line 295
    :goto_6
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v2, 0x7f060116

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 296
    invoke-static {}, Lcom/csipsimple/utils/CustomDistribution;->supportCallRecord()Z

    move-result v0

    .line 297
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->isRecording()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->canRecord()Z

    move-result v1

    if-nez v1, :cond_2

    .line 298
    const/4 v0, 0x0

    .line 300
    :cond_2
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->isAfterEnded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 301
    const/4 v0, 0x0

    .line 303
    :cond_3
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v2, 0x7f060113

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    .line 304
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x7f0b004a

    .line 303
    :goto_7
    invoke-interface {v2, v1}, Lcom/actionbarsherlock/view/MenuItem;->setTitle(I)Lcom/actionbarsherlock/view/MenuItem;

    goto/16 :goto_0

    .end local v0    # "active":Z
    :cond_4
    move v0, v2

    .line 282
    goto/16 :goto_1

    .restart local v0    # "active":Z
    :cond_5
    move v0, v2

    .line 285
    goto/16 :goto_2

    :cond_6
    move v0, v2

    .line 287
    goto/16 :goto_3

    .line 292
    :cond_7
    const v3, 0x7f0b004c

    goto :goto_4

    :cond_8
    move v3, v2

    .line 293
    goto :goto_5

    :cond_9
    move v0, v1

    .line 294
    goto :goto_6

    .line 304
    :cond_a
    const v1, 0x7f0b0049

    goto :goto_7
.end method

.method private updateRemoteName()V
    .locals 12

    .prologue
    .line 354
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v6}, Lcom/csipsimple/api/SipCallSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "aRemoteUri":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedRemoteUri:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 358
    iput-object v0, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedRemoteUri:Ljava/lang/String;

    .line 359
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedRemoteUri:Ljava/lang/String;

    invoke-static {v6}, Lcom/csipsimple/api/SipUri;->parseSipContact(Ljava/lang/String;)Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;

    move-result-object v5

    .line 360
    .local v5, "uriInfos":Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;
    invoke-static {v0}, Lcom/csipsimple/api/SipUri;->getDisplayedSimpleContact(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, "text":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 364
    .local v2, "statusTextBuffer":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallCard;->remoteName:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v6}, Lcom/csipsimple/api/SipCallSession;->getAccId()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 366
    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/InCallCard;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v7}, Lcom/csipsimple/api/SipCallSession;->getAccId()J

    move-result-wide v7

    .line 367
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 368
    const-string v11, "id"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "display_name"

    aput-object v11, v9, v10

    .line 366
    invoke-static {v6, v7, v8, v9}, Lcom/csipsimple/api/SipProfile;->getProfileFromDbId(Landroid/content/Context;J[Ljava/lang/String;)Lcom/csipsimple/api/SipProfile;

    move-result-object v1

    .line 370
    .local v1, "acc":Lcom/csipsimple/api/SipProfile;
    if-eqz v1, :cond_0

    iget-object v6, v1, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 371
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SIP/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    .end local v1    # "acc":Lcom/csipsimple/api/SipProfile;
    :cond_0
    :goto_0
    iget-object v6, v5, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallCard;->remoteSipAddress:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    new-instance v3, Lcom/csipsimple/ui/incall/InCallCard$2;

    invoke-direct {v3, p0}, Lcom/csipsimple/ui/incall/InCallCard$2;-><init>(Lcom/csipsimple/ui/incall/InCallCard;)V

    .line 393
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 398
    .end local v2    # "statusTextBuffer":Ljava/lang/StringBuffer;
    .end local v3    # "t":Ljava/lang/Thread;
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "uriInfos":Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;
    :cond_1
    iget v6, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedInvState:I

    iget-object v7, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v7}, Lcom/csipsimple/api/SipCallSession;->getCallState()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 399
    iget v6, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedMediaState:I

    iget-object v7, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v7}, Lcom/csipsimple/api/SipCallSession;->getMediaStatus()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 402
    :cond_2
    return-void

    .line 374
    .restart local v2    # "statusTextBuffer":Ljava/lang/StringBuffer;
    .restart local v4    # "text":Ljava/lang/String;
    .restart local v5    # "uriInfos":Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;
    :cond_3
    const-string v6, "SIP : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 533
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 534
    .local v0, "id":I
    const v1, 0x7f0600bb

    if-ne v0, v1, :cond_0

    .line 535
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->isBeforeConfirmed()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/csipsimple/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->isAfterEnded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 538
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/csipsimple/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 262
    if-eqz p1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallCard;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->postLayout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 267
    return-void
.end method

.method public onMenuItemSelected(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 545
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 546
    .local v0, "itemId":I
    const v1, 0x7f060037

    if-ne v0, v1, :cond_0

    .line 547
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/csipsimple/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    move v1, v2

    .line 577
    :goto_0
    return v1

    .line 549
    :cond_0
    const v1, 0x7f06010f

    if-ne v0, v1, :cond_1

    .line 550
    invoke-direct {p0, v2}, Lcom/csipsimple/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    move v1, v2

    .line 551
    goto :goto_0

    .line 552
    :cond_1
    const v1, 0x7f060036

    if-ne v0, v1, :cond_2

    .line 553
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/csipsimple/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    move v1, v2

    .line 554
    goto :goto_0

    .line 555
    :cond_2
    const v1, 0x7f060116

    if-ne v0, v1, :cond_3

    .line 556
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/csipsimple/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    move v1, v2

    .line 557
    goto :goto_0

    .line 558
    :cond_3
    const v1, 0x7f060112

    if-ne v0, v1, :cond_4

    .line 559
    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/csipsimple/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    move v1, v2

    .line 560
    goto :goto_0

    .line 561
    :cond_4
    const v1, 0x7f060113

    if-ne v0, v1, :cond_6

    .line 562
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x11

    :goto_1
    invoke-direct {p0, v1}, Lcom/csipsimple/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    move v1, v2

    .line 563
    goto :goto_0

    .line 562
    :cond_5
    const/16 v1, 0x10

    goto :goto_1

    .line 564
    :cond_6
    const v1, 0x7f060114

    if-ne v0, v1, :cond_7

    .line 565
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lcom/csipsimple/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    move v1, v2

    .line 566
    goto :goto_0

    .line 567
    :cond_7
    const v1, 0x7f060115

    if-ne v0, v1, :cond_9

    .line 568
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->mediaHasVideo()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x14

    :goto_2
    invoke-direct {p0, v1}, Lcom/csipsimple/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    move v1, v2

    .line 569
    goto :goto_0

    .line 568
    :cond_8
    const/16 v1, 0x13

    goto :goto_2

    .line 570
    :cond_9
    const v1, 0x7f060110

    if-ne v0, v1, :cond_a

    .line 571
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/csipsimple/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    move v1, v2

    .line 572
    goto :goto_0

    .line 573
    :cond_a
    const v1, 0x7f060111

    if-ne v0, v1, :cond_b

    .line 574
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/csipsimple/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    move v1, v2

    .line 575
    goto :goto_0

    .line 577
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public onMenuModeChange(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .prologue
    .line 583
    return-void
.end method

.method public declared-synchronized setCallState(Lcom/csipsimple/api/SipCallSession;)V
    .locals 6
    .param p1, "aCallInfo"    # Lcom/csipsimple/api/SipCallSession;

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    .line 155
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    if-nez v4, :cond_1

    .line 156
    invoke-direct {p0}, Lcom/csipsimple/ui/incall/InCallCard;->updateElapsedTimer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 161
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/csipsimple/ui/incall/InCallCard;->updateRemoteName()V

    .line 162
    invoke-direct {p0}, Lcom/csipsimple/ui/incall/InCallCard;->updateCallStateBar()V

    .line 163
    invoke-direct {p0}, Lcom/csipsimple/ui/incall/InCallCard;->updateQuickActions()V

    .line 164
    invoke-direct {p0}, Lcom/csipsimple/ui/incall/InCallCard;->updateElapsedTimer()V

    .line 166
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v4}, Lcom/csipsimple/api/SipCallSession;->getCallState()I

    move-result v4

    iput v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedInvState:I

    .line 167
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v4}, Lcom/csipsimple/api/SipCallSession;->getMediaStatus()I

    move-result v4

    iput v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedMediaState:I

    .line 168
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v4}, Lcom/csipsimple/api/SipCallSession;->canRecord()Z

    move-result v4

    iput-boolean v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedCanRecord:Z

    .line 169
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v4}, Lcom/csipsimple/api/SipCallSession;->isRecording()Z

    move-result v4

    iput-boolean v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedIsRecording:Z

    .line 170
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v4}, Lcom/csipsimple/api/SipCallSession;->isLocalHeld()Z

    move-result v4

    iput-boolean v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedIsHold:Z

    .line 171
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v4}, Lcom/csipsimple/api/SipCallSession;->mediaHasVideo()Z

    move-result v4

    iput-boolean v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedVideo:Z

    .line 174
    iget-boolean v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->canVideo:Z

    if-eqz v4, :cond_0

    .line 175
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v4}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v4

    if-ltz v4, :cond_3

    iget-boolean v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->cachedVideo:Z

    if-eqz v4, :cond_3

    .line 176
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->renderView:Landroid/view/SurfaceView;

    if-nez v4, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/InCallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/webrtc/videoengine/ViERenderer;->CreateRenderer(Landroid/content/Context;Z)Landroid/view/SurfaceView;

    move-result-object v4

    iput-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->renderView:Landroid/view/SurfaceView;

    .line 178
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->photo:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    const v4, 0x7f0600af

    invoke-virtual {p0, v4}, Lcom/csipsimple/ui/incall/InCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 180
    .local v0, "container":Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 181
    const/4 v4, -0x1

    .line 182
    const/4 v5, -0x1

    .line 180
    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 183
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x5

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 184
    const/4 v4, 0x7

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 185
    const/4 v4, 0x6

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 186
    const/4 v4, 0x2

    const v5, 0x7f0600b1

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 187
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->renderView:Landroid/view/SurfaceView;

    invoke-virtual {v4, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->renderView:Landroid/view/SurfaceView;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 190
    const-string v4, "InCallCard"

    const-string v5, "Render window added"

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v4}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v4

    iget-object v5, p0, Lcom/csipsimple/ui/incall/InCallCard;->renderView:Landroid/view/SurfaceView;

    invoke-static {v4, v5}, Lcom/csipsimple/service/SipService;->setVideoWindow(ILjava/lang/Object;)V

    .line 193
    const v4, 0x7f0600ba

    invoke-virtual {p0, v4}, Lcom/csipsimple/ui/incall/InCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 194
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 195
    .local v2, "lp2":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 196
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    .end local v0    # "container":Landroid/widget/RelativeLayout;
    .end local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "lp2":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "v":Landroid/view/View;
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->hasVideo:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 154
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 200
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->renderView:Landroid/view/SurfaceView;

    if-eqz v4, :cond_4

    .line 201
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->renderView:Landroid/view/SurfaceView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 202
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->photo:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/csipsimple/ui/incall/InCallCard;->hasVideo:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public setOnTriggerListener(Lcom/csipsimple/ui/incall/IOnCallActionTrigger;)V
    .locals 0
    .param p1, "listener"    # Lcom/csipsimple/ui/incall/IOnCallActionTrigger;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/csipsimple/ui/incall/InCallCard;->onTriggerListener:Lcom/csipsimple/ui/incall/IOnCallActionTrigger;

    .line 496
    return-void
.end method

.method public terminate()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallCard;->renderView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallCard;->callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v0}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/csipsimple/service/SipService;->setVideoWindow(ILjava/lang/Object;)V

    .line 512
    :cond_0
    return-void
.end method
