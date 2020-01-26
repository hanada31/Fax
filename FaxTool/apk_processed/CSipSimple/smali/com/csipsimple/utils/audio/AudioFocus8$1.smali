.class Lcom/csipsimple/utils/audio/AudioFocus8$1;
.super Ljava/lang/Object;
.source "AudioFocus8.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/utils/audio/AudioFocus8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/utils/audio/AudioFocus8;


# direct methods
.method constructor <init>(Lcom/csipsimple/utils/audio/AudioFocus8;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/utils/audio/AudioFocus8$1;->this$0:Lcom/csipsimple/utils/audio/AudioFocus8;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2
    .param p1, "focusChange"    # I

    .prologue
    .line 50
    const-string v0, "AudioFocus 8"

    const-string v1, "Focus changed"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method
