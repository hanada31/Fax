.class Lorg/pjsip/pjsua/pjrpid_activity$SwigNext;
.super Ljava/lang/Object;
.source "pjrpid_activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pjsip/pjsua/pjrpid_activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwigNext"
.end annotation


# static fields
.field private static next:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput v0, Lorg/pjsip/pjsua/pjrpid_activity$SwigNext;->next:I

    .line 49
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lorg/pjsip/pjsua/pjrpid_activity$SwigNext;->next:I

    return v0
.end method

.method static synthetic access$1(I)V
    .locals 0

    .prologue
    .line 50
    sput p0, Lorg/pjsip/pjsua/pjrpid_activity$SwigNext;->next:I

    return-void
.end method
