.class public Lcom/csipsimple/ui/prefs/AudioTester;
.super Landroid/app/Activity;
.source "AudioTester.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;
    }
.end annotation


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "AudioTester"


# instance fields
.field private connection:Landroid/content/ServiceConnection;

.field currentStatus:I

.field private monitorThread:Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;

.field private rxProgress:Landroid/widget/ProgressBar;

.field private service:Lcom/csipsimple/api/ISipService;

.field private statusTextView:Landroid/widget/TextView;

.field private txProgress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const v0, 0x7f0b021e

    iput v0, p0, Lcom/csipsimple/ui/prefs/AudioTester;->currentStatus:I

    .line 65
    new-instance v0, Lcom/csipsimple/ui/prefs/AudioTester$1;

    invoke-direct {v0, p0}, Lcom/csipsimple/ui/prefs/AudioTester$1;-><init>(Lcom/csipsimple/ui/prefs/AudioTester;)V

    iput-object v0, p0, Lcom/csipsimple/ui/prefs/AudioTester;->connection:Landroid/content/ServiceConnection;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/ui/prefs/AudioTester;Lcom/csipsimple/api/ISipService;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/csipsimple/ui/prefs/AudioTester;->service:Lcom/csipsimple/api/ISipService;

    return-void
.end method

.method static synthetic access$1(Lcom/csipsimple/ui/prefs/AudioTester;)Lcom/csipsimple/api/ISipService;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/csipsimple/ui/prefs/AudioTester;->service:Lcom/csipsimple/api/ISipService;

    return-object v0
.end method

.method static synthetic access$2(Lcom/csipsimple/ui/prefs/AudioTester;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/csipsimple/ui/prefs/AudioTester;->updateStatusDisplay()V

    return-void
.end method

.method static synthetic access$3(Lcom/csipsimple/ui/prefs/AudioTester;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/csipsimple/ui/prefs/AudioTester;->rxProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$4(Lcom/csipsimple/ui/prefs/AudioTester;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/csipsimple/ui/prefs/AudioTester;->txProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private updateStatusDisplay()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/csipsimple/ui/prefs/AudioTester;->statusTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/csipsimple/ui/prefs/AudioTester;->statusTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/csipsimple/ui/prefs/AudioTester;->currentStatus:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 133
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 191
    .local v0, "id":I
    const v1, 0x7f060033

    if-ne v0, v1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/csipsimple/ui/prefs/AudioTester;->finish()V

    .line 194
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/prefs/AudioTester;->setContentView(I)V

    .line 58
    const v0, 0x7f060038

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/prefs/AudioTester;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/csipsimple/ui/prefs/AudioTester;->statusTextView:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/prefs/AudioTester;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/csipsimple/ui/prefs/AudioTester;->rxProgress:Landroid/widget/ProgressBar;

    .line 60
    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/prefs/AudioTester;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/csipsimple/ui/prefs/AudioTester;->txProgress:Landroid/widget/ProgressBar;

    .line 61
    const v0, 0x7f060033

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/prefs/AudioTester;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 112
    iget-object v1, p0, Lcom/csipsimple/ui/prefs/AudioTester;->service:Lcom/csipsimple/api/ISipService;

    if-eqz v1, :cond_0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/csipsimple/ui/prefs/AudioTester;->service:Lcom/csipsimple/api/ISipService;

    invoke-interface {v1}, Lcom/csipsimple/api/ISipService;->stopLoopbackTest()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/csipsimple/ui/prefs/AudioTester;->connection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/csipsimple/ui/prefs/AudioTester;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/csipsimple/ui/prefs/AudioTester;->unbindService(Landroid/content/ServiceConnection;)V

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/csipsimple/ui/prefs/AudioTester;->monitorThread:Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;

    if-eqz v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/csipsimple/ui/prefs/AudioTester;->monitorThread:Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;

    invoke-virtual {v1}, Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;->markFinished()V

    .line 125
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/csipsimple/ui/prefs/AudioTester;->monitorThread:Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;

    .line 127
    :cond_2
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AudioTester"

    const-string v2, "Error in test"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 100
    const v0, 0x7f0b021e

    iput v0, p0, Lcom/csipsimple/ui/prefs/AudioTester;->currentStatus:I

    .line 101
    invoke-direct {p0}, Lcom/csipsimple/ui/prefs/AudioTester;->updateStatusDisplay()V

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/csipsimple/service/SipService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/csipsimple/ui/prefs/AudioTester;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/csipsimple/ui/prefs/AudioTester;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 103
    iget-object v0, p0, Lcom/csipsimple/ui/prefs/AudioTester;->monitorThread:Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;-><init>(Lcom/csipsimple/ui/prefs/AudioTester;Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;)V

    iput-object v0, p0, Lcom/csipsimple/ui/prefs/AudioTester;->monitorThread:Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;

    .line 105
    iget-object v0, p0, Lcom/csipsimple/ui/prefs/AudioTester;->monitorThread:Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;

    invoke-virtual {v0}, Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;->start()V

    .line 107
    :cond_0
    return-void
.end method
