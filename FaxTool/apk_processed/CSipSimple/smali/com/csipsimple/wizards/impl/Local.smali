.class public Lcom/csipsimple/wizards/impl/Local;
.super Lcom/csipsimple/wizards/impl/BaseImplementation;
.source "Local.java"


# static fields
.field private static SUMMARIES:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final THIS_FILE:Ljava/lang/String; = "Local W"


# instance fields
.field private accountDisplayName:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/csipsimple/wizards/impl/Local$1;

    invoke-direct {v0}, Lcom/csipsimple/wizards/impl/Local$1;-><init>()V

    sput-object v0, Lcom/csipsimple/wizards/impl/Local;->SUMMARIES:Ljava/util/HashMap;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/BaseImplementation;-><init>()V

    return-void
.end method

.method private bindFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    const-string v0, "display_name"

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Local;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Local;->accountDisplayName:Landroid/preference/EditTextPreference;

    .line 50
    const-string v0, "caller_id"

    invoke-virtual {p0, v1, v0}, Lcom/csipsimple/wizards/impl/Local;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "server"

    invoke-virtual {p0, v1, v0}, Lcom/csipsimple/wizards/impl/Local;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "auth_id"

    invoke-virtual {p0, v1, v0}, Lcom/csipsimple/wizards/impl/Local;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, "username"

    invoke-virtual {p0, v1, v0}, Lcom/csipsimple/wizards/impl/Local;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "password"

    invoke-virtual {p0, v1, v0}, Lcom/csipsimple/wizards/impl/Local;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "use_tcp"

    invoke-virtual {p0, v1, v0}, Lcom/csipsimple/wizards/impl/Local;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "proxy"

    invoke-virtual {p0, v1, v0}, Lcom/csipsimple/wizards/impl/Local;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 1
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Local;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    .line 105
    const-string v0, ""

    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 106
    const-string v0, ""

    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 107
    return-object p1
.end method

.method public canSave()Z
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x1

    .line 98
    .local v0, "isValid":Z
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Local;->accountDisplayName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Local;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Local;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/Local;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 100
    return v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 3
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/Local;->bindFields()V

    .line 62
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Local;->accountDisplayName:Landroid/preference/EditTextPreference;

    iget-object v2, p1, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Local;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v2, 0x7f060108

    invoke-virtual {v1, v2}, Lcom/csipsimple/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/Local;->getLocalIpAddresses()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 68
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 69
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Local;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v2, 0x7f060107

    invoke-virtual {v1, v2}, Lcom/csipsimple/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 71
    return-void
.end method

.method public getBasePreferenceResource()I
    .locals 1

    .prologue
    .line 112
    const v0, 0x7f05000c

    return v0
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-object v1, Lcom/csipsimple/wizards/impl/Local;->SUMMARIES:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 89
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 90
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Local;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/csipsimple/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getLocalIpAddresses()Ljava/lang/String;
    .locals 8

    .prologue
    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v0, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 131
    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 130
    if-nez v6, :cond_1

    .line 144
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    const-string v6, "\n"

    invoke-static {v6, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 132
    .restart local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 133
    .local v5, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 134
    .local v2, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    .line 133
    if-eqz v6, :cond_0

    .line 135
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 136
    .local v4, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_2

    .line 137
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 141
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v4    # "inetAddress":Ljava/net/InetAddress;
    .end local v5    # "intf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v3

    .line 142
    .local v3, "ex":Ljava/net/SocketException;
    const-string v6, "Local W"

    const-string v7, "Impossible to get ip address"

    invoke-static {v6, v7, v3}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V
    .locals 2
    .param p1, "prefs"    # Lcom/csipsimple/utils/PreferencesWrapper;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/BaseImplementation;->setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 123
    const-string v0, "network_udp_transport_port"

    const-string v1, "5060"

    invoke-virtual {p1, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public updateDescriptions()V
    .locals 1

    .prologue
    .line 74
    const-string v0, "display_name"

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Local;->setStringFieldSummary(Ljava/lang/String;)V

    .line 75
    return-void
.end method
