.class public Lcom/csipsimple/ui/warnings/WarningVpnIcs;
.super Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;
.source "WarningVpnIcs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/csipsimple/ui/warnings/WarningVpnIcs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/csipsimple/ui/warnings/WarningVpnIcs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method


# virtual methods
.method protected bindView()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;->bindView()V

    .line 55
    const v0, 0x7f0600fc

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/warnings/WarningVpnIcs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v0, 0x7f0600fd

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/warnings/WarningVpnIcs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f030058

    return v0
.end method

.method protected getWarningKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/csipsimple/ui/warnings/WarningUtils;->WARNING_VPN_ICS:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;->onClick(Landroid/view/View;)V

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 64
    .local v0, "id":I
    const v1, 0x7f0600fc

    if-ne v0, v1, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/csipsimple/ui/warnings/WarningVpnIcs;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "network_route_polling"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/csipsimple/api/SipConfigManager;->setPreferenceIntegerValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    iget-object v1, p0, Lcom/csipsimple/ui/warnings/WarningVpnIcs;->onWarnChangedListener:Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/csipsimple/ui/warnings/WarningVpnIcs;->onWarnChangedListener:Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;

    invoke-virtual {p0}, Lcom/csipsimple/ui/warnings/WarningVpnIcs;->getWarningKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;->onWarningRemoved(Ljava/lang/String;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const v1, 0x7f0600fd

    if-ne v0, v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/csipsimple/ui/warnings/WarningVpnIcs;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "network_route_polling"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/csipsimple/api/SipConfigManager;->setPreferenceIntegerValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    iget-object v1, p0, Lcom/csipsimple/ui/warnings/WarningVpnIcs;->onWarnChangedListener:Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;

    if-eqz v1, :cond_2

    .line 72
    iget-object v1, p0, Lcom/csipsimple/ui/warnings/WarningVpnIcs;->onWarnChangedListener:Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;

    invoke-virtual {p0}, Lcom/csipsimple/ui/warnings/WarningVpnIcs;->getWarningKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;->onWarningRemoved(Ljava/lang/String;)V

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/csipsimple/ui/warnings/WarningVpnIcs;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.csipsimple.service.ACTION_SIP_REQUEST_RESTART"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
