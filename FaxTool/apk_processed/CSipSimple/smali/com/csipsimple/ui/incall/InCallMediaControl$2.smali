.class Lcom/csipsimple/ui/incall/InCallMediaControl$2;
.super Ljava/lang/Object;
.source "InCallMediaControl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/incall/InCallMediaControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/incall/InCallMediaControl;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/incall/InCallMediaControl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/incall/InCallMediaControl$2;->this$0:Lcom/csipsimple/ui/incall/InCallMediaControl;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "arg1"    # Landroid/os/IBinder;

    .prologue
    .line 260
    const-string v0, "inCallMediaCtrl"

    const-string v1, "SipService is connected"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl$2;->this$0:Lcom/csipsimple/ui/incall/InCallMediaControl;

    invoke-static {p2}, Lcom/csipsimple/api/ISipService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/csipsimple/api/ISipService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/csipsimple/ui/incall/InCallMediaControl;->access$1(Lcom/csipsimple/ui/incall/InCallMediaControl;Lcom/csipsimple/api/ISipService;)V

    .line 262
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl$2;->this$0:Lcom/csipsimple/ui/incall/InCallMediaControl;

    invoke-static {v0}, Lcom/csipsimple/ui/incall/InCallMediaControl;->access$2(Lcom/csipsimple/ui/incall/InCallMediaControl;)V

    .line 263
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 267
    return-void
.end method
