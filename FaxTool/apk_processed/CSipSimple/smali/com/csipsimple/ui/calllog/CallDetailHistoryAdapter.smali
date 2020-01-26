.class public Lcom/csipsimple/ui/calllog/CallDetailHistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "CallDetailHistoryAdapter.java"


# static fields
.field private static final VIEW_TYPE_HEADER:I = 0x0

.field private static final VIEW_TYPE_HISTORY_ITEM:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mPhoneCallDetails:[Lcom/csipsimple/ui/calllog/PhoneCallDetails;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;[Lcom/csipsimple/ui/calllog/PhoneCallDetails;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p3, "phoneCallDetails"    # [Lcom/csipsimple/ui/calllog/PhoneCallDetails;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/csipsimple/ui/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/csipsimple/ui/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 58
    iput-object p3, p0, Lcom/csipsimple/ui/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/csipsimple/ui/calllog/PhoneCallDetails;

    .line 59
    return-void
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 9
    .param p1, "elapsedSeconds"    # J

    .prologue
    const-wide/16 v5, 0x3c

    .line 152
    const-wide/16 v0, 0x0

    .line 153
    .local v0, "minutes":J
    const-wide/16 v2, 0x0

    .line 155
    .local v2, "seconds":J
    cmp-long v4, p1, v5

    if-ltz v4, :cond_0

    .line 156
    div-long v0, p1, v5

    .line 157
    mul-long v4, v0, v5

    sub-long/2addr p1, v4

    .line 159
    :cond_0
    move-wide v2, p1

    .line 161
    iget-object v4, p0, Lcom/csipsimple/ui/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0b02b6

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getCallTypeText(I)I
    .locals 3
    .param p1, "callType"    # I

    .prologue
    .line 139
    packed-switch p1, :pswitch_data_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid call type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :pswitch_0
    const v0, 0x7f0b0052

    .line 145
    :goto_0
    return v0

    .line 143
    :pswitch_1
    const v0, 0x7f0b0053

    goto :goto_0

    .line 145
    :pswitch_2
    const v0, 0x7f0b0054

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/csipsimple/ui/calllog/PhoneCallDetails;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/csipsimple/ui/calllog/PhoneCallDetails;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 73
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 93
    if-nez p2, :cond_1

    .line 94
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/csipsimple/ui/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030021

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 97
    .local v14, "result":Landroid/view/View;
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/csipsimple/ui/calllog/CallDetailHistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/csipsimple/ui/calllog/PhoneCallDetails;

    .line 99
    .local v12, "details":Lcom/csipsimple/ui/calllog/PhoneCallDetails;
    const v1, 0x7f06004c

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/csipsimple/ui/calllog/CallTypeIconsView;

    .line 100
    .local v8, "callTypeIconView":Lcom/csipsimple/ui/calllog/CallTypeIconsView;
    const v1, 0x7f06004d

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 101
    .local v9, "callTypeTextView":Landroid/widget/TextView;
    const v1, 0x7f06004e

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 102
    .local v11, "dateView":Landroid/widget/TextView;
    const v1, 0x7f06004f

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 104
    .local v13, "durationView":Landroid/widget/TextView;
    iget-object v1, v12, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->callTypes:[I

    const/4 v2, 0x0

    aget v7, v1, v2

    .line 105
    .local v7, "callType":I
    invoke-virtual {v8}, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->clear()V

    .line 106
    invoke-virtual {v8, v7}, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->add(I)V

    .line 108
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v15, "typeSb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/csipsimple/ui/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/csipsimple/ui/calllog/CallDetailHistoryAdapter;->getCallTypeText(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget v1, v12, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->statusCode:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 112
    const-string v1, " - "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget v1, v12, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->statusCode:I

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    iget-object v1, v12, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->statusText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    const-string v1, " / "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, v12, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->statusText:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_0
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/csipsimple/ui/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    iget-wide v2, v12, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->date:J

    iget-wide v4, v12, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->date:J

    .line 123
    const/16 v6, 0x17

    .line 122
    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v10

    .line 125
    .local v10, "dateValue":Ljava/lang/CharSequence;
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const/4 v1, 0x3

    if-ne v7, v1, :cond_2

    .line 128
    const/16 v1, 0x8

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    :goto_1
    return-object v14

    .end local v7    # "callType":I
    .end local v8    # "callTypeIconView":Lcom/csipsimple/ui/calllog/CallTypeIconsView;
    .end local v9    # "callTypeTextView":Landroid/widget/TextView;
    .end local v10    # "dateValue":Ljava/lang/CharSequence;
    .end local v11    # "dateView":Landroid/widget/TextView;
    .end local v12    # "details":Lcom/csipsimple/ui/calllog/PhoneCallDetails;
    .end local v13    # "durationView":Landroid/widget/TextView;
    .end local v14    # "result":Landroid/view/View;
    .end local v15    # "typeSb":Ljava/lang/StringBuilder;
    :cond_1
    move-object/from16 v14, p2

    .line 95
    goto/16 :goto_0

    .line 130
    .restart local v7    # "callType":I
    .restart local v8    # "callTypeIconView":Lcom/csipsimple/ui/calllog/CallTypeIconsView;
    .restart local v9    # "callTypeTextView":Landroid/widget/TextView;
    .restart local v10    # "dateValue":Ljava/lang/CharSequence;
    .restart local v11    # "dateView":Landroid/widget/TextView;
    .restart local v12    # "details":Lcom/csipsimple/ui/calllog/PhoneCallDetails;
    .restart local v13    # "durationView":Landroid/widget/TextView;
    .restart local v14    # "result":Landroid/view/View;
    .restart local v15    # "typeSb":Ljava/lang/StringBuilder;
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-wide v1, v12, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->duration:J

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/csipsimple/ui/calllog/CallDetailHistoryAdapter;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method
