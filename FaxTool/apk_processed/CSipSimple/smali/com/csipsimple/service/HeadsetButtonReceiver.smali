.class public Lcom/csipsimple/service/HeadsetButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetButtonReceiver.java"


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "HeadsetButtonReceiver"

.field private static uaReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/csipsimple/service/HeadsetButtonReceiver;->uaReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static setService(Lcom/csipsimple/pjsip/UAStateReceiver;)V
    .locals 0
    .param p0, "aUAReceiver"    # Lcom/csipsimple/pjsip/UAStateReceiver;

    .prologue
    .line 77
    sput-object p0, Lcom/csipsimple/service/HeadsetButtonReceiver;->uaReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    .line 78
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    const-string v1, "HeadsetButtonReceiver"

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-object v1, Lcom/csipsimple/service/HeadsetButtonReceiver;->uaReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    if-nez v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 50
    .local v0, "event":Landroid/view/KeyEvent;
    const-string v1, "HeadsetButtonReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Key : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 53
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x4f

    if-ne v1, v2, :cond_0

    .line 55
    sget-object v1, Lcom/csipsimple/service/HeadsetButtonReceiver;->uaReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    invoke-virtual {v1}, Lcom/csipsimple/pjsip/UAStateReceiver;->handleHeadsetButton()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/csipsimple/service/HeadsetButtonReceiver;->abortBroadcast()V

    goto :goto_0
.end method
