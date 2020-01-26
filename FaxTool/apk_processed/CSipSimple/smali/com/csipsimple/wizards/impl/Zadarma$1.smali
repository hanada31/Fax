.class Lcom/csipsimple/wizards/impl/Zadarma$1;
.super Ljava/lang/Object;
.source "Zadarma.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/wizards/impl/Zadarma;->updateAccountInfos(Lcom/csipsimple/api/SipProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/wizards/impl/Zadarma;


# direct methods
.method constructor <init>(Lcom/csipsimple/wizards/impl/Zadarma;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/wizards/impl/Zadarma$1;->this$0:Lcom/csipsimple/wizards/impl/Zadarma;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Zadarma$1;->this$0:Lcom/csipsimple/wizards/impl/Zadarma;

    invoke-static {v0}, Lcom/csipsimple/wizards/impl/Zadarma;->access$2(Lcom/csipsimple/wizards/impl/Zadarma;)Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->show()V

    .line 137
    return-void
.end method
