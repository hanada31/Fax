.class Lcom/csipsimple/utils/bluetooth/BluetoothUtils8$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothUtils8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/utils/bluetooth/BluetoothUtils8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/utils/bluetooth/BluetoothUtils8;


# direct methods
.method constructor <init>(Lcom/csipsimple/utils/bluetooth/BluetoothUtils8;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/utils/bluetooth/BluetoothUtils8$1;->this$0:Lcom/csipsimple/utils/bluetooth/BluetoothUtils8;

    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "action":Ljava/lang/String;
    const-string v2, "BT8"

    const-string v3, ">>> BT SCO state changed !!! "

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v2, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    const-string v2, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 58
    .local v1, "status":I
    const-string v2, "BT8"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BT SCO state changed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " target is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/csipsimple/utils/bluetooth/BluetoothUtils8$1;->this$0:Lcom/csipsimple/utils/bluetooth/BluetoothUtils8;

    invoke-static {v4}, Lcom/csipsimple/utils/bluetooth/BluetoothUtils8;->access$0(Lcom/csipsimple/utils/bluetooth/BluetoothUtils8;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lcom/csipsimple/utils/bluetooth/BluetoothUtils8$1;->this$0:Lcom/csipsimple/utils/bluetooth/BluetoothUtils8;

    invoke-static {v2}, Lcom/csipsimple/utils/bluetooth/BluetoothUtils8;->access$1(Lcom/csipsimple/utils/bluetooth/BluetoothUtils8;)Landroid/media/AudioManager;

    move-result-object v2

    iget-object v3, p0, Lcom/csipsimple/utils/bluetooth/BluetoothUtils8$1;->this$0:Lcom/csipsimple/utils/bluetooth/BluetoothUtils8;

    invoke-static {v3}, Lcom/csipsimple/utils/bluetooth/BluetoothUtils8;->access$0(Lcom/csipsimple/utils/bluetooth/BluetoothUtils8;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 61
    if-ne v1, v5, :cond_2

    .line 62
    iget-object v2, p0, Lcom/csipsimple/utils/bluetooth/BluetoothUtils8$1;->this$0:Lcom/csipsimple/utils/bluetooth/BluetoothUtils8;

    invoke-static {v2, v5}, Lcom/csipsimple/utils/bluetooth/BluetoothUtils8;->access$2(Lcom/csipsimple/utils/bluetooth/BluetoothUtils8;Z)V

    .line 67
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/csipsimple/utils/bluetooth/BluetoothUtils8$1;->this$0:Lcom/csipsimple/utils/bluetooth/BluetoothUtils8;

    iget-object v2, v2, Lcom/csipsimple/utils/bluetooth/BluetoothUtils8;->btChangesListener:Lcom/csipsimple/utils/bluetooth/BluetoothWrapper$BluetoothChangeListener;

    if-eqz v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/csipsimple/utils/bluetooth/BluetoothUtils8$1;->this$0:Lcom/csipsimple/utils/bluetooth/BluetoothUtils8;

    iget-object v2, v2, Lcom/csipsimple/utils/bluetooth/BluetoothUtils8;->btChangesListener:Lcom/csipsimple/utils/bluetooth/BluetoothWrapper$BluetoothChangeListener;

    invoke-interface {v2, v1}, Lcom/csipsimple/utils/bluetooth/BluetoothWrapper$BluetoothChangeListener;->onBluetoothStateChanged(I)V

    .line 71
    .end local v1    # "status":I
    :cond_1
    return-void

    .line 63
    .restart local v1    # "status":I
    :cond_2
    if-nez v1, :cond_0

    .line 64
    iget-object v2, p0, Lcom/csipsimple/utils/bluetooth/BluetoothUtils8$1;->this$0:Lcom/csipsimple/utils/bluetooth/BluetoothUtils8;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/csipsimple/utils/bluetooth/BluetoothUtils8;->access$2(Lcom/csipsimple/utils/bluetooth/BluetoothUtils8;Z)V

    goto :goto_0
.end method
