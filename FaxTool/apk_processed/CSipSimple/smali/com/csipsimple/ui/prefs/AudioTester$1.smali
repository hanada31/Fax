.class Lcom/csipsimple/ui/prefs/AudioTester$1;
.super Ljava/lang/Object;
.source "AudioTester.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/prefs/AudioTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/prefs/AudioTester;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/prefs/AudioTester;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/prefs/AudioTester$1;->this$0:Lcom/csipsimple/ui/prefs/AudioTester;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "arg1"    # Landroid/os/IBinder;

    .prologue
    .line 68
    iget-object v2, p0, Lcom/csipsimple/ui/prefs/AudioTester$1;->this$0:Lcom/csipsimple/ui/prefs/AudioTester;

    invoke-static {p2}, Lcom/csipsimple/api/ISipService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/csipsimple/api/ISipService;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/csipsimple/ui/prefs/AudioTester;->access$0(Lcom/csipsimple/ui/prefs/AudioTester;Lcom/csipsimple/api/ISipService;)V

    .line 69
    iget-object v2, p0, Lcom/csipsimple/ui/prefs/AudioTester$1;->this$0:Lcom/csipsimple/ui/prefs/AudioTester;

    invoke-static {v2}, Lcom/csipsimple/ui/prefs/AudioTester;->access$1(Lcom/csipsimple/ui/prefs/AudioTester;)Lcom/csipsimple/api/ISipService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 71
    :try_start_0
    iget-object v2, p0, Lcom/csipsimple/ui/prefs/AudioTester$1;->this$0:Lcom/csipsimple/ui/prefs/AudioTester;

    invoke-static {v2}, Lcom/csipsimple/ui/prefs/AudioTester;->access$1(Lcom/csipsimple/ui/prefs/AudioTester;)Lcom/csipsimple/api/ISipService;

    move-result-object v2

    invoke-interface {v2}, Lcom/csipsimple/api/ISipService;->startLoopbackTest()I

    move-result v1

    .line 72
    .local v1, "res":I
    if-nez v1, :cond_1

    .line 73
    iget-object v2, p0, Lcom/csipsimple/ui/prefs/AudioTester$1;->this$0:Lcom/csipsimple/ui/prefs/AudioTester;

    const v3, 0x7f0b021f

    iput v3, v2, Lcom/csipsimple/ui/prefs/AudioTester;->currentStatus:I

    .line 77
    :goto_0
    iget-object v2, p0, Lcom/csipsimple/ui/prefs/AudioTester$1;->this$0:Lcom/csipsimple/ui/prefs/AudioTester;

    invoke-static {v2}, Lcom/csipsimple/ui/prefs/AudioTester;->access$2(Lcom/csipsimple/ui/prefs/AudioTester;)V

    .line 82
    .end local v1    # "res":I
    :cond_0
    :goto_1
    return-void

    .line 75
    .restart local v1    # "res":I
    :cond_1
    iget-object v2, p0, Lcom/csipsimple/ui/prefs/AudioTester$1;->this$0:Lcom/csipsimple/ui/prefs/AudioTester;

    const v3, 0x7f0b0220

    iput v3, v2, Lcom/csipsimple/ui/prefs/AudioTester;->currentStatus:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioTester"

    const-string v3, "Error in test"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 86
    iget-object v1, p0, Lcom/csipsimple/ui/prefs/AudioTester$1;->this$0:Lcom/csipsimple/ui/prefs/AudioTester;

    invoke-static {v1}, Lcom/csipsimple/ui/prefs/AudioTester;->access$1(Lcom/csipsimple/ui/prefs/AudioTester;)Lcom/csipsimple/api/ISipService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/csipsimple/ui/prefs/AudioTester$1;->this$0:Lcom/csipsimple/ui/prefs/AudioTester;

    invoke-static {v1}, Lcom/csipsimple/ui/prefs/AudioTester;->access$1(Lcom/csipsimple/ui/prefs/AudioTester;)Lcom/csipsimple/api/ISipService;

    move-result-object v1

    invoke-interface {v1}, Lcom/csipsimple/api/ISipService;->stopLoopbackTest()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/csipsimple/ui/prefs/AudioTester$1;->this$0:Lcom/csipsimple/ui/prefs/AudioTester;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/csipsimple/ui/prefs/AudioTester;->access$0(Lcom/csipsimple/ui/prefs/AudioTester;Lcom/csipsimple/api/ISipService;)V

    .line 94
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AudioTester"

    const-string v2, "Error in test"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
