.class Lcom/csipsimple/widgets/AccountChooserButton$AccountStatusContentObserver;
.super Landroid/database/ContentObserver;
.source "AccountChooserButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/widgets/AccountChooserButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountStatusContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/widgets/AccountChooserButton;


# direct methods
.method public constructor <init>(Lcom/csipsimple/widgets/AccountChooserButton;Landroid/os/Handler;)V
    .locals 0
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/csipsimple/widgets/AccountChooserButton$AccountStatusContentObserver;->this$0:Lcom/csipsimple/widgets/AccountChooserButton;

    .line 132
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 133
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 136
    const-string v0, "AccountChooserButton"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Accounts status.onChange( "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/csipsimple/widgets/AccountChooserButton$AccountStatusContentObserver;->this$0:Lcom/csipsimple/widgets/AccountChooserButton;

    invoke-static {v0}, Lcom/csipsimple/widgets/AccountChooserButton;->access$0(Lcom/csipsimple/widgets/AccountChooserButton;)V

    .line 138
    return-void
.end method
