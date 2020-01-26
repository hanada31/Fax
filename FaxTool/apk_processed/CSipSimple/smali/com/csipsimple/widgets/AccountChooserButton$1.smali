.class Lcom/csipsimple/widgets/AccountChooserButton$1;
.super Ljava/lang/Object;
.source "AccountChooserButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/widgets/AccountChooserButton;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/widgets/AccountChooserButton;

.field private final synthetic val$account:Lcom/csipsimple/api/SipProfile;


# direct methods
.method constructor <init>(Lcom/csipsimple/widgets/AccountChooserButton;Lcom/csipsimple/api/SipProfile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/widgets/AccountChooserButton$1;->this$0:Lcom/csipsimple/widgets/AccountChooserButton;

    iput-object p2, p0, Lcom/csipsimple/widgets/AccountChooserButton$1;->val$account:Lcom/csipsimple/api/SipProfile;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/csipsimple/widgets/AccountChooserButton$1;->this$0:Lcom/csipsimple/widgets/AccountChooserButton;

    iget-object v1, p0, Lcom/csipsimple/widgets/AccountChooserButton$1;->val$account:Lcom/csipsimple/api/SipProfile;

    invoke-virtual {v0, v1}, Lcom/csipsimple/widgets/AccountChooserButton;->setAccount(Lcom/csipsimple/api/SipProfile;)V

    .line 216
    iget-object v0, p0, Lcom/csipsimple/widgets/AccountChooserButton$1;->this$0:Lcom/csipsimple/widgets/AccountChooserButton;

    invoke-static {v0}, Lcom/csipsimple/widgets/AccountChooserButton;->access$1(Lcom/csipsimple/widgets/AccountChooserButton;)Lcom/csipsimple/widgets/HorizontalQuickActionWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->dismiss()V

    .line 217
    return-void
.end method
