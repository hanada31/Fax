.class Lcom/csipsimple/wizards/impl/Tanstagi$1;
.super Ljava/lang/Object;
.source "Tanstagi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/wizards/impl/Tanstagi;->updateAccountInfos(Lcom/csipsimple/api/SipProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/wizards/impl/Tanstagi;


# direct methods
.method constructor <init>(Lcom/csipsimple/wizards/impl/Tanstagi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/wizards/impl/Tanstagi$1;->this$0:Lcom/csipsimple/wizards/impl/Tanstagi;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Tanstagi$1;->this$0:Lcom/csipsimple/wizards/impl/Tanstagi;

    iget-object v0, v0, Lcom/csipsimple/wizards/impl/Tanstagi;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://create.tanstagi.net/gork/new"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method
