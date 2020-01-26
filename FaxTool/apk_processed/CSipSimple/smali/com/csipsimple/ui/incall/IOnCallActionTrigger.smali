.class public interface abstract Lcom/csipsimple/ui/incall/IOnCallActionTrigger;
.super Ljava/lang/Object;
.source "IOnCallActionTrigger.java"


# static fields
.field public static final ADD_CALL:I = 0xd

.field public static final BLUETOOTH_OFF:I = 0x7

.field public static final BLUETOOTH_ON:I = 0x6

.field public static final CLEAR_CALL:I = 0x1

.field public static final DECLINE_CALL:I = 0x3

.field public static final DETAILED_DISPLAY:I = 0xa

.field public static final DTMF_DISPLAY:I = 0x12

.field public static final MEDIA_SETTINGS:I = 0xc

.field public static final MUTE_OFF:I = 0x5

.field public static final MUTE_ON:I = 0x4

.field public static final SPEAKER_OFF:I = 0x9

.field public static final SPEAKER_ON:I = 0x8

.field public static final START_RECORDING:I = 0x10

.field public static final START_VIDEO:I = 0x13

.field public static final STOP_RECORDING:I = 0x11

.field public static final STOP_VIDEO:I = 0x14

.field public static final TAKE_CALL:I = 0x2

.field public static final TOGGLE_HOLD:I = 0xb

.field public static final TRANSFER_CALL:I = 0xf

.field public static final XFER_CALL:I = 0xe


# virtual methods
.method public abstract onTrigger(ILcom/csipsimple/api/SipCallSession;)V
.end method
