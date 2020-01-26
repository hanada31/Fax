.class public abstract Lcom/csipsimple/api/ISipService$Stub;
.super Landroid/os/Binder;
.source "ISipService.java"

# interfaces
.implements Lcom/csipsimple/api/ISipService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/api/ISipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/api/ISipService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.csipsimple.api.ISipService"

.field static final TRANSACTION_addAllAccounts:I = 0x6

.field static final TRANSACTION_adjustVolume:I = 0x20

.field static final TRANSACTION_answer:I = 0xf

.field static final TRANSACTION_askThreadedRestart:I = 0x5

.field static final TRANSACTION_canRecord:I = 0x27

.field static final TRANSACTION_confAdjustRxLevel:I = 0x1d

.field static final TRANSACTION_confAdjustTxLevel:I = 0x1c

.field static final TRANSACTION_confGetRxTxLevel:I = 0x1e

.field static final TRANSACTION_forceStopService:I = 0x4

.field static final TRANSACTION_getCallInfo:I = 0x16

.field static final TRANSACTION_getCalls:I = 0x17

.field static final TRANSACTION_getCurrentMediaState:I = 0x21

.field static final TRANSACTION_getPresence:I = 0x2b

.field static final TRANSACTION_getPresenceStatus:I = 0x2c

.field static final TRANSACTION_getSipProfileState:I = 0xa

.field static final TRANSACTION_getVersion:I = 0x1

.field static final TRANSACTION_hangup:I = 0x10

.field static final TRANSACTION_hold:I = 0x12

.field static final TRANSACTION_ignoreNextOutgoingCallFor:I = 0xc

.field static final TRANSACTION_isRecording:I = 0x26

.field static final TRANSACTION_makeCall:I = 0xd

.field static final TRANSACTION_makeCallWithOptions:I = 0xe

.field static final TRANSACTION_playWaveFile:I = 0x28

.field static final TRANSACTION_reAddAllAccounts:I = 0x8

.field static final TRANSACTION_reinvite:I = 0x13

.field static final TRANSACTION_removeAllAccounts:I = 0x7

.field static final TRANSACTION_sendDtmf:I = 0x11

.field static final TRANSACTION_sendMessage:I = 0x29

.field static final TRANSACTION_setAccountRegistration:I = 0x9

.field static final TRANSACTION_setBluetoothOn:I = 0x1b

.field static final TRANSACTION_setEchoCancellation:I = 0x1f

.field static final TRANSACTION_setMicrophoneMute:I = 0x19

.field static final TRANSACTION_setPresence:I = 0x2a

.field static final TRANSACTION_setSpeakerphoneOn:I = 0x1a

.field static final TRANSACTION_showCallInfosDialog:I = 0x18

.field static final TRANSACTION_sipStart:I = 0x2

.field static final TRANSACTION_sipStop:I = 0x3

.field static final TRANSACTION_startLoopbackTest:I = 0x22

.field static final TRANSACTION_startRecording:I = 0x24

.field static final TRANSACTION_stopLoopbackTest:I = 0x23

.field static final TRANSACTION_stopRecording:I = 0x25

.field static final TRANSACTION_switchToAutoAnswer:I = 0xb

.field static final TRANSACTION_updateCallOptions:I = 0x2e

.field static final TRANSACTION_xfer:I = 0x14

.field static final TRANSACTION_xferReplace:I = 0x15

