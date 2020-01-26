.class public final Lcom/csipsimple/utils/CustomDistribution;
.super Ljava/lang/Object;
.source "CustomDistribution.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static distributionWantsOtherAccounts()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public static distributionWantsOtherProviders()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public static forceNoMultipleCalls()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public static getCustomDistributionWizard()Lcom/csipsimple/wizards/WizardUtils$WizardInfo;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFaqLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "http://code.google.com/p/csipsimple/wiki/FAQ?show=content,nav#Summary"

    return-object v0
.end method

.method public static getSupportEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "developers@csipsimple.com"

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "CSipSimple"

    return-object v0
.end method

.method public static showFirstSettingScreen()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public static showIssueList()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public static supportCallRecord()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public static supportMessaging()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method
