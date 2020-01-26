.class public Lcom/csipsimple/widgets/ScreenLocker;
.super Landroid/widget/RelativeLayout;
.source "ScreenLocker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/widgets/ScreenLocker$LockTimerTask;,
        Lcom/csipsimple/widgets/ScreenLocker$ShowHideHandler;
    }
.end annotation


# static fields
.field private static final HIDE_LOCKER:I = 0x1

.field private static final SHOW_LOCKER:I = 0x0

.field public static final WAIT_BEFORE_LOCK_LONG:I = 0x2710

.field public static final WAIT_BEFORE_LOCK_SHORT:I = 0x1f4

.field public static final WAIT_BEFORE_LOCK_START:I = 0x1388


# instance fields
.field private activity:Landroid/app/Activity;

.field private handler:Landroid/os/Handler;

.field private lockTimer:Ljava/util/Timer;

.field private onLRChoiceListener:Lcom/csipsimple/widgets/IOnLeftRightChoice;

.field private stab:Lcom/csipsimple/widgets/SlidingTab;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 181
    new-instance v0, Lcom/csipsimple/widgets/ScreenLocker$ShowHideHandler;

    invoke-direct {v0, p0}, Lcom/csipsimple/widgets/ScreenLocker$ShowHideHandler;-><init>(Lcom/csipsimple/widgets/ScreenLocker;)V

    iput-object v0, p0, Lcom/csipsimple/widgets/ScreenLocker;->handler:Landroid/os/Handler;

    .line 61
    invoke-virtual {p0, p0}, Lcom/csipsimple/widgets/ScreenLocker;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/widgets/ScreenLocker;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/csipsimple/widgets/ScreenLocker;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private clearLockTasks()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/csipsimple/widgets/ScreenLocker;->lockTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/csipsimple/widgets/ScreenLocker;->lockTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 171
    iget-object v0, p0, Lcom/csipsimple/widgets/ScreenLocker;->lockTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/widgets/ScreenLocker;->lockTimer:Ljava/util/Timer;

    .line 174
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/csipsimple/widgets/ScreenLocker;->stab:Lcom/csipsimple/widgets/SlidingTab;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/csipsimple/widgets/ScreenLocker;->stab:Lcom/csipsimple/widgets/SlidingTab;

    invoke-virtual {v0}, Lcom/csipsimple/widgets/SlidingTab;->resetView()V

    .line 100
    :cond_0
    return-void
.end method

.method private updateTabLayout(IIII)V
    .locals 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 79
    iget-object v4, p0, Lcom/csipsimple/widgets/ScreenLocker;->stab:Lcom/csipsimple/widgets/SlidingTab;

    if-eqz v4, :cond_0

    .line 80
    sub-int v2, p3, p1

    .line 81
    .local v2, "parentWidth":I
    sub-int v1, p4, p2

    .line 82
    .local v1, "parentHeight":I
    mul-int/lit8 v4, v1, 0x3

    div-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcom/csipsimple/widgets/ScreenLocker;->stab:Lcom/csipsimple/widgets/SlidingTab;

    invoke-virtual {v5}, Lcom/csipsimple/widgets/SlidingTab;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 83
    .local v3, "top":I
    mul-int/lit8 v4, v1, 0x3

    div-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcom/csipsimple/widgets/ScreenLocker;->stab:Lcom/csipsimple/widgets/SlidingTab;

    invoke-virtual {v5}, Lcom/csipsimple/widgets/SlidingTab;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v0, v4, v5

    .line 84
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/csipsimple/widgets/ScreenLocker;->stab:Lcom/csipsimple/widgets/SlidingTab;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3, v2, v0}, Lcom/csipsimple/widgets/SlidingTab;->layout(IIII)V

    .line 86
    .end local v0    # "bottom":I
    .end local v1    # "parentHeight":I
    .end local v2    # "parentWidth":I
    .end local v3    # "top":I
    :cond_0
    return-void
.end method


