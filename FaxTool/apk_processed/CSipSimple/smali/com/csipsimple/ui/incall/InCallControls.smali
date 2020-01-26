.class public Lcom/csipsimple/ui/incall/InCallControls;
.super Landroid/widget/FrameLayout;
.source "InCallControls.java"

# interfaces
.implements Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "InCallControls"


# instance fields
.field private btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field private callOngoing:Z

.field private currentCall:Lcom/csipsimple/api/SipCallSession;

.field private lastMediaState:Lcom/csipsimple/api/MediaState;

.field onTriggerListener:Lcom/csipsimple/ui/incall/IOnCallActionTrigger;

.field private supportMultipleCalls:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/csipsimple/ui/incall/InCallControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/csipsimple/ui/incall/InCallControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput-boolean v6, p0, Lcom/csipsimple/ui/incall/InCallControls;->supportMultipleCalls:Z

    .line 111
    iput-boolean v6, p0, Lcom/csipsimple/ui/incall/InCallControls;->callOngoing:Z

    .line 72
    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/InCallControls;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/InCallControls;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "support_multiple_calls"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/csipsimple/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/csipsimple/ui/incall/InCallControls;->supportMultipleCalls:Z

    .line 76
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    .line 77
    const/4 v5, -0x2

    .line 76
    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 78
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Lcom/csipsimple/ui/incall/InCallControls$1;

    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/InCallControls;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/csipsimple/ui/incall/InCallControls$1;-><init>(Lcom/csipsimple/ui/incall/InCallControls;Landroid/content/Context;)V

    .line 85
    .local v2, "mActionMenuPresenter":Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;
    invoke-virtual {v2, v7}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/InCallControls;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 87
    invoke-virtual {v2, v4, v7}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 90
    const/16 v4, 0x14

    invoke-virtual {v2, v4}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 91
    new-instance v4, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/InCallControls;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/csipsimple/ui/incall/InCallControls;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 92
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallControls;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;)V

    .line 93
    new-instance v0, Lcom/actionbarsherlock/view/MenuInflater;

    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/InCallControls;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/actionbarsherlock/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v4, 0x7f0e0003

    iget-object v5, p0, Lcom/csipsimple/ui/incall/InCallControls;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v4, v5}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 95
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallControls;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;)V

    .line 96
    invoke-virtual {v2, p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/actionbarsherlock/internal/view/menu/MenuView;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    .line 97
    .local v3, "menuView":Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;
    const v4, 0x7f020003

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->setBackgroundResource(I)V

    .line 99
    invoke-virtual {p0, v3, v1}, Lcom/csipsimple/ui/incall/InCallControls;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .param p1, "whichHandle"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallControls;->onTriggerListener:Lcom/csipsimple/ui/incall/IOnCallActionTrigger;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallControls;->onTriggerListener:Lcom/csipsimple/ui/incall/IOnCallActionTrigger;

    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallControls;->currentCall:Lcom/csipsimple/api/SipCallSession;

    invoke-interface {v0, p1, v1}, Lcom/csipsimple/ui/incall/IOnCallActionTrigger;->onTrigger(ILcom/csipsimple/api/SipCallSession;)V

    .line 171
    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/incall/InCallControls;->setEnabledMediaButtons(Z)V

    .line 107
    return-void
.end method

.method public onMenuItemSelected(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 4
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 217
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 218
    .local v0, "id":I
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {p2, v1}, Lcom/actionbarsherlock/view/MenuItem;->setChecked(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 221
    :cond_0
    const v1, 0x7f060119

    if-ne v0, v1, :cond_3

    .line 222
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/csipsimple/ui/incall/InCallControls;->dispatchTriggerEvent(I)V

    .line 249
    :goto_1
    return v3

    :cond_1
    move v1, v3

    .line 219
    goto :goto_0

    .line 225
    :cond_2
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/csipsimple/ui/incall/InCallControls;->dispatchTriggerEvent(I)V

    goto :goto_1

    .line 228
    :cond_3
    const v1, 0x7f060117

    if-ne v0, v1, :cond_5

    .line 229
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 230
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/csipsimple/ui/incall/InCallControls;->dispatchTriggerEvent(I)V

    goto :goto_1

    .line 232
    :cond_4
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/csipsimple/ui/incall/InCallControls;->dispatchTriggerEvent(I)V

    goto :goto_1

    .line 235
    :cond_5
    const v1, 0x7f060118

    if-ne v0, v1, :cond_7

    .line 236
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 237
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/csipsimple/ui/incall/InCallControls;->dispatchTriggerEvent(I)V

    goto :goto_1

    .line 239
    :cond_6
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/csipsimple/ui/incall/InCallControls;->dispatchTriggerEvent(I)V

    goto :goto_1

    .line 242
    :cond_7
    const v1, 0x7f06011a

    if-ne v0, v1, :cond_8

    .line 243
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/csipsimple/ui/incall/InCallControls;->dispatchTriggerEvent(I)V

    goto :goto_1

    .line 245
    :cond_8
    const v1, 0x7f06011b

    if-ne v0, v1, :cond_9

    .line 246
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/csipsimple/ui/incall/InCallControls;->dispatchTriggerEvent(I)V

    goto :goto_1

    :cond_9
    move v3, v2

    .line 249
    goto :goto_1
.end method

.method public onMenuModeChange(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .prologue
    .line 255
    return-void
.end method

.method public setCallState(Lcom/csipsimple/api/SipCallSession;)V
    .locals 7
    .param p1, "callInfo"    # Lcom/csipsimple/api/SipCallSession;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 118
    iput-object p1, p0, Lcom/csipsimple/ui/incall/InCallControls;->currentCall:Lcom/csipsimple/api/SipCallSession;

    .line 120
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallControls;->currentCall:Lcom/csipsimple/api/SipCallSession;

    if-nez v1, :cond_0

    .line 121
    invoke-virtual {p0, v4}, Lcom/csipsimple/ui/incall/InCallControls;->setVisibility(I)V

    .line 155
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallControls;->currentCall:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->getCallState()I

    move-result v0

    .line 126
    .local v0, "state":I
    const-string v1, "InCallControls"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mode is : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    packed-switch v0, :pswitch_data_0

    .line 146
    :pswitch_0
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallControls;->currentCall:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {p0, v4}, Lcom/csipsimple/ui/incall/InCallControls;->setVisibility(I)V

    goto :goto_0

    .line 129
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/csipsimple/ui/incall/InCallControls;->setVisibility(I)V

    goto :goto_0

    .line 133
    :pswitch_2
    invoke-virtual {p0, v5}, Lcom/csipsimple/ui/incall/InCallControls;->setVisibility(I)V

    .line 134
    invoke-virtual {p0, v6}, Lcom/csipsimple/ui/incall/InCallControls;->setEnabledMediaButtons(Z)V

    goto :goto_0

    .line 137
    :pswitch_3
    invoke-virtual {p0, v5}, Lcom/csipsimple/ui/incall/InCallControls;->setVisibility(I)V

    .line 138
    invoke-virtual {p0, v6}, Lcom/csipsimple/ui/incall/InCallControls;->setEnabledMediaButtons(Z)V

    goto :goto_0

    .line 142
    :pswitch_4
    invoke-virtual {p0, v4}, Lcom/csipsimple/ui/incall/InCallControls;->setVisibility(I)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p0, v5}, Lcom/csipsimple/ui/incall/InCallControls;->setVisibility(I)V

    .line 150
    invoke-virtual {p0, v6}, Lcom/csipsimple/ui/incall/InCallControls;->setEnabledMediaButtons(Z)V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setEnabledMediaButtons(Z)V
    .locals 1
    .param p1, "isInCall"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/csipsimple/ui/incall/InCallControls;->callOngoing:Z

    .line 114
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallControls;->lastMediaState:Lcom/csipsimple/api/MediaState;

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/incall/InCallControls;->setMediaState(Lcom/csipsimple/api/MediaState;)V

    .line 115
    return-void
.end method

.method public setMediaState(Lcom/csipsimple/api/MediaState;)V
    .locals 7
    .param p1, "mediaState"    # Lcom/csipsimple/api/MediaState;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 174
    iput-object p1, p0, Lcom/csipsimple/ui/incall/InCallControls;->lastMediaState:Lcom/csipsimple/api/MediaState;

    .line 179
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallControls;->lastMediaState:Lcom/csipsimple/api/MediaState;

    if-nez v4, :cond_0

    .line 180
    iget-boolean v1, p0, Lcom/csipsimple/ui/incall/InCallControls;->callOngoing:Z

    .line 181
    .local v1, "enabled":Z
    const/4 v0, 0x0

    .line 186
    .local v0, "checked":Z
    :goto_0
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallControls;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v5, 0x7f060119

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/actionbarsherlock/view/MenuItem;->setChecked(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 189
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallControls;->lastMediaState:Lcom/csipsimple/api/MediaState;

    if-nez v4, :cond_2

    .line 190
    iget-boolean v1, p0, Lcom/csipsimple/ui/incall/InCallControls;->callOngoing:Z

    .line 191
    const/4 v0, 0x0

    .line 196
    :goto_1
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallControls;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v5, 0x7f060118

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/actionbarsherlock/view/MenuItem;->setChecked(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 200
    const-string v4, "InCallControls"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ">> Speaker "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallControls;->lastMediaState:Lcom/csipsimple/api/MediaState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallControls;->lastMediaState:Lcom/csipsimple/api/MediaState;

    if-nez v4, :cond_4

    .line 202
    iget-boolean v1, p0, Lcom/csipsimple/ui/incall/InCallControls;->callOngoing:Z

    .line 203
    const/4 v0, 0x0

    .line 209
    :goto_2
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallControls;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v5, 0x7f060117

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/actionbarsherlock/view/MenuItem;->setChecked(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 212
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallControls;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v5, 0x7f06011a

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    iget-boolean v5, p0, Lcom/csipsimple/ui/incall/InCallControls;->supportMultipleCalls:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/csipsimple/ui/incall/InCallControls;->callOngoing:Z

    if-eqz v5, :cond_6

    :goto_3
    invoke-interface {v4, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 213
    return-void

    .line 183
    .end local v0    # "checked":Z
    .end local v1    # "enabled":Z
    :cond_0
    iget-boolean v4, p0, Lcom/csipsimple/ui/incall/InCallControls;->callOngoing:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallControls;->lastMediaState:Lcom/csipsimple/api/MediaState;

    iget-boolean v4, v4, Lcom/csipsimple/api/MediaState;->canBluetoothSco:Z

    if-eqz v4, :cond_1

    move v1, v2

    .line 184
    .restart local v1    # "enabled":Z
    :goto_4
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallControls;->lastMediaState:Lcom/csipsimple/api/MediaState;

    iget-boolean v0, v4, Lcom/csipsimple/api/MediaState;->isBluetoothScoOn:Z

    .restart local v0    # "checked":Z
    goto :goto_0

    .end local v0    # "checked":Z
    .end local v1    # "enabled":Z
    :cond_1
    move v1, v3

    .line 183
    goto :goto_4

    .line 193
    .restart local v0    # "checked":Z
    .restart local v1    # "enabled":Z
    :cond_2
    iget-boolean v4, p0, Lcom/csipsimple/ui/incall/InCallControls;->callOngoing:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallControls;->lastMediaState:Lcom/csipsimple/api/MediaState;

    iget-boolean v4, v4, Lcom/csipsimple/api/MediaState;->canMicrophoneMute:Z

    if-eqz v4, :cond_3

    move v1, v2

    .line 194
    :goto_5
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallControls;->lastMediaState:Lcom/csipsimple/api/MediaState;

    iget-boolean v0, v4, Lcom/csipsimple/api/MediaState;->isMicrophoneMute:Z

    goto :goto_1

    :cond_3
    move v1, v3

    .line 193
    goto :goto_5

    .line 205
    :cond_4
    const-string v4, "InCallControls"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ">> Speaker "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallControls;->lastMediaState:Lcom/csipsimple/api/MediaState;

    iget-boolean v6, v6, Lcom/csipsimple/api/MediaState;->isSpeakerphoneOn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-boolean v4, p0, Lcom/csipsimple/ui/incall/InCallControls;->callOngoing:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallControls;->lastMediaState:Lcom/csipsimple/api/MediaState;

    iget-boolean v4, v4, Lcom/csipsimple/api/MediaState;->canSpeakerphoneOn:Z

    if-eqz v4, :cond_5

    move v1, v2

    .line 207
    :goto_6
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallControls;->lastMediaState:Lcom/csipsimple/api/MediaState;

    iget-boolean v0, v4, Lcom/csipsimple/api/MediaState;->isSpeakerphoneOn:Z

    goto :goto_2

    :cond_5
    move v1, v3

    .line 206
    goto :goto_6

    :cond_6
    move v2, v3

    .line 212
    goto :goto_3
.end method

.method public setOnTriggerListener(Lcom/csipsimple/ui/incall/IOnCallActionTrigger;)V
    .locals 0
    .param p1, "listener"    # Lcom/csipsimple/ui/incall/IOnCallActionTrigger;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/csipsimple/ui/incall/InCallControls;->onTriggerListener:Lcom/csipsimple/ui/incall/IOnCallActionTrigger;

    .line 165
    return-void
.end method
