.class Lcom/csipsimple/service/Downloader$1;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Lcom/csipsimple/service/Downloader$Progress;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/service/Downloader;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private oldState:I

.field final synthetic this$0:Lcom/csipsimple/service/Downloader;

.field private final synthetic val$notification:Landroid/app/Notification;


# direct methods
.method constructor <init>(Lcom/csipsimple/service/Downloader;Landroid/app/Notification;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/service/Downloader$1;->this$0:Lcom/csipsimple/service/Downloader;

    iput-object p2, p0, Lcom/csipsimple/service/Downloader$1;->val$notification:Landroid/app/Notification;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/csipsimple/service/Downloader$1;->oldState:I

    return-void
.end method


# virtual methods
.method public run(JJ)V
    .locals 5
    .param p1, "progress"    # J
    .param p3, "total"    # J

    .prologue
    const/4 v4, 0x0

    .line 132
    long-to-float v1, p1

    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr v1, v2

    long-to-float v2, p3

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 133
    .local v0, "newState":I
    iget v1, p0, Lcom/csipsimple/service/Downloader$1;->oldState:I

    if-eq v1, v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/csipsimple/service/Downloader$1;->val$notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f060086

    const/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 136
    iget-object v1, p0, Lcom/csipsimple/service/Downloader$1;->this$0:Lcom/csipsimple/service/Downloader;

    invoke-static {v1}, Lcom/csipsimple/service/Downloader;->access$0(Lcom/csipsimple/service/Downloader;)Landroid/app/NotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/csipsimple/service/Downloader$1;->val$notification:Landroid/app/Notification;

    invoke-virtual {v1, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 137
    iput v0, p0, Lcom/csipsimple/service/Downloader$1;->oldState:I

    .line 140
    :cond_0
    return-void
.end method
