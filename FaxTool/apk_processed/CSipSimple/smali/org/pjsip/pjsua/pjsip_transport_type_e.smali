.class public final enum Lorg/pjsip/pjsua/pjsip_transport_type_e;
.super Ljava/lang/Enum;
.source "pjsip_transport_type_e.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pjsip/pjsua/pjsip_transport_type_e$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/pjsip/pjsua/pjsip_transport_type_e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/pjsip/pjsua/pjsip_transport_type_e;

.field public static final enum PJSIP_TRANSPORT_IPV6:Lorg/pjsip/pjsua/pjsip_transport_type_e;

.field public static final enum PJSIP_TRANSPORT_LOOP:Lorg/pjsip/pjsua/pjsip_transport_type_e;

.field public static final enum PJSIP_TRANSPORT_LOOP_DGRAM:Lorg/pjsip/pjsua/pjsip_transport_type_e;

.field public static final enum PJSIP_TRANSPORT_SCTP:Lorg/pjsip/pjsua/pjsip_transport_type_e;

.field public static final enum PJSIP_TRANSPORT_START_OTHER:Lorg/pjsip/pjsua/pjsip_transport_type_e;

.field public static final enum PJSIP_TRANSPORT_TCP:Lorg/pjsip/pjsua/pjsip_transport_type_e;

.field public static final enum PJSIP_TRANSPORT_TCP6:Lorg/pjsip/pjsua/pjsip_transport_type_e;

.field public static final enum PJSIP_TRANSPORT_TLS:Lorg/pjsip/pjsua/pjsip_transport_type_e;

.field public static final enum PJSIP_TRANSPORT_UDP:Lorg/pjsip/pjsua/pjsip_transport_type_e;

.field public static final enum PJSIP_TRANSPORT_UDP6:Lorg/pjsip/pjsua/pjsip_transport_type_e;

.field public static final enum PJSIP_TRANSPORT_UNSPECIFIED:Lorg/pjsip/pjsua/pjsip_transport_type_e;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;

    const-string v1, "PJSIP_TRANSPORT_UNSPECIFIED"

    invoke-direct {v0, v1, v4}, Lorg/pjsip/pjsua/pjsip_transport_type_e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_UNSPECIFIED:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    .line 13
    new-instance v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;

    const-string v1, "PJSIP_TRANSPORT_UDP"

    invoke-direct {v0, v1, v5}, Lorg/pjsip/pjsua/pjsip_transport_type_e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_UDP:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    .line 14
    new-instance v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;

    const-string v1, "PJSIP_TRANSPORT_TCP"

    invoke-direct {v0, v1, v6}, Lorg/pjsip/pjsua/pjsip_transport_type_e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_TCP:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    .line 15
    new-instance v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;

    const-string v1, "PJSIP_TRANSPORT_TLS"

    invoke-direct {v0, v1, v7}, Lorg/pjsip/pjsua/pjsip_transport_type_e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_TLS:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    .line 16
    new-instance v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;

    const-string v1, "PJSIP_TRANSPORT_SCTP"

    invoke-direct {v0, v1, v8}, Lorg/pjsip/pjsua/pjsip_transport_type_e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_SCTP:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    .line 17
    new-instance v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;

    const-string v1, "PJSIP_TRANSPORT_LOOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/pjsip/pjsua/pjsip_transport_type_e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_LOOP:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    .line 18
    new-instance v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;

    const-string v1, "PJSIP_TRANSPORT_LOOP_DGRAM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/pjsip/pjsua/pjsip_transport_type_e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_LOOP_DGRAM:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    .line 19
    new-instance v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;

    const-string v1, "PJSIP_TRANSPORT_START_OTHER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/pjsip/pjsua/pjsip_transport_type_e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_START_OTHER:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    .line 20
    new-instance v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;

    const-string v1, "PJSIP_TRANSPORT_IPV6"

    const/16 v2, 0x8

    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSIP_TRANSPORT_IPV6_get()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/pjsip/pjsua/pjsip_transport_type_e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_IPV6:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    .line 21
    new-instance v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;

    const-string v1, "PJSIP_TRANSPORT_UDP6"

    const/16 v2, 0x9

    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSIP_TRANSPORT_UDP6_get()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/pjsip/pjsua/pjsip_transport_type_e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_UDP6:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    .line 22
    new-instance v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;

    const-string v1, "PJSIP_TRANSPORT_TCP6"

    const/16 v2, 0xa

    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSIP_TRANSPORT_TCP6_get()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/pjsip/pjsua/pjsip_transport_type_e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_TCP6:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    .line 11
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/pjsip/pjsua/pjsip_transport_type_e;

    sget-object v1, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_UNSPECIFIED:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    aput-object v1, v0, v4

    sget-object v1, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_UDP:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    aput-object v1, v0, v5

    sget-object v1, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_TCP:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    aput-object v1, v0, v6

    sget-object v1, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_TLS:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    aput-object v1, v0, v7

    sget-object v1, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_SCTP:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_LOOP:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_LOOP_DGRAM:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_START_OTHER:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_IPV6:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_UDP6:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_TCP6:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    aput-object v2, v0, v1

    sput-object v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;->ENUM$VALUES:[Lorg/pjsip/pjsua/pjsip_transport_type_e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    invoke-static {}, Lorg/pjsip/pjsua/pjsip_transport_type_e$SwigNext;->access$0()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lorg/pjsip/pjsua/pjsip_transport_type_e$SwigNext;->access$1(I)V

    iput v0, p0, Lorg/pjsip/pjsua/pjsip_transport_type_e;->swigValue:I

    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "swigValue"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lorg/pjsip/pjsua/pjsip_transport_type_e;->swigValue:I

    .line 46
    add-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsip_transport_type_e$SwigNext;->access$1(I)V

    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/pjsip/pjsua/pjsip_transport_type_e;)V
    .locals 1
    .param p3, "swigEnum"    # Lorg/pjsip/pjsua/pjsip_transport_type_e;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iget v0, p3, Lorg/pjsip/pjsua/pjsip_transport_type_e;->swigValue:I

    iput v0, p0, Lorg/pjsip/pjsua/pjsip_transport_type_e;->swigValue:I

    .line 52
    iget v0, p0, Lorg/pjsip/pjsua/pjsip_transport_type_e;->swigValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsip_transport_type_e$SwigNext;->access$1(I)V

    .line 53
    return-void
