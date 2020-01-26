.class public Lcom/csipsimple/ui/calllog/PhoneCallDetailsHelper;
.super Ljava/lang/Object;
.source "PhoneCallDetailsHelper.java"


# static fields
.field private static final MAX_CALL_TYPE_ICONS:I = 0x3


# instance fields
.field private mCurrentTimeMillisForTest:Ljava/lang/Long;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/csipsimple/ui/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    .line 68
    return-void
.end method

.method private getCurrentTimeMillis()J
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 158
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method private setCallCountAndDate(Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;Ljava/lang/Integer;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "views"    # Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;
    .param p2, "callCount"    # Ljava/lang/Integer;
    .param p3, "dateText"    # Ljava/lang/CharSequence;

    .prologue
    .line 167
    if-eqz p2, :cond_0

    .line 168
    iget-object v1, p0, Lcom/csipsimple/ui/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    .line 169
    const v2, 0x7f0b0092

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    .line 168
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_0
    iget-object v1, p1, Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;->callTypeAndDate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    return-void

    .line 171
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_0
    move-object v0, p3

    .restart local v0    # "text":Ljava/lang/CharSequence;
    goto :goto_0
.end method


# virtual methods
.method public setCallDetailsHeader(Landroid/widget/TextView;Lcom/csipsimple/ui/calllog/PhoneCallDetails;)V
    .locals 3
    .param p1, "nameView"    # Landroid/widget/TextView;
    .param p2, "details"    # Lcom/csipsimple/ui/calllog/PhoneCallDetails;

    .prologue
    .line 135
    iget-object v0, p2, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 136
    .local v0, "displayNumber":Ljava/lang/CharSequence;
    iget-object v2, p2, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    move-object v1, v0

    .line 142
    .local v1, "nameText":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    return-void

    .line 139
    .end local v1    # "nameText":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p2, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .restart local v1    # "nameText":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public setCurrentTimeForTest(J)V
    .locals 1
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 146
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/ui/calllog/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    .line 147
    return-void
.end method

.method public setPhoneCallDetails(Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;Lcom/csipsimple/ui/calllog/PhoneCallDetails;)V
    .locals 13
    .param p1, "views"    # Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;
    .param p2, "details"    # Lcom/csipsimple/ui/calllog/PhoneCallDetails;

    .prologue
    .line 73
    iget-object v0, p1, Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;->callTypeIcons:Lcom/csipsimple/ui/calllog/CallTypeIconsView;

    invoke-virtual {v0}, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->clear()V

    .line 74
    iget-object v0, p2, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->callTypes:[I

    array-length v8, v0

    .line 75
    .local v8, "count":I
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_0
    if-ge v11, v8, :cond_0

    const/4 v0, 0x3

    if-lt v11, v0, :cond_2

    .line 78
    :cond_0
    iget-object v0, p1, Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;->callTypeIcons:Lcom/csipsimple/ui/calllog/CallTypeIconsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->setVisibility(I)V

    .line 83
    const/4 v0, 0x3

    if-le v8, v0, :cond_3

    .line 84
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 91
    .local v7, "callCount":Ljava/lang/Integer;
    :goto_1
    iget-wide v0, p2, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->date:J

    .line 92
    invoke-direct {p0}, Lcom/csipsimple/ui/calllog/PhoneCallDetailsHelper;->getCurrentTimeMillis()J

    move-result-wide v2

    .line 93
    const-wide/32 v4, 0xea60

    .line 94
    const/high16 v6, 0x40000

    .line 91
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v9

    .line 97
    .local v9, "dateText":Ljava/lang/CharSequence;
    invoke-direct {p0, p1, v7, v9}, Lcom/csipsimple/ui/calllog/PhoneCallDetailsHelper;->setCallCountAndDate(Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;Ljava/lang/Integer;Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p2, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 102
    iget-object v10, p2, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 121
    .local v10, "displayName":Ljava/lang/CharSequence;
    :cond_1
    :goto_2
    iget-object v0, p1, Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p2, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 123
    iget-object v0, p1, Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :goto_3
    return-void

    .line 76
    .end local v7    # "callCount":Ljava/lang/Integer;
    .end local v9    # "dateText":Ljava/lang/CharSequence;
    .end local v10    # "displayName":Ljava/lang/CharSequence;
    :cond_2
    iget-object v0, p1, Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;->callTypeIcons:Lcom/csipsimple/ui/calllog/CallTypeIconsView;

    iget-object v1, p2, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->callTypes:[I

    aget v1, v1, v11

    invoke-virtual {v0, v1}, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->add(I)V

    .line 75
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 86
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "callCount":Ljava/lang/Integer;
    goto :goto_1

    .line 105
    .restart local v9    # "dateText":Ljava/lang/CharSequence;
    :cond_4
    iget-object v0, p2, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 106
    iget-object v0, p2, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/csipsimple/api/SipUri;->getDisplayedSimpleContact(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 113
    .restart local v10    # "displayName":Ljava/lang/CharSequence;
    :goto_4
    iget-object v0, p2, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    new-instance v12, Landroid/text/SpannableString;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 115
    .local v12, "text":Landroid/text/SpannableString;
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 116
    const/16 v3, 0x21

    .line 115
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 117
    move-object v10, v12

    goto :goto_2

    .line 110
    .end local v10    # "displayName":Ljava/lang/CharSequence;
    .end local v12    # "text":Landroid/text/SpannableString;
    :cond_5
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "displayName":Ljava/lang/CharSequence;
    goto :goto_4

    .line 124
    :cond_6
    iget-object v0, p2, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 125
    iget-object v0, p1, Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 128
    :cond_7
    iget-object v0, p1, Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
