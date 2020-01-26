.class public Lcom/csipsimple/widgets/EditSipUri;
.super Landroid/widget/LinearLayout;
.source "EditSipUri.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/widgets/EditSipUri$ContactAdapter;,
        Lcom/csipsimple/widgets/EditSipUri$ToCall;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Landroid/text/TextWatcher;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field protected static final THIS_FILE:Ljava/lang/String; = "EditSipUri"


# instance fields
.field private accountChooserButtonText:Lcom/csipsimple/widgets/AccountChooserButton;

.field private autoCompleteAdapter:Lcom/csipsimple/utils/contacts/ContactsAutocompleteAdapter;

.field private completeList:Landroid/widget/ListView;

.field private contactsAdapter:Lcom/csipsimple/widgets/EditSipUri$ContactAdapter;

.field private dialUser:Landroid/widget/AutoCompleteTextView;

.field private domainTextHelper:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    invoke-virtual {p0, v3}, Lcom/csipsimple/widgets/EditSipUri;->setGravity(I)V

    .line 67
    invoke-virtual {p0, v3}, Lcom/csipsimple/widgets/EditSipUri;->setOrientation(I)V

    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 69
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030031

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 71
    const v2, 0x7f060090

    invoke-virtual {p0, v2}, Lcom/csipsimple/widgets/EditSipUri;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AutoCompleteTextView;

    iput-object v2, p0, Lcom/csipsimple/widgets/EditSipUri;->dialUser:Landroid/widget/AutoCompleteTextView;

    .line 72
    const v2, 0x7f060091

    invoke-virtual {p0, v2}, Lcom/csipsimple/widgets/EditSipUri;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/csipsimple/widgets/AccountChooserButton;

    iput-object v2, p0, Lcom/csipsimple/widgets/EditSipUri;->accountChooserButtonText:Lcom/csipsimple/widgets/AccountChooserButton;

    .line 73
    const v2, 0x7f060092

    invoke-virtual {p0, v2}, Lcom/csipsimple/widgets/EditSipUri;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/csipsimple/widgets/EditSipUri;->domainTextHelper:Landroid/widget/TextView;

    .line 74
    const v2, 0x7f06006f

    invoke-virtual {p0, v2}, Lcom/csipsimple/widgets/EditSipUri;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/csipsimple/widgets/EditSipUri;->completeList:Landroid/widget/ListView;

    .line 76
    new-instance v2, Lcom/csipsimple/utils/contacts/ContactsAutocompleteAdapter;

    invoke-direct {v2, p1}, Lcom/csipsimple/utils/contacts/ContactsAutocompleteAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/csipsimple/widgets/EditSipUri;->autoCompleteAdapter:Lcom/csipsimple/utils/contacts/ContactsAutocompleteAdapter;

    .line 79
    iget-object v2, p0, Lcom/csipsimple/widgets/EditSipUri;->accountChooserButtonText:Lcom/csipsimple/widgets/AccountChooserButton;

    new-instance v3, Lcom/csipsimple/widgets/EditSipUri$1;

    invoke-direct {v3, p0}, Lcom/csipsimple/widgets/EditSipUri$1;-><init>(Lcom/csipsimple/widgets/EditSipUri;)V

    invoke-virtual {v2, v3}, Lcom/csipsimple/widgets/AccountChooserButton;->setOnAccountChangeListener(Lcom/csipsimple/widgets/AccountChooserButton$OnAccountChangeListener;)V

    .line 90
    iget-object v2, p0, Lcom/csipsimple/widgets/EditSipUri;->dialUser:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, p0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    invoke-virtual {p0}, Lcom/csipsimple/widgets/EditSipUri;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getInstance()Lcom/csipsimple/utils/contacts/ContactsWrapper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getContactsPhones(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 97
    .local v0, "c":Landroid/database/Cursor;
    new-instance v2, Lcom/csipsimple/widgets/EditSipUri$ContactAdapter;

    invoke-direct {v2, p0, p1, v0}, Lcom/csipsimple/widgets/EditSipUri$ContactAdapter;-><init>(Lcom/csipsimple/widgets/EditSipUri;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/csipsimple/widgets/EditSipUri;->contactsAdapter:Lcom/csipsimple/widgets/EditSipUri$ContactAdapter;

    .line 98
    iget-object v2, p0, Lcom/csipsimple/widgets/EditSipUri;->completeList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/csipsimple/widgets/EditSipUri;->contactsAdapter:Lcom/csipsimple/widgets/EditSipUri$ContactAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    iget-object v2, p0, Lcom/csipsimple/widgets/EditSipUri;->completeList:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    iget-object v2, p0, Lcom/csipsimple/widgets/EditSipUri;->dialUser:Landroid/widget/AutoCompleteTextView;

    iget-object v3, p0, Lcom/csipsimple/widgets/EditSipUri;->autoCompleteAdapter:Lcom/csipsimple/utils/contacts/ContactsAutocompleteAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/csipsimple/widgets/EditSipUri;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/csipsimple/widgets/EditSipUri;->updateDialTextHelper()V

    return-void
.end method

.method static synthetic access$1(Lcom/csipsimple/widgets/EditSipUri;)Lcom/csipsimple/utils/contacts/ContactsAutocompleteAdapter;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/csipsimple/widgets/EditSipUri;->autoCompleteAdapter:Lcom/csipsimple/utils/contacts/ContactsAutocompleteAdapter;

    return-object v0
.end method

.method private updateDialTextHelper()V
    .locals 6

    .prologue
    .line 166
    iget-object v2, p0, Lcom/csipsimple/widgets/EditSipUri;->dialUser:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "dialUserValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/csipsimple/widgets/EditSipUri;->accountChooserButtonText:Lcom/csipsimple/widgets/AccountChooserButton;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/csipsimple/widgets/AccountChooserButton;->setChangeable(Z)V

    .line 170
    iget-object v2, p0, Lcom/csipsimple/widgets/EditSipUri;->accountChooserButtonText:Lcom/csipsimple/widgets/AccountChooserButton;

    invoke-virtual {v2}, Lcom/csipsimple/widgets/AccountChooserButton;->getSelectedAccount()Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    .line 171
    .local v0, "acc":Lcom/csipsimple/api/SipProfile;
    const-string v2, ".*@.*"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 172
    iget-wide v2, v0, Lcom/csipsimple/api/SipProfile;->id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/csipsimple/widgets/EditSipUri;->domainTextHelper:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/csipsimple/api/SipProfile;->getDefaultDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/csipsimple/widgets/EditSipUri;->domainTextHelper:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/csipsimple/widgets/EditSipUri;->updateDialTextHelper()V

    .line 232
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 222
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/csipsimple/widgets/EditSipUri;->dialUser:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 240
    return-void
.end method

.method public getSelectedAccount()Lcom/csipsimple/api/SipProfile;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/csipsimple/widgets/EditSipUri;->accountChooserButtonText:Lcom/csipsimple/widgets/AccountChooserButton;

    invoke-virtual {v0}, Lcom/csipsimple/widgets/AccountChooserButton;->getSelectedAccount()Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method public getTextField()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/csipsimple/widgets/EditSipUri;->dialUser:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method public getValue()Lcom/csipsimple/widgets/EditSipUri$ToCall;
    .locals 8

    .prologue
    .line 187
    iget-object v4, p0, Lcom/csipsimple/widgets/EditSipUri;->dialUser:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "userName":Ljava/lang/String;
    const-string v2, ""

    .line 189
    .local v2, "toCall":Ljava/lang/String;
    const/4 v1, 0x0

    .line 190
    .local v1, "accountToUse":Ljava/lang/Long;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    const/4 v4, 0x0

    .line 213
    :goto_0
    return-object v4

    .line 193
    :cond_0
    const-string v4, "[ \t]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 194
    iget-object v4, p0, Lcom/csipsimple/widgets/EditSipUri;->accountChooserButtonText:Lcom/csipsimple/widgets/AccountChooserButton;

    invoke-virtual {v4}, Lcom/csipsimple/widgets/AccountChooserButton;->getSelectedAccount()Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    .line 195
    .local v0, "acc":Lcom/csipsimple/api/SipProfile;
    if-eqz v0, :cond_4

    .line 196
    iget-wide v4, v0, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 199
    const-string v4, ".*@.*"

    invoke-static {v4, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sip:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    :goto_1
    new-instance v4, Lcom/csipsimple/widgets/EditSipUri$ToCall;

    invoke-direct {v4, p0, v1, v2}, Lcom/csipsimple/widgets/EditSipUri$ToCall;-><init>(Lcom/csipsimple/widgets/EditSipUri;Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {v0}, Lcom/csipsimple/api/SipProfile;->getDefaultDomain()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sip:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/csipsimple/api/SipProfile;->getDefaultDomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 204
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sip:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 207
    :cond_3
    move-object v2, v3

    goto :goto_1

    .line 210
    :cond_4
    move-object v2, v3

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "ad":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 263
    .local v1, "number":Ljava/lang/String;
    iget-object v3, p0, Lcom/csipsimple/widgets/EditSipUri;->accountChooserButtonText:Lcom/csipsimple/widgets/AccountChooserButton;

    invoke-virtual {v3}, Lcom/csipsimple/widgets/AccountChooserButton;->getSelectedAccount()Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    .line 264
    .local v0, "account":Lcom/csipsimple/api/SipProfile;
    invoke-virtual {p0}, Lcom/csipsimple/widgets/EditSipUri;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, v0, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {v3, v4, v5, v1}, Lcom/csipsimple/models/Filter;->rewritePhoneNumber(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "rewritten":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/csipsimple/widgets/EditSipUri;->setTextValue(Ljava/lang/String;)V

    .line 266
    const-string v3, "EditSipUri"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Clicked contact "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/csipsimple/widgets/EditSipUri;->updateDialTextHelper()V

    .line 227
    return-void
.end method

.method public setShowExternals(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 270
    iget-object v0, p0, Lcom/csipsimple/widgets/EditSipUri;->accountChooserButtonText:Lcom/csipsimple/widgets/AccountChooserButton;

    invoke-virtual {v0, p1}, Lcom/csipsimple/widgets/AccountChooserButton;->setShowExternals(Z)V

    .line 271
    return-void
.end method

.method public setTextValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/csipsimple/widgets/EditSipUri;->clear()V

    .line 248
    iget-object v0, p0, Lcom/csipsimple/widgets/EditSipUri;->dialUser:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 249
    return-void
.end method
