.class Lcom/csipsimple/service/SipService$StartRunnable;
.super Lcom/csipsimple/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/service/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/service/SipService;


# direct methods
.method constructor <init>(Lcom/csipsimple/service/SipService;)V
    .locals 0

    .prologue
    .line 1753
    iput-object p1, p0, Lcom/csipsimple/service/SipService$StartRunnable;->this$0:Lcom/csipsimple/service/SipService;

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
    .line 1756
    iget-object v0, p0, Lcom/csipsimple/service/SipService$StartRunnable;->this$0:Lcom/csipsimple/service/SipService;

    invoke-static {v0}, Lcom/csipsimple/service/SipService;->access$9(Lcom/csipsimple/service/SipService;)V

    .line 1757
    return-void
.end method
