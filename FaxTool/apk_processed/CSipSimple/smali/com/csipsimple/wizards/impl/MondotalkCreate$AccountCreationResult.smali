.class Lcom/csipsimple/wizards/impl/MondotalkCreate$AccountCreationResult;
.super Ljava/lang/Object;
.source "MondotalkCreate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/wizards/impl/MondotalkCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountCreationResult"
.end annotation


# instance fields
.field final password:Ljava/lang/String;

.field final synthetic this$0:Lcom/csipsimple/wizards/impl/MondotalkCreate;

.field final username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/csipsimple/wizards/impl/MondotalkCreate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "uname"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate$AccountCreationResult;->this$0:Lcom/csipsimple/wizards/impl/MondotalkCreate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p2, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate$AccountCreationResult;->username:Ljava/lang/String;

    .line 335
    iput-object p3, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate$AccountCreationResult;->password:Ljava/lang/String;

    .line 336
    return-void
.end method
