.class public Lcom/csipsimple/utils/AccountListUtils;
.super Ljava/lang/Object;
.source "AccountListUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;
    }
.end annotation


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "AccountListUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountDisplay(Landroid/content/Context;J)Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    .line 51
    new-instance v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;

    invoke-direct {v8}, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;-><init>()V

    .line 52
    .local v8, "accountDisplay":Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;
    const v2, 0x7f0b000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->statusLabel:Ljava/lang/String;

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 54
    .local v14, "resources":Landroid/content/res/Resources;
    const v2, 0x7f080009

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->statusColor:I

    .line 55
    const v2, 0x7f0200b1

    iput v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->checkBoxIndicator:I

    .line 56
    const/4 v2, 0x0

    iput-boolean v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->availableForCalls:Z

    .line 59
    const/4 v9, 0x0

    .line 60
    .local v9, "accountInfo":Lcom/csipsimple/api/SipProfileState;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/csipsimple/api/SipProfile;->ACCOUNT_STATUS_ID_URI_BASE:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 61
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 60
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 62
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 64
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 65
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 66
    new-instance v10, Lcom/csipsimple/api/SipProfileState;

    invoke-direct {v10, v11}, Lcom/csipsimple/api/SipProfileState;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "accountInfo":Lcom/csipsimple/api/SipProfileState;
    .local v10, "accountInfo":Lcom/csipsimple/api/SipProfileState;
    move-object v9, v10

    .line 71
    .end local v10    # "accountInfo":Lcom/csipsimple/api/SipProfileState;
    .restart local v9    # "accountInfo":Lcom/csipsimple/api/SipProfileState;
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 75
    :cond_1
    :goto_0
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/csipsimple/api/SipProfileState;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    invoke-virtual {v9}, Lcom/csipsimple/api/SipProfileState;->getAddedStatus()I

    move-result v2

    if-ltz v2, :cond_9

    .line 78
    const v2, 0x7f0b000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->statusLabel:Ljava/lang/String;

    .line 79
    const v2, 0x7f08000a

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->statusColor:I

    .line 80
    const v2, 0x7f0200b1

    iput v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->checkBoxIndicator:I

    .line 81
    invoke-virtual {v9}, Lcom/csipsimple/api/SipProfileState;->getRegUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    const v2, 0x7f08000b

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->statusColor:I

    .line 84
    const v2, 0x7f0200af

    iput v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->checkBoxIndicator:I

    .line 85
    const v2, 0x7f0b000e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->statusLabel:Ljava/lang/String;

    .line 86
    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->availableForCalls:Z

    .line 137
    :cond_2
    :goto_1
    return-object v8

    .line 68
    :catch_0
    move-exception v12

    .line 69
    .local v12, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "AccountListUtils"

    const-string v3, "Error on looping over sip profiles states"

    invoke-static {v2, v3, v12}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 70
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 71
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 72
    throw v2

    .line 87
    :cond_3
    invoke-virtual {v9}, Lcom/csipsimple/api/SipProfileState;->isAddedToStack()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    invoke-virtual {v9}, Lcom/csipsimple/api/SipProfileState;->getStatusText()Ljava/lang/String;

    move-result-object v13

    .line 89
    .local v13, "pjStat":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/csipsimple/api/SipProfileState;->getStatusCode()I

    move-result v15

    .line 90
    .local v15, "statusCode":I
    const/16 v2, 0xc8

    if-ne v15, v2, :cond_5

    .line 93
    invoke-virtual {v9}, Lcom/csipsimple/api/SipProfileState;->getExpires()I

    move-result v2

    if-lez v2, :cond_4

    .line 95
    const v2, 0x7f08000b

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->statusColor:I

    .line 96
    const v2, 0x7f0200af

    iput v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->checkBoxIndicator:I

    .line 97
    const v2, 0x7f0b000e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->statusLabel:Ljava/lang/String;

    .line 98
    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->availableForCalls:Z

    goto :goto_1

    .line 101
    :cond_4
    const v2, 0x7f08000a

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->statusColor:I

    .line 102
    const v2, 0x7f0200b1

    iput v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->checkBoxIndicator:I

    .line 103
    const v2, 0x7f0b000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->statusLabel:Ljava/lang/String;

    goto :goto_1

    .line 105
    :cond_5
    const/4 v2, -0x1

    if-eq v15, v2, :cond_8

    .line 106
    const/16 v2, 0xb7

    if-eq v15, v2, :cond_6

    const/16 v2, 0x64

    if-ne v15, v2, :cond_7

    .line 108
    :cond_6
    const v2, 0x7f08000a

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->statusColor:I

    .line 109
    const v2, 0x7f0200b1

    iput v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->checkBoxIndicator:I

    .line 110
    const v2, 0x7f0b000d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->statusLabel:Ljava/lang/String;

    goto/16 :goto_1

    .line 114
    :cond_7
    const v2, 0x7f08000c

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->statusColor:I

    .line 115
    const v2, 0x7f0200b0

    iput v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->checkBoxIndicator:I

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f0b000f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->statusLabel:Ljava/lang/String;

    goto/16 :goto_1

    .line 120
    :cond_8
    const v2, 0x7f080009

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->statusColor:I

    .line 121
    const v2, 0x7f0200b1

    iput v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->checkBoxIndicator:I

    .line 122
    const v2, 0x7f0b000d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->statusLabel:Ljava/lang/String;

    goto/16 :goto_1

    .line 126
    .end local v13    # "pjStat":Ljava/lang/String;
    .end local v15    # "statusCode":I
    :cond_9
    invoke-virtual {v9}, Lcom/csipsimple/api/SipProfileState;->isAddedToStack()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 127
    const v2, 0x7f0b0010

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->statusLabel:Ljava/lang/String;

    .line 128
    const v2, 0x7f08000c

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->statusColor:I

    goto/16 :goto_1

    .line 130
    :cond_a
    const v2, 0x7f080009

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->statusColor:I

    .line 131
    const v2, 0x7f0200b1

    iput v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->checkBoxIndicator:I

    .line 132
    const v2, 0x7f0b000d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->statusLabel:Ljava/lang/String;

    goto/16 :goto_1
.end method
