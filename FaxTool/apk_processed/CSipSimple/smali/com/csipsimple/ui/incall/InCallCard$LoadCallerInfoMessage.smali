.class Lcom/csipsimple/ui/incall/InCallCard$LoadCallerInfoMessage;
.super Ljava/lang/Object;
.source "InCallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/incall/InCallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadCallerInfoMessage"
.end annotation


# instance fields
.field callerInfo:Lcom/csipsimple/models/CallerInfo;

.field target:Lcom/csipsimple/ui/incall/InCallCard;

.field final synthetic this$0:Lcom/csipsimple/ui/incall/InCallCard;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/incall/InCallCard;Lcom/csipsimple/ui/incall/InCallCard;Lcom/csipsimple/models/CallerInfo;)V
    .locals 0
    .param p2, "callCard"    # Lcom/csipsimple/ui/incall/InCallCard;
    .param p3, "ci"    # Lcom/csipsimple/models/CallerInfo;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/csipsimple/ui/incall/InCallCard$LoadCallerInfoMessage;->this$0:Lcom/csipsimple/ui/incall/InCallCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-object p3, p0, Lcom/csipsimple/ui/incall/InCallCard$LoadCallerInfoMessage;->callerInfo:Lcom/csipsimple/models/CallerInfo;

    .line 450
    iput-object p2, p0, Lcom/csipsimple/ui/incall/InCallCard$LoadCallerInfoMessage;->target:Lcom/csipsimple/ui/incall/InCallCard;

    .line 451
    return-void
.end method
