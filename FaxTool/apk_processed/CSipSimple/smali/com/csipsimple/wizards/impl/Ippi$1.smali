.class Lcom/csipsimple/wizards/impl/Ippi$1;
.super Ljava/lang/Object;
.source "Ippi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/wizards/impl/Ippi;->updateAccountInfos(Lcom/csipsimple/api/SipProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/wizards/impl/Ippi;


# direct methods
.method constructor <init>(Lcom/csipsimple/wizards/impl/Ippi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/wizards/impl/Ippi$1;->this$0:Lcom/csipsimple/wizards/impl/Ippi;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Ippi$1;->this$0:Lcom/csipsimple/wizards/impl/Ippi;

    invoke-static {v0}, Lcom/csipsimple/wizards/impl/Ippi;->access$2(Lcom/csipsimple/wizards/impl/Ippi;)Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->show()V

    .line 106
    return-void
.end method
