.class public Lcom/csipsimple/utils/SmileyParser;
.super Ljava/lang/Object;
.source "SmileyParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/utils/SmileyParser$Smileys;
    }
.end annotation


# static fields
.field public static final DEFAULT_SMILEY_NAMES:I = 0x7f0d0000

.field public static final DEFAULT_SMILEY_RES_IDS:[I

.field public static final DEFAULT_SMILEY_TEXTS:I = 0x7f0d0006

.field private static sInstance:Lcom/csipsimple/utils/SmileyParser;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPattern:Ljava/util/regex/Pattern;

.field private final mSmileyTexts:[Ljava/lang/String;

.field private final mSmileyToRes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 112
    invoke-static {v2}, Lcom/csipsimple/utils/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v2

    .line 113
    invoke-static {v3}, Lcom/csipsimple/utils/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v3

    .line 114
    invoke-static {v4}, Lcom/csipsimple/utils/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v4

    .line 115
    invoke-static {v5}, Lcom/csipsimple/utils/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v5

    .line 116
    invoke-static {v6}, Lcom/csipsimple/utils/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v6

    const/4 v1, 0x5

    .line 117
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/csipsimple/utils/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 118
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/csipsimple/utils/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 119
    const/4 v2, 0x7

    invoke-static {v2}, Lcom/csipsimple/utils/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 120
    const/16 v2, 0x8

    invoke-static {v2}, Lcom/csipsimple/utils/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 121
    const/16 v2, 0x9

    invoke-static {v2}, Lcom/csipsimple/utils/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 122
    const/16 v2, 0xa

    invoke-static {v2}, Lcom/csipsimple/utils/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 123
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/csipsimple/utils/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 124
    const/16 v2, 0xc

    invoke-static {v2}, Lcom/csipsimple/utils/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 125
    const/16 v2, 0xd

    invoke-static {v2}, Lcom/csipsimple/utils/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 126
    const/16 v2, 0xe

    invoke-static {v2}, Lcom/csipsimple/utils/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 127
    const/16 v2, 0xf

    invoke-static {v2}, Lcom/csipsimple/utils/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 128
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/csipsimple/utils/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    .line 111
    sput-object v0, Lcom/csipsimple/utils/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/csipsimple/utils/SmileyParser;->mContext:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/csipsimple/utils/SmileyParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/utils/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Lcom/csipsimple/utils/SmileyParser;->buildSmileyToRes()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/utils/SmileyParser;->mSmileyToRes:Ljava/util/Map;

    .line 62
    invoke-direct {p0}, Lcom/csipsimple/utils/SmileyParser;->buildPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/utils/SmileyParser;->mPattern:Ljava/util/regex/Pattern;

    .line 63
    return-void
.end method

.method private buildPattern()Ljava/util/regex/Pattern;
    .locals 6

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/csipsimple/utils/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 164
    .local v0, "patternString":Ljava/lang/StringBuilder;
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    iget-object v3, p0, Lcom/csipsimple/utils/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const-string v4, ")"

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    return-object v2

    .line 165
    :cond_0
    aget-object v1, v3, v2

    .line 166
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const/16 v5, 0x7c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private buildSmileyToRes()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    sget-object v2, Lcom/csipsimple/utils/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/csipsimple/utils/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 142
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Smiley resource ID/text mismatch"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/csipsimple/utils/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 147
    .local v1, "smileyToRes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/csipsimple/utils/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 151
    return-object v1

    .line 148
    :cond_1
    iget-object v2, p0, Lcom/csipsimple/utils/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/csipsimple/utils/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/csipsimple/utils/SmileyParser;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/csipsimple/utils/SmileyParser;->sInstance:Lcom/csipsimple/utils/SmileyParser;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    new-instance v0, Lcom/csipsimple/utils/SmileyParser;

    invoke-direct {v0, p0}, Lcom/csipsimple/utils/SmileyParser;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/csipsimple/utils/SmileyParser;->sInstance:Lcom/csipsimple/utils/SmileyParser;

    .line 51
    return-void
.end method


# virtual methods
.method public addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 185
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 187
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    iget-object v3, p0, Lcom/csipsimple/utils/SmileyParser;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 188
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    .line 195
    return-object v0

    .line 189
    :cond_0
    iget-object v3, p0, Lcom/csipsimple/utils/SmileyParser;->mSmileyToRes:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 190
    .local v2, "resId":I
    new-instance v3, Landroid/text/style/ImageSpan;

    iget-object v4, p0, Lcom/csipsimple/utils/SmileyParser;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    .line 191
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    .line 192
    const/16 v6, 0x21

    .line 190
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method
