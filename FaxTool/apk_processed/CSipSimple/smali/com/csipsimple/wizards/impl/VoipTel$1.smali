.class Lcom/csipsimple/wizards/impl/VoipTel$1;
.super Ljava/lang/Object;
.source "VoipTel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/wizards/impl/VoipTel;->updateAccountInfos(Lcom/csipsimple/api/SipProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/wizards/impl/VoipTel;


# direct methods
.method constructor <init>(Lcom/csipsimple/wizards/impl/VoipTel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/wizards/impl/VoipTel$1;->this$0:Lcom/csipsimple/wizards/impl/VoipTel;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/VoipTel$1;->this$0:Lcom/csipsimple/wizards/impl/VoipTel;

    invoke-static {v0}, Lcom/csipsimple/wizards/impl/VoipTel;->access$0(Lcom/csipsimple/wizards/impl/VoipTel;)Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->show()V

    .line 100
    return-void
.end method
