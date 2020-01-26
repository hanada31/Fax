.class public abstract Lcom/csipsimple/wizards/impl/AccountBalanceHelper;
.super Landroid/os/Handler;
.source "AccountBalanceHelper.java"


# static fields
.field protected static final DID_ERROR:I = 0x1

.field protected static final DID_SUCCEED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract applyResultError()V
.end method

.method public abstract applyResultSuccess(Ljava/lang/String;)V
.end method

.method public abstract getRequest(Lcom/csipsimple/api/SipProfile;)Lorg/apache/http/client/methods/HttpRequestBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 82
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 94
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 86
    .local v0, "response":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/AccountBalanceHelper;->applyResultSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    .end local v0    # "response":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/AccountBalanceHelper;->applyResultError()V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public launchRequest(Lcom/csipsimple/api/SipProfile;)V
    .locals 1
    .param p1, "acc"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 46
    new-instance v0, Lcom/csipsimple/wizards/impl/AccountBalanceHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/csipsimple/wizards/impl/AccountBalanceHelper$1;-><init>(Lcom/csipsimple/wizards/impl/AccountBalanceHelper;Lcom/csipsimple/api/SipProfile;)V

    .line 78
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 79
    return-void
.end method

.method public abstract parseResponseLine(Ljava/lang/String;)Ljava/lang/String;
.end method
