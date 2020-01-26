.class public Lcom/csipsimple/utils/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field private static final CACHE_SIZE:I = 0x49

.field private static EMPTY:[Ljava/lang/Object;

.field private static sCache:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/csipsimple/utils/ArrayUtils;->EMPTY:[Ljava/lang/Object;

    .line 42
    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/csipsimple/utils/ArrayUtils;->sCache:[Ljava/lang/Object;

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains([II)Z
    .locals 4
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 147
    array-length v3, p0

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 152
    :goto_1
    return v1

    .line 147
    :cond_0
    aget v0, p0, v2

    .line 148
    .local v0, "element":I
    if-ne v0, p1, :cond_1

    .line 149
    const/4 v1, 0x1

    goto :goto_1

    .line 147
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p0, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .prologue
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    array-length v4, p0

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_1

    move v1, v2

    .line 143
    :cond_0
    :goto_1
    return v1

    .line 136
    :cond_1
    aget-object v0, p0, v3

    .line 137
    .local v0, "element":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_3

    .line 138
    if-eqz p1, :cond_0

    .line 136
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    :cond_3
    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1
.end method

.method public static emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v2, Ljava/lang/Object;

    if-ne p0, v2, :cond_0

    .line 113
    sget-object v1, Lcom/csipsimple/utils/ArrayUtils;->EMPTY:[Ljava/lang/Object;

    .line 126
    :goto_0
    return-object v1

    .line 116
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    rem-int/lit8 v0, v2, 0x49

    .line 117
    .local v0, "bucket":I
    sget-object v2, Lcom/csipsimple/utils/ArrayUtils;->sCache:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 119
    .local v1, "cache":Ljava/lang/Object;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p0, :cond_2

    .line 120
    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 121
    sget-object v2, Lcom/csipsimple/utils/ArrayUtils;->sCache:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 126
    :cond_2
    check-cast v1, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public static equals([B[BI)Z
    .locals 5
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B
    .param p2, "length"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    if-ne p0, p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 94
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    if-lt v3, p2, :cond_2

    array-length v3, p1

    if-ge v3, p2, :cond_3

    :cond_2
    move v1, v2

    .line 95
    goto :goto_0

    .line 97
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_0

    .line 98
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 99
    goto :goto_0

    .line 97
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static idealBooleanArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 55
    invoke-static {p0}, Lcom/csipsimple/utils/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    return v0
.end method

.method public static idealByteArraySize(I)I
    .locals 3
    .param p0, "need"    # I

    .prologue
    const/4 v2, 0x1

    .line 47
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 51
    .end local p0    # "need":I
    :goto_1
    return p0

    .line 48
    .restart local p0    # "need":I
    :cond_0
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_1

    .line 49
    shl-int v1, v2, v0

    add-int/lit8 p0, v1, -0xc

    goto :goto_1

    .line 47
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static idealCharArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 63
    mul-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Lcom/csipsimple/utils/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static idealFloatArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 71
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lcom/csipsimple/utils/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealIntArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 67
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lcom/csipsimple/utils/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealLongArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 79
    mul-int/lit8 v0, p0, 0x8

    invoke-static {v0}, Lcom/csipsimple/utils/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static idealObjectArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 75
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lcom/csipsimple/utils/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealShortArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 59
    mul-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Lcom/csipsimple/utils/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method
