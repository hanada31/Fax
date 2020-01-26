.class Lcom/csipsimple/wizards/impl/Cryptel$1;
.super Ljava/lang/Object;
.source "Cryptel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/wizards/impl/Cryptel;->updateAccountInfos(Lcom/csipsimple/api/SipProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/wizards/impl/Cryptel;


# direct methods
.method constructor <init>(Lcom/csipsimple/wizards/impl/Cryptel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/wizards/impl/Cryptel$1;->this$0:Lcom/csipsimple/wizards/impl/Cryptel;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Cryptel$1;->this$0:Lcom/csipsimple/wizards/impl/Cryptel;

    invoke-static {v0}, Lcom/csipsimple/wizards/impl/Cryptel;->access$0(Lcom/csipsimple/wizards/impl/Cryptel;)Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->show()V

    .line 176
    return-void
.end method
