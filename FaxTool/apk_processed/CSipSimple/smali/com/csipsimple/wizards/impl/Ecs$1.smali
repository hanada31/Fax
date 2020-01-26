.class Lcom/csipsimple/wizards/impl/Ecs$1;
.super Ljava/util/HashMap;
.source "Ecs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/wizards/impl/Ecs;
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
.field private static final serialVersionUID:J = 0x2a6789c7fd54e9edL


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 106
    sget-object v0, Lcom/csipsimple/wizards/impl/Ecs;->DISPLAY_NAME:Ljava/lang/String;

    const v1, 0x7f0b0250

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Ecs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/csipsimple/wizards/impl/Ecs;->PHONE_NUMBER:Ljava/lang/String;

    const v1, 0x7f0b0264

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Ecs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/csipsimple/wizards/impl/Ecs;->USER_NAME:Ljava/lang/String;

    const v1, 0x7f0b0266

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Ecs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/csipsimple/wizards/impl/Ecs;->SERVER:Ljava/lang/String;

    const v1, 0x7f0b026b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Ecs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/csipsimple/wizards/impl/Ecs;->DOMAIN:Ljava/lang/String;

    const v1, 0x7f0b026a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Ecs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/csipsimple/wizards/impl/Ecs;->PASSWORD:Ljava/lang/String;

    const v1, 0x7f0b0268

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Ecs$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    return-void
.end method
