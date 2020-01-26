.class public Lcom/csipsimple/utils/RewriterPlugin$OnRewriteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RewriterPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/utils/RewriterPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnRewriteReceiver"
.end annotation


# instance fields
.field result:Ljava/lang/String;

.field private runSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "defaultResult"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/csipsimple/utils/RewriterPlugin$OnRewriteReceiver;->result:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/csipsimple/utils/RewriterPlugin$OnRewriteReceiver;->runSemaphore:Ljava/util/concurrent/Semaphore;

    .line 124
    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 5

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/csipsimple/utils/RewriterPlugin$OnRewriteReceiver;->runSemaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/csipsimple/utils/RewriterPlugin$OnRewriteReceiver;->result:Ljava/lang/String;

    return-object v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "RewriterPlugin"

    const-string v2, "Can\'t acquire run semaphore... problem..."

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    const-string v1, "RewriterPlugin"

    const-string v2, "Rewriter receive"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/csipsimple/utils/RewriterPlugin$OnRewriteReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 130
    .local v0, "resolvedInfos":Landroid/os/Bundle;
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/csipsimple/utils/RewriterPlugin$OnRewriteReceiver;->result:Ljava/lang/String;

    .line 131
    const-string v1, "RewriterPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Rewriter receive : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/csipsimple/utils/RewriterPlugin$OnRewriteReceiver;->result:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/csipsimple/utils/RewriterPlugin$OnRewriteReceiver;->runSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 133
    return-void
.end method