.field static final TRANSACTION_zrtpSASVerified:I = 0x2d


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.csipsimple.api.ISipService"

    invoke-virtual {p0, p0, v0}, Lcom/csipsimple/api/ISipService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/csipsimple/api/ISipService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.csipsimple.api.ISipService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/csipsimple/api/ISipService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/csipsimple/api/ISipService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/csipsimple/api/ISipService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/csipsimple/api/ISipService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 531
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/csipsimple/api/ISipService$Stub;->getVersion()I

    move-result v5

    .line 49
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v5    # "_result":I
    :sswitch_2
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/csipsimple/api/ISipService$Stub;->sipStart()V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 62
    :sswitch_3
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/csipsimple/api/ISipService$Stub;->sipStop()V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    :sswitch_4
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/csipsimple/api/ISipService$Stub;->forceStopService()V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    :sswitch_5
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/csipsimple/api/ISipService$Stub;->askThreadedRestart()V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 83
    :sswitch_6
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/csipsimple/api/ISipService$Stub;->addAllAccounts()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    :sswitch_7
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/csipsimple/api/ISipService$Stub;->removeAllAccounts()V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 97
    :sswitch_8
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/csipsimple/api/ISipService$Stub;->reAddAllAccounts()V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    :sswitch_9
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 108
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 109
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/csipsimple/api/ISipService$Stub;->setAccountRegistration(II)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 115
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_a
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 118
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/csipsimple/api/ISipService$Stub;->getSipProfileState(I)Lcom/csipsimple/api/SipProfileState;

    move-result-object v5

    .line 119
    .local v5, "_result":Lcom/csipsimple/api/SipProfileState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v5, :cond_0

    .line 121
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {v5, p3, v7}, Lcom/csipsimple/api/SipProfileState;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 125
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 131
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Lcom/csipsimple/api/SipProfileState;
    :sswitch_b
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/csipsimple/api/ISipService$Stub;->switchToAutoAnswer()V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 138
    :sswitch_c
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/csipsimple/api/ISipService$Stub;->ignoreNextOutgoingCallFor(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 147
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 152
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/csipsimple/api/ISipService$Stub;->makeCall(Ljava/lang/String;I)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 158
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_e
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 164
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    .line 165
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 170
    .local v3, "_arg2":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0, v0, v2, v3}, Lcom/csipsimple/api/ISipService$Stub;->makeCallWithOptions(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 168
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/Bundle;
    goto :goto_1

    .line 176
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :sswitch_f
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 180
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 181
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/csipsimple/api/ISipService$Stub;->answer(II)I

    move-result v5

    .line 182
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 188
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v5    # "_result":I
    :sswitch_10
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 192
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 193
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/csipsimple/api/ISipService$Stub;->hangup(II)I

    move-result v5

    .line 194
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 200
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v5    # "_result":I
    :sswitch_11
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 204
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 205
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/csipsimple/api/ISipService$Stub;->sendDtmf(II)I

    move-result v5

    .line 206
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 212
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v5    # "_result":I
    :sswitch_12
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 215
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/csipsimple/api/ISipService$Stub;->hold(I)I

    move-result v5

    .line 216
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 222
    .end local v0    # "_arg0":I
    .end local v5    # "_result":I
    :sswitch_13
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 226
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    move v2, v7

    .line 227
    .local v2, "_arg1":Z
    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/csipsimple/api/ISipService$Stub;->reinvite(IZ)I

    move-result v5

    .line 228
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 234
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v5    # "_result":I
    :sswitch_14
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 238
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/csipsimple/api/ISipService$Stub;->xfer(ILjava/lang/String;)I

    move-result v5

    .line 240
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 246
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":I
    :sswitch_15
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 250
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 252
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 253
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Lcom/csipsimple/api/ISipService$Stub;->xferReplace(III)I

    move-result v5

    .line 254
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 260
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v5    # "_result":I
    :sswitch_16
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 263
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/csipsimple/api/ISipService$Stub;->getCallInfo(I)Lcom/csipsimple/api/SipCallSession;

    move-result-object v5

    .line 264
    .local v5, "_result":Lcom/csipsimple/api/SipCallSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    if-eqz v5, :cond_3

    .line 266
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    invoke-virtual {v5, p3, v7}, Lcom/csipsimple/api/SipCallSession;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 270
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 276
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Lcom/csipsimple/api/SipCallSession;
    :sswitch_17
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/csipsimple/api/ISipService$Stub;->getCalls()[Lcom/csipsimple/api/SipCallSession;

    move-result-object v5

    .line 278
    .local v5, "_result":[Lcom/csipsimple/api/SipCallSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, v5, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 284
    .end local v5    # "_result":[Lcom/csipsimple/api/SipCallSession;
    :sswitch_18
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 287
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/csipsimple/api/ISipService$Stub;->showCallInfosDialog(I)Ljava/lang/String;

    move-result-object v5

    .line 288
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 294
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_19
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4

    move v0, v7

    .line 297
    .local v0, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/csipsimple/api/ISipService$Stub;->setMicrophoneMute(Z)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_4
    move v0, v2

    .line 296
    goto :goto_2

    .line 303
    :sswitch_1a
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    move v0, v7

    .line 306
    .restart local v0    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/csipsimple/api/ISipService$Stub;->setSpeakerphoneOn(Z)V

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_5
    move v0, v2

    .line 305
    goto :goto_3

    .line 312
    :sswitch_1b
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6

    move v0, v7

    .line 315
    .restart local v0    # "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/csipsimple/api/ISipService$Stub;->setBluetoothOn(Z)V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_6
    move v0, v2

    .line 314
    goto :goto_4

    .line 321
    :sswitch_1c
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 325
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 326
    .local v2, "_arg1":F
    invoke-virtual {p0, v0, v2}, Lcom/csipsimple/api/ISipService$Stub;->confAdjustTxLevel(IF)V

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 332
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":F
    :sswitch_1d
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 336
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 337
    .restart local v2    # "_arg1":F
    invoke-virtual {p0, v0, v2}, Lcom/csipsimple/api/ISipService$Stub;->confAdjustRxLevel(IF)V

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 343
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":F
    :sswitch_1e
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 346
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/csipsimple/api/ISipService$Stub;->confGetRxTxLevel(I)J

    move-result-wide v5

    .line 347
    .local v5, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 353
    .end local v0    # "_arg0":I
    .end local v5    # "_result":J
    :sswitch_1f
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_7

    move v0, v7

    .line 356
    .local v0, "_arg0":Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/csipsimple/api/ISipService$Stub;->setEchoCancellation(Z)V

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_7
    move v0, v2

    .line 355
    goto :goto_5

    .line 362
    :sswitch_20
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_8

    .line 365
    sget-object v8, Lcom/csipsimple/api/SipCallSession;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/api/SipCallSession;

    .line 371
    .local v0, "_arg0":Lcom/csipsimple/api/SipCallSession;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 373
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 374
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Lcom/csipsimple/api/ISipService$Stub;->adjustVolume(Lcom/csipsimple/api/SipCallSession;II)V

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 368
    .end local v0    # "_arg0":Lcom/csipsimple/api/SipCallSession;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/csipsimple/api/SipCallSession;
    goto :goto_6

    .line 380
    .end local v0    # "_arg0":Lcom/csipsimple/api/SipCallSession;
    :sswitch_21
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/csipsimple/api/ISipService$Stub;->getCurrentMediaState()Lcom/csipsimple/api/MediaState;

    move-result-object v5

    .line 382
    .local v5, "_result":Lcom/csipsimple/api/MediaState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    if-eqz v5, :cond_9

    .line 384
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    invoke-virtual {v5, p3, v7}, Lcom/csipsimple/api/MediaState;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 388
    :cond_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 394
    .end local v5    # "_result":Lcom/csipsimple/api/MediaState;
    :sswitch_22
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lcom/csipsimple/api/ISipService$Stub;->startLoopbackTest()I

    move-result v5

    .line 396
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 402
    .end local v5    # "_result":I
    :sswitch_23
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Lcom/csipsimple/api/ISipService$Stub;->stopLoopbackTest()I

    move-result v5

    .line 404
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 410
    .end local v5    # "_result":I
    :sswitch_24
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 413
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/csipsimple/api/ISipService$Stub;->startRecording(I)V

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 419
    .end local v0    # "_arg0":I
    :sswitch_25
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 422
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/csipsimple/api/ISipService$Stub;->stopRecording(I)V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 428
    .end local v0    # "_arg0":I
    :sswitch_26
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 431
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/csipsimple/api/ISipService$Stub;->isRecording(I)Z

    move-result v5

    .line 432
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    if-eqz v5, :cond_a

    move v2, v7

    :cond_a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 438
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_27
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 441
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/csipsimple/api/ISipService$Stub;->canRecord(I)Z

    move-result v5

    .line 442
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    if-eqz v5, :cond_b

    move v2, v7

    :cond_b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 448
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_28
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 454
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 455
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Lcom/csipsimple/api/ISipService$Stub;->playWaveFile(Ljava/lang/String;II)V

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 461
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_29
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 465
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 468
    .local v3, "_arg2":J
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/csipsimple/api/ISipService$Stub;->sendMessage(Ljava/lang/String;Ljava/lang/String;J)V

    .line 469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 474
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":J
    :sswitch_2a
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 478
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 480
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 481
    .restart local v3    # "_arg2":J
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/csipsimple/api/ISipService$Stub;->setPresence(ILjava/lang/String;J)V

    .line 482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 487
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":J
    :sswitch_2b
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 490
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/api/ISipService$Stub;->getPresence(J)I

    move-result v5

    .line 491
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 497
    .end local v0    # "_arg0":J
    .end local v5    # "_result":I
    :sswitch_2c
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 500
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/api/ISipService$Stub;->getPresenceStatus(J)Ljava/lang/String;

    move-result-object v5

    .line 501
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 507
    .end local v0    # "_arg0":J
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_2d
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 510
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/csipsimple/api/ISipService$Stub;->zrtpSASVerified(I)V

    .line 511
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 516
    .end local v0    # "_arg0":I
    :sswitch_2e
    const-string v8, "com.csipsimple.api.ISipService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 520
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_c

    .line 521
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 526
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_7
    invoke-virtual {p0, v0, v2}, Lcom/csipsimple/api/ISipService$Stub;->updateCallOptions(ILandroid/os/Bundle;)V

    .line 527
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 524
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_7

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
