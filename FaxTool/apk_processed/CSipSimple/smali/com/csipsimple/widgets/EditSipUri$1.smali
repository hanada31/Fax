.class Lcom/csipsimple/widgets/EditSipUri$1;
.super Ljava/lang/Object;
.source "EditSipUri.java"

# interfaces
.implements Lcom/csipsimple/widgets/AccountChooserButton$OnAccountChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/widgets/EditSipUri;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/widgets/EditSipUri;


# direct methods
.method constructor <init>(Lcom/csipsimple/widgets/EditSipUri;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/widgets/EditSipUri$1;->this$0:Lcom/csipsimple/widgets/EditSipUri;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChooseAccount(Lcom/csipsimple/api/SipProfile;)V
    .locals 3
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 82
    iget-object v2, p0, Lcom/csipsimple/widgets/EditSipUri$1;->this$0:Lcom/csipsimple/widgets/EditSipUri;

    invoke-static {v2}, Lcom/csipsimple/widgets/EditSipUri;->access$0(Lcom/csipsimple/widgets/EditSipUri;)V

    .line 83
    const-wide/16 v0, -0x1

    .line 84
    .local v0, "accId":J
    if-eqz p1, :cond_0

    .line 85
    iget-wide v0, p1, Lcom/csipsimple/api/SipProfile;->id:J

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/csipsimple/widgets/EditSipUri$1;->this$0:Lcom/csipsimple/widgets/EditSipUri;

    invoke-static {v2}, Lcom/csipsimple/widgets/EditSipUri;->access$1(Lcom/csipsimple/widgets/EditSipUri;)Lcom/csipsimple/utils/contacts/ContactsAutocompleteAdapter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/csipsimple/utils/contacts/ContactsAutocompleteAdapter;->setSelectedAccount(J)V

    .line 88
    return-void
.end method
