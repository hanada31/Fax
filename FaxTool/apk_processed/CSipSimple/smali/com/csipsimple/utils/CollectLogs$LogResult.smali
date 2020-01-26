.class Lcom/csipsimple/utils/CollectLogs$LogResult;
.super Ljava/lang/Object;
.source "CollectLogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/utils/CollectLogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogResult"
.end annotation


# instance fields
.field public file:Ljava/io/File;

.field public head:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;Ljava/io/File;)V
    .locals 0
    .param p1, "aHead"    # Ljava/lang/StringBuilder;
    .param p2, "aFile"    # Ljava/io/File;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/csipsimple/utils/CollectLogs$LogResult;->head:Ljava/lang/StringBuilder;

    .line 47
    iput-object p2, p0, Lcom/csipsimple/utils/CollectLogs$LogResult;->file:Ljava/io/File;

    .line 48
    return-void
.end method
