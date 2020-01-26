.class Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher$2;
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
    iput-object p1, p0, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher$2;->this$1:Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 221
    iget-object v1, p0, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher$2;->this$1:Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;

    invoke-static {v1}, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;->access$2(Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;)Lcom/csipsimple/utils/NightlyUpdater;

    move-result-object v1

    invoke-static {v1}, Lcom/csipsimple/utils/NightlyUpdater;->access$2(Lcom/csipsimple/utils/NightlyUpdater;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 222
    .local v0, "edt":Landroid/content/SharedPreferences$Editor;
    const-string v1, "nightly_check_ignore"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 223
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 224
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 225
    return-void
.end method
