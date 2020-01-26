.class public final enum Lcom/csipsimple/api/SipManager$PresenceStatus;
.super Ljava/lang/Enum;
.source "SipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/api/SipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PresenceStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/csipsimple/api/SipManager$PresenceStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AWAY:Lcom/csipsimple/api/SipManager$PresenceStatus;

.field public static final enum BUSY:Lcom/csipsimple/api/SipManager$PresenceStatus;

.field private static final synthetic ENUM$VALUES:[Lcom/csipsimple/api/SipManager$PresenceStatus;

.field public static final enum OFFLINE:Lcom/csipsimple/api/SipManager$PresenceStatus;

.field public static final enum ONLINE:Lcom/csipsimple/api/SipManager$PresenceStatus;

.field public static final enum UNKNOWN:Lcom/csipsimple/api/SipManager$PresenceStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 403
    new-instance v0, Lcom/csipsimple/api/SipManager$PresenceStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/csipsimple/api/SipManager$PresenceStatus;-><init>(Ljava/lang/String;I)V

    .line 406
    sput-object v0, Lcom/csipsimple/api/SipManager$PresenceStatus;->UNKNOWN:Lcom/csipsimple/api/SipManager$PresenceStatus;

    .line 407
    new-instance v0, Lcom/csipsimple/api/SipManager$PresenceStatus;

    const-string v1, "ONLINE"

    invoke-direct {v0, v1, v3}, Lcom/csipsimple/api/SipManager$PresenceStatus;-><init>(Ljava/lang/String;I)V

    .line 410
    sput-object v0, Lcom/csipsimple/api/SipManager$PresenceStatus;->ONLINE:Lcom/csipsimple/api/SipManager$PresenceStatus;

    .line 411
    new-instance v0, Lcom/csipsimple/api/SipManager$PresenceStatus;

    const-string v1, "OFFLINE"

    invoke-direct {v0, v1, v4}, Lcom/csipsimple/api/SipManager$PresenceStatus;-><init>(Ljava/lang/String;I)V

    .line 414
    sput-object v0, Lcom/csipsimple/api/SipManager$PresenceStatus;->OFFLINE:Lcom/csipsimple/api/SipManager$PresenceStatus;

    .line 415
    new-instance v0, Lcom/csipsimple/api/SipManager$PresenceStatus;

    const-string v1, "BUSY"

    invoke-direct {v0, v1, v5}, Lcom/csipsimple/api/SipManager$PresenceStatus;-><init>(Ljava/lang/String;I)V

    .line 418
    sput-object v0, Lcom/csipsimple/api/SipManager$PresenceStatus;->BUSY:Lcom/csipsimple/api/SipManager$PresenceStatus;

    .line 419
    new-instance v0, Lcom/csipsimple/api/SipManager$PresenceStatus;

    const-string v1, "AWAY"

    invoke-direct {v0, v1, v6}, Lcom/csipsimple/api/SipManager$PresenceStatus;-><init>(Ljava/lang/String;I)V

    .line 422
    sput-object v0, Lcom/csipsimple/api/SipManager$PresenceStatus;->AWAY:Lcom/csipsimple/api/SipManager$PresenceStatus;

    .line 402
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/csipsimple/api/SipManager$PresenceStatus;

    sget-object v1, Lcom/csipsimple/api/SipManager$PresenceStatus;->UNKNOWN:Lcom/csipsimple/api/SipManager$PresenceStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/csipsimple/api/SipManager$PresenceStatus;->ONLINE:Lcom/csipsimple/api/SipManager$PresenceStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/csipsimple/api/SipManager$PresenceStatus;->OFFLINE:Lcom/csipsimple/api/SipManager$PresenceStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/csipsimple/api/SipManager$PresenceStatus;->BUSY:Lcom/csipsimple/api/SipManager$PresenceStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/csipsimple/api/SipManager$PresenceStatus;->AWAY:Lcom/csipsimple/api/SipManager$PresenceStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/csipsimple/api/SipManager$PresenceStatus;->ENUM$VALUES:[Lcom/csipsimple/api/SipManager$PresenceStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/csipsimple/api/SipManager$PresenceStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/csipsimple/api/SipManager$PresenceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/api/SipManager$PresenceStatus;

    return-object v0
.end method

.method public static values()[Lcom/csipsimple/api/SipManager$PresenceStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/csipsimple/api/SipManager$PresenceStatus;->ENUM$VALUES:[Lcom/csipsimple/api/SipManager$PresenceStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/csipsimple/api/SipManager$PresenceStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
