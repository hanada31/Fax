.class public Lcom/csipsimple/api/SipCallSession$InvState;
.super Ljava/lang/Object;
.source "SipCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/api/SipCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvState"
.end annotation


# static fields
.field public static final CALLING:I = 0x1

.field public static final CONFIRMED:I = 0x5

.field public static final CONNECTING:I = 0x4

.field public static final DISCONNECTED:I = 0x6

.field public static final EARLY:I = 0x3

.field public static final INCOMING:I = 0x2

.field public static final INVALID:I = -0x1

.field public static final NULL:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method
