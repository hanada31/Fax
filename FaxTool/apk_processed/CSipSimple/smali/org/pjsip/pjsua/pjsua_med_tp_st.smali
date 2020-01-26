.class public final enum Lorg/pjsip/pjsua/pjsua_med_tp_st;
.super Ljava/lang/Enum;
.source "pjsua_med_tp_st.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pjsip/pjsua/pjsua_med_tp_st$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/pjsip/pjsua/pjsua_med_tp_st;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/pjsip/pjsua/pjsua_med_tp_st;

.field public static final enum PJSUA_MED_TP_CREATING:Lorg/pjsip/pjsua/pjsua_med_tp_st;

.field public static final enum PJSUA_MED_TP_DISABLED:Lorg/pjsip/pjsua/pjsua_med_tp_st;

.field public static final enum PJSUA_MED_TP_IDLE:Lorg/pjsip/pjsua/pjsua_med_tp_st;

.field public static final enum PJSUA_MED_TP_INIT:Lorg/pjsip/pjsua/pjsua_med_tp_st;

.field public static final enum PJSUA_MED_TP_NULL:Lorg/pjsip/pjsua/pjsua_med_tp_st;

.field public static final enum PJSUA_MED_TP_RUNNING:Lorg/pjsip/pjsua/pjsua_med_tp_st;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lorg/pjsip/pjsua/pjsua_med_tp_st;

    const-string v1, "PJSUA_MED_TP_NULL"

    invoke-direct {v0, v1, v3}, Lorg/pjsip/pjsua/pjsua_med_tp_st;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pjsip/pjsua/pjsua_med_tp_st;->PJSUA_MED_TP_NULL:Lorg/pjsip/pjsua/pjsua_med_tp_st;

    .line 13
    new-instance v0, Lorg/pjsip/pjsua/pjsua_med_tp_st;

    const-string v1, "PJSUA_MED_TP_CREATING"

    invoke-direct {v0, v1, v4}, Lorg/pjsip/pjsua/pjsua_med_tp_st;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pjsip/pjsua/pjsua_med_tp_st;->PJSUA_MED_TP_CREATING:Lorg/pjsip/pjsua/pjsua_med_tp_st;

    .line 14
    new-instance v0, Lorg/pjsip/pjsua/pjsua_med_tp_st;

    const-string v1, "PJSUA_MED_TP_IDLE"

    invoke-direct {v0, v1, v5}, Lorg/pjsip/pjsua/pjsua_med_tp_st;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pjsip/pjsua/pjsua_med_tp_st;->PJSUA_MED_TP_IDLE:Lorg/pjsip/pjsua/pjsua_med_tp_st;

    .line 15
    new-instance v0, Lorg/pjsip/pjsua/pjsua_med_tp_st;

    const-string v1, "PJSUA_MED_TP_INIT"

    invoke-direct {v0, v1, v6}, Lorg/pjsip/pjsua/pjsua_med_tp_st;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pjsip/pjsua/pjsua_med_tp_st;->PJSUA_MED_TP_INIT:Lorg/pjsip/pjsua/pjsua_med_tp_st;

    .line 16
    new-instance v0, Lorg/pjsip/pjsua/pjsua_med_tp_st;

    const-string v1, "PJSUA_MED_TP_RUNNING"

    invoke-direct {v0, v1, v7}, Lorg/pjsip/pjsua/pjsua_med_tp_st;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pjsip/pjsua/pjsua_med_tp_st;->PJSUA_MED_TP_RUNNING:Lorg/pjsip/pjsua/pjsua_med_tp_st;

    .line 17
    new-instance v0, Lorg/pjsip/pjsua/pjsua_med_tp_st;

    const-string v1, "PJSUA_MED_TP_DISABLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_med_tp_st;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pjsip/pjsua/pjsua_med_tp_st;->PJSUA_MED_TP_DISABLED:Lorg/pjsip/pjsua/pjsua_med_tp_st;

    .line 11
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/pjsip/pjsua/pjsua_med_tp_st;

    sget-object v1, Lorg/pjsip/pjsua/pjsua_med_tp_st;->PJSUA_MED_TP_NULL:Lorg/pjsip/pjsua/pjsua_med_tp_st;

    aput-object v1, v0, v3

    sget-object v1, Lorg/pjsip/pjsua/pjsua_med_tp_st;->PJSUA_MED_TP_CREATING:Lorg/pjsip/pjsua/pjsua_med_tp_st;

    aput-object v1, v0, v4

    sget-object v1, Lorg/pjsip/pjsua/pjsua_med_tp_st;->PJSUA_MED_TP_IDLE:Lorg/pjsip/pjsua/pjsua_med_tp_st;

    aput-object v1, v0, v5

    sget-object v1, Lorg/pjsip/pjsua/pjsua_med_tp_st;->PJSUA_MED_TP_INIT:Lorg/pjsip/pjsua/pjsua_med_tp_st;

    aput-object v1, v0, v6

    sget-object v1, Lorg/pjsip/pjsua/pjsua_med_tp_st;->PJSUA_MED_TP_RUNNING:Lorg/pjsip/pjsua/pjsua_med_tp_st;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/pjsip/pjsua/pjsua_med_tp_st;->PJSUA_MED_TP_DISABLED:Lorg/pjsip/pjsua/pjsua_med_tp_st;

    aput-object v2, v0, v1

    sput-object v0, Lorg/pjsip/pjsua/pjsua_med_tp_st;->ENUM$VALUES:[Lorg/pjsip/pjsua/pjsua_med_tp_st;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    invoke-static {}, Lorg/pjsip/pjsua/pjsua_med_tp_st$SwigNext;->access$0()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lorg/pjsip/pjsua/pjsua_med_tp_st$SwigNext;->access$1(I)V

    iput v0, p0, Lorg/pjsip/pjsua/pjsua_med_tp_st;->swigValue:I

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "swigValue"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lorg/pjsip/pjsua/pjsua_med_tp_st;->swigValue:I

    .line 41
    add-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua_med_tp_st$SwigNext;->access$1(I)V

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/pjsip/pjsua/pjsua_med_tp_st;)V
    .locals 1
    .param p3, "swigEnum"    # Lorg/pjsip/pjsua/pjsua_med_tp_st;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iget v0, p3, Lorg/pjsip/pjsua/pjsua_med_tp_st;->swigValue:I

    iput v0, p0, Lorg/pjsip/pjsua/pjsua_med_tp_st;->swigValue:I

    .line 47
    iget v0, p0, Lorg/pjsip/pjsua/pjsua_med_tp_st;->swigValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua_med_tp_st$SwigNext;->access$1(I)V

    .line 48
    return-void
