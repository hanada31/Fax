.class public Lcom/csipsimple/wizards/impl/Mobile4U;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "Mobile4U.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const v1, 0x7f0b0253

    .line 51
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 53
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Mobile4U;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 54
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Mobile4U;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 55
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Mobile4U;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 57
    return-void
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 61
    sget-object v0, Lcom/csipsimple/wizards/impl/Mobile4U;->USER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Mobile4U;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f0b0254

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultFilters(Lcom/csipsimple/api/SipProfile;)Ljava/util/List;
    .locals 6
    .param p1, "acc"    # Lcom/csipsimple/api/SipProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/csipsimple/api/SipProfile;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/csipsimple/models/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v1, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/models/Filter;>;"
    new-instance v0, Lcom/csipsimple/models/Filter;

    invoke-direct {v0}, Lcom/csipsimple/models/Filter;-><init>()V

    .line 79
    .local v0, "f":Lcom/csipsimple/models/Filter;
    iget-wide v2, p1, Lcom/csipsimple/api/SipProfile;->id:J

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/csipsimple/models/Filter;->account:Ljava/lang/Integer;

    .line 80
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/csipsimple/models/Filter;->action:Ljava/lang/Integer;

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "^"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(.*)$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    .line 82
    const-string v2, "00$1"

    iput-object v2, v0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    .line 83
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/csipsimple/models/Filter;->matchType:Ljava/lang/Integer;

    .line 84
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v0, Lcom/csipsimple/models/Filter;

    .end local v0    # "f":Lcom/csipsimple/models/Filter;
    invoke-direct {v0}, Lcom/csipsimple/models/Filter;-><init>()V

    .line 88
    .restart local v0    # "f":Lcom/csipsimple/models/Filter;
    iget-wide v2, p1, Lcom/csipsimple/api/SipProfile;->id:J

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/csipsimple/models/Filter;->account:Ljava/lang/Integer;

    .line 89
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/csipsimple/models/Filter;->action:Ljava/lang/Integer;

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "^"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "06"

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(.*)$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    .line 91
    const-string v2, "0036$1"

    iput-object v2, v0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    .line 92
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/csipsimple/models/Filter;->matchType:Ljava/lang/Integer;

    .line 93
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    return-object v1
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "Mobile4U"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "sip.mobile4u.hu"

    return-object v0
.end method
