.class Lcom/csipsimple/service/PresenceManager$1;
.super Lcom/csipsimple/service/SipService$SipRunnable;
.source "PresenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/service/PresenceManager;->addBuddiesForAccount(Lcom/csipsimple/api/SipProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/service/PresenceManager;

.field private final synthetic val$toAdd:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/csipsimple/service/PresenceManager;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/service/PresenceManager$1;->this$0:Lcom/csipsimple/service/PresenceManager;

    iput-object p2, p0, Lcom/csipsimple/service/PresenceManager$1;->val$toAdd:Ljava/util/List;

    .line 98
    invoke-direct {p0}, Lcom/csipsimple/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v1, p0, Lcom/csipsimple/service/PresenceManager$1;->val$toAdd:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    return-void

    .line 103
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    .local v0, "csipUri":Ljava/lang/String;
    iget-object v2, p0, Lcom/csipsimple/service/PresenceManager$1;->this$0:Lcom/csipsimple/service/PresenceManager;

    invoke-static {v2}, Lcom/csipsimple/service/PresenceManager;->access$1(Lcom/csipsimple/service/PresenceManager;)Lcom/csipsimple/service/SipService;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sip:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/csipsimple/service/SipService;->addBuddy(Ljava/lang/String;)I

    goto :goto_0
.end method
