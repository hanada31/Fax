.class Lcom/csipsimple/ui/help/Help$2;
.super Ljava/lang/Thread;
.source "Help.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/help/Help;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/help/Help;

.field private final synthetic val$nu:Lcom/csipsimple/utils/NightlyUpdater;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/help/Help;Lcom/csipsimple/utils/NightlyUpdater;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/help/Help$2;->this$0:Lcom/csipsimple/ui/help/Help;

    iput-object p2, p0, Lcom/csipsimple/ui/help/Help$2;->val$nu:Lcom/csipsimple/utils/NightlyUpdater;

    .line 211
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 213
    iget-object v1, p0, Lcom/csipsimple/ui/help/Help$2;->val$nu:Lcom/csipsimple/utils/NightlyUpdater;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/csipsimple/utils/NightlyUpdater;->getUpdaterPopup(Z)Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;

    move-result-object v0

    .line 214
    .local v0, "ru":Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;
    if-eqz v0, :cond_0

    .line 215
    iget-object v1, p0, Lcom/csipsimple/ui/help/Help$2;->this$0:Lcom/csipsimple/ui/help/Help;

    invoke-virtual {v1}, Lcom/csipsimple/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 217
    :cond_0
    return-void
.end method
