.class Lcom/csipsimple/ui/calllog/CallLogDetailsFragment$1;
.super Ljava/lang/Object;
.source "CallLogDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment$1;->this$0:Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 117
    .local v2, "nbr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment$1;->this$0:Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;

    invoke-static {v3}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->access$0(Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;)Lcom/csipsimple/widgets/AccountChooserButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/csipsimple/widgets/AccountChooserButton;->getSelectedAccount()Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    .line 119
    .local v0, "acc":Lcom/csipsimple/api/SipProfile;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "it":Landroid/content/Intent;
    const-string v3, "csip"

    invoke-static {v3, v2}, Lcom/csipsimple/api/SipUri;->forgeSipUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 121
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    const-string v3, "acc_id"

    iget-wide v4, v0, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 123
    iget-object v3, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment$1;->this$0:Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;

    invoke-virtual {v3, v1}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 125
    .end local v0    # "acc":Lcom/csipsimple/api/SipProfile;
    .end local v1    # "it":Landroid/content/Intent;
    :cond_0
    return-void
.end method