.end method

.method public static swigToEnum(I)Lorg/pjsip/pjsua/pjsua_med_tp_st;
    .locals 5
    .param p0, "swigValue"    # I

    .prologue
    .line 24
    const-class v2, Lorg/pjsip/pjsua/pjsua_med_tp_st;

    invoke-virtual {v2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/pjsip/pjsua/pjsua_med_tp_st;

    .line 25
    .local v1, "swigValues":[Lorg/pjsip/pjsua/pjsua_med_tp_st;
    array-length v2, v1

    if-ge p0, v2, :cond_1

    if-ltz p0, :cond_1

    aget-object v2, v1, p0

    iget v2, v2, Lorg/pjsip/pjsua/pjsua_med_tp_st;->swigValue:I

    if-ne v2, p0, :cond_1

    .line 26
    aget-object v0, v1, p0

    .line 29
    :cond_0
    return-object v0

    .line 27
    :cond_1
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_2

    .line 30
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No enum "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lorg/pjsip/pjsua/pjsua_med_tp_st;

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

    .line 27
    :cond_2
    aget-object v0, v1, v2

    .line 28
    .local v0, "swigEnum":Lorg/pjsip/pjsua/pjsua_med_tp_st;
    iget v4, v0, Lorg/pjsip/pjsua/pjsua_med_tp_st;->swigValue:I

    if-eq v4, p0, :cond_0

    .line 27
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/pjsip/pjsua/pjsua_med_tp_st;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/pjsip/pjsua/pjsua_med_tp_st;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/pjsip/pjsua/pjsua_med_tp_st;

    return-object v0
.end method

.method public static values()[Lorg/pjsip/pjsua/pjsua_med_tp_st;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/pjsip/pjsua/pjsua_med_tp_st;->ENUM$VALUES:[Lorg/pjsip/pjsua/pjsua_med_tp_st;

    array-length v1, v0

    new-array v2, v1, [Lorg/pjsip/pjsua/pjsua_med_tp_st;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lorg/pjsip/pjsua/pjsua_med_tp_st;->swigValue:I

    return v0
.end method
