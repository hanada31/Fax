.class public Lcom/csipsimple/widgets/AccountChooserButton;
.super Landroid/widget/LinearLayout;
.source "AccountChooserButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/widgets/AccountChooserButton$AccountStatusContentObserver;,
        Lcom/csipsimple/widgets/AccountChooserButton$OnAccountChangeListener;
    }
.end annotation


# static fields
.field private static final ACC_PROJECTION:[Ljava/lang/String;

.field protected static final THIS_FILE:Ljava/lang/String; = "AccountChooserButton"


# instance fields
.field private account:Lcom/csipsimple/api/SipProfile;

.field private canChangeIfValid:Z

.field private final imageView:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field private onAccountChange:Lcom/csipsimple/widgets/AccountChooserButton$OnAccountChangeListener;

.field private quickAction:Lcom/csipsimple/widgets/HorizontalQuickActionWindow;

.field private showExternals:Z

.field private statusObserver:Lcom/csipsimple/widgets/AccountChooserButton$AccountStatusContentObserver;

.field private targetAccountId:Ljava/lang/Long;

.field private final telCmp:Landroid/content/ComponentName;

.field private final textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 57
    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 58
    const-string v2, "acc_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 59
    const-string v2, "reg_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 60
    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 61
    const-string v2, "transport"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 62
    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 63
    const-string v2, "wizard"

    aput-object v2, v0, v1

    .line 56
    sput-object v0, Lcom/csipsimple/widgets/AccountChooserButton;->ACC_PROJECTION:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/csipsimple/widgets/AccountChooserButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput-object v5, p0, Lcom/csipsimple/widgets/AccountChooserButton;->account:Lcom/csipsimple/api/SipProfile;

    .line 70
    iput-object v5, p0, Lcom/csipsimple/widgets/AccountChooserButton;->targetAccountId:Ljava/lang/Long;

    .line 72
    iput-boolean v4, p0, Lcom/csipsimple/widgets/AccountChooserButton;->showExternals:Z

    .line 76
    iput-object v5, p0, Lcom/csipsimple/widgets/AccountChooserButton;->onAccountChange:Lcom/csipsimple/widgets/AccountChooserButton$OnAccountChangeListener;

    .line 123
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/csipsimple/widgets/AccountChooserButton;->mHandler:Landroid/os/Handler;

    .line 124
    iput-object v5, p0, Lcom/csipsimple/widgets/AccountChooserButton;->statusObserver:Lcom/csipsimple/widgets/AccountChooserButton$AccountStatusContentObserver;

    .line 125
    iput-boolean v4, p0, Lcom/csipsimple/widgets/AccountChooserButton;->canChangeIfValid:Z

    .line 99
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/csipsimple/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/csipsimple/plugins/telephony/CallHandler;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/csipsimple/widgets/AccountChooserButton;->telCmp:Landroid/content/ComponentName;

    .line 102
    invoke-virtual {p0, v4}, Lcom/csipsimple/widgets/AccountChooserButton;->setClickable(Z)V

    .line 103
    invoke-virtual {p0, v4}, Lcom/csipsimple/widgets/AccountChooserButton;->setFocusable(Z)V

    .line 104
    const v1, 0x7f02004c

    invoke-virtual {p0, v1}, Lcom/csipsimple/widgets/AccountChooserButton;->setBackgroundResource(I)V

    .line 105
    invoke-virtual {p0, v4}, Lcom/csipsimple/widgets/AccountChooserButton;->setOrientation(I)V

    .line 106
    invoke-virtual {p0, v7, v6, v7, v6}, Lcom/csipsimple/widgets/AccountChooserButton;->setPadding(IIII)V

    .line 107
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/csipsimple/widgets/AccountChooserButton;->setGravity(I)V

    .line 109
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 110
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030014

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 111
    invoke-virtual {p0, p0}, Lcom/csipsimple/widgets/AccountChooserButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v1, 0x7f060028

    invoke-virtual {p0, v1}, Lcom/csipsimple/widgets/AccountChooserButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/csipsimple/widgets/AccountChooserButton;->textView:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f060027

    invoke-virtual {p0, v1}, Lcom/csipsimple/widgets/AccountChooserButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/csipsimple/widgets/AccountChooserButton;->imageView:Landroid/widget/ImageView;

    .line 116
    invoke-virtual {p0, v5}, Lcom/csipsimple/widgets/AccountChooserButton;->setAccount(Lcom/csipsimple/api/SipProfile;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/csipsimple/widgets/AccountChooserButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/widgets/AccountChooserButton;)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/csipsimple/widgets/AccountChooserButton;->updateRegistration()V

    return-void
.end method

.method static synthetic access$1(Lcom/csipsimple/widgets/AccountChooserButton;)Lcom/csipsimple/widgets/HorizontalQuickActionWindow;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/csipsimple/widgets/AccountChooserButton;->quickAction:Lcom/csipsimple/widgets/HorizontalQuickActionWindow;

    return-object v0
.end method

.method private updateRegistration()V
    .locals 13

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/csipsimple/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/csipsimple/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/csipsimple/widgets/AccountChooserButton;->ACC_PROJECTION:[Ljava/lang/String;

    const-string v3, "active=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 294
    const-string v12, "1"

    aput-object v12, v4, v5

    .line 295
    const/4 v5, 0x0

    .line 293
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 297
    .local v8, "c":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 298
    .local v11, "toSelectAcc":Lcom/csipsimple/api/SipProfile;
    const/4 v10, 0x0

    .line 300
    .local v10, "firstAvail":Lcom/csipsimple/api/SipProfile;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 302
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    :cond_0
    new-instance v6, Lcom/csipsimple/api/SipProfile;

    invoke-direct {v6, v8}, Lcom/csipsimple/api/SipProfile;-><init>(Landroid/database/Cursor;)V

    .line 307
    .local v6, "acc":Lcom/csipsimple/api/SipProfile;
    invoke-virtual {p0}, Lcom/csipsimple/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, v6, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {v0, v1, v2}, Lcom/csipsimple/utils/AccountListUtils;->getAccountDisplay(Landroid/content/Context;J)Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;

    move-result-object v7

    .line 308
    .local v7, "accountStatusDisplay":Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;
    iget-boolean v0, v7, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->availableForCalls:Z

    if-eqz v0, :cond_7

    .line 309
    if-nez v10, :cond_1

    .line 310
    move-object v10, v6

    .line 313
    :cond_1
    iget-boolean v0, p0, Lcom/csipsimple/widgets/AccountChooserButton;->canChangeIfValid:Z

    if-eqz v0, :cond_6

    .line 316
    iget-object v0, p0, Lcom/csipsimple/widgets/AccountChooserButton;->targetAccountId:Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 318
    iget-object v0, p0, Lcom/csipsimple/widgets/AccountChooserButton;->targetAccountId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, v6, Lcom/csipsimple/api/SipProfile;->id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    .line 319
    move-object v11, v6

    .line 338
    .end local v6    # "acc":Lcom/csipsimple/api/SipProfile;
    .end local v7    # "accountStatusDisplay":Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;
    :cond_2
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 342
    :cond_3
    :goto_1
    if-nez v11, :cond_4

    .line 344
    move-object v11, v10

    .line 348
    :cond_4
    invoke-virtual {p0, v11}, Lcom/csipsimple/widgets/AccountChooserButton;->setAccount(Lcom/csipsimple/api/SipProfile;)V

    .line 349
    return-void

    .line 324
    .restart local v6    # "acc":Lcom/csipsimple/api/SipProfile;
    .restart local v7    # "accountStatusDisplay":Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;
    :cond_5
    move-object v11, v6

    .line 325
    goto :goto_0

    .line 327
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/csipsimple/widgets/AccountChooserButton;->account:Lcom/csipsimple/api/SipProfile;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/csipsimple/widgets/AccountChooserButton;->account:Lcom/csipsimple/api/SipProfile;

    iget-wide v0, v0, Lcom/csipsimple/api/SipProfile;->id:J

    iget-wide v2, v6, Lcom/csipsimple/api/SipProfile;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    .line 329
    move-object v11, v6

    .line 330
    goto :goto_0

    .line 333
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 303
    if-nez v0, :cond_0

    goto :goto_0

    .line 335
    .end local v6    # "acc":Lcom/csipsimple/api/SipProfile;
    .end local v7    # "accountStatusDisplay":Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;
    :catch_0
    move-exception v9

    .line 336
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "AccountChooserButton"

    const-string v1, "Error on looping over sip profiles"

    invoke-static {v0, v1, v9}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 337
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 338
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 339
    throw v0
.end method


# virtual methods
.method public getSelectedAccount()Lcom/csipsimple/api/SipProfile;
    .locals 6

    .prologue
    .line 356
    iget-object v4, p0, Lcom/csipsimple/widgets/AccountChooserButton;->account:Lcom/csipsimple/api/SipProfile;

    if-nez v4, :cond_7

    .line 357
    new-instance v3, Lcom/csipsimple/api/SipProfile;

    invoke-direct {v3}, Lcom/csipsimple/api/SipProfile;-><init>()V

    .line 358
    .local v3, "retAcc":Lcom/csipsimple/api/SipProfile;
    iget-boolean v4, p0, Lcom/csipsimple/widgets/AccountChooserButton;->showExternals:Z

    if-eqz v4, :cond_3

    .line 359
    invoke-virtual {p0}, Lcom/csipsimple/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/csipsimple/utils/CallHandlerPlugin;->getAvailableCallHandlers(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 360
    .local v1, "handlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/csipsimple/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/csipsimple/utils/Compatibility;->canMakeGSMCall(Landroid/content/Context;)Z

    move-result v2

    .line 362
    .local v2, "includeGsm":Z
    if-eqz v2, :cond_1

    .line 363
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 373
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 383
    .end local v1    # "handlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "includeGsm":Z
    :cond_3
    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/csipsimple/api/SipProfile;->id:J

    .line 386
    .end local v3    # "retAcc":Lcom/csipsimple/api/SipProfile;
    :goto_0
    return-object v3

    .line 363
    .restart local v1    # "handlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "includeGsm":Z
    .restart local v3    # "retAcc":Lcom/csipsimple/api/SipProfile;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 365
    .local v0, "callHandler":Ljava/lang/String;
    iget-object v5, p0, Lcom/csipsimple/widgets/AccountChooserButton;->telCmp:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/csipsimple/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/csipsimple/utils/CallHandlerPlugin;->getAccountIdForCallHandler(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/csipsimple/api/SipProfile;->id:J

    goto :goto_0

    .line 373
    .end local v0    # "callHandler":Ljava/lang/String;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 375
    .restart local v0    # "callHandler":Ljava/lang/String;
    iget-object v5, p0, Lcom/csipsimple/widgets/AccountChooserButton;->telCmp:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v2, :cond_2

    .line 378
    :cond_6
    invoke-virtual {p0}, Lcom/csipsimple/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/csipsimple/utils/CallHandlerPlugin;->getAccountIdForCallHandler(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/csipsimple/api/SipProfile;->id:J

    goto :goto_0

    .line 386
    .end local v0    # "callHandler":Ljava/lang/String;
    .end local v1    # "handlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "includeGsm":Z
    .end local v3    # "retAcc":Lcom/csipsimple/api/SipProfile;
    :cond_7
    iget-object v3, p0, Lcom/csipsimple/widgets/AccountChooserButton;->account:Lcom/csipsimple/api/SipProfile;

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 164
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 165
    iget-object v0, p0, Lcom/csipsimple/widgets/AccountChooserButton;->statusObserver:Lcom/csipsimple/widgets/AccountChooserButton$AccountStatusContentObserver;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/csipsimple/widgets/AccountChooserButton$AccountStatusContentObserver;

    iget-object v1, p0, Lcom/csipsimple/widgets/AccountChooserButton;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/csipsimple/widgets/AccountChooserButton$AccountStatusContentObserver;-><init>(Lcom/csipsimple/widgets/AccountChooserButton;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/csipsimple/widgets/AccountChooserButton;->statusObserver:Lcom/csipsimple/widgets/AccountChooserButton$AccountStatusContentObserver;

    .line 167
    invoke-virtual {p0}, Lcom/csipsimple/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/csipsimple/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    .line 168
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/csipsimple/widgets/AccountChooserButton;->statusObserver:Lcom/csipsimple/widgets/AccountChooserButton$AccountStatusContentObserver;

    .line 167
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/csipsimple/widgets/AccountChooserButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/csipsimple/widgets/AccountChooserButton;->updateRegistration()V

    .line 173
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 20
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    const-string v2, "AccountChooserButton"

    const-string v3, "Click the account chooser button"

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .line 188
    .local v18, "xy":[I
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 189
    new-instance v17, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v18, v2

    const/4 v3, 0x1

    aget v3, v18, v3

    const/4 v4, 0x0

    aget v4, v18, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v18, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 191
    .local v17, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/csipsimple/widgets/AccountChooserButton;->quickAction:Lcom/csipsimple/widgets/HorizontalQuickActionWindow;

    if-nez v2, :cond_0

    .line 192
    new-instance v2, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;

    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/csipsimple/widgets/AccountChooserButton;->quickAction:Lcom/csipsimple/widgets/HorizontalQuickActionWindow;

    .line 195
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/csipsimple/widgets/AccountChooserButton;->quickAction:Lcom/csipsimple/widgets/HorizontalQuickActionWindow;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->setAnchor(Landroid/graphics/Rect;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/csipsimple/widgets/AccountChooserButton;->quickAction:Lcom/csipsimple/widgets/HorizontalQuickActionWindow;

    invoke-virtual {v2}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->removeAllItems()V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/csipsimple/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/csipsimple/widgets/AccountChooserButton;->ACC_PROJECTION:[Ljava/lang/String;

    const-string v5, "active=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 199
    const-string v19, "1"

    aput-object v19, v6, v7

    .line 200
    const/4 v7, 0x0

    .line 198
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 202
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_4

    .line 204
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 206
    :cond_1
    new-instance v8, Lcom/csipsimple/api/SipProfile;

    invoke-direct {v8, v10}, Lcom/csipsimple/api/SipProfile;-><init>(Landroid/database/Cursor;)V

    .line 208
    .local v8, "account":Lcom/csipsimple/api/SipProfile;
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v8, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {v2, v3, v4}, Lcom/csipsimple/utils/AccountListUtils;->getAccountDisplay(Landroid/content/Context;J)Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;

    move-result-object v9

    .line 209
    .local v9, "accountStatusDisplay":Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;
    iget-boolean v2, v9, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->availableForCalls:Z

    if-eqz v2, :cond_2

    .line 210
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/widgets/AccountChooserButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/csipsimple/wizards/WizardUtils;->getWizardBitmap(Landroid/content/Context;Lcom/csipsimple/api/SipProfile;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 210
    invoke-direct {v13, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 212
    .local v13, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/csipsimple/widgets/AccountChooserButton;->quickAction:Lcom/csipsimple/widgets/HorizontalQuickActionWindow;

    iget-object v3, v8, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    .line 213
    new-instance v4, Lcom/csipsimple/widgets/AccountChooserButton$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v8}, Lcom/csipsimple/widgets/AccountChooserButton$1;-><init>(Lcom/csipsimple/widgets/AccountChooserButton;Lcom/csipsimple/api/SipProfile;)V

    .line 212
    invoke-virtual {v2, v13, v3, v4}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->addItem(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 220
    .end local v13    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 205
    if-nez v2, :cond_1

    .line 225
    .end local v8    # "account":Lcom/csipsimple/api/SipProfile;
    .end local v9    # "accountStatusDisplay":Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_4
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/csipsimple/widgets/AccountChooserButton;->showExternals:Z

    if-eqz v2, :cond_6

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/csipsimple/utils/CallHandlerPlugin;->getAvailableCallHandlers(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v11

    .line 232
    .local v11, "callHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/csipsimple/utils/Compatibility;->canMakeGSMCall(Landroid/content/Context;)Z

    move-result v15

    .line 233
    .local v15, "includeGsm":Z
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 257
    .end local v11    # "callHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "includeGsm":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/csipsimple/widgets/AccountChooserButton;->quickAction:Lcom/csipsimple/widgets/HorizontalQuickActionWindow;

    invoke-virtual {v2}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->show()V

    .line 258
    return-void

    .line 222
    :catch_0
    move-exception v14

    .line 223
    .local v14, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "AccountChooserButton"

    const-string v3, "Error on looping over sip profiles"

    invoke-static {v2, v3, v14}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 224
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 225
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 226
    throw v2

    .line 233
    .restart local v11    # "callHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "includeGsm":Z
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 234
    .local v16, "packageName":Ljava/lang/String;
    const-string v3, "AccountChooserButton"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Compare "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/csipsimple/widgets/AccountChooserButton;->telCmp:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    if-nez v15, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/csipsimple/widgets/AccountChooserButton;->telCmp:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 240
    :cond_8
    new-instance v12, Lcom/csipsimple/utils/CallHandlerPlugin;

    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v12, v3}, Lcom/csipsimple/utils/CallHandlerPlugin;-><init>(Landroid/content/Context;)V

    .line 241
    .local v12, "ch":Lcom/csipsimple/utils/CallHandlerPlugin;
    const/4 v3, 0x0

    new-instance v4, Lcom/csipsimple/widgets/AccountChooserButton$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/csipsimple/widgets/AccountChooserButton$2;-><init>(Lcom/csipsimple/widgets/AccountChooserButton;)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v3, v4}, Lcom/csipsimple/utils/CallHandlerPlugin;->loadFrom(Ljava/lang/String;Ljava/lang/String;Lcom/csipsimple/utils/CallHandlerPlugin$OnLoadListener;)V

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 178
    iget-object v0, p0, Lcom/csipsimple/widgets/AccountChooserButton;->statusObserver:Lcom/csipsimple/widgets/AccountChooserButton$AccountStatusContentObserver;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/csipsimple/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/csipsimple/widgets/AccountChooserButton;->statusObserver:Lcom/csipsimple/widgets/AccountChooserButton$AccountStatusContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/widgets/AccountChooserButton;->statusObserver:Lcom/csipsimple/widgets/AccountChooserButton$AccountStatusContentObserver;

    .line 182
    :cond_0
    return-void
.end method

.method public setAccount(Lcom/csipsimple/api/SipProfile;)V
    .locals 5
    .param p1, "aAccount"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/csipsimple/widgets/AccountChooserButton;->account:Lcom/csipsimple/api/SipProfile;

    .line 269
    iget-object v0, p0, Lcom/csipsimple/widgets/AccountChooserButton;->account:Lcom/csipsimple/api/SipProfile;

    if-nez v0, :cond_3

    .line 270
    invoke-virtual {p0}, Lcom/csipsimple/widgets/AccountChooserButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/csipsimple/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/csipsimple/utils/Compatibility;->canMakeGSMCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/widgets/AccountChooserButton;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/csipsimple/widgets/AccountChooserButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/csipsimple/widgets/AccountChooserButton;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f0200fa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    :goto_0
    iget-object v0, p0, Lcom/csipsimple/widgets/AccountChooserButton;->onAccountChange:Lcom/csipsimple/widgets/AccountChooserButton$OnAccountChangeListener;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/csipsimple/widgets/AccountChooserButton;->onAccountChange:Lcom/csipsimple/widgets/AccountChooserButton$OnAccountChangeListener;

    iget-object v1, p0, Lcom/csipsimple/widgets/AccountChooserButton;->account:Lcom/csipsimple/api/SipProfile;

    invoke-interface {v0, v1}, Lcom/csipsimple/widgets/AccountChooserButton$OnAccountChangeListener;->onChooseAccount(Lcom/csipsimple/api/SipProfile;)V

    .line 286
    :cond_1
    return-void

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/csipsimple/widgets/AccountChooserButton;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/csipsimple/widgets/AccountChooserButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/csipsimple/widgets/AccountChooserButton;->imageView:Landroid/widget/ImageView;

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/csipsimple/widgets/AccountChooserButton;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/csipsimple/widgets/AccountChooserButton;->account:Lcom/csipsimple/api/SipProfile;

    iget-object v1, v1, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/csipsimple/widgets/AccountChooserButton;->imageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/csipsimple/widgets/AccountChooserButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/csipsimple/widgets/AccountChooserButton;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 280
    iget-object v4, p0, Lcom/csipsimple/widgets/AccountChooserButton;->account:Lcom/csipsimple/api/SipProfile;

    .line 279
    invoke-static {v3, v4}, Lcom/csipsimple/wizards/WizardUtils;->getWizardBitmap(Landroid/content/Context;Lcom/csipsimple/api/SipProfile;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setChangeable(Z)V
    .locals 0
    .param p1, "changeable"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/csipsimple/widgets/AccountChooserButton;->canChangeIfValid:Z

    .line 150
    return-void
.end method

.method public setOnAccountChangeListener(Lcom/csipsimple/widgets/AccountChooserButton$OnAccountChangeListener;)V
    .locals 0
    .param p1, "anAccountChangeListener"    # Lcom/csipsimple/widgets/AccountChooserButton$OnAccountChangeListener;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/csipsimple/widgets/AccountChooserButton;->onAccountChange:Lcom/csipsimple/widgets/AccountChooserButton$OnAccountChangeListener;

    .line 395
    return-void
.end method

.method public setShowExternals(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/csipsimple/widgets/AccountChooserButton;->showExternals:Z

    .line 403
    return-void
.end method

.method public setTargetAccount(Ljava/lang/Long;)V
    .locals 0
    .param p1, "aTargetAccountId"    # Ljava/lang/Long;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/csipsimple/widgets/AccountChooserButton;->targetAccountId:Ljava/lang/Long;

    .line 160
    return-void
.end method
