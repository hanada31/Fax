.class public Lcom/csipsimple/ui/warnings/WarningUtils;
.super Ljava/lang/Object;
.source "WarningUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;,
        Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;
    }
.end annotation


# static fields
.field public static WARNING_3G_TIMEOUT:Ljava/lang/String;

.field public static WARNING_NO_STUN:Ljava/lang/String;

.field public static WARNING_PRIVILEGED_INTENT:Ljava/lang/String;

.field public static WARNING_SDCARD:Ljava/lang/String;

.field public static WARNING_VPN_ICS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "warn_privileged_intent"

    sput-object v0, Lcom/csipsimple/ui/warnings/WarningUtils;->WARNING_PRIVILEGED_INTENT:Ljava/lang/String;

    .line 104
    const-string v0, "warn_no_stun"

    sput-object v0, Lcom/csipsimple/ui/warnings/WarningUtils;->WARNING_NO_STUN:Ljava/lang/String;

    .line 116
    const-string v0, "warn_3g_timeout"

    sput-object v0, Lcom/csipsimple/ui/warnings/WarningUtils;->WARNING_3G_TIMEOUT:Ljava/lang/String;

    .line 119
    const-string v0, "warn_vpn_ics"

    sput-object v0, Lcom/csipsimple/ui/warnings/WarningUtils;->WARNING_VPN_ICS:Ljava/lang/String;

    .line 139
    const-string v0, "warn_sdcard"

    sput-object v0, Lcom/csipsimple/ui/warnings/WarningUtils;->WARNING_SDCARD:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIgnoreKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "warnKey"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ignore_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getViewForWarning(Landroid/content/Context;Ljava/lang/String;)Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;
    .locals 1
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "warning"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v0, Lcom/csipsimple/ui/warnings/WarningUtils;->WARNING_NO_STUN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Lcom/csipsimple/ui/warnings/WarningNoStun;

    invoke-direct {v0, p0}, Lcom/csipsimple/ui/warnings/WarningNoStun;-><init>(Landroid/content/Context;)V

    .line 60
    :goto_0
    return-object v0

    .line 47
    :cond_0
    sget-object v0, Lcom/csipsimple/ui/warnings/WarningUtils;->WARNING_VPN_ICS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    new-instance v0, Lcom/csipsimple/ui/warnings/WarningVpnIcs;

    invoke-direct {v0, p0}, Lcom/csipsimple/ui/warnings/WarningVpnIcs;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 49
    :cond_1
    sget-object v0, Lcom/csipsimple/ui/warnings/WarningUtils;->WARNING_PRIVILEGED_INTENT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    new-instance v0, Lcom/csipsimple/ui/warnings/WarningPrivilegedIntent;

    invoke-direct {v0, p0}, Lcom/csipsimple/ui/warnings/WarningPrivilegedIntent;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 51
    :cond_2
    sget-object v0, Lcom/csipsimple/ui/warnings/WarningUtils;->WARNING_SDCARD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    new-instance v0, Lcom/csipsimple/ui/warnings/WarningSDCard;

    invoke-direct {v0, p0}, Lcom/csipsimple/ui/warnings/WarningSDCard;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 60
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldWarnNoStun(Lcom/csipsimple/utils/PreferencesProviderWrapper;)Z
    .locals 2
    .param p0, "prefProviderWrapper"    # Lcom/csipsimple/utils/PreferencesProviderWrapper;

    .prologue
    const/4 v0, 0x0

    .line 106
    sget-object v1, Lcom/csipsimple/ui/warnings/WarningUtils;->WARNING_NO_STUN:Ljava/lang/String;

    invoke-static {v1}, Lcom/csipsimple/ui/warnings/WarningUtils;->getIgnoreKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    const-string v1, "enable_stun"

    invoke-virtual {p0, v1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    const-string v1, "use_3g_out"

    invoke-virtual {p0, v1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static shouldWarnPrivilegedIntent(Landroid/content/Context;Lcom/csipsimple/utils/PreferencesProviderWrapper;)Z
    .locals 9
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "prefProviderWrapper"    # Lcom/csipsimple/utils/PreferencesProviderWrapper;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    sget-object v6, Lcom/csipsimple/ui/warnings/WarningUtils;->WARNING_PRIVILEGED_INTENT:Ljava/lang/String;

    invoke-static {v6}, Lcom/csipsimple/ui/warnings/WarningUtils;->getIgnoreKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v4}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v4

    .line 69
    :cond_1
    const-string v6, "integrate_tel_privileged"

    invoke-virtual {p1, v6, v4}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 70
    const-string v6, "integrate_with_native_dialer"

    invoke-virtual {p1, v6, v4}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 71
    :cond_2
    invoke-static {p0}, Lcom/csipsimple/utils/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    move v4, v5

    .line 73
    goto :goto_0

    .line 76
    :cond_3
    invoke-static {p0}, Lcom/csipsimple/utils/PhoneCapabilityTester;->resolveActivitiesForPriviledgedCall(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 77
    .local v2, "privilegedActs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v5, :cond_0

    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "hasDefaultAct":Z
    invoke-static {p0}, Lcom/csipsimple/utils/PhoneCapabilityTester;->resolveActivityForPriviledgedCall(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 81
    .local v0, "defaultAct":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_5

    .line 82
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    .line 93
    :cond_5
    :goto_1
    if-nez v1, :cond_0

    move v4, v5

    .line 94
    goto :goto_0

    .line 82
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 83
    .local v3, "res":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_4

    .line 84
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 85
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 86
    const/4 v1, 0x1

    .line 87
    goto :goto_1
.end method

.method public static shouldWarnSDCard(Landroid/content/Context;Lcom/csipsimple/utils/PreferencesProviderWrapper;)Z
    .locals 1
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "prefs"    # Lcom/csipsimple/utils/PreferencesProviderWrapper;

    .prologue
    .line 141
    invoke-static {p0}, Lcom/csipsimple/utils/Compatibility;->isInstalledOnSdCard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    const-string v0, "use_wifi_in"

    invoke-virtual {p1, v0}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const-string v0, "use_3g_in"

    invoke-virtual {p1, v0}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const-string v0, "use_gprs_in"

    invoke-virtual {p1, v0}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    const-string v0, "use_edge_in"

    invoke-virtual {p1, v0}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    const-string v0, "use_anyway_in"

    invoke-virtual {p1, v0}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldWarnVpnIcs(Lcom/csipsimple/utils/PreferencesProviderWrapper;)Z
    .locals 9
    .param p0, "prefs"    # Lcom/csipsimple/utils/PreferencesProviderWrapper;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    sget-object v5, Lcom/csipsimple/ui/warnings/WarningUtils;->WARNING_VPN_ICS:Ljava/lang/String;

    invoke-static {v5}, Lcom/csipsimple/ui/warnings/WarningUtils;->getIgnoreKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v3}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v3

    .line 124
    :cond_1
    const/16 v5, 0xe

    invoke-static {v5}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "network_route_polling"

    invoke-virtual {p0, v5}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 126
    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/String;

    const-string v5, "racoon"

    aput-object v5, v1, v3

    const-string v5, "mtpd"

    aput-object v5, v1, v4

    .line 127
    .local v1, "daemons":[Ljava/lang/String;
    array-length v6, v1

    move v5, v3

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v0, v1, v5

    .line 128
    .local v0, "daemon":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "init.svc."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getSystemProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "state":Ljava/lang/String;
    const-string v7, "running"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v3, v4

    .line 130
    goto :goto_0

    .line 127
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method
