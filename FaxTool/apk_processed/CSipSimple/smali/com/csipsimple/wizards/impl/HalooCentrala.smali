.class public Lcom/csipsimple/wizards/impl/HalooCentrala;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "HalooCentrala.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 45
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/HalooCentrala;->accountUsername:Landroid/preference/EditTextPreference;

    const-string v1, "ID klapky"

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/HalooCentrala;->accountUsername:Landroid/preference/EditTextPreference;

    const-string v1, "ID klapky"

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "Ha-loo centrala"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "pbx1.ha-loo.cz"

    return-object v0
.end method
