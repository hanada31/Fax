.class public final Lcom/csipsimple/utils/PhoneCapabilityTester;
.super Ljava/lang/Object;
.source "PhoneCapabilityTester.java"


# static fields
.field private static callIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultCallIntent:Landroid/content/pm/ResolveInfo;

.field private static sIsInitialized:Z

.field private static sIsPhone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 127
    sput-object v0, Lcom/csipsimple/utils/PhoneCapabilityTester;->callIntents:Ljava/util/List;

    .line 128
    sput-object v0, Lcom/csipsimple/utils/PhoneCapabilityTester;->defaultCallIntent:Landroid/content/pm/ResolveInfo;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deinit()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    sput-boolean v0, Lcom/csipsimple/utils/PhoneCapabilityTester;->sIsInitialized:Z

    .line 106
    return-void
.end method

.method public static getPossibleActivities(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "i"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 72
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const v2, 0x10040

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 75
    :goto_0
    return-object v2

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public static getPriviledgedIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 120
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "i":Landroid/content/Intent;
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 122
    .local v0, "b":Landroid/net/Uri$Builder;
    const-string v2, "tel"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 123
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 124
    return-object v1
.end method

.method private static initialize(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 92
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 94
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    sput-boolean v3, Lcom/csipsimple/utils/PhoneCapabilityTester;->sIsPhone:Z

    .line 96
    const-string v3, "123"

    invoke-static {v3}, Lcom/csipsimple/utils/PhoneCapabilityTester;->getPriviledgedIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 97
    .local v0, "pIntent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/csipsimple/utils/PhoneCapabilityTester;->getPossibleActivities(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/csipsimple/utils/PhoneCapabilityTester;->callIntents:Ljava/util/List;

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 99
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/high16 v3, 0x10000

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    sput-object v3, Lcom/csipsimple/utils/PhoneCapabilityTester;->defaultCallIntent:Landroid/content/pm/ResolveInfo;

    .line 101
    sput-boolean v4, Lcom/csipsimple/utils/PhoneCapabilityTester;->sIsInitialized:Z

    .line 102
    return-void

    .line 94
    .end local v0    # "pIntent":Landroid/content/Intent;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 59
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x10000

    .line 58
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 60
    .local v1, "receiverList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    sget-boolean v0, Lcom/csipsimple/utils/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    .line 85
    invoke-static {p0}, Lcom/csipsimple/utils/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 88
    :cond_0
    sget-boolean v0, Lcom/csipsimple/utils/PhoneCapabilityTester;->sIsPhone:Z

    return v0
.end method

.method public static isSmsIntentRegistered(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    .line 155
    const-string v2, "smsto"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 154
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 156
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/csipsimple/utils/PhoneCapabilityTester;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public static isUsingTwoPanes(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static final resolveActivitiesForPriviledgedCall(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "ctxt"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    sget-boolean v0, Lcom/csipsimple/utils/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    .line 137
    invoke-static {p0}, Lcom/csipsimple/utils/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 139
    :cond_0
    sget-object v0, Lcom/csipsimple/utils/PhoneCapabilityTester;->callIntents:Ljava/util/List;

    return-object v0
.end method

.method public static final resolveActivityForPriviledgedCall(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 143
    sget-boolean v0, Lcom/csipsimple/utils/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    .line 144
    invoke-static {p0}, Lcom/csipsimple/utils/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 146
    :cond_0
    sget-object v0, Lcom/csipsimple/utils/PhoneCapabilityTester;->defaultCallIntent:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method
