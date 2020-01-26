.class public final Lcom/csipsimple/utils/Compatibility;
.super Ljava/lang/Object;
.source "Compatibility.java"


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "Compat"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static canMakeGSMCall(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 516
    new-instance v0, Lcom/csipsimple/utils/PreferencesWrapper;

    invoke-direct {v0, p0}, Lcom/csipsimple/utils/PreferencesWrapper;-><init>(Landroid/content/Context;)V

    .line 517
    .local v0, "prefs":Lcom/csipsimple/utils/PreferencesWrapper;
    invoke-virtual {v0}, Lcom/csipsimple/utils/PreferencesWrapper;->getGsmIntegrationType()I

    move-result v1

    if-nez v1, :cond_0

    .line 518
    invoke-static {p0}, Lcom/csipsimple/utils/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v1

    .line 523
    :goto_0
    return v1

    .line 520
    :cond_0
    invoke-virtual {v0}, Lcom/csipsimple/utils/PreferencesWrapper;->getGsmIntegrationType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 521
    const/4 v1, 0x0

    goto :goto_0

    .line 523
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getApiLevel()I
    .locals 1

    .prologue
    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getContactPhoneIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 528
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    const-string v1, "content://com.android.contacts/contacts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 541
    :goto_0
    return-object v0

    .line 538
    :cond_0
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getCpuAbi()Ljava/lang/String;
    .locals 4

    .prologue
    .line 207
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    :try_start_0
    const-class v2, Landroid/os/Build;

    const-string v3, "CPU_ABI"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 211
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v2

    .line 212
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 213
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "Compat"

    const-string v3, "Announce to be android 1.6 but no CPU ABI field"

    invoke-static {v2, v3, v0}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    :cond_0
    const-string v2, "armeabi"

    goto :goto_0
.end method

.method private static getDefaultAudioImplementation()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 344
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "picasso"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    :cond_0
    :goto_0
    return v0

    .line 348
    :cond_1
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getDefaultFrequency()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "olympus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "32000"

    .line 203
    :goto_0
    return-object v0

    .line 198
    :cond_0
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GT-P1010"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    const-string v0, "32000"

    goto :goto_0

    .line 203
    :cond_1
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "16000"

    goto :goto_0

    :cond_2
    const-string v0, "8000"

    goto :goto_0
.end method

.method public static getDefaultMicroSource()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    .line 171
    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 190
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getHomeMenuId()I
    .locals 1

    .prologue
    .line 822
    const v0, 0x102002c

    return v0
.end method

.method public static getInCallStream()I
    .locals 2

    .prologue
    .line 66
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "archos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "g7a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x3

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static guessInCallMode()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 146
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    .line 150
    :cond_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "sdg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    :cond_1
    const-string v0, "3"

    goto :goto_0

    .line 154
    :cond_2
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "blade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_3
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 159
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isCompatible(I)Z
    .locals 1
    .param p0, "apiLevel"    # I

    .prologue
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInstalledOnSdCard(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v8, 0x40000

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 829
    const/16 v6, 0x8

    invoke-static {v6}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 830
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 832
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 833
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 834
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_1

    .line 852
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v4

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    move v4, v5

    .line 834
    goto :goto_0

    .line 835
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    .line 842
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 843
    .local v1, "filesDir":Ljava/lang/String;
    const-string v6, "/data/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    .line 844
    goto :goto_0

    .line 845
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-nez v6, :cond_0

    .end local v1    # "filesDir":Ljava/lang/String;
    :goto_1
    move v4, v5

    .line 852
    goto :goto_0

    .line 848
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static isTabletScreen(Landroid/content/Context;)Z
    .locals 10
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x4

    const/4 v7, 0x0

    .line 798
    const/4 v3, 0x0

    .line 799
    .local v3, "isTablet":Z
    invoke-static {v9}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v7

    .line 818
    :goto_0
    return v6

    .line 802
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 803
    .local v0, "cfg":Landroid/content/res/Configuration;
    const/4 v5, 0x0

    .line 805
    .local v5, "screenLayoutVal":I
    :try_start_0
    const-class v6, Landroid/content/res/Configuration;

    const-string v8, "screenLayout"

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 806
    .local v2, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 810
    and-int/lit8 v4, v5, 0xf

    .line 812
    .local v4, "screenLayout":I
    const/4 v6, 0x3

    if-eq v4, v6, :cond_1

    if-ne v4, v9, :cond_2

    .line 815
    :cond_1
    const/4 v3, 0x1

    :cond_2
    move v6, v3

    .line 818
    goto :goto_0

    .line 807
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "screenLayout":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v6, v7

    .line 808
    goto :goto_0
.end method

.method private static needPspWorkaround()Z
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 222
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "vivo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v0

    .line 228
    :cond_1
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 229
    goto :goto_0

    .line 233
    :cond_2
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "htc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 234
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "htc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 235
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "inc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 239
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "passion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 240
    :cond_3
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "hero"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 241
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "magic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 247
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "tatoo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 248
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "dream"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 254
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "legend"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v0, v1

    .line 257
    goto :goto_0

    .line 262
    :cond_5
    invoke-static {v4}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "passion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 267
    goto/16 :goto_0

    .line 274
    :cond_6
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dell"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 275
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "streak"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 279
    :cond_7
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "milestone2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 280
    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sholes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 281
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sholes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 282
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "olympus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 283
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "umts_jordan"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    invoke-static {v4}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    :cond_9
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "one_touch_990"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 292
    goto/16 :goto_0
.end method

.method private static needSGSWorkaround()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 305
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v0

    .line 308
    :cond_1
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GT-I9000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 309
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GT-P1000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static needToneWorkaround()Z
    .locals 2

    .prologue
    .line 296
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gt-i5800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gt-i5801"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gt-i9003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    :cond_0
    const/4 v0, 0x1

    .line 301
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static needWebRTCImplementation()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 316
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "droid2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    :cond_0
    :goto_0
    return v0

    .line 319
    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "droid bionic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sunfire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static resetCodecsSettings(Lcom/csipsimple/utils/PreferencesWrapper;)V
    .locals 5
    .param p0, "preferencesWrapper"    # Lcom/csipsimple/utils/PreferencesWrapper;

    .prologue
    .line 355
    const/4 v1, 0x0

    .line 356
    .local v1, "supportFloating":Z
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getCpuAbi()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "abi":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 358
    const-string v2, "mips"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "x86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    :cond_0
    const/4 v1, 0x1

    .line 364
    :cond_1
    const-string v2, "PCMU/8000/1"

    const-string v3, "nb"

    const-string v4, "60"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v2, "PCMA/8000/1"

    const-string v3, "nb"

    const-string v4, "50"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v2, "speex/8000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v2, "speex/16000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v2, "speex/32000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v2, "GSM/8000/1"

    const-string v3, "nb"

    const-string v4, "230"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v2, "G722/16000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v2, "G729/8000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v2, "iLBC/8000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v2, "SILK/8000/1"

    const-string v3, "nb"

    const-string v4, "239"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v2, "SILK/12000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v2, "SILK/16000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v2, "SILK/24000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v2, "CODEC2/8000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v2, "G7221/16000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v2, "G7221/32000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v2, "ISAC/16000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v2, "ISAC/32000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v2, "AMR/8000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v2, "opus/48000/1"

    const-string v3, "nb"

    const-string v4, "240"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v2, "G726-16/8000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v2, "G726-24/8000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v2, "G726-32/8000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v2, "G726-40/8000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v2, "PCMU/8000/1"

    const-string v3, "wb"

    const-string v4, "60"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v2, "PCMA/8000/1"

    const-string v3, "wb"

    const-string v4, "50"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v2, "speex/8000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v2, "speex/16000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v2, "speex/32000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v2, "GSM/8000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v3, "G722/16000/1"

    const-string v4, "wb"

    .line 397
    if-eqz v1, :cond_2

    const-string v2, "235"

    .line 396
    :goto_0
    invoke-virtual {p0, v3, v4, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v2, "G729/8000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v2, "iLBC/8000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v2, "SILK/8000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v2, "SILK/12000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v2, "SILK/16000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v2, "SILK/24000/1"

    const-string v3, "wb"

    const-string v4, "220"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v2, "CODEC2/8000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v2, "G7221/16000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v2, "G7221/32000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v2, "ISAC/16000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v2, "ISAC/32000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v2, "AMR/8000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v2, "opus/48000/1"

    const-string v3, "wb"

    const-string v4, "240"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v2, "G726-16/8000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v2, "G726-24/8000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v2, "G726-32/8000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v2, "G726-40/8000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v2, "band_for_wifi"

    const-string v3, "wb"

    invoke-virtual {p0, v2, v3}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v2, "band_for_other"

    const-string v3, "wb"

    invoke-virtual {p0, v2, v3}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v2, "band_for_3g"

    const-string v3, "nb"

    invoke-virtual {p0, v2, v3}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v2, "band_for_gprs"

    const-string v3, "nb"

    invoke-virtual {p0, v2, v3}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v2, "band_for_edge"

    const-string v3, "nb"

    invoke-virtual {p0, v2, v3}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    return-void

    .line 397
    :cond_2
    const-string v2, "0"

    goto/16 :goto_0
.end method

.method public static setFirstRunParameters(Lcom/csipsimple/utils/PreferencesWrapper;)V
    .locals 7
    .param p0, "preferencesWrapper"    # Lcom/csipsimple/utils/PreferencesWrapper;

    .prologue
    const/16 v6, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 426
    invoke-virtual {p0}, Lcom/csipsimple/utils/PreferencesWrapper;->startEditing()V

    .line 427
    invoke-static {p0}, Lcom/csipsimple/utils/Compatibility;->resetCodecsSettings(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 429
    const-string v4, "snd_media_quality"

    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getCpuAbi()Ljava/lang/String;

    move-result-object v1

    .line 430
    const-string v5, "armeabi-v7a"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "4"

    .line 429
    :goto_0
    invoke-virtual {p0, v4, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v4, "snd_auto_close_time"

    .line 432
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "1"

    .line 431
    :goto_1
    invoke-virtual {p0, v4, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v1, "snd_clock_rate"

    .line 434
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getDefaultFrequency()Ljava/lang/String;

    move-result-object v4

    .line 433
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v1, "keep_awake_incall"

    .line 437
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->needPspWorkaround()Z

    move-result v4

    .line 436
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 440
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "SPH-M900"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    const-string v1, "invert_proximity_sensor"

    invoke-virtual {p0, v1, v3}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 446
    :cond_0
    const-string v4, "prevent_screen_rotation"

    .line 447
    invoke-virtual {p0}, Lcom/csipsimple/utils/PreferencesWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/csipsimple/utils/Compatibility;->isTabletScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    .line 446
    :goto_2
    invoke-virtual {p0, v4, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 450
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "GT-I9000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v6}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 451
    const-string v1, "snd_mic_level"

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 452
    const-string v1, "snd_speaker_level"

    .line 453
    const v4, 0x3e4ccccd    # 0.2f

    .line 452
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 454
    const-string v1, "use_soft_volume"

    invoke-virtual {p0, v1, v3}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 457
    :cond_1
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "htc_supersonic"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v6}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 458
    const-string v1, "snd_mic_level"

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 459
    const-string v1, "snd_speaker_level"

    .line 460
    const/high16 v4, 0x3fc00000    # 1.5f

    .line 459
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 465
    :cond_2
    const-string v1, "use_routing_api"

    .line 466
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->shouldUseRoutingApi()Z

    move-result v4

    .line 465
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 467
    const-string v1, "use_mode_api"

    .line 468
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->shouldUseModeApi()Z

    move-result v4

    .line 467
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 469
    const-string v1, "set_audio_generate_tone"

    .line 470
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->needToneWorkaround()Z

    move-result v4

    .line 469
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 471
    const-string v1, "use_sgs_call_hack"

    .line 472
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->needSGSWorkaround()Z

    move-result v4

    .line 471
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 473
    const-string v1, "sip_audio_mode"

    .line 474
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->guessInCallMode()Ljava/lang/String;

    move-result-object v4

    .line 473
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v1, "micro_source"

    .line 476
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getDefaultMicroSource()Ljava/lang/String;

    move-result-object v4

    .line 475
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v1, "use_webrtc_hack"

    .line 478
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->needWebRTCImplementation()Z

    move-result v4

    .line 477
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 479
    const-string v1, "do_focus_audio"

    .line 480
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->shouldFocusAudio()Z

    move-result v4

    .line 479
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 482
    const-string v1, "use_alternate_unlocker"

    .line 483
    invoke-virtual {p0}, Lcom/csipsimple/utils/PreferencesWrapper;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/csipsimple/utils/Compatibility;->isTabletScreen(Landroid/content/Context;)Z

    move-result v4

    .line 482
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 485
    invoke-virtual {p0}, Lcom/csipsimple/utils/PreferencesWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/csipsimple/utils/Compatibility;->shouldUsePriviledgedIntegration(Landroid/content/Context;)Z

    move-result v0

    .line 486
    .local v0, "usePriviledged":Z
    const-string v1, "integrate_tel_privileged"

    invoke-virtual {p0, v1, v0}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 487
    if-eqz v0, :cond_4

    .line 488
    const-string v1, "integrate_with_native_dialer"

    if-eqz v0, :cond_3

    move v3, v2

    :cond_3
    invoke-virtual {p0, v1, v3}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 491
    :cond_4
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "GoGear_Connect"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 492
    const-string v1, "integrate_with_native_calllogs"

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 495
    :cond_5
    const-string v1, "audio_implementation"

    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getDefaultAudioImplementation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lcom/csipsimple/utils/PreferencesWrapper;->endEditing()V

    .line 498
    return-void

    .line 430
    .end local v0    # "usePriviledged":Z
    :cond_6
    const-string v1, "3"

    goto/16 :goto_0

    .line 432
    :cond_7
    const-string v1, "5"

    goto/16 :goto_1

    :cond_8
    move v1, v3

    .line 447
    goto/16 :goto_2
.end method

.method private static shouldFocusAudio()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 331
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "endeavoru"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "evita"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return v0

    .line 336
    :cond_1
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GT-P7510"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 339
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static shouldUseModeApi()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 106
    const-string v1, "Compat"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Current device "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 107
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "blade"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "joe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "GT-I5500"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GT-S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "htc_supersonic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "thunder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "U8150"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "U8110"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "U8120"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "U8100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "U8655"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static shouldUsePriviledgedIntegration(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 546
    invoke-static {p0}, Lcom/csipsimple/utils/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static shouldUseRoutingApi()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 79
    const-string v1, "Compat"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Current device "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 80
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "htc_supersonic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "joe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GT-S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateApiVersion(Lcom/csipsimple/utils/PreferencesWrapper;II)V
    .locals 3
    .param p0, "prefWrapper"    # Lcom/csipsimple/utils/PreferencesWrapper;
    .param p1, "lastSeenVersion"    # I
    .param p2, "runningVersion"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 767
    invoke-virtual {p0}, Lcom/csipsimple/utils/PreferencesWrapper;->startEditing()V

    .line 772
    const-string v0, "use_routing_api"

    .line 773
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->shouldUseRoutingApi()Z

    move-result v1

    .line 772
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 774
    const-string v0, "use_mode_api"

    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->shouldUseModeApi()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 775
    const-string v0, "set_audio_generate_tone"

    .line 776
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->needToneWorkaround()Z

    move-result v1

    .line 775
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 777
    const-string v0, "use_sgs_call_hack"

    .line 778
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->needSGSWorkaround()Z

    move-result v1

    .line 777
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 779
    const-string v0, "sip_audio_mode"

    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->guessInCallMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const-string v0, "micro_source"

    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getDefaultMicroSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    const-string v0, "snd_mic_level"

    invoke-virtual {p0, v0, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 784
    const-string v0, "snd_speaker_level"

    invoke-virtual {p0, v0, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 785
    const-string v0, "use_soft_volume"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 788
    :cond_0
    const-string v0, "keep_awake_incall"

    .line 789
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->needPspWorkaround()Z

    move-result v1

    .line 788
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 790
    const-string v0, "do_focus_audio"

    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->shouldFocusAudio()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 794
    invoke-virtual {p0}, Lcom/csipsimple/utils/PreferencesWrapper;->endEditing()V

    .line 795
    return-void
.end method

.method public static updateVersion(Lcom/csipsimple/utils/PreferencesWrapper;II)V
    .locals 6
    .param p0, "prefWrapper"    # Lcom/csipsimple/utils/PreferencesWrapper;
    .param p1, "lastSeenVersion"    # I
    .param p2, "runningVersion"    # I

    .prologue
    const/16 v5, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 552
    invoke-virtual {p0}, Lcom/csipsimple/utils/PreferencesWrapper;->startEditing()V

    .line 553
    const/16 v1, 0xe

    if-ge p1, v1, :cond_1

    .line 556
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "GT-I9000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v5}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 557
    const-string v1, "snd_mic_level"

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 559
    const-string v1, "snd_speaker_level"

    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 563
    :cond_0
    const-string v1, "stun_server"

    invoke-virtual {p0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 562
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 564
    const-string v1, "stun_server"

    .line 565
    const-string v4, "stun.counterpath.com"

    .line 564
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :cond_1
    const/16 v1, 0xf

    if-ge p1, v1, :cond_2

    .line 569
    const-string v1, "enable_stun"

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 572
    :cond_2
    const/16 v1, 0x171

    if-ge p1, v1, :cond_3

    .line 574
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "GT-I9000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v5}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 575
    const-string v1, "use_soft_volume"

    invoke-virtual {p0, v1, v3}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 580
    :cond_3
    const/16 v1, 0x181

    if-ge p1, v1, :cond_4

    .line 581
    const-string v1, "use_routing_api"

    .line 582
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->shouldUseRoutingApi()Z

    move-result v4

    .line 581
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 584
    const-string v1, "use_mode_api"

    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->shouldUseModeApi()Z

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 586
    const-string v1, "sip_audio_mode"

    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->guessInCallMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :cond_4
    const/16 v1, 0x23f

    if-ge p1, v1, :cond_7

    .line 589
    const-string v1, "set_audio_generate_tone"

    .line 590
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->needToneWorkaround()Z

    move-result v4

    .line 589
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 592
    if-lez p1, :cond_5

    .line 593
    const-string v1, "has_already_setup_service"

    invoke-virtual {p0, v1, v3}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 596
    :cond_5
    const-string v1, "enable_qos"

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 598
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "htc_supersonic"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 599
    const-string v1, "snd_mic_level"

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 601
    const-string v1, "snd_speaker_level"

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 602
    const-string v1, "use_routing_api"

    invoke-virtual {p0, v1, v3}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 605
    :cond_6
    const-string v1, "keep_awake_incall"

    .line 606
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->needPspWorkaround()Z

    move-result v4

    .line 605
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 608
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "SPH-M900"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 612
    const-string v1, "invert_proximity_sensor"

    invoke-virtual {p0, v1, v3}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 616
    :cond_7
    const/16 v1, 0x24f

    if-ge p1, v1, :cond_8

    .line 617
    invoke-static {p0}, Lcom/csipsimple/utils/Compatibility;->resetCodecsSettings(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 619
    :cond_8
    const/16 v1, 0x254

    if-ge p1, v1, :cond_9

    .line 621
    const-string v1, "use_mode_api"

    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->shouldUseModeApi()Z

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 623
    :cond_9
    const/16 v1, 0x265

    if-ge p1, v1, :cond_a

    .line 624
    invoke-static {p0}, Lcom/csipsimple/utils/Compatibility;->resetCodecsSettings(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 626
    :cond_a
    const/16 v1, 0x2c0

    if-ge p1, v1, :cond_b

    .line 627
    const-string v1, "use_sgs_call_hack"

    .line 628
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->needSGSWorkaround()Z

    move-result v4

    .line 627
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 630
    :cond_b
    const/16 v1, 0x31a

    if-ge p1, v1, :cond_c

    .line 631
    const-string v1, "micro_source"

    .line 632
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getDefaultMicroSource()Ljava/lang/String;

    move-result-object v4

    .line 631
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v1, "snd_clock_rate"

    .line 634
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getDefaultFrequency()Ljava/lang/String;

    move-result-object v4

    .line 633
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v1, "keep_awake_incall"

    .line 636
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->needPspWorkaround()Z

    move-result v4

    .line 635
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 638
    :cond_c
    const/16 v1, 0x32e

    if-ge p1, v1, :cond_d

    .line 641
    const-string v1, "network_tcp_transport_port"

    const-string v4, "0"

    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v1, "network_udp_transport_port"

    const-string v4, "0"

    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v1, "network_tls_transport_port"

    const-string v4, "0"

    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :cond_d
    const/16 v1, 0x372

    if-ge p1, v1, :cond_e

    .line 647
    const-string v1, "G7221/16000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v1, v4, v5}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v1, "G7221/32000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v1, v4, v5}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :cond_e
    const/16 v1, 0x38a

    if-ge p1, v1, :cond_f

    .line 651
    const-string v4, "prevent_screen_rotation"

    .line 652
    invoke-virtual {p0}, Lcom/csipsimple/utils/PreferencesWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/csipsimple/utils/Compatibility;->isTabletScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_25

    move v1, v2

    .line 651
    :goto_0
    invoke-virtual {p0, v4, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 654
    :cond_f
    const/16 v1, 0x38f

    if-ge p1, v1, :cond_10

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "GT-I9100"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 655
    const-string v1, "micro_source"

    .line 656
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getDefaultMicroSource()Ljava/lang/String;

    move-result-object v4

    .line 655
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v1, "sip_audio_mode"

    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->guessInCallMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    :cond_10
    const/16 v1, 0x393

    if-ge p1, v1, :cond_11

    .line 662
    const-string v1, "keep_awake_incall"

    .line 663
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->needPspWorkaround()Z

    move-result v4

    .line 662
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 665
    :cond_11
    const/16 v1, 0x3ab

    if-ge p1, v1, :cond_12

    .line 666
    const-string v1, "do_focus_audio"

    invoke-virtual {p0, v1, v3}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 668
    :cond_12
    const/16 v1, 0x3bb

    if-ge p1, v1, :cond_13

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "droid2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 669
    const-string v1, "use_webrtc_hack"

    invoke-virtual {p0, v1, v3}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 671
    :cond_13
    const/16 v1, 0x3e5

    if-ge p1, v1, :cond_14

    .line 673
    const-string v1, "echo_cancellation"

    invoke-virtual {p0, v1, v3}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 674
    const-string v1, "echo_mode"

    const-string v4, "3"

    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string v1, "ISAC/16000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v1, v4, v5}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string v1, "ISAC/32000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v1, v4, v5}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const-string v1, "ISAC/16000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v1, v4, v5}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v1, "ISAC/32000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v1, v4, v5}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string v1, "AMR/8000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v1, v4, v5}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v1, "AMR/8000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v1, v4, v5}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string v1, "G7221/16000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v1, v4, v5}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v1, "G7221/32000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v1, v4, v5}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_14
    const/16 v1, 0x3ee

    if-ge p1, v1, :cond_15

    .line 691
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "U8100"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 692
    const-string v1, "use_mode_api"

    .line 693
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->shouldUseModeApi()Z

    move-result v4

    .line 692
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 696
    :cond_15
    const/16 v1, 0x409

    if-ge p1, v1, :cond_16

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "thunder"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 698
    const-string v1, "use_mode_api"

    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->shouldUseModeApi()Z

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 700
    :cond_16
    const/16 v1, 0x434

    if-ge p1, v1, :cond_17

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "GT-P1010"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 701
    const-string v1, "snd_clock_rate"

    .line 702
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getDefaultFrequency()Ljava/lang/String;

    move-result-object v4

    .line 701
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :cond_17
    const/16 v1, 0x455

    if-ge p1, v1, :cond_18

    .line 705
    const-string v1, "timer_min_se"

    const-string v4, "90"

    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v1, "timer_sess_expires"

    const-string v4, "1800"

    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-static {p0}, Lcom/csipsimple/utils/Compatibility;->resetCodecsSettings(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 709
    :cond_18
    const/16 v1, 0x476

    if-ge p1, v1, :cond_19

    .line 710
    const-string v1, "use_alternate_unlocker"

    .line 711
    invoke-virtual {p0}, Lcom/csipsimple/utils/PreferencesWrapper;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/csipsimple/utils/Compatibility;->isTabletScreen(Landroid/content/Context;)Z

    move-result v4

    .line 710
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 713
    :cond_19
    const/16 v1, 0x5eb

    if-ge p1, v1, :cond_1a

    .line 714
    const-string v1, "opus/48000/1"

    const-string v4, "wb"

    const-string v5, "240"

    invoke-virtual {p0, v1, v4, v5}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v1, "opus/48000/1"

    const-string v4, "nb"

    const-string v5, "240"

    invoke-virtual {p0, v1, v4, v5}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :cond_1a
    const/16 v1, 0x62d

    if-ge p1, v1, :cond_1b

    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->needWebRTCImplementation()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 718
    const-string v1, "use_webrtc_hack"

    .line 719
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->needWebRTCImplementation()Z

    move-result v4

    .line 718
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 721
    :cond_1b
    const/16 v1, 0x662

    if-ge p1, v1, :cond_1c

    .line 722
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "gt-i9003"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 723
    const-string v1, "set_audio_generate_tone"

    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->needToneWorkaround()Z

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 726
    :cond_1c
    const/16 v1, 0x675

    if-ge p1, v1, :cond_1d

    invoke-virtual {p0}, Lcom/csipsimple/utils/PreferencesWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/csipsimple/utils/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 727
    const-string v1, "integrate_tel_privileged"

    invoke-virtual {p0, v1, v3}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 729
    :cond_1d
    const/16 v1, 0x698

    if-ge p1, v1, :cond_1e

    .line 730
    const-string v1, "thread_count"

    const-string v4, "0"

    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :cond_1e
    const/16 v1, 0x6c1

    if-ge p1, v1, :cond_20

    .line 733
    const-string v1, "audio_implementation"

    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getDefaultAudioImplementation()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "GT-S"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 736
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "U8655"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 737
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "joe"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 738
    :cond_1f
    const-string v1, "use_mode_api"

    .line 739
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->shouldUseModeApi()Z

    move-result v4

    .line 738
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 740
    const-string v1, "use_routing_api"

    .line 741
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->shouldUseRoutingApi()Z

    move-result v4

    .line 740
    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 744
    :cond_20
    const/16 v1, 0x6d8

    if-ge p1, v1, :cond_21

    .line 745
    invoke-virtual {p0}, Lcom/csipsimple/utils/PreferencesWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/csipsimple/utils/Compatibility;->shouldUsePriviledgedIntegration(Landroid/content/Context;)Z

    move-result v0

    .line 746
    .local v0, "usePriv":Z
    if-eqz v0, :cond_21

    .line 747
    const-string v1, "integrate_tel_privileged"

    invoke-virtual {p0, v1, v0}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 748
    const-string v1, "integrate_with_native_dialer"

    if-eqz v0, :cond_26

    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 751
    .end local v0    # "usePriv":Z
    :cond_21
    const/16 v1, 0x6f1

    if-ge p1, v1, :cond_22

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "one_touch_990"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 752
    const-string v1, "keep_awake_incall"

    .line 753
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->needPspWorkaround()Z

    move-result v2

    .line 752
    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 756
    :cond_22
    const/16 v1, 0x706

    if-ge p1, v1, :cond_23

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "picasso"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 757
    const-string v1, "audio_implementation"

    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getDefaultAudioImplementation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    :cond_23
    const/16 v1, 0x72a

    if-ge p1, v1, :cond_24

    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->shouldFocusAudio()Z

    move-result v1

    if-nez v1, :cond_24

    .line 760
    const-string v1, "do_focus_audio"

    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->shouldFocusAudio()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 762
    :cond_24
    invoke-virtual {p0}, Lcom/csipsimple/utils/PreferencesWrapper;->endEditing()V

    .line 763
    return-void

    :cond_25
    move v1, v3

    .line 652
    goto/16 :goto_0

    .restart local v0    # "usePriv":Z
    :cond_26
    move v2, v3

    .line 748
    goto :goto_1
.end method

.method public static useFlipAnimation()Z
    .locals 2

    .prologue
    .line 501
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "archos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "g7a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    const/4 v0, 0x0

    .line 505
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
