.class Lcom/csipsimple/ui/incall/InCallMediaControl$UpdateConfLevelRunnable;
.super Ljava/lang/Object;
.source "InCallMediaControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/incall/InCallMediaControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateConfLevelRunnable"
.end annotation


# instance fields
.field private final mRx:I

.field private final mTx:I

.field final synthetic this$0:Lcom/csipsimple/ui/incall/InCallMediaControl;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/incall/InCallMediaControl;II)V
    .locals 0
    .param p2, "rx"    # I
    .param p3, "tx"    # I

    .prologue
    .line 405
    iput-object p1, p0, Lcom/csipsimple/ui/incall/InCallMediaControl$UpdateConfLevelRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallMediaControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput p2, p0, Lcom/csipsimple/ui/incall/InCallMediaControl$UpdateConfLevelRunnable;->mRx:I

    .line 407
    iput p3, p0, Lcom/csipsimple/ui/incall/InCallMediaControl$UpdateConfLevelRunnable;->mTx:I

    .line 408
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl$UpdateConfLevelRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallMediaControl;

    invoke-static {v0}, Lcom/csipsimple/ui/incall/InCallMediaControl;->access$3(Lcom/csipsimple/ui/incall/InCallMediaControl;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/csipsimple/ui/incall/InCallMediaControl$UpdateConfLevelRunnable;->mTx:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 412
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl$UpdateConfLevelRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallMediaControl;

    invoke-static {v0}, Lcom/csipsimple/ui/incall/InCallMediaControl;->access$4(Lcom/csipsimple/ui/incall/InCallMediaControl;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/csipsimple/ui/incall/InCallMediaControl$UpdateConfLevelRunnable;->mRx:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 413
    return-void
.end method
