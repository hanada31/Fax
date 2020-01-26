.class public Lcom/csipsimple/api/SipCallSession$MediaState;
.super Ljava/lang/Object;
.source "SipCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/api/SipCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaState"
.end annotation


# static fields
.field public static final ACTIVE:I = 0x1

.field public static final ERROR:I = 0x4

.field public static final LOCAL_HOLD:I = 0x2

.field public static final NONE:I = 0x0

.field public static final REMOTE_HOLD:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method
