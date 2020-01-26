.class public Lcom/csipsimple/pjsip/NativeLibManager;
.super Ljava/lang/Object;
.source "NativeLibManager.java"


# static fields
.field public static final STACK_NAME:Ljava/lang/String; = "pjsipjni"

.field public static final STD_LIB_NAME:Ljava/lang/String; = "stlport_shared"

.field private static final THIS_FILE:Ljava/lang/String; = "NativeLibMgr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBundledStackLibFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "libName"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getCurrentPackageInfos(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 42
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 43
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 44
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x1

    invoke-static {v0, p1, v3}, Lcom/csipsimple/pjsip/NativeLibManager;->getLibFileFromPackage(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 49
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lib"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLibFileFromPackage(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/io/File;
    .locals 6
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "libName"    # Ljava/lang/String;
    .param p2, "allowFallback"    # Z

    .prologue
    .line 53
    const-string v3, "NativeLibMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Dir "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/16 v3, 0x9

    invoke-static {v3}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    :try_start_0
    const-class v3, Landroid/content/pm/ApplicationInfo;

    const-string v4, "nativeLibraryDir"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 57
    .local v1, "f":Ljava/lang/reflect/Field;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .local v2, "nativeFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    const-string v3, "NativeLibMgr"

    const-string v4, "Found native lib using clean way"

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "nativeFile":Ljava/io/File;
    :goto_0
    return-object v2

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "NativeLibMgr"

    const-string v4, "Cant get field for native lib dir"

    invoke-static {v3, v4, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    if-eqz p2, :cond_1

    .line 67
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lib"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isDebuggableApp(Landroid/content/Context;)Z
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 76
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 77
    .local v1, "pinfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 82
    .end local v1    # "pinfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "NativeLibMgr"

    const-string v4, "Not possible to find self name"

    invoke-static {v3, v4, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
