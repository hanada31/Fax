.class Lcom/csipsimple/service/SipService$1$1;
.super Lcom/csipsimple/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/service/SipService$1;->addAllAccounts()V
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
    iput-object p1, p0, Lcom/csipsimple/service/SipService$1$1;->this$1:Lcom/csipsimple/service/SipService$1;

    .line 149
    invoke-direct {p0}, Lcom/csipsimple/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1$1;->this$1:Lcom/csipsimple/service/SipService$1;

    invoke-static {v0}, Lcom/csipsimple/service/SipService$1;->access$0(Lcom/csipsimple/service/SipService$1;)Lcom/csipsimple/service/SipService;

    move-result-object v0

    invoke-static {v0}, Lcom/csipsimple/service/SipService;->access$0(Lcom/csipsimple/service/SipService;)V

    .line 153
    return-void
.end method