.end method

.method public static swigToEnum(I)Lorg/pjsip/pjsua/pjsip_transport_type_e;
    .locals 5
    .param p0, "swigValue"    # I

    .prologue
    .line 29
    const-class v2, Lorg/pjsip/pjsua/pjsip_transport_type_e;

    invoke-virtual {v2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/pjsip/pjsua/pjsip_transport_type_e;

    .line 30
    .local v1, "swigValues":[Lorg/pjsip/pjsua/pjsip_transport_type_e;
    array-length v2, v1

    if-ge p0, v2, :cond_1

    if-ltz p0, :cond_1

    aget-object v2, v1, p0

    iget v2, v2, Lorg/pjsip/pjsua/pjsip_transport_type_e;->swigValue:I

    if-ne v2, p0, :cond_1

    .line 31
    aget-object v0, v1, p0

    .line 34
    :cond_0
    return-object v0

    .line 32
    :cond_1
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_2

    .line 35
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No enum "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lorg/pjsip/pjsua/pjsip_transport_type_e;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 32
    :cond_2
    aget-object v0, v1, v2

    .line 33
    .local v0, "swigEnum":Lorg/pjsip/pjsua/pjsip_transport_type_e;
    iget v4, v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;->swigValue:I

    if-eq v4, p0, :cond_0

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/pjsip/pjsua/pjsip_transport_type_e;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;

    return-object v0
.end method

.method public static values()[Lorg/pjsip/pjsua/pjsip_transport_type_e;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/pjsip/pjsua/pjsip_transport_type_e;->ENUM$VALUES:[Lorg/pjsip/pjsua/pjsip_transport_type_e;

    array-length v1, v0

    new-array v2, v1, [Lorg/pjsip/pjsua/pjsip_transport_type_e;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lorg/pjsip/pjsua/pjsip_transport_type_e;->swigValue:I

    return v0
.end method
