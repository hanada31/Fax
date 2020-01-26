.class public Lcom/csipsimple/ui/incall/InCallAnswerControls;
.super Landroid/widget/RelativeLayout;
.source "InCallAnswerControls.java"

# interfaces
.implements Lcom/csipsimple/widgets/IOnLeftRightChoice;


# static fields
.field private static final MODE_LOCKER:I = 0x0

.field private static final MODE_NO_ACTION:I = 0x1

.field private static final THIS_FILE:Ljava/lang/String; = "InCallAnswerControls"


# instance fields
.field private alternateLockerWidget:Lcom/csipsimple/widgets/AlternateUnlocker;

.field private controlMode:I

.field private currentCall:Lcom/csipsimple/api/SipCallSession;

.field private onTriggerListener:Lcom/csipsimple/ui/incall/IOnCallActionTrigger;

.field private slidingTabWidget:Lcom/csipsimple/widgets/SlidingTab;

.field private useSlider:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/csipsimple/ui/incall/InCallAnswerControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/csipsimple/ui/incall/InCallAnswerControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    iput-boolean v1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->useSlider:Z

    .line 72
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/incall/InCallAnswerControls;->setGravity(I)V

    .line 73
    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/InCallAnswerControls;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    invoke-static {}, Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;->getInstance()Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;

    move-result-object v0

    .line 75
    .local v0, "accessibilityManager":Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;
    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/InCallAnswerControls;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;->init(Landroid/content/Context;)V

    .line 76
    invoke-virtual {v0}, Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    const-string v2, "use_alternate_unlocker"

    iget-boolean v3, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->useSlider:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/csipsimple/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->useSlider:Z

    .line 81
    .end local v0    # "accessibilityManager":Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;
    :cond_0
    return-void

    .line 77
    .restart local v0    # "accessibilityManager":Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .param p1, "whichHandle"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->onTriggerListener:Lcom/csipsimple/ui/incall/IOnCallActionTrigger;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->onTriggerListener:Lcom/csipsimple/ui/incall/IOnCallActionTrigger;

    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->currentCall:Lcom/csipsimple/api/SipCallSession;

    invoke-interface {v0, p1, v1}, Lcom/csipsimple/ui/incall/IOnCallActionTrigger;->onTrigger(ILcom/csipsimple/api/SipCallSession;)V

    .line 170
    :cond_0
    return-void
.end method

