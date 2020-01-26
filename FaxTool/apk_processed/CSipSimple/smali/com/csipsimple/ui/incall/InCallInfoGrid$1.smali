.class Lcom/csipsimple/ui/incall/InCallInfoGrid$1;
.super Ljava/lang/Object;
.source "InCallInfoGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/incall/InCallInfoGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/incall/InCallInfoGrid;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/incall/InCallInfoGrid;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/incall/InCallInfoGrid$1;->this$0:Lcom/csipsimple/ui/incall/InCallInfoGrid;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallInfoGrid$1;->this$0:Lcom/csipsimple/ui/incall/InCallInfoGrid;

    invoke-virtual {v0}, Lcom/csipsimple/ui/incall/InCallInfoGrid;->populate()V

    .line 106
    return-void
.end method
