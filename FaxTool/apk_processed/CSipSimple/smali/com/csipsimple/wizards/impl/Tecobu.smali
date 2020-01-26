.class public Lcom/csipsimple/wizards/impl/Tecobu;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "Tecobu.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 48
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Tecobu;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 49
    return-void
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "TECOBU"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "80.79.25.249"

    return-object v0
.end method
