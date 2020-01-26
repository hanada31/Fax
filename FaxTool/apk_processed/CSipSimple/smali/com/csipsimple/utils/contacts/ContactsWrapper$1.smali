.class Lcom/csipsimple/utils/contacts/ContactsWrapper$1;
.super Ljava/lang/Object;
.source "ContactsWrapper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/utils/contacts/ContactsWrapper;->treatContactPickerPositiveResult(Landroid/content/Context;Ljava/lang/String;Lcom/csipsimple/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/utils/contacts/ContactsWrapper;

.field private final synthetic val$l:Lcom/csipsimple/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;

.field private final synthetic val$phoneChoiceAdapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/csipsimple/utils/contacts/ContactsWrapper;Lcom/csipsimple/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/utils/contacts/ContactsWrapper$1;->this$0:Lcom/csipsimple/utils/contacts/ContactsWrapper;

    iput-object p2, p0, Lcom/csipsimple/utils/contacts/ContactsWrapper$1;->val$l:Lcom/csipsimple/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;

    iput-object p3, p0, Lcom/csipsimple/utils/contacts/ContactsWrapper$1;->val$phoneChoiceAdapter:Landroid/widget/ArrayAdapter;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 301
    iget-object v0, p0, Lcom/csipsimple/utils/contacts/ContactsWrapper$1;->val$l:Lcom/csipsimple/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;

    if-eqz v0, :cond_0

    .line 302
    iget-object v1, p0, Lcom/csipsimple/utils/contacts/ContactsWrapper$1;->val$l:Lcom/csipsimple/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;

    iget-object v0, p0, Lcom/csipsimple/utils/contacts/ContactsWrapper$1;->val$phoneChoiceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/csipsimple/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;->onTrigger(Ljava/lang/String;)V

    .line 304
    :cond_0
    return-void
.end method
