.class public abstract Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;
.super Landroid/widget/RelativeLayout;
.source "WarningUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/warnings/WarningUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WarningBlockView"
.end annotation


# instance fields
.field protected onWarnChangedListener:Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 175
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;->onWarnChangedListener:Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;

    .line 176
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 177
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;->getLayout()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 178
    invoke-virtual {p0}, Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;->bindView()V

    .line 179
    return-void
.end method


# virtual methods
.method protected bindView()V
    .locals 2

    .prologue
    .line 197
    const v1, 0x7f0600f8

    invoke-virtual {p0, v1}, Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, "ignoreView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    :cond_0
    return-void
.end method

.method protected abstract getLayout()I
.end method

.method protected abstract getWarningKey()Ljava/lang/String;
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 214
    .local v0, "id":I
    const v1, 0x7f0600f8

    if-ne v0, v1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;->getWarningKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/csipsimple/ui/warnings/WarningUtils;->getIgnoreKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/csipsimple/api/SipConfigManager;->setPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 216
    iget-object v1, p0, Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;->onWarnChangedListener:Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;->onWarnChangedListener:Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;

    invoke-virtual {p0}, Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;->getWarningKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;->onWarningRemoved(Ljava/lang/String;)V

    .line 220
    :cond_0
    return-void
.end method

.method public setOnWarnChangedListener(Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;)V
    .locals 0
    .param p1, "onWarnChangedListener"    # Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;->onWarnChangedListener:Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;

    .line 208
    return-void
.end method
