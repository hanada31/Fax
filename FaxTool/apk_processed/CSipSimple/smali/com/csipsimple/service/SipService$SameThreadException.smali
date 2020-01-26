.class public Lcom/csipsimple/service/SipService$SameThreadException;
.super Ljava/lang/Exception;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/service/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SameThreadException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xc9179fc3694af88L


# instance fields
.field final synthetic this$0:Lcom/csipsimple/service/SipService;


# direct methods
.method public constructor <init>(Lcom/csipsimple/service/SipService;)V
    .locals 1

    .prologue
    .line 1851
    iput-object p1, p0, Lcom/csipsimple/service/SipService$SameThreadException;->this$0:Lcom/csipsimple/service/SipService;

    .line 1852
    const-string v0, "Should be launched from a single worker thread"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1853
    return-void
.end method
