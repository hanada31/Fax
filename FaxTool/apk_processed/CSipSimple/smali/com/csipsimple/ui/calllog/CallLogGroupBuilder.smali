.class public Lcom/csipsimple/ui/calllog/CallLogGroupBuilder;
.super Ljava/lang/Object;
.source "CallLogGroupBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/calllog/CallLogGroupBuilder$GroupCreator;
    }
.end annotation


# instance fields
.field private final mGroupCreator:Lcom/csipsimple/ui/calllog/CallLogGroupBuilder$GroupCreator;


# direct methods
.method public constructor <init>(Lcom/csipsimple/ui/calllog/CallLogGroupBuilder$GroupCreator;)V
    .locals 0
    .param p1, "groupCreator"    # Lcom/csipsimple/ui/calllog/CallLogGroupBuilder$GroupCreator;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/csipsimple/ui/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/csipsimple/ui/calllog/CallLogGroupBuilder$GroupCreator;

    .line 50
    return-void
.end method

.method private addGroup(II)V
    .locals 2
    .param p1, "cursorPosition"    # I
    .param p2, "size"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/csipsimple/ui/calllog/CallLogGroupBuilder$GroupCreator;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/csipsimple/ui/calllog/CallLogGroupBuilder$GroupCreator;->addGroup(IIZ)V

    .line 127
    return-void
.end method

.method private equalNumbers(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "number1"    # Ljava/lang/String;
    .param p2, "number2"    # Ljava/lang/String;

    .prologue
    .line 135
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public addGroups(Landroid/database/Cursor;)V
    .locals 14
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v13, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 64
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 65
    .local v1, "count":I
    if-nez v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string v12, "number"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 69
    .local v6, "numberColIndex":I
    const-string v12, "type"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 71
    .local v9, "typeColIndex":I
    const/4 v2, 0x1

    .line 72
    .local v2, "currentGroupSize":I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 74
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "firstNumber":Ljava/lang/String;
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 77
    .local v4, "firstCallType":I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_2

    .line 113
    if-le v2, v10, :cond_0

    .line 114
    sub-int v10, v1, v2

    invoke-direct {p0, v10, v2}, Lcom/csipsimple/ui/calllog/CallLogGroupBuilder;->addGroup(II)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "currentNumber":Ljava/lang/String;
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 81
    .local v0, "callType":I
    invoke-direct {p0, v5, v3}, Lcom/csipsimple/ui/calllog/CallLogGroupBuilder;->equalNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 84
    .local v7, "sameNumber":Z
    if-nez v7, :cond_3

    .line 86
    const/4 v8, 0x0

    .line 95
    .local v8, "shouldGroup":Z
    :goto_2
    if-eqz v8, :cond_7

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 87
    .end local v8    # "shouldGroup":Z
    :cond_3
    if-ne v4, v13, :cond_5

    .line 89
    if-ne v0, v13, :cond_4

    move v8, v10

    .restart local v8    # "shouldGroup":Z
    :goto_3
    goto :goto_2

    .end local v8    # "shouldGroup":Z
    :cond_4
    move v8, v11

    goto :goto_3

    .line 92
    :cond_5
    if-eq v0, v10, :cond_6

    const/4 v12, 0x2

    if-eq v0, v12, :cond_6

    move v8, v11

    .restart local v8    # "shouldGroup":Z
    :goto_4
    goto :goto_2

    .end local v8    # "shouldGroup":Z
    :cond_6
    move v8, v10

    goto :goto_4

    .line 102
    .restart local v8    # "shouldGroup":Z
    :cond_7
    if-le v2, v10, :cond_8

    .line 103
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-direct {p0, v12, v2}, Lcom/csipsimple/ui/calllog/CallLogGroupBuilder;->addGroup(II)V

    .line 106
    :cond_8
    const/4 v2, 0x1

    .line 108
    move-object v5, v3

    .line 109
    move v4, v0

    goto :goto_1
.end method
