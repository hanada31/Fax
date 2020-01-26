.class public abstract Lcom/csipsimple/utils/audio/AudioFocusWrapper;
.super Ljava/lang/Object;
.source "AudioFocusWrapper.java"


# static fields
.field private static instance:Lcom/csipsimple/utils/audio/AudioFocusWrapper;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/csipsimple/utils/audio/AudioFocusWrapper;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/csipsimple/utils/audio/AudioFocusWrapper;->instance:Lcom/csipsimple/utils/audio/AudioFocusWrapper;

    if-nez v0, :cond_0

    .line 35
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    new-instance v0, Lcom/csipsimple/utils/audio/AudioFocus8;

    invoke-direct {v0}, Lcom/csipsimple/utils/audio/AudioFocus8;-><init>()V

    sput-object v0, Lcom/csipsimple/utils/audio/AudioFocusWrapper;->instance:Lcom/csipsimple/utils/audio/AudioFocusWrapper;

    .line 42
    :cond_0
    :goto_0
    sget-object v0, Lcom/csipsimple/utils/audio/AudioFocusWrapper;->instance:Lcom/csipsimple/utils/audio/AudioFocusWrapper;

    return-object v0

    .line 38
    :cond_1
    new-instance v0, Lcom/csipsimple/utils/audio/AudioFocus3;

    invoke-direct {v0}, Lcom/csipsimple/utils/audio/AudioFocus3;-><init>()V

    sput-object v0, Lcom/csipsimple/utils/audio/AudioFocusWrapper;->instance:Lcom/csipsimple/utils/audio/AudioFocusWrapper;

    goto :goto_0
.end method


# virtual methods
.method public abstract focus()V
.end method

.method public abstract init(Lcom/csipsimple/service/SipService;Landroid/media/AudioManager;)V
.end method

.method public abstract unFocus()V
.end method
