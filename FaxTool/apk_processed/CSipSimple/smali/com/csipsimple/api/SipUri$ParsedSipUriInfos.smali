.class public Lcom/csipsimple/api/SipUri$ParsedSipUriInfos;
.super Ljava/lang/Object;
.source "SipUri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/api/SipUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParsedSipUriInfos"
.end annotation


# instance fields
.field public domain:Ljava/lang/String;

.field public port:I

.field public scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipUri$ParsedSipUriInfos;->domain:Ljava/lang/String;

    .line 284
    const-string v0, "sip"

    iput-object v0, p0, Lcom/csipsimple/api/SipUri$ParsedSipUriInfos;->scheme:Ljava/lang/String;

    .line 288
    const/16 v0, 0x13c4

    iput v0, p0, Lcom/csipsimple/api/SipUri$ParsedSipUriInfos;->port:I

    .line 276
    return-void
.end method
