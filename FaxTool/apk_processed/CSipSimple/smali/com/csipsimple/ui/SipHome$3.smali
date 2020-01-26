.class Lcom/csipsimple/ui/SipHome$3;
.super Ljava/lang/Thread;
.source "SipHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/SipHome;->startSipService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/SipHome;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/SipHome;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/SipHome$3;->this$0:Lcom/csipsimple/ui/SipHome;

    .line 501
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 503
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.csipsimple.service.SipService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 504
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "outgoing_activity"

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/csipsimple/ui/SipHome$3;->this$0:Lcom/csipsimple/ui/SipHome;

    const-class v4, Lcom/csipsimple/ui/SipHome;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 505
    iget-object v1, p0, Lcom/csipsimple/ui/SipHome$3;->this$0:Lcom/csipsimple/ui/SipHome;

    invoke-virtual {v1, v0}, Lcom/csipsimple/ui/SipHome;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 506
    iget-object v1, p0, Lcom/csipsimple/ui/SipHome$3;->this$0:Lcom/csipsimple/ui/SipHome;

    invoke-static {v1}, Lcom/csipsimple/ui/SipHome;->access$4(Lcom/csipsimple/ui/SipHome;)V

    .line 507
    return-void
.end method
