.class Lcom/csipsimple/service/receiver/DynamicReceiver4$1;
.super Lcom/csipsimple/service/SipService$SipRunnable;
.source "DynamicReceiver4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/service/receiver/DynamicReceiver4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/service/receiver/DynamicReceiver4;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/csipsimple/service/receiver/DynamicReceiver4;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4$1;->this$0:Lcom/csipsimple/service/receiver/DynamicReceiver4;

    iput-object p2, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4$1;->val$intent:Landroid/content/Intent;

    .line 95
    invoke-direct {p0}, Lcom/csipsimple/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4$1;->this$0:Lcom/csipsimple/service/receiver/DynamicReceiver4;

    iget-object v1, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4$1;->val$intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4$1;->this$0:Lcom/csipsimple/service/receiver/DynamicReceiver4;

    iget-object v4, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/csipsimple/service/receiver/DynamicReceiver4;->compatIsInitialStickyBroadcast(Landroid/content/Intent;)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/csipsimple/service/receiver/DynamicReceiver4;->access$0(Lcom/csipsimple/service/receiver/DynamicReceiver4;Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 98
    return-void
.end method
