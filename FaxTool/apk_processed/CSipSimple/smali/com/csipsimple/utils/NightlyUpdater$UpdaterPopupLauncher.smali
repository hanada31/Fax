.class public Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;
.super Ljava/lang/Object;
.source "NightlyUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/utils/NightlyUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdaterPopupLauncher"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/csipsimple/utils/NightlyUpdater;

.field private version:I


# direct methods
.method public constructor <init>(Lcom/csipsimple/utils/NightlyUpdater;Landroid/content/Context;I)V
    .locals 1
    .param p2, "ctxt"    # Landroid/content/Context;
    .param p3, "onlineVersion"    # I

    .prologue
    .line 183
    iput-object p1, p0, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;->this$0:Lcom/csipsimple/utils/NightlyUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;->version:I

    .line 184
    iput-object p2, p0, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;->context:Landroid/content/Context;

    .line 185
    iput p3, p0, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;->version:I

    .line 186
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;)I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;->version:I

    return v0
.end method

.method static synthetic access$1(Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;)Lcom/csipsimple/utils/NightlyUpdater;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;->this$0:Lcom/csipsimple/utils/NightlyUpdater;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v3, 0x7f0b01ef

    .line 190
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 193
    .local v0, "ab":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 194
    const-string v2, "Update nightly build"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 196
    iget v1, p0, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;->version:I

    if-lez v1, :cond_0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Revision "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " available. Upgrade now?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 198
    new-instance v2, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher$1;

    invoke-direct {v2, p0}, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher$1;-><init>(Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 218
    const v2, 0x7f0b01c8

    new-instance v3, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher$2;

    invoke-direct {v3, p0}, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher$2;-><init>(Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 237
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 239
    return-void

    .line 228
    :cond_0
    const-string v1, "No update available"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 229
    new-instance v2, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher$3;

    invoke-direct {v2, p0}, Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher$3;-><init>(Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
