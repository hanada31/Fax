.class Lcom/csipsimple/widgets/AccountChooserButton$2$1;
.super Ljava/lang/Object;
.source "AccountChooserButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/widgets/AccountChooserButton$2;->onLoad(Lcom/csipsimple/utils/CallHandlerPlugin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/csipsimple/widgets/AccountChooserButton$2;

.field private final synthetic val$ch:Lcom/csipsimple/utils/CallHandlerPlugin;


# direct methods
.method constructor <init>(Lcom/csipsimple/widgets/AccountChooserButton$2;Lcom/csipsimple/utils/CallHandlerPlugin;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/widgets/AccountChooserButton$2$1;->this$1:Lcom/csipsimple/widgets/AccountChooserButton$2;

    iput-object p2, p0, Lcom/csipsimple/widgets/AccountChooserButton$2$1;->val$ch:Lcom/csipsimple/utils/CallHandlerPlugin;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/csipsimple/widgets/AccountChooserButton$2$1;->this$1:Lcom/csipsimple/widgets/AccountChooserButton$2;

    invoke-static {v0}, Lcom/csipsimple/widgets/AccountChooserButton$2;->access$0(Lcom/csipsimple/widgets/AccountChooserButton$2;)Lcom/csipsimple/widgets/AccountChooserButton;

    move-result-object v0

    iget-object v1, p0, Lcom/csipsimple/widgets/AccountChooserButton$2$1;->val$ch:Lcom/csipsimple/utils/CallHandlerPlugin;

    invoke-virtual {v1}, Lcom/csipsimple/utils/CallHandlerPlugin;->getFakeProfile()Lcom/csipsimple/api/SipProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/csipsimple/widgets/AccountChooserButton;->setAccount(Lcom/csipsimple/api/SipProfile;)V

    .line 249
    iget-object v0, p0, Lcom/csipsimple/widgets/AccountChooserButton$2$1;->this$1:Lcom/csipsimple/widgets/AccountChooserButton$2;

    invoke-static {v0}, Lcom/csipsimple/widgets/AccountChooserButton$2;->access$0(Lcom/csipsimple/widgets/AccountChooserButton$2;)Lcom/csipsimple/widgets/AccountChooserButton;

    move-result-object v0

    invoke-static {v0}, Lcom/csipsimple/widgets/AccountChooserButton;->access$1(Lcom/csipsimple/widgets/AccountChooserButton;)Lcom/csipsimple/widgets/HorizontalQuickActionWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->dismiss()V

    .line 250
    return-void
.end method
