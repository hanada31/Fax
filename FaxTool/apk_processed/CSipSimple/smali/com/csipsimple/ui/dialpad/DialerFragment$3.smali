.class Lcom/csipsimple/ui/dialpad/DialerFragment$3;
.super Ljava/lang/Object;
.source "DialerFragment.java"

# interfaces
.implements Lcom/csipsimple/widgets/AccountChooserButton$OnAccountChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/dialpad/DialerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/dialpad/DialerFragment;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/dialpad/DialerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment$3;->this$0:Lcom/csipsimple/ui/dialpad/DialerFragment;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChooseAccount(Lcom/csipsimple/api/SipProfile;)V
    .locals 3
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 360
    const-wide/16 v0, -0x1

    .line 361
    .local v0, "accId":J
    if-eqz p1, :cond_0

    .line 362
    iget-wide v0, p1, Lcom/csipsimple/api/SipProfile;->id:J

    .line 364
    :cond_0
    iget-object v2, p0, Lcom/csipsimple/ui/dialpad/DialerFragment$3;->this$0:Lcom/csipsimple/ui/dialpad/DialerFragment;

    invoke-static {v2}, Lcom/csipsimple/ui/dialpad/DialerFragment;->access$1(Lcom/csipsimple/ui/dialpad/DialerFragment;)Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;->setSelectedAccount(J)V

    .line 365
    return-void
.end method