.method private setCallLockerVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    const/4 v3, -0x1

    .line 92
    if-nez p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->controlMode:I

    .line 93
    invoke-virtual {p0, p1}, Lcom/csipsimple/ui/incall/InCallAnswerControls;->setVisibility(I)V

    .line 94
    if-nez p1, :cond_0

    .line 96
    iget-boolean v1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->useSlider:Z

    if-eqz v1, :cond_3

    .line 97
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->slidingTabWidget:Lcom/csipsimple/widgets/SlidingTab;

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Lcom/csipsimple/widgets/SlidingTab;

    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/InCallAnswerControls;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/csipsimple/widgets/SlidingTab;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->slidingTabWidget:Lcom/csipsimple/widgets/SlidingTab;

    .line 99
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->slidingTabWidget:Lcom/csipsimple/widgets/SlidingTab;

    invoke-virtual {v1, p0}, Lcom/csipsimple/widgets/SlidingTab;->setOnLeftRightListener(Lcom/csipsimple/widgets/IOnLeftRightChoice;)V

    .line 100
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->slidingTabWidget:Lcom/csipsimple/widgets/SlidingTab;

    const/4 v2, -0x2

    invoke-virtual {p0, v1, v3, v2}, Lcom/csipsimple/ui/incall/InCallAnswerControls;->addView(Landroid/view/View;II)V

    .line 101
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->slidingTabWidget:Lcom/csipsimple/widgets/SlidingTab;

    const v2, 0x7f0b0038

    invoke-virtual {v1, v2}, Lcom/csipsimple/widgets/SlidingTab;->setLeftHintText(I)V

    .line 102
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->slidingTabWidget:Lcom/csipsimple/widgets/SlidingTab;

    const v2, 0x7f0b0039

    invoke-virtual {v1, v2}, Lcom/csipsimple/widgets/SlidingTab;->setRightHintText(I)V

    .line 103
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->slidingTabWidget:Lcom/csipsimple/widgets/SlidingTab;

    invoke-virtual {v1}, Lcom/csipsimple/widgets/SlidingTab;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 104
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 105
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->slidingTabWidget:Lcom/csipsimple/widgets/SlidingTab;

    invoke-virtual {v1, v0}, Lcom/csipsimple/widgets/SlidingTab;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->slidingTabWidget:Lcom/csipsimple/widgets/SlidingTab;

    if-eqz v1, :cond_4

    .line 117
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->slidingTabWidget:Lcom/csipsimple/widgets/SlidingTab;

    invoke-virtual {v1, p1}, Lcom/csipsimple/widgets/SlidingTab;->setVisibility(I)V

    .line 121
    :cond_1
    :goto_2
    return-void

    .line 92
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 108
    :cond_3
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->alternateLockerWidget:Lcom/csipsimple/widgets/AlternateUnlocker;

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Lcom/csipsimple/widgets/AlternateUnlocker;

    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/InCallAnswerControls;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/csipsimple/widgets/AlternateUnlocker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->alternateLockerWidget:Lcom/csipsimple/widgets/AlternateUnlocker;

    .line 110
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->alternateLockerWidget:Lcom/csipsimple/widgets/AlternateUnlocker;

    invoke-virtual {v1, p0}, Lcom/csipsimple/widgets/AlternateUnlocker;->setOnLeftRightListener(Lcom/csipsimple/widgets/IOnLeftRightChoice;)V

    .line 111
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->alternateLockerWidget:Lcom/csipsimple/widgets/AlternateUnlocker;

    invoke-virtual {p0, v1, v3, v3}, Lcom/csipsimple/ui/incall/InCallAnswerControls;->addView(Landroid/view/View;II)V

    goto :goto_1

    .line 118
    :cond_4
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->alternateLockerWidget:Lcom/csipsimple/widgets/AlternateUnlocker;

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->alternateLockerWidget:Lcom/csipsimple/widgets/AlternateUnlocker;

    invoke-virtual {v1, p1}, Lcom/csipsimple/widgets/AlternateUnlocker;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public applyTheme(Lcom/csipsimple/utils/Theme;)V
    .locals 5
    .param p1, "t"    # Lcom/csipsimple/utils/Theme;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->slidingTabWidget:Lcom/csipsimple/widgets/SlidingTab;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->slidingTabWidget:Lcom/csipsimple/widgets/SlidingTab;

    const-string v1, "ic_jog_dial_answer"

    invoke-virtual {p1, v1}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 261
    const-string v2, "jog_tab_target_green"

    invoke-virtual {p1, v2}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 262
    const-string v3, "jog_tab_bar_left_answer"

    invoke-virtual {p1, v3}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 263
    const-string v4, "jog_tab_left_answer"

    invoke-virtual {p1, v4}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 260
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/csipsimple/widgets/SlidingTab;->setLeftTabDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 265
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->slidingTabWidget:Lcom/csipsimple/widgets/SlidingTab;

    const-string v1, "ic_jog_dial_decline"

    invoke-virtual {p1, v1}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 266
    const-string v2, "jog_tab_target_red"

    invoke-virtual {p1, v2}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 267
    const-string v3, "jog_tab_bar_right_decline"

    invoke-virtual {p1, v3}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 268
    const-string v4, "jog_tab_right_decline"

    invoke-virtual {p1, v4}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 265
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/csipsimple/widgets/SlidingTab;->setRightTabDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 271
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->controlMode:I

    .line 88
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 203
    const-string v1, "InCallAnswerControls"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Hey you hit the key : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget v1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->controlMode:I

    if-nez v1, :cond_0

    .line 205
    packed-switch p1, :pswitch_data_0

    .line 218
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 207
    :pswitch_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/csipsimple/ui/incall/InCallAnswerControls;->dispatchTriggerEvent(I)V

    goto :goto_0

    .line 211
    :pswitch_1
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/csipsimple/ui/incall/InCallAnswerControls;->dispatchTriggerEvent(I)V

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLeftRightChoice(I)V
    .locals 3
    .param p1, "whichHandle"    # I

    .prologue
    .line 175
    const-string v0, "InCallAnswerControls"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Call controls receive info from slider "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget v0, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->controlMode:I

    if-eqz v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 194
    :goto_1
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->slidingTabWidget:Lcom/csipsimple/widgets/SlidingTab;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->slidingTabWidget:Lcom/csipsimple/widgets/SlidingTab;

    invoke-virtual {v0}, Lcom/csipsimple/widgets/SlidingTab;->resetView()V

    goto :goto_0

    .line 184
    :pswitch_0
    const-string v0, "InCallAnswerControls"

    const-string v1, "We take the call"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/csipsimple/ui/incall/InCallAnswerControls;->dispatchTriggerEvent(I)V

    goto :goto_1

    .line 189
    :pswitch_1
    const-string v0, "InCallAnswerControls"

    const-string v1, "We clear the call"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/csipsimple/ui/incall/InCallAnswerControls;->dispatchTriggerEvent(I)V

    goto :goto_1

    .line 182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCallState(Lcom/csipsimple/api/SipCallSession;)V
    .locals 4
    .param p1, "callInfo"    # Lcom/csipsimple/api/SipCallSession;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 125
    iput-object p1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->currentCall:Lcom/csipsimple/api/SipCallSession;

    .line 127
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->currentCall:Lcom/csipsimple/api/SipCallSession;

    if-nez v1, :cond_0

    .line 128
    invoke-direct {p0, v2}, Lcom/csipsimple/ui/incall/InCallAnswerControls;->setCallLockerVisibility(I)V

    .line 154
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->currentCall:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->getCallState()I

    move-result v0

    .line 133
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 146
    :pswitch_0
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->currentCall:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-direct {p0, v3}, Lcom/csipsimple/ui/incall/InCallAnswerControls;->setCallLockerVisibility(I)V

    goto :goto_0

    .line 135
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/csipsimple/ui/incall/InCallAnswerControls;->setCallLockerVisibility(I)V

    goto :goto_0

    .line 142
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/csipsimple/ui/incall/InCallAnswerControls;->setCallLockerVisibility(I)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-direct {p0, v2}, Lcom/csipsimple/ui/incall/InCallAnswerControls;->setCallLockerVisibility(I)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setOnTriggerListener(Lcom/csipsimple/ui/incall/IOnCallActionTrigger;)V
    .locals 0
    .param p1, "listener"    # Lcom/csipsimple/ui/incall/IOnCallActionTrigger;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/csipsimple/ui/incall/InCallAnswerControls;->onTriggerListener:Lcom/csipsimple/ui/incall/IOnCallActionTrigger;

    .line 164
    return-void
.end method
