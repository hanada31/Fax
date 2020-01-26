.class public Lcom/csipsimple/utils/bluetooth/BluetoothUtils3;
.super Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;
.source "BluetoothUtils3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public canBluetooth()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public isBTHeadsetConnected()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public isBluetoothOn()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public register()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public setBluetoothOn(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 37
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    return-void
.end method

.method public setMediaManager(Lcom/csipsimple/service/MediaManager;)V
    .locals 0
    .param p1, "aManager"    # Lcom/csipsimple/service/MediaManager;

    .prologue
    .line 50
    return-void
.end method

.method public unregister()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method
