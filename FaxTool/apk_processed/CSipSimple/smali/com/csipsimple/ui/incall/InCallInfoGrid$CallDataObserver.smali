.class Lcom/csipsimple/ui/incall/InCallInfoGrid$CallDataObserver;
.super Landroid/database/DataSetObserver;
.source "InCallInfoGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/incall/InCallInfoGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/incall/InCallInfoGrid;


# direct methods
.method private constructor <init>(Lcom/csipsimple/ui/incall/InCallInfoGrid;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/csipsimple/ui/incall/InCallInfoGrid$CallDataObserver;->this$0:Lcom/csipsimple/ui/incall/InCallInfoGrid;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/csipsimple/ui/incall/InCallInfoGrid;Lcom/csipsimple/ui/incall/InCallInfoGrid$CallDataObserver;)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/csipsimple/ui/incall/InCallInfoGrid$CallDataObserver;-><init>(Lcom/csipsimple/ui/incall/InCallInfoGrid;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallInfoGrid$CallDataObserver;->this$0:Lcom/csipsimple/ui/incall/InCallInfoGrid;

    invoke-virtual {v0}, Lcom/csipsimple/ui/incall/InCallInfoGrid;->populate()V

    .line 223
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallInfoGrid$CallDataObserver;->this$0:Lcom/csipsimple/ui/incall/InCallInfoGrid;

    invoke-virtual {v0}, Lcom/csipsimple/ui/incall/InCallInfoGrid;->populate()V

    .line 227
    return-void
.end method
