.class Lcom/csipsimple/ui/incall/InCallActivity$3;
.super Ljava/lang/Object;
.source "InCallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/incall/InCallActivity;->onTrigger(ILcom/csipsimple/api/SipCallSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/incall/InCallActivity;

.field private final synthetic val$call:Lcom/csipsimple/api/SipCallSession;

.field private final synthetic val$remoteCalls:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/incall/InCallActivity;Lcom/csipsimple/api/SipCallSession;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/incall/InCallActivity$3;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    iput-object p2, p0, Lcom/csipsimple/ui/incall/InCallActivity$3;->val$call:Lcom/csipsimple/api/SipCallSession;

    iput-object p3, p0, Lcom/csipsimple/ui/incall/InCallActivity$3;->val$remoteCalls:Ljava/util/ArrayList;

    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 980
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity$3;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v1}, Lcom/csipsimple/ui/incall/InCallActivity;->access$0(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/api/ISipService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 983
    :try_start_0
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity$3;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v1}, Lcom/csipsimple/ui/incall/InCallActivity;->access$0(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/api/ISipService;

    move-result-object v2

    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity$3;->val$call:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v3

    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity$3;->val$remoteCalls:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v4}, Lcom/csipsimple/api/ISipService;->xferReplace(III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 988
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 989
    return-void

    .line 984
    :catch_0
    move-exception v0

    .line 985
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InCallActivity"

    const-string v2, "Was not able to call service method"

    invoke-static {v1, v2, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
