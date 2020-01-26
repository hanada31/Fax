.class Lcom/csipsimple/service/SipService$ServiceHandler;
.super Landroid/os/Handler;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/service/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceHandler"
.end annotation


# instance fields
.field s:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/csipsimple/service/SipService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/csipsimple/service/SipService;)V
    .locals 1
    .param p1, "sipService"    # Lcom/csipsimple/service/SipService;

    .prologue
    .line 1570
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1571
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/csipsimple/service/SipService$ServiceHandler;->s:Ljava/lang/ref/WeakReference;

    .line 1572
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 1576
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1577
    iget-object v1, p0, Lcom/csipsimple/service/SipService$ServiceHandler;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/service/SipService;

    .line 1578
    .local v0, "sipService":Lcom/csipsimple/service/SipService;
    if-nez v0, :cond_1

    .line 1588
    :cond_0
    :goto_0
    return-void

    .line 1581
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    .line 1582
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_2

    .line 1583
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1585
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
