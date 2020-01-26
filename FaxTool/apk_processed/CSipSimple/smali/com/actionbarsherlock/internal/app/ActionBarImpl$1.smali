.class Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;
.super Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    .line 111
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$0(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$0(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->setSupportTranslationY(F)V

    .line 116
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$1(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setSupportTranslationY(F)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$2(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$3(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$2(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$1(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$1(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 123
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$4(Lcom/actionbarsherlock/internal/app/ActionBarImpl;Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    .line 124
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->completeDeferredDestroyActionMode()V

    .line 125
    return-void
.end method
