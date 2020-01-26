.class Lorg/pjsip/pjsua/pjsip_ssl_method$SwigNext;
.super Ljava/lang/Object;
.source "pjsip_ssl_method.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pjsip/pjsua/pjsip_ssl_method;
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
    .line 52
    const/4 v0, 0x0

    sput v0, Lorg/pjsip/pjsua/pjsip_ssl_method$SwigNext;->next:I

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lorg/pjsip/pjsua/pjsip_ssl_method$SwigNext;->next:I

    return v0
.end method

.method static synthetic access$1(I)V
    .locals 0

    .prologue
    .line 52
    sput p0, Lorg/pjsip/pjsua/pjsip_ssl_method$SwigNext;->next:I

    return-void
.end method
