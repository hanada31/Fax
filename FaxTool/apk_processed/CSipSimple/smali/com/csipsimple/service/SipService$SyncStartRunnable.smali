.class Lcom/csipsimple/service/SipService$SyncStartRunnable;
.super Lcom/csipsimple/service/SipService$ReturnRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/service/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncStartRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/service/SipService;


# direct methods
.method constructor <init>(Lcom/csipsimple/service/SipService;)V
    .locals 0

    .prologue
    .line 1761
    iput-object p1, p0, Lcom/csipsimple/service/SipService$SyncStartRunnable;->this$0:Lcom/csipsimple/service/SipService;

    invoke-direct {p0, p1}, Lcom/csipsimple/service/SipService$ReturnRunnable;-><init>(Lcom/csipsimple/service/SipService;)V

    return-void
.end method


# virtual methods
.method protected runWithReturn()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/csipsimple/service/SipService$SyncStartRunnable;->this$0:Lcom/csipsimple/service/SipService;

    invoke-static {v0}, Lcom/csipsimple/service/SipService;->access$9(Lcom/csipsimple/service/SipService;)V

    .line 1765
    const/4 v0, 0x0

    return-object v0
.end method
