.class public Lcom/csipsimple/ui/calllog/GroupingListAdapter$PositionMetadata;
.super Ljava/lang/Object;
.source "GroupingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/calllog/GroupingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PositionMetadata"
.end annotation


# instance fields
.field public childCount:I

.field public cursorPosition:I

.field public groupPosition:I

.field public isExpanded:Z

.field public itemType:I

.field public listPosition:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/csipsimple/ui/calllog/GroupingListAdapter$PositionMetadata;->listPosition:I

    .line 62
    return-void
.end method
