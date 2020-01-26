.class public Lcom/csipsimple/ui/warnings/WarningSDCard;
.super Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;
.source "WarningSDCard.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/csipsimple/ui/warnings/WarningSDCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/csipsimple/ui/warnings/WarningSDCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method


# virtual methods
.method protected bindView()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;->bindView()V

    .line 45
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f030057

    return v0
.end method

.method protected getWarningKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/csipsimple/ui/warnings/WarningUtils;->WARNING_SDCARD:Ljava/lang/String;

    return-object v0
.end method
