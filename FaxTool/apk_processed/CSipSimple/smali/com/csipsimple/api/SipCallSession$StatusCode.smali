.class public Lcom/csipsimple/api/SipCallSession$StatusCode;
.super Ljava/lang/Object;
.source "SipCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/api/SipCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusCode"
.end annotation


# static fields
.field public static final ACCEPTED:I = 0xca

.field public static final ALTERNATIVE_SERVICE:I = 0x17c

.field public static final BAD_REQUEST:I = 0x190

.field public static final CALL_BEING_FORWARDED:I = 0xb5

.field public static final DECLINE:I = 0x25b

.field public static final FORBIDDEN:I = 0x193

.field public static final INTERNAL_SERVER_ERROR:I = 0x1f4

.field public static final INTERVAL_TOO_BRIEF:I = 0x1a7

.field public static final METHOD_NOT_ALLOWED:I = 0x195

.field public static final MOVED_PERMANENTLY:I = 0x12d

.field public static final MOVED_TEMPORARILY:I = 0x12e

.field public static final MULTIPLE_CHOICES:I = 0x12c

.field public static final NOT_ACCEPTABLE:I = 0x196

.field public static final NOT_FOUND:I = 0x194

.field public static final OK:I = 0xc8

.field public static final PAYMENT_REQUIRED:I = 0x192

.field public static final PROGRESS:I = 0xb7

.field public static final QUEUED:I = 0xb6

.field public static final RINGING:I = 0xb4

.field public static final TRYING:I = 0x64

.field public static final UNAUTHORIZED:I = 0x191

.field public static final USE_PROXY:I = 0x131


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
