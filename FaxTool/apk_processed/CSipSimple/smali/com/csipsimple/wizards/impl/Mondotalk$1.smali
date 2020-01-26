.class Lcom/csipsimple/wizards/impl/Mondotalk$1;
.super Ljava/lang/Object;
.source "Mondotalk.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/wizards/impl/Mondotalk;->updateAccountInfos(Lcom/csipsimple/api/SipProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/wizards/impl/Mondotalk;


# direct methods
.method constructor <init>(Lcom/csipsimple/wizards/impl/Mondotalk;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/wizards/impl/Mondotalk$1;->this$0:Lcom/csipsimple/wizards/impl/Mondotalk;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Mondotalk$1;->this$0:Lcom/csipsimple/wizards/impl/Mondotalk;

    iget-object v0, v0, Lcom/csipsimple/wizards/impl/Mondotalk;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Mondotalk$1;->this$0:Lcom/csipsimple/wizards/impl/Mondotalk;

    iget-object v2, v2, Lcom/csipsimple/wizards/impl/Mondotalk;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const-class v3, Lcom/csipsimple/wizards/impl/MondotalkCreate;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Mondotalk$1;->this$0:Lcom/csipsimple/wizards/impl/Mondotalk;

    invoke-static {v2}, Lcom/csipsimple/wizards/impl/Mondotalk;->access$0(Lcom/csipsimple/wizards/impl/Mondotalk;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/wizards/BasePrefsWizard;->startActivityForResult(Landroid/content/Intent;I)V

    .line 98
    return-void
.end method
