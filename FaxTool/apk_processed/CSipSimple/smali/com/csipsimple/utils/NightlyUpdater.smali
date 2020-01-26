.class public Lcom/csipsimple/utils/NightlyUpdater;
.super Ljava/lang/Object;
.source "NightlyUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;
    }
.end annotation


# static fields
.field private static final BASE_UPDATE_VERSION:Ljava/lang/String; = "http://nightlies.csipsimple.com/"

.field private static final DOWNLOADED_VERSION:Ljava/lang/String; = "dl_version"

.field public static final IGNORE_NIGHTLY_CHECK:Ljava/lang/String; = "nightly_check_ignore"

.field public static final LAST_NIGHTLY_CHECK:Ljava/lang/String; = "nightly_check_date"

.field private static final META_CHANNEL:Ljava/lang/String; = "app_channel"

.field private static final META_TYPE:Ljava/lang/String; = "app_type"

.field private static final NIGHTLY_TYPE:Ljava/lang/String; = "nightly"

.field private static final THIS_FILE:Ljava/lang/String; = "NightlyUpdater"


# instance fields
.field private channel:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private pinfo:Landroid/content/pm/PackageInfo;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/utils/NightlyUpdater;->prefs:Landroid/content/SharedPreferences;

    .line 69
    iput-object p1, p0, Lcom/csipsimple/utils/NightlyUpdater;->context:Landroid/content/Context;

    .line 70
    iget-object v0, p0, Lcom/csipsimple/utils/NightlyUpdater;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getCurrentPackageInfos(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/utils/NightlyUpdater;->pinfo:Landroid/content/pm/PackageInfo;

    .line 71
    iget-object v0, p0, Lcom/csipsimple/utils/NightlyUpdater;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/csipsimple/utils/NightlyUpdater;->getChannelFolder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/utils/NightlyUpdater;->channel:Ljava/lang/String;

    .line 72
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/utils/NightlyUpdater;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/csipsimple/utils/NightlyUpdater;->channel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/csipsimple/utils/NightlyUpdater;)Ljava/io/File;
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/csipsimple/utils/NightlyUpdater;->getCachedFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/csipsimple/utils/NightlyUpdater;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/csipsimple/utils/NightlyUpdater;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private static getApplicationMetaData(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 4
    .param p0, "ctxt"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 85
    .local v0, "apInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    return-object v1
.end method

.method private getCachedFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 175
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/csipsimple/utils/NightlyUpdater;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "CSipSimple-latest-trunk.apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getChannelFolder(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 107
    :try_start_0
    invoke-static {p0}, Lcom/csipsimple/utils/NightlyUpdater;->getApplicationMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    .line 108
    .local v2, "metaData":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 109
    const-string v3, "app_channel"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "appChannel":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 117
    .end local v0    # "appChannel":Ljava/lang/String;
    .end local v2    # "metaData":Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "NightlyUpdater"

    const-string v4, "Not able to get self app info"

    invoke-static {v3, v4, v1}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v0, "trunk"

    goto :goto_0
.end method

.method private getLastOnlineVersion()I
    .locals 8

    .prologue
    .line 123
    :try_start_0
    new-instance v3, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://nightlies.csipsimple.com/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/csipsimple/utils/NightlyUpdater;->channel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/CSipSimple-latest-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/csipsimple/utils/NightlyUpdater;->channel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".version"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 124
    .local v3, "url":Ljava/net/URL;
    const-string v5, "NightlyUpdater"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Url : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v3}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 126
    .local v0, "content":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 127
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 128
    .local v2, "r":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "versionString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    .line 138
    .end local v0    # "content":Ljava/io/InputStream;
    .end local v2    # "r":Ljava/io/BufferedReader;
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "versionString":Ljava/lang/String;
    :goto_0
    return v5

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/net/MalformedURLException;
    const-string v5, "NightlyUpdater"

    const-string v6, "Invalid nightly build url"

    invoke-static {v5, v6, v1}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_0
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 133
    :catch_1
    move-exception v1

    .line 134
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "NightlyUpdater"

    const-string v6, "Can\'t get nightly latest value"

    invoke-static {v5, v6, v1}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 135
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v5, "NightlyUpdater"

    const-string v6, "Invalid number format"

    invoke-static {v5, v6, v1}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static isNightlyBuild(Landroid/content/Context;)Z
    .locals 5
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 90
    :try_start_0
    invoke-static {p0}, Lcom/csipsimple/utils/NightlyUpdater;->getApplicationMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    .line 91
    .local v2, "metaData":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 92
    const-string v3, "app_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "appType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    const-string v3, "nightly"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    const/4 v3, 0x1

    .line 102
    .end local v0    # "appType":Ljava/lang/String;
    .end local v2    # "metaData":Landroid/os/Bundle;
    :goto_0
    return v3

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "NightlyUpdater"

    const-string v4, "Not able to get self app info"

    invoke-static {v3, v4, v1}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyUpdate(Landroid/content/Intent;)V
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/csipsimple/utils/NightlyUpdater;->getCachedFile()Ljava/io/File;

    move-result-object v0

    .line 245
    .local v0, "f":Ljava/io/File;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 248
    iget-object v2, p0, Lcom/csipsimple/utils/NightlyUpdater;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 249
    return-void
.end method

.method public getUpdaterPopup(Z)Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;
    .locals 8
    .param p1, "fallbackAlert"    # Z

    .prologue
    const/4 v7, 0x0

    .line 150
    const/4 v3, 0x0

    .line 151
    .local v3, "popLauncher":Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;
    iget-object v4, p0, Lcom/csipsimple/utils/NightlyUpdater;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 152
    .local v1, "edt":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0}, Lcom/csipsimple/utils/NightlyUpdater;->getLastOnlineVersion()I

    move-result v2

    .line 154
    .local v2, "onlineVersion":I
    const-string v4, "nightly_check_ignore"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 155
    iget-object v4, p0, Lcom/csipsimple/utils/NightlyUpdater;->pinfo:Landroid/content/pm/PackageInfo;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/csipsimple/utils/NightlyUpdater;->pinfo:Landroid/content/pm/PackageInfo;

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v4, v2, :cond_1

    .line 156
    new-instance v3, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;

    .end local v3    # "popLauncher":Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;
    iget-object v4, p0, Lcom/csipsimple/utils/NightlyUpdater;->context:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v2}, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;-><init>(Lcom/csipsimple/utils/NightlyUpdater;Landroid/content/Context;I)V

    .line 169
    .restart local v3    # "popLauncher":Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 171
    return-object v3

    .line 159
    :cond_1
    const-string v4, "nightly_check_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v1, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 161
    invoke-direct {p0}, Lcom/csipsimple/utils/NightlyUpdater;->getCachedFile()Ljava/io/File;

    move-result-object v0

    .line 162
    .local v0, "cachedFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 165
    :cond_2
    if-eqz p1, :cond_0

    .line 166
    new-instance v3, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;

    .end local v3    # "popLauncher":Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;
    iget-object v4, p0, Lcom/csipsimple/utils/NightlyUpdater;->context:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v7}, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;-><init>(Lcom/csipsimple/utils/NightlyUpdater;Landroid/content/Context;I)V

    .restart local v3    # "popLauncher":Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;
    goto :goto_0
.end method

.method public ignoreCheckByUser()Z
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/csipsimple/utils/NightlyUpdater;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "nightly_check_ignore"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public lastCheck()J
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/csipsimple/utils/NightlyUpdater;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "nightly_check_date"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
