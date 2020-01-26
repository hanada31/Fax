.class Lcom/csipsimple/service/SipService$1$4;
.super Lcom/csipsimple/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/service/SipService$1;->setAccountRegistration(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/csipsimple/service/SipService$1;

.field private final synthetic val$acc:Lcom/csipsimple/api/SipProfile;

.field private final synthetic val$ren:I


# direct methods
.method constructor <init>(Lcom/csipsimple/service/SipService$1;Lcom/csipsimple/api/SipProfile;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/service/SipService$1$4;->this$1:Lcom/csipsimple/service/SipService$1;

    iput-object p2, p0, Lcom/csipsimple/service/SipService$1$4;->val$acc:Lcom/csipsimple/api/SipProfile;

    iput p3, p0, Lcom/csipsimple/service/SipService$1$4;->val$ren:I

    .line 197
    invoke-direct {p0}, Lcom/csipsimple/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1$4;->this$1:Lcom/csipsimple/service/SipService$1;

    invoke-static {v0}, Lcom/csipsimple/service/SipService$1;->access$0(Lcom/csipsimple/service/SipService$1;)Lcom/csipsimple/service/SipService;

    move-result-object v0

    iget-object v1, p0, Lcom/csipsimple/service/SipService$1$4;->val$acc:Lcom/csipsimple/api/SipProfile;

    iget v2, p0, Lcom/csipsimple/service/SipService$1$4;->val$ren:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/csipsimple/service/SipService;->setAccountRegistration(Lcom/csipsimple/api/SipProfile;IZ)Z

    .line 201
    return-void
.end method
