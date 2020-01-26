.class Lcom/csipsimple/service/SipService$1$26;
.super Lcom/csipsimple/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/service/SipService$1;->startLoopbackTest()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/csipsimple/service/SipService$1;


# direct methods
.method constructor <init>(Lcom/csipsimple/service/SipService$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/service/SipService$1$26;->this$1:Lcom/csipsimple/service/SipService$1;

    .line 748
    invoke-direct {p0}, Lcom/csipsimple/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 752
    invoke-static {v0, v0}, Lorg/pjsip/pjsua/pjsua;->conf_connect(II)I

    .line 753
    return-void
.end method
