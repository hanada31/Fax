.class Lcom/csipsimple/wizards/impl/Broadsoft$1;
.super Ljava/util/HashMap;
.source "Broadsoft.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/wizards/impl/Broadsoft;
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
.field private static final serialVersionUID:J = 0x7b54d71058b9fa03L


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 93
    sget-object v0, Lcom/csipsimple/wizards/impl/Broadsoft;->DISPLAY_NAME:Ljava/lang/String;

    const v1, 0x7f0b0250

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Broadsoft$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/csipsimple/wizards/impl/Broadsoft;->USER_NAME:Ljava/lang/String;

    const v1, 0x7f0b0244

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Broadsoft$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/csipsimple/wizards/impl/Broadsoft;->AUTH_NAME:Ljava/lang/String;

    const v1, 0x7f0b0242

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Broadsoft$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/csipsimple/wizards/impl/Broadsoft;->PASSWORD:Ljava/lang/String;

    const v1, 0x7f0b0256

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Broadsoft$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/csipsimple/wizards/impl/Broadsoft;->SERVER:Ljava/lang/String;

    const v1, 0x7f0b0258

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Broadsoft$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/csipsimple/wizards/impl/Broadsoft;->PROXY:Ljava/lang/String;

    const v1, 0x7f0b023e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Broadsoft$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    return-void
.end method