# virtual methods
.method public delayedLock(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    const/4 v2, 0x0

    .line 135
    iget-object v0, p0, Lcom/csipsimple/widgets/ScreenLocker;->lockTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/csipsimple/widgets/ScreenLocker;->lockTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 137
    iget-object v0, p0, Lcom/csipsimple/widgets/ScreenLocker;->lockTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 138
    iput-object v2, p0, Lcom/csipsimple/widgets/ScreenLocker;->lockTimer:Ljava/util/Timer;

    .line 141
    :cond_0
    new-instance v0, Ljava/util/Timer;

    const-string v1, "ScreenLock-timer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/csipsimple/widgets/ScreenLocker;->lockTimer:Ljava/util/Timer;

    .line 143
    iget-object v0, p0, Lcom/csipsimple/widgets/ScreenLocker;->lockTimer:Ljava/util/Timer;

    new-instance v1, Lcom/csipsimple/widgets/ScreenLocker$LockTimerTask;

    invoke-direct {v1, p0, v2}, Lcom/csipsimple/widgets/ScreenLocker$LockTimerTask;-><init>(Lcom/csipsimple/widgets/ScreenLocker;Lcom/csipsimple/widgets/ScreenLocker$LockTimerTask;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 144
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 158
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/csipsimple/widgets/ScreenLocker;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/csipsimple/widgets/ScreenLocker;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/csipsimple/widgets/ScreenLocker;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 161
    .local v0, "win":Landroid/view/Window;
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 162
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 164
    .end local v0    # "win":Landroid/view/Window;
    :cond_0
    invoke-direct {p0}, Lcom/csipsimple/widgets/ScreenLocker;->clearLockTasks()V

    .line 165
    invoke-direct {p0}, Lcom/csipsimple/widgets/ScreenLocker;->reset()V

    .line 166
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 66
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 67
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/csipsimple/widgets/ScreenLocker;->updateTabLayout(IIII)V

    .line 68
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "anActivity"    # Landroid/app/Activity;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/csipsimple/widgets/ScreenLocker;->activity:Landroid/app/Activity;

    .line 90
    return-void
.end method

.method public setOnLeftRightListener(Lcom/csipsimple/widgets/IOnLeftRightChoice;)V
    .locals 0
    .param p1, "l"    # Lcom/csipsimple/widgets/IOnLeftRightChoice;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/csipsimple/widgets/ScreenLocker;->onLRChoiceListener:Lcom/csipsimple/widgets/IOnLeftRightChoice;

    .line 94
    return-void
.end method

.method public setVisibility(I)V
    .locals 6
    .param p1, "visibility"    # I

    .prologue
    const/4 v3, -0x1

    .line 109
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 111
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/csipsimple/widgets/ScreenLocker;->stab:Lcom/csipsimple/widgets/SlidingTab;

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Lcom/csipsimple/widgets/SlidingTab;

    invoke-virtual {p0}, Lcom/csipsimple/widgets/ScreenLocker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/csipsimple/widgets/SlidingTab;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/csipsimple/widgets/ScreenLocker;->stab:Lcom/csipsimple/widgets/SlidingTab;

    .line 113
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 115
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/csipsimple/widgets/ScreenLocker;->stab:Lcom/csipsimple/widgets/SlidingTab;

    invoke-virtual {v1, v0}, Lcom/csipsimple/widgets/SlidingTab;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v1, p0, Lcom/csipsimple/widgets/ScreenLocker;->stab:Lcom/csipsimple/widgets/SlidingTab;

    const v2, 0x7f0b0048

    invoke-virtual {v1, v2}, Lcom/csipsimple/widgets/SlidingTab;->setLeftHintText(I)V

    .line 117
    iget-object v1, p0, Lcom/csipsimple/widgets/ScreenLocker;->stab:Lcom/csipsimple/widgets/SlidingTab;

    const v2, 0x7f0200b4

    const v3, 0x7f02015f

    const v4, 0x7f02014f

    const v5, 0x7f020157

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/csipsimple/widgets/SlidingTab;->setLeftTabResources(IIII)V

    .line 118
    iget-object v1, p0, Lcom/csipsimple/widgets/ScreenLocker;->stab:Lcom/csipsimple/widgets/SlidingTab;

    const v2, 0x7f0b003a

    invoke-virtual {v1, v2}, Lcom/csipsimple/widgets/SlidingTab;->setRightHintText(I)V

    .line 119
    iget-object v1, p0, Lcom/csipsimple/widgets/ScreenLocker;->stab:Lcom/csipsimple/widgets/SlidingTab;

    iget-object v2, p0, Lcom/csipsimple/widgets/ScreenLocker;->onLRChoiceListener:Lcom/csipsimple/widgets/IOnLeftRightChoice;

    invoke-virtual {v1, v2}, Lcom/csipsimple/widgets/SlidingTab;->setOnLeftRightListener(Lcom/csipsimple/widgets/IOnLeftRightChoice;)V

    .line 121
    iget-object v1, p0, Lcom/csipsimple/widgets/ScreenLocker;->stab:Lcom/csipsimple/widgets/SlidingTab;

    invoke-virtual {p0, v1}, Lcom/csipsimple/widgets/ScreenLocker;->addView(Landroid/view/View;)V

    .line 122
    invoke-virtual {p0}, Lcom/csipsimple/widgets/ScreenLocker;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/csipsimple/widgets/ScreenLocker;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/csipsimple/widgets/ScreenLocker;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/csipsimple/widgets/ScreenLocker;->getBottom()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/csipsimple/widgets/ScreenLocker;->updateTabLayout(IIII)V

    .line 124
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 148
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/csipsimple/widgets/ScreenLocker;->setVisibility(I)V

    .line 149
    iget-object v1, p0, Lcom/csipsimple/widgets/ScreenLocker;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/csipsimple/widgets/ScreenLocker;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 151
    .local v0, "win":Landroid/view/Window;
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 152
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 154
    .end local v0    # "win":Landroid/view/Window;
    :cond_0
    invoke-direct {p0}, Lcom/csipsimple/widgets/ScreenLocker;->clearLockTasks()V

    .line 155
    return-void
.end method

.method public tearDown()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/csipsimple/widgets/ScreenLocker;->clearLockTasks()V

    .line 178
    return-void
.end method
