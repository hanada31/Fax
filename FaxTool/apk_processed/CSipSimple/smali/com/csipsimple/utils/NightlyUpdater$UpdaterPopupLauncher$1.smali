.class Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher$1;
.super Ljava/lang/Object;
.source "NightlyUpdater.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;


# direct methods
.method constructor <init>(Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher$1;->this$1:Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 203
    .local v0, "it":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://nightlies.csipsimple.com/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher$1;->this$1:Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;

    invoke-static {v4}, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;->access$2(Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;)Lcom/csipsimple/utils/NightlyUpdater;

    move-result-object v4

    invoke-static {v4}, Lcom/csipsimple/utils/NightlyUpdater;->access$0(Lcom/csipsimple/utils/NightlyUpdater;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/CSipSimple-r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher$1;->this$1:Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;

    invoke-static {v4}, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;->access$0(Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher$1;->this$1:Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;

    invoke-static {v4}, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;->access$2(Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;)Lcom/csipsimple/utils/NightlyUpdater;

    move-result-object v4

    invoke-static {v4}, Lcom/csipsimple/utils/NightlyUpdater;->access$0(Lcom/csipsimple/utils/NightlyUpdater;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 204
    iget-object v3, p0, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher$1;->this$1:Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;

    invoke-static {v3}, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;->access$1(Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/csipsimple/service/Downloader;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 205
    const-string v3, "icon"

    const v4, 0x7f0200b5

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    const-string v3, "title"

    const-string v4, "CSipSimple nightly build"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v3, "checkMd5"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 208
    const-string v3, "outpath"

    iget-object v4, p0, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher$1;->this$1:Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;

    invoke-static {v4}, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;->access$2(Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;)Lcom/csipsimple/utils/NightlyUpdater;

    move-result-object v4

    invoke-static {v4}, Lcom/csipsimple/utils/NightlyUpdater;->access$1(Lcom/csipsimple/utils/NightlyUpdater;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher$1;->this$1:Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;

    invoke-static {v3}, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;->access$1(Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/csipsimple/service/DeviceStateReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .local v2, "resultIntent":Landroid/content/Intent;
    const-string v3, "com.csipsimple.action.APPLY_NIGHTLY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v3, "dl_version"

    iget-object v4, p0, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher$1;->this$1:Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;

    invoke-static {v4}, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;->access$0(Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    iget-object v3, p0, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher$1;->this$1:Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;

    invoke-static {v3}, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;->access$1(Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 214
    .local v1, "pi":Landroid/app/PendingIntent;
    const-string v3, "pendingIntent"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 215
    iget-object v3, p0, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher$1;->this$1:Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;

    invoke-static {v3}, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;->access$1(Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 216
    return-void
.end method
