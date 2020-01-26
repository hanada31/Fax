.class Lcom/csipsimple/wizards/impl/OnSip$1;
.super Ljava/util/HashMap;
.source "OnSip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/wizards/impl/OnSip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4fb5bd8183a82ddfL


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 82
    sget-object v0, Lcom/csipsimple/wizards/impl/OnSip;->DISPLAY_NAME:Ljava/lang/String;

    const v1, 0x7f0b0250

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/OnSip$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/csipsimple/wizards/impl/OnSip;->USER_NAME:Ljava/lang/String;

    const v1, 0x7f0b02a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/OnSip$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/csipsimple/wizards/impl/OnSip;->AUTH_NAME:Ljava/lang/String;

    const v1, 0x7f0b029f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/OnSip$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/csipsimple/wizards/impl/OnSip;->PASSWORD:Ljava/lang/String;

    const v1, 0x7f0b02a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/OnSip$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/csipsimple/wizards/impl/OnSip;->SERVER:Ljava/lang/String;

    const v1, 0x7f0b02a3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/OnSip$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    return-void
.end method
