.class public final enum Lorg/pjsip/pjsua/pjsua_sip_timer_use;
.super Ljava/lang/Enum;
.source "pjsua_sip_timer_use.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pjsip/pjsua/pjsua_sip_timer_use$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/pjsip/pjsua/pjsua_sip_timer_use;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/pjsip/pjsua/pjsua_sip_timer_use;

.field public static final enum PJSUA_SIP_TIMER_ALWAYS:Lorg/pjsip/pjsua/pjsua_sip_timer_use;

.field public static final enum PJSUA_SIP_TIMER_INACTIVE:Lorg/pjsip/pjsua/pjsua_sip_timer_use;

.field public static final enum PJSUA_SIP_TIMER_OPTIONAL:Lorg/pjsip/pjsua/pjsua_sip_timer_use;

.field public static final enum PJSUA_SIP_TIMER_REQUIRED:Lorg/pjsip/pjsua/pjsua_sip_timer_use;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lorg/pjsip/pjsua/pjsua_sip_timer_use;

    const-string v1, "PJSUA_SIP_TIMER_INACTIVE"

    invoke-direct {v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_sip_timer_use;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pjsip/pjsua/pjsua_sip_timer_use;->PJSUA_SIP_TIMER_INACTIVE:Lorg/pjsip/pjsua/pjsua_sip_timer_use;

    .line 13
    new-instance v0, Lorg/pjsip/pjsua/pjsua_sip_timer_use;

    const-string v1, "PJSUA_SIP_TIMER_OPTIONAL"

    invoke-direct {v0, v1, v3}, Lorg/pjsip/pjsua/pjsua_sip_timer_use;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pjsip/pjsua/pjsua_sip_timer_use;->PJSUA_SIP_TIMER_OPTIONAL:Lorg/pjsip/pjsua/pjsua_sip_timer_use;

    .line 14
    new-instance v0, Lorg/pjsip/pjsua/pjsua_sip_timer_use;

    const-string v1, "PJSUA_SIP_TIMER_REQUIRED"

    invoke-direct {v0, v1, v4}, Lorg/pjsip/pjsua/pjsua_sip_timer_use;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pjsip/pjsua/pjsua_sip_timer_use;->PJSUA_SIP_TIMER_REQUIRED:Lorg/pjsip/pjsua/pjsua_sip_timer_use;

    .line 15
    new-instance v0, Lorg/pjsip/pjsua/pjsua_sip_timer_use;

    const-string v1, "PJSUA_SIP_TIMER_ALWAYS"

    invoke-direct {v0, v1, v5}, Lorg/pjsip/pjsua/pjsua_sip_timer_use;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pjsip/pjsua/pjsua_sip_timer_use;->PJSUA_SIP_TIMER_ALWAYS:Lorg/pjsip/pjsua/pjsua_sip_timer_use;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/pjsip/pjsua/pjsua_sip_timer_use;

    sget-object v1, Lorg/pjsip/pjsua/pjsua_sip_timer_use;->PJSUA_SIP_TIMER_INACTIVE:Lorg/pjsip/pjsua/pjsua_sip_timer_use;

    aput-object v1, v0, v2

    sget-object v1, Lorg/pjsip/pjsua/pjsua_sip_timer_use;->PJSUA_SIP_TIMER_OPTIONAL:Lorg/pjsip/pjsua/pjsua_sip_timer_use;

    aput-object v1, v0, v3

    sget-object v1, Lorg/pjsip/pjsua/pjsua_sip_timer_use;->PJSUA_SIP_TIMER_REQUIRED:Lorg/pjsip/pjsua/pjsua_sip_timer_use;

    aput-object v1, v0, v4

    sget-object v1, Lorg/pjsip/pjsua/pjsua_sip_timer_use;->PJSUA_SIP_TIMER_ALWAYS:Lorg/pjsip/pjsua/pjsua_sip_timer_use;

    aput-object v1, v0, v5

    sput-object v0, Lorg/pjsip/pjsua/pjsua_sip_timer_use;->ENUM$VALUES:[Lorg/pjsip/pjsua/pjsua_sip_timer_use;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    invoke-static {}, Lorg/pjsip/pjsua/pjsua_sip_timer_use$SwigNext;->access$0()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lorg/pjsip/pjsua/pjsua_sip_timer_use$SwigNext;->access$1(I)V

    iput v0, p0, Lorg/pjsip/pjsua/pjsua_sip_timer_use;->swigValue:I

    .line 34
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "swigValue"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lorg/pjsip/pjsua/pjsua_sip_timer_use;->swigValue:I

    .line 39
    add-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua_sip_timer_use$SwigNext;->access$1(I)V

    .line 40
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/pjsip/pjsua/pjsua_sip_timer_use;)V
    .locals 1
    .param p3, "swigEnum"    # Lorg/pjsip/pjsua/pjsua_sip_timer_use;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iget v0, p3, Lorg/pjsip/pjsua/pjsua_sip_timer_use;->swigValue:I

    iput v0, p0, Lorg/pjsip/pjsua/pjsua_sip_timer_use;->swigValue:I

    .line 45
    iget v0, p0, Lorg/pjsip/pjsua/pjsua_sip_timer_use;->swigValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua_sip_timer_use$SwigNext;->access$1(I)V

    .line 46
    return-void
.end method

.method public static swigToEnum(I)Lorg/pjsip/pjsua/pjsua_sip_timer_use;
    .locals 5
    .param p0, "swigValue"    # I

    .prologue
    .line 22
    const-class v2, Lorg/pjsip/pjsua/pjsua_sip_timer_use;

    invoke-virtual {v2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/pjsip/pjsua/pjsua_sip_timer_use;

    .line 23
    .local v1, "swigValues":[Lorg/pjsip/pjsua/pjsua_sip_timer_use;
    array-length v2, v1

    if-ge p0, v2, :cond_1

    if-ltz p0, :cond_1

    aget-object v2, v1, p0

    iget v2, v2, Lorg/pjsip/pjsua/pjsua_sip_timer_use;->swigValue:I

    if-ne v2, p0, :cond_1

    .line 24
    aget-object v0, v1, p0

    .line 27
    :cond_0
    return-object v0

    .line 25
    :cond_1
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_2

    .line 28
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No enum "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lorg/pjsip/pjsua/pjsua_sip_timer_use;

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

    .line 25
    :cond_2
    aget-object v0, v1, v2

    .line 26
    .local v0, "swigEnum":Lorg/pjsip/pjsua/pjsua_sip_timer_use;
    iget v4, v0, Lorg/pjsip/pjsua/pjsua_sip_timer_use;->swigValue:I

    if-eq v4, p0, :cond_0

    .line 25
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/pjsip/pjsua/pjsua_sip_timer_use;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/pjsip/pjsua/pjsua_sip_timer_use;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/pjsip/pjsua/pjsua_sip_timer_use;

    return-object v0
.end method

.method public static values()[Lorg/pjsip/pjsua/pjsua_sip_timer_use;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/pjsip/pjsua/pjsua_sip_timer_use;->ENUM$VALUES:[Lorg/pjsip/pjsua/pjsua_sip_timer_use;

    array-length v1, v0

    new-array v2, v1, [Lorg/pjsip/pjsua/pjsua_sip_timer_use;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lorg/pjsip/pjsua/pjsua_sip_timer_use;->swigValue:I

    return v0
.end method
