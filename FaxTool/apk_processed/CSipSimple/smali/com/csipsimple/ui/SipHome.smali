.class public Lcom/csipsimple/ui/SipHome;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "SipHome.java"

# interfaces
.implements Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/SipHome$TabsAdapter;,
        Lcom/csipsimple/ui/SipHome$ViewPagerVisibilityListener;
    }
.end annotation


# static fields
.field public static final ACCOUNTS_MENU:I = 0x2

.field private static final CHANGE_PREFS:I = 0x1

.field public static final CLOSE_MENU:I = 0x4

.field public static final DISTRIB_ACCOUNT_MENU:I = 0x6

.field public static final HELP_MENU:I = 0x5

.field public static final PARAMS_MENU:I = 0x3

.field private static final REQUEST_EDIT_DISTRIBUTION_ACCOUNT:I = 0x0

.field private static final TAB_ID_CALL_LOG:I = 0x1

.field private static final TAB_ID_DIALER:I = 0x0

.field private static final TAB_ID_FAVORITES:I = 0x2

.field private static final TAB_ID_MESSAGES:I = 0x3

.field private static final TAB_ID_WARNING:I = 0x4

.field private static final THIS_FILE:Ljava/lang/String; = "SIP_HOME"

.field public static final USE_LIGHT_THEME:Z


# instance fields
.field private asyncSanityChecker:Ljava/lang/Thread;

.field private hasTriedOnceActivateAcc:Z

.field initTabId:Ljava/lang/Integer;

.field private mCallLogFragment:Lcom/csipsimple/ui/calllog/CallLogListFragment;

.field private mDialpadFragment:Lcom/csipsimple/ui/dialpad/DialerFragment;

.field private mDualPane:Z

.field private mMessagesFragment:Lcom/csipsimple/ui/messages/ConversationsListFragment;

.field private mPhoneFavoriteFragment:Lcom/csipsimple/ui/favorites/FavListFragment;

.field private mTabsAdapter:Lcom/csipsimple/ui/SipHome$TabsAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mWarningFragment:Lcom/csipsimple/ui/warnings/WarningFragment;

.field private onForeground:Z

.field private prefProviderWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

.field refreshWarningTabRunnable:Ljava/lang/Runnable;

.field private warningList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private warningTab:Lcom/actionbarsherlock/app/ActionBar$Tab;

.field private warningTabfadeAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 108
    iput-boolean v0, p0, Lcom/csipsimple/ui/SipHome;->hasTriedOnceActivateAcc:Z

    .line 563
    iput-boolean v0, p0, Lcom/csipsimple/ui/SipHome;->onForeground:Z

    .line 682
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/ui/SipHome;->initTabId:Ljava/lang/Integer;

    .line 878
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/csipsimple/ui/SipHome;->warningList:Ljava/util/List;

    .line 890
    new-instance v0, Lcom/csipsimple/ui/SipHome$1;

    invoke-direct {v0, p0}, Lcom/csipsimple/ui/SipHome$1;-><init>(Lcom/csipsimple/ui/SipHome;)V

    iput-object v0, p0, Lcom/csipsimple/ui/SipHome;->refreshWarningTabRunnable:Ljava/lang/Runnable;

    .line 86
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/ui/SipHome;)V
    .locals 0

    .prologue
    .line 897
    invoke-direct {p0}, Lcom/csipsimple/ui/SipHome;->refreshWarningTabDisplay()V

    return-void
.end method

.method static synthetic access$1(Lcom/csipsimple/ui/SipHome;IZ)V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0, p1, p2}, Lcom/csipsimple/ui/SipHome;->sendFragmentVisibilityChange(IZ)V

    return-void
.end method

.method static synthetic access$2(Lcom/csipsimple/ui/SipHome;)Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/csipsimple/ui/SipHome;->mDualPane:Z

    return v0
.end method

.method static synthetic access$3(Lcom/csipsimple/ui/SipHome;)V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/csipsimple/ui/SipHome;->asyncSanityCheck()V

    return-void
.end method

.method static synthetic access$4(Lcom/csipsimple/ui/SipHome;)V
    .locals 0

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/csipsimple/ui/SipHome;->postStartSipService()V

    return-void
.end method

.method static synthetic access$5(Lcom/csipsimple/ui/SipHome;)Lcom/csipsimple/utils/PreferencesProviderWrapper;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome;->prefProviderWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    return-object v0
.end method

.method static synthetic access$6(Lcom/csipsimple/ui/SipHome;Z)V
    .locals 0

    .prologue
    .line 863
    invoke-direct {p0, p1}, Lcom/csipsimple/ui/SipHome;->disconnect(Z)V

    return-void
.end method

.method private applyTheme()V
    .locals 17
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 614
    invoke-static/range {p0 .. p0}, Lcom/csipsimple/utils/Theme;->getCurrentTheme(Landroid/content/Context;)Lcom/csipsimple/utils/Theme;

    move-result-object v10

    .line 615
    .local v10, "t":Lcom/csipsimple/utils/Theme;
    if-eqz v10, :cond_1

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/ui/SipHome;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    .line 617
    .local v1, "ab":Lcom/actionbarsherlock/app/ActionBar;
    if-eqz v1, :cond_1

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/ui/SipHome;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v14

    const v15, 0x1020002

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 620
    .local v13, "vg":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 622
    .local v2, "abc":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/csipsimple/ui/SipHome;->getVisibleLeafs(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v9

    .line 623
    .local v9, "leafs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v6, 0x0

    .line 624
    .local v6, "i":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_2

    .line 668
    const-string v14, "split_background"

    invoke-virtual {v10, v14}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 669
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    .line 670
    invoke-virtual {v1, v4}, Lcom/actionbarsherlock/app/ActionBar;->setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 674
    .end local v1    # "ab":Lcom/actionbarsherlock/app/ActionBar;
    .end local v2    # "abc":Landroid/view/ViewGroup;
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v6    # "i":I
    .end local v9    # "leafs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v13    # "vg":Landroid/view/View;
    :cond_1
    return-void

    .line 624
    .restart local v1    # "ab":Lcom/actionbarsherlock/app/ActionBar;
    .restart local v2    # "abc":Landroid/view/ViewGroup;
    .restart local v6    # "i":I
    .restart local v9    # "leafs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v13    # "vg":Landroid/view/View;
    :cond_2
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 625
    .local v8, "leaf":Landroid/view/View;
    instance-of v14, v8, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    .line 626
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/ui/SipHome;->mTabsAdapter:Lcom/csipsimple/ui/SipHome$TabsAdapter;

    invoke-virtual {v14, v6}, Lcom/csipsimple/ui/SipHome$TabsAdapter;->getIdForPosition(I)Ljava/lang/Integer;

    move-result-object v7

    .line 627
    .local v7, "id":Ljava/lang/Integer;
    if-eqz v7, :cond_0

    .line 628
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 629
    .local v11, "tabId":I
    const/4 v3, 0x0

    .line 630
    .local v3, "customIcon":Landroid/graphics/drawable/Drawable;
    packed-switch v11, :pswitch_data_0

    .line 646
    :goto_1
    if-eqz v3, :cond_3

    move-object v14, v8

    .line 647
    check-cast v14, Landroid/widget/ImageView;

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 650
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    const-string v16, "tab"

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Lcom/csipsimple/utils/Theme;->applyBackgroundStateListSelectableDrawable(Landroid/view/View;Ljava/lang/String;)V

    .line 651
    if-nez v6, :cond_5

    .line 652
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    .line 653
    .local v12, "tabLayout":Landroid/view/ViewParent;
    instance-of v14, v12, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_5

    .line 654
    const-string v14, "tab_divider"

    invoke-virtual {v10, v14}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 655
    .restart local v4    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_4

    .line 656
    invoke-static {}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->getInstance()Lcom/actionbarsherlock/internal/utils/UtilityWrapper;

    move-result-object v16

    move-object v14, v12

    check-cast v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v4}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->setLinearLayoutDividerDrawable(Landroid/widget/LinearLayout;Landroid/graphics/drawable/Drawable;)V

    .line 658
    :cond_4
    const-string v14, "tab_divider_padding"

    invoke-virtual {v10, v14}, Lcom/csipsimple/utils/Theme;->getDimension(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 659
    .local v5, "dim":Ljava/lang/Integer;
    if-eqz v5, :cond_5

    .line 660
    invoke-static {}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->getInstance()Lcom/actionbarsherlock/internal/utils/UtilityWrapper;

    move-result-object v14

    check-cast v12, Landroid/widget/LinearLayout;

    .end local v12    # "tabLayout":Landroid/view/ViewParent;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v12, v0}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->setLinearLayoutDividerPadding(Landroid/widget/LinearLayout;I)V

    .line 664
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v5    # "dim":Ljava/lang/Integer;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 632
    :pswitch_0
    const-string v14, "ic_ab_dialer"

    invoke-virtual {v10, v14}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 633
    goto :goto_1

    .line 635
    :pswitch_1
    const-string v14, "ic_ab_history"

    invoke-virtual {v10, v14}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 636
    goto :goto_1

    .line 638
    :pswitch_2
    const-string v14, "ic_ab_text"

    invoke-virtual {v10, v14}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 639
    goto :goto_1

    .line 641
    :pswitch_3
    const-string v14, "ic_ab_favourites"

    invoke-virtual {v10, v14}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 642
    goto :goto_1

    .line 630
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private applyWarning(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "warnCode"    # Ljava/lang/String;
    .param p2, "active"    # Z

    .prologue
    .line 880
    iget-object v1, p0, Lcom/csipsimple/ui/SipHome;->warningList:Ljava/util/List;

    monitor-enter v1

    .line 881
    if-eqz p2, :cond_0

    .line 882
    :try_start_0
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome;->warningList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 880
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome;->refreshWarningTabRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/SipHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 888
    return-void

    .line 884
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome;->warningList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 880
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private asyncSanityCheck()V
    .locals 12

    .prologue
    .line 467
    invoke-static {p0}, Lcom/csipsimple/utils/NightlyUpdater;->isNightlyBuild(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 468
    const-string v10, "SIP_HOME"

    const-string v11, "Sanity check : we have a nightly build here"

    invoke-static {v10, v11}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v10, "connectivity"

    invoke-virtual {p0, v10}, Lcom/csipsimple/ui/SipHome;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 470
    .local v0, "connectivityService":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 472
    .local v5, "ni":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 474
    new-instance v6, Lcom/csipsimple/utils/NightlyUpdater;

    invoke-direct {v6, p0}, Lcom/csipsimple/utils/NightlyUpdater;-><init>(Landroid/content/Context;)V

    .line 476
    .local v6, "nu":Lcom/csipsimple/utils/NightlyUpdater;
    invoke-virtual {v6}, Lcom/csipsimple/utils/NightlyUpdater;->ignoreCheckByUser()Z

    move-result v10

    if-nez v10, :cond_0

    .line 477
    invoke-virtual {v6}, Lcom/csipsimple/utils/NightlyUpdater;->lastCheck()J

    move-result-wide v3

    .line 478
    .local v3, "lastCheck":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 479
    .local v1, "current":J
    const-wide/32 v7, 0x2932e00

    .line 480
    .local v7, "oneDay":J
    sub-long v10, v1, v7

    cmp-long v10, v10, v3

    if-lez v10, :cond_0

    .line 481
    iget-boolean v10, p0, Lcom/csipsimple/ui/SipHome;->onForeground:Z

    if-eqz v10, :cond_0

    .line 483
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/csipsimple/utils/NightlyUpdater;->getUpdaterPopup(Z)Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;

    move-result-object v9

    .line 484
    .local v9, "ru":Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;
    if-eqz v9, :cond_0

    iget-object v10, p0, Lcom/csipsimple/ui/SipHome;->asyncSanityChecker:Ljava/lang/Thread;

    if-eqz v10, :cond_0

    .line 485
    invoke-virtual {p0, v9}, Lcom/csipsimple/ui/SipHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 493
    .end local v0    # "connectivityService":Landroid/net/ConnectivityManager;
    .end local v1    # "current":J
    .end local v3    # "lastCheck":J
    .end local v5    # "ni":Landroid/net/NetworkInfo;
    .end local v6    # "nu":Lcom/csipsimple/utils/NightlyUpdater;
    .end local v7    # "oneDay":J
    .end local v9    # "ru":Lcom/csipsimple/utils/NightlyUpdater$UpdaterPopupLauncher;
    :cond_0
    sget-object v10, Lcom/csipsimple/ui/warnings/WarningUtils;->WARNING_PRIVILEGED_INTENT:Ljava/lang/String;

    iget-object v11, p0, Lcom/csipsimple/ui/SipHome;->prefProviderWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-static {p0, v11}, Lcom/csipsimple/ui/warnings/WarningUtils;->shouldWarnPrivilegedIntent(Landroid/content/Context;Lcom/csipsimple/utils/PreferencesProviderWrapper;)Z

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/csipsimple/ui/SipHome;->applyWarning(Ljava/lang/String;Z)V

    .line 494
    sget-object v10, Lcom/csipsimple/ui/warnings/WarningUtils;->WARNING_NO_STUN:Ljava/lang/String;

    iget-object v11, p0, Lcom/csipsimple/ui/SipHome;->prefProviderWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-static {v11}, Lcom/csipsimple/ui/warnings/WarningUtils;->shouldWarnNoStun(Lcom/csipsimple/utils/PreferencesProviderWrapper;)Z

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/csipsimple/ui/SipHome;->applyWarning(Ljava/lang/String;Z)V

    .line 495
    sget-object v10, Lcom/csipsimple/ui/warnings/WarningUtils;->WARNING_VPN_ICS:Ljava/lang/String;

    iget-object v11, p0, Lcom/csipsimple/ui/SipHome;->prefProviderWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-static {v11}, Lcom/csipsimple/ui/warnings/WarningUtils;->shouldWarnVpnIcs(Lcom/csipsimple/utils/PreferencesProviderWrapper;)Z

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/csipsimple/ui/SipHome;->applyWarning(Ljava/lang/String;Z)V

    .line 496
    sget-object v10, Lcom/csipsimple/ui/warnings/WarningUtils;->WARNING_SDCARD:Ljava/lang/String;

    iget-object v11, p0, Lcom/csipsimple/ui/SipHome;->prefProviderWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-static {p0, v11}, Lcom/csipsimple/ui/warnings/WarningUtils;->shouldWarnSDCard(Landroid/content/Context;Lcom/csipsimple/utils/PreferencesProviderWrapper;)Z

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/csipsimple/ui/SipHome;->applyWarning(Ljava/lang/String;Z)V

    .line 497
    return-void
.end method

.method private disconnect(Z)V
    .locals 4
    .param p1, "quit"    # Z

    .prologue
    .line 864
    const-string v1, "SIP_HOME"

    const-string v2, "True disconnection..."

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.csipsimple.service.ACTION_OUTGOING_UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 866
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "outgoing_activity"

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/csipsimple/ui/SipHome;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 867
    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/SipHome;->sendBroadcast(Landroid/content/Intent;)V

    .line 868
    if-eqz p1, :cond_0

    .line 869
    invoke-virtual {p0}, Lcom/csipsimple/ui/SipHome;->finish()V

    .line 871
    :cond_0
    return-void
.end method

.method private getFragmentAt(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 377
    iget-object v1, p0, Lcom/csipsimple/ui/SipHome;->mTabsAdapter:Lcom/csipsimple/ui/SipHome$TabsAdapter;

    invoke-virtual {v1, p1}, Lcom/csipsimple/ui/SipHome$TabsAdapter;->getIdForPosition(I)Ljava/lang/Integer;

    move-result-object v0

    .line 378
    .local v0, "id":Ljava/lang/Integer;
    if-eqz v0, :cond_4

    .line 379
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/csipsimple/ui/SipHome;->mDialpadFragment:Lcom/csipsimple/ui/dialpad/DialerFragment;

    .line 388
    :goto_0
    return-object v1

    .line 381
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 382
    iget-object v1, p0, Lcom/csipsimple/ui/SipHome;->mCallLogFragment:Lcom/csipsimple/ui/calllog/CallLogListFragment;

    goto :goto_0

    .line 383
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 384
    iget-object v1, p0, Lcom/csipsimple/ui/SipHome;->mMessagesFragment:Lcom/csipsimple/ui/messages/ConversationsListFragment;

    goto :goto_0

    .line 385
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 386
    iget-object v1, p0, Lcom/csipsimple/ui/SipHome;->mPhoneFavoriteFragment:Lcom/csipsimple/ui/favorites/FavListFragment;

    goto :goto_0

    .line 387
    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 388
    iget-object v1, p0, Lcom/csipsimple/ui/SipHome;->mWarningFragment:Lcom/csipsimple/ui/warnings/WarningFragment;

    goto :goto_0

    .line 391
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown fragment index: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getVisibleLeafs(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 597
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-object v1

    .line 601
    :cond_1
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 602
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    move-object v3, p1

    .line 603
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/csipsimple/ui/SipHome;->getVisibleLeafs(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v2

    .line 604
    .local v2, "subLeafs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 602
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 608
    .end local v0    # "i":I
    .end local v2    # "subLeafs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private postStartSipService()V
    .locals 14

    .prologue
    const/high16 v13, 0x10000000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x1

    .line 515
    invoke-static {}, Lcom/csipsimple/utils/CustomDistribution;->showFirstSettingScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome;->prefProviderWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v1, "has_already_setup"

    invoke-virtual {v0, v1, v4}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 517
    new-instance v11, Landroid/content/Intent;

    const-string v0, "com.csipsimple.ui.action.PREFS_FAST"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    .local v11, "prefsIntent":Landroid/content/Intent;
    invoke-virtual {v11, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 519
    invoke-virtual {p0, v11}, Lcom/csipsimple/ui/SipHome;->startActivity(Landroid/content/Intent;)V

    .line 561
    .end local v11    # "prefsIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome;->prefProviderWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v1, "has_already_setup"

    invoke-virtual {v0, v1, v4}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    move v10, v4

    .line 524
    .local v10, "doFirstParams":Z
    :goto_1
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome;->prefProviderWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v1, "has_already_setup"

    invoke-virtual {v0, v1, v12}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 525
    if-eqz v10, :cond_2

    .line 526
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome;->prefProviderWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-virtual {v0}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->resetAllDefaultValues()V

    .line 531
    .end local v10    # "doFirstParams":Z
    :cond_2
    iget-boolean v0, p0, Lcom/csipsimple/ui/SipHome;->hasTriedOnceActivateAcc:Z

    if-nez v0, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/csipsimple/ui/SipHome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/csipsimple/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    .line 534
    const-string v5, "id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    .line 533
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 536
    .local v8, "c":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 537
    .local v6, "accountCount":I
    if-eqz v8, :cond_3

    .line 538
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 540
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 542
    if-nez v6, :cond_6

    .line 543
    const/4 v7, 0x0

    .line 544
    .local v7, "accountIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/csipsimple/utils/CustomDistribution;->getCustomDistributionWizard()Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    move-result-object v9

    .line 545
    .local v9, "distribWizard":Lcom/csipsimple/wizards/WizardUtils$WizardInfo;
    if-eqz v9, :cond_5

    .line 546
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "accountIntent":Landroid/content/Intent;
    const-class v0, Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-direct {v7, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 547
    .restart local v7    # "accountIntent":Landroid/content/Intent;
    const-string v0, "wizard"

    iget-object v1, v9, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->id:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    :goto_2
    if-eqz v7, :cond_6

    .line 553
    invoke-virtual {v7, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 554
    invoke-virtual {p0, v7}, Lcom/csipsimple/ui/SipHome;->startActivity(Landroid/content/Intent;)V

    .line 555
    iput-boolean v12, p0, Lcom/csipsimple/ui/SipHome;->hasTriedOnceActivateAcc:Z

    goto :goto_0

    .end local v6    # "accountCount":I
    .end local v7    # "accountIntent":Landroid/content/Intent;
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "distribWizard":Lcom/csipsimple/wizards/WizardUtils$WizardInfo;
    :cond_4
    move v10, v12

    .line 523
    goto :goto_1

    .line 549
    .restart local v6    # "accountCount":I
    .restart local v7    # "accountIntent":Landroid/content/Intent;
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v9    # "distribWizard":Lcom/csipsimple/wizards/WizardUtils$WizardInfo;
    :cond_5
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "accountIntent":Landroid/content/Intent;
    const-class v0, Lcom/csipsimple/ui/account/AccountsEditList;

    invoke-direct {v7, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v7    # "accountIntent":Landroid/content/Intent;
    goto :goto_2

    .line 559
    .end local v7    # "accountIntent":Landroid/content/Intent;
    .end local v9    # "distribWizard":Lcom/csipsimple/wizards/WizardUtils$WizardInfo;
    :cond_6
    iput-boolean v12, p0, Lcom/csipsimple/ui/SipHome;->hasTriedOnceActivateAcc:Z

    goto :goto_0
.end method

.method private refreshWarningTabDisplay()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 898
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 899
    .local v3, "warnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/csipsimple/ui/SipHome;->warningList:Ljava/util/List;

    monitor-enter v5

    .line 900
    :try_start_0
    iget-object v4, p0, Lcom/csipsimple/ui/SipHome;->warningList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 899
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    iget-object v4, p0, Lcom/csipsimple/ui/SipHome;->mWarningFragment:Lcom/csipsimple/ui/warnings/WarningFragment;

    if-eqz v4, :cond_0

    .line 903
    iget-object v4, p0, Lcom/csipsimple/ui/SipHome;->mWarningFragment:Lcom/csipsimple/ui/warnings/WarningFragment;

    invoke-virtual {v4, v3}, Lcom/csipsimple/ui/warnings/WarningFragment;->setWarningList(Ljava/util/List;)V

    .line 904
    iget-object v4, p0, Lcom/csipsimple/ui/SipHome;->mWarningFragment:Lcom/csipsimple/ui/warnings/WarningFragment;

    invoke-virtual {v4, p0}, Lcom/csipsimple/ui/warnings/WarningFragment;->setOnWarningChangedListener(Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;)V

    .line 906
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 908
    iget-object v4, p0, Lcom/csipsimple/ui/SipHome;->mTabsAdapter:Lcom/csipsimple/ui/SipHome$TabsAdapter;

    invoke-virtual {v4, v7}, Lcom/csipsimple/ui/SipHome$TabsAdapter;->getPositionForId(I)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1

    .line 910
    const-string v4, "SIP_HOME"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Reason to warn "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    iget-object v4, p0, Lcom/csipsimple/ui/SipHome;->mTabsAdapter:Lcom/csipsimple/ui/SipHome$TabsAdapter;

    iget-object v5, p0, Lcom/csipsimple/ui/SipHome;->warningTab:Lcom/actionbarsherlock/app/ActionBar$Tab;

    const-class v6, Lcom/csipsimple/ui/warnings/WarningFragment;

    invoke-virtual {v4, v5, v6, v7}, Lcom/csipsimple/ui/SipHome$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;I)V

    .line 913
    iget-object v4, p0, Lcom/csipsimple/ui/SipHome;->warningTabfadeAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 933
    :cond_1
    :goto_0
    return-void

    .line 899
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 917
    :cond_2
    invoke-virtual {p0}, Lcom/csipsimple/ui/SipHome;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 918
    .local v0, "ab":Lcom/actionbarsherlock/app/ActionBar;
    const/4 v2, -0x1

    .line 919
    .local v2, "selPos":I
    if-eqz v0, :cond_3

    .line 920
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getSelectedTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getPosition()I

    move-result v2

    .line 922
    :cond_3
    iget-object v4, p0, Lcom/csipsimple/ui/SipHome;->mTabsAdapter:Lcom/csipsimple/ui/SipHome$TabsAdapter;

    invoke-virtual {v4, v7}, Lcom/csipsimple/ui/SipHome$TabsAdapter;->getPositionForId(I)Ljava/lang/Integer;

    move-result-object v1

    .line 923
    .local v1, "pos":Ljava/lang/Integer;
    if-eqz v1, :cond_4

    .line 924
    iget-object v4, p0, Lcom/csipsimple/ui/SipHome;->mTabsAdapter:Lcom/csipsimple/ui/SipHome$TabsAdapter;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/csipsimple/ui/SipHome$TabsAdapter;->removeTabAt(I)V

    .line 925
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v2, v4, :cond_4

    if-eqz v0, :cond_4

    .line 926
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 929
    :cond_4
    iget-object v4, p0, Lcom/csipsimple/ui/SipHome;->warningTabfadeAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 930
    iget-object v4, p0, Lcom/csipsimple/ui/SipHome;->warningTabfadeAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->end()V

    goto :goto_0
.end method

.method private selectTabWithAction(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 684
    if-eqz p1, :cond_3

    .line 685
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 686
    .local v1, "callAction":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 687
    invoke-virtual {p0}, Lcom/csipsimple/ui/SipHome;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 688
    .local v0, "ab":Lcom/actionbarsherlock/app/ActionBar;
    const/4 v6, 0x0

    .line 689
    .local v6, "toSelectTab":Lcom/actionbarsherlock/app/ActionBar$Tab;
    const/4 v5, 0x0

    .line 690
    .local v5, "toSelectId":Ljava/lang/Integer;
    const-string v7, "com.csipsimple.phone.action.DIALER"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 691
    const-string v7, "android.intent.action.DIAL"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 692
    :cond_0
    iget-object v7, p0, Lcom/csipsimple/ui/SipHome;->mTabsAdapter:Lcom/csipsimple/ui/SipHome$TabsAdapter;

    invoke-virtual {v7, v9}, Lcom/csipsimple/ui/SipHome$TabsAdapter;->getPositionForId(I)Ljava/lang/Integer;

    move-result-object v4

    .line 693
    .local v4, "pos":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    .line 694
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/actionbarsherlock/app/ActionBar;->getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v6

    .line 695
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 696
    .local v2, "data":Landroid/net/Uri;
    if-eqz v2, :cond_1

    iget-object v7, p0, Lcom/csipsimple/ui/SipHome;->mDialpadFragment:Lcom/csipsimple/ui/dialpad/DialerFragment;

    if-eqz v7, :cond_1

    .line 697
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 698
    .local v3, "nbr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 699
    iget-object v7, p0, Lcom/csipsimple/ui/SipHome;->mDialpadFragment:Lcom/csipsimple/ui/dialpad/DialerFragment;

    invoke-virtual {v7, v8}, Lcom/csipsimple/ui/dialpad/DialerFragment;->setTextDialing(Z)V

    .line 700
    iget-object v7, p0, Lcom/csipsimple/ui/SipHome;->mDialpadFragment:Lcom/csipsimple/ui/dialpad/DialerFragment;

    invoke-virtual {v7, v3}, Lcom/csipsimple/ui/dialpad/DialerFragment;->setTextFieldValue(Ljava/lang/CharSequence;)V

    .line 703
    .end local v3    # "nbr":Ljava/lang/String;
    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 724
    .end local v2    # "data":Landroid/net/Uri;
    .end local v4    # "pos":Ljava/lang/Integer;
    :cond_2
    :goto_0
    if-eqz v6, :cond_7

    .line 725
    invoke-virtual {v0, v6}, Lcom/actionbarsherlock/app/ActionBar;->selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 726
    iput-object v5, p0, Lcom/csipsimple/ui/SipHome;->initTabId:Ljava/lang/Integer;

    .line 733
    .end local v0    # "ab":Lcom/actionbarsherlock/app/ActionBar;
    .end local v1    # "callAction":Ljava/lang/String;
    .end local v5    # "toSelectId":Ljava/lang/Integer;
    .end local v6    # "toSelectTab":Lcom/actionbarsherlock/app/ActionBar$Tab;
    :cond_3
    :goto_1
    return-void

    .line 705
    .restart local v0    # "ab":Lcom/actionbarsherlock/app/ActionBar;
    .restart local v1    # "callAction":Ljava/lang/String;
    .restart local v5    # "toSelectId":Ljava/lang/Integer;
    .restart local v6    # "toSelectTab":Lcom/actionbarsherlock/app/ActionBar$Tab;
    :cond_4
    const-string v7, "com.csipsimple.phone.action.CALLLOG"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 706
    iget-object v7, p0, Lcom/csipsimple/ui/SipHome;->mTabsAdapter:Lcom/csipsimple/ui/SipHome$TabsAdapter;

    invoke-virtual {v7, v8}, Lcom/csipsimple/ui/SipHome$TabsAdapter;->getPositionForId(I)Ljava/lang/Integer;

    move-result-object v4

    .line 707
    .restart local v4    # "pos":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    .line 708
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/actionbarsherlock/app/ActionBar;->getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v6

    .line 709
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 711
    .end local v4    # "pos":Ljava/lang/Integer;
    :cond_5
    const-string v7, "com.csipsimple.phone.action.FAVORITES"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 712
    iget-object v7, p0, Lcom/csipsimple/ui/SipHome;->mTabsAdapter:Lcom/csipsimple/ui/SipHome$TabsAdapter;

    invoke-virtual {v7, v10}, Lcom/csipsimple/ui/SipHome$TabsAdapter;->getPositionForId(I)Ljava/lang/Integer;

    move-result-object v4

    .line 713
    .restart local v4    # "pos":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    .line 714
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/actionbarsherlock/app/ActionBar;->getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v6

    .line 715
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 717
    .end local v4    # "pos":Ljava/lang/Integer;
    :cond_6
    const-string v7, "com.csipsimple.phone.action.MESSAGES"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 718
    iget-object v7, p0, Lcom/csipsimple/ui/SipHome;->mTabsAdapter:Lcom/csipsimple/ui/SipHome$TabsAdapter;

    invoke-virtual {v7, v11}, Lcom/csipsimple/ui/SipHome$TabsAdapter;->getPositionForId(I)Ljava/lang/Integer;

    move-result-object v4

    .line 719
    .restart local v4    # "pos":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    .line 720
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/actionbarsherlock/app/ActionBar;->getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v6

    .line 721
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 728
    .end local v4    # "pos":Ljava/lang/Integer;
    :cond_7
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/csipsimple/ui/SipHome;->initTabId:Ljava/lang/Integer;

    goto :goto_1
.end method

.method private sendFragmentVisibilityChange(IZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "visibility"    # Z

    .prologue
    .line 403
    :try_start_0
    invoke-direct {p0, p1}, Lcom/csipsimple/ui/SipHome;->getFragmentAt(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 404
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v2, v1, Lcom/csipsimple/ui/SipHome$ViewPagerVisibilityListener;

    if-eqz v2, :cond_0

    .line 405
    check-cast v1, Lcom/csipsimple/ui/SipHome$ViewPagerVisibilityListener;

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-interface {v1, p2}, Lcom/csipsimple/ui/SipHome$ViewPagerVisibilityListener;->onVisibilityChanged(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "SIP_HOME"

    const-string v3, "Fragment not anymore managed"

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startSipService()V
    .locals 2

    .prologue
    .line 501
    new-instance v0, Lcom/csipsimple/ui/SipHome$3;

    const-string v1, "StartSip"

    invoke-direct {v0, p0, v1}, Lcom/csipsimple/ui/SipHome$3;-><init>(Lcom/csipsimple/ui/SipHome;Ljava/lang/String;)V

    .line 509
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 511
    return-void
.end method


# virtual methods
.method public getCurrentFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/csipsimple/ui/SipHome;->getFragmentAt(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 398
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 857
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 858
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.csipsimple.service.ACTION_SIP_REQUEST_RESTART"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/SipHome;->sendBroadcast(Landroid/content/Intent;)V

    .line 860
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 861
    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 6
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 418
    iget-object v2, p0, Lcom/csipsimple/ui/SipHome;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/csipsimple/ui/SipHome;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 419
    .local v0, "currentPosition":I
    :goto_0
    const/4 v1, 0x0

    .line 420
    .local v1, "tabId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/csipsimple/ui/SipHome;->mTabsAdapter:Lcom/csipsimple/ui/SipHome$TabsAdapter;

    if-eqz v2, :cond_0

    .line 421
    iget-object v2, p0, Lcom/csipsimple/ui/SipHome;->mTabsAdapter:Lcom/csipsimple/ui/SipHome$TabsAdapter;

    invoke-virtual {v2, v0}, Lcom/csipsimple/ui/SipHome$TabsAdapter;->getIdForPosition(I)Ljava/lang/Integer;

    move-result-object v1

    .line 423
    :cond_0
    instance-of v2, p1, Lcom/csipsimple/ui/dialpad/DialerFragment;

    if-eqz v2, :cond_3

    .line 424
    check-cast p1, Lcom/csipsimple/ui/dialpad/DialerFragment;

    .end local p1    # "fragment":Landroid/support/v4/app/Fragment;
    iput-object p1, p0, Lcom/csipsimple/ui/SipHome;->mDialpadFragment:Lcom/csipsimple/ui/dialpad/DialerFragment;

    .line 425
    iget-object v2, p0, Lcom/csipsimple/ui/SipHome;->initTabId:Ljava/lang/Integer;

    if-ne v2, v1, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 426
    iget-object v2, p0, Lcom/csipsimple/ui/SipHome;->mDialpadFragment:Lcom/csipsimple/ui/dialpad/DialerFragment;

    invoke-virtual {v2, v4}, Lcom/csipsimple/ui/dialpad/DialerFragment;->onVisibilityChanged(Z)V

    .line 427
    iput-object v5, p0, Lcom/csipsimple/ui/SipHome;->initTabId:Ljava/lang/Integer;

    .line 456
    :cond_1
    :goto_1
    return-void

    .line 418
    .end local v0    # "currentPosition":I
    .end local v1    # "tabId":Ljava/lang/Integer;
    .restart local p1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 429
    .restart local v0    # "currentPosition":I
    .restart local v1    # "tabId":Ljava/lang/Integer;
    :cond_3
    instance-of v2, p1, Lcom/csipsimple/ui/calllog/CallLogListFragment;

    if-eqz v2, :cond_4

    .line 430
    check-cast p1, Lcom/csipsimple/ui/calllog/CallLogListFragment;

    .end local p1    # "fragment":Landroid/support/v4/app/Fragment;
    iput-object p1, p0, Lcom/csipsimple/ui/SipHome;->mCallLogFragment:Lcom/csipsimple/ui/calllog/CallLogListFragment;

    .line 431
    iget-object v2, p0, Lcom/csipsimple/ui/SipHome;->initTabId:Ljava/lang/Integer;

    if-ne v2, v1, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 432
    iget-object v2, p0, Lcom/csipsimple/ui/SipHome;->mCallLogFragment:Lcom/csipsimple/ui/calllog/CallLogListFragment;

    invoke-virtual {v2, v4}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->onVisibilityChanged(Z)V

    .line 433
    iput-object v5, p0, Lcom/csipsimple/ui/SipHome;->initTabId:Ljava/lang/Integer;

    goto :goto_1

    .line 435
    .restart local p1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_4
    instance-of v2, p1, Lcom/csipsimple/ui/messages/ConversationsListFragment;

    if-eqz v2, :cond_5

    .line 436
    check-cast p1, Lcom/csipsimple/ui/messages/ConversationsListFragment;

    .end local p1    # "fragment":Landroid/support/v4/app/Fragment;
    iput-object p1, p0, Lcom/csipsimple/ui/SipHome;->mMessagesFragment:Lcom/csipsimple/ui/messages/ConversationsListFragment;

    .line 437
    iget-object v2, p0, Lcom/csipsimple/ui/SipHome;->initTabId:Ljava/lang/Integer;

    if-ne v2, v1, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 438
    iget-object v2, p0, Lcom/csipsimple/ui/SipHome;->mMessagesFragment:Lcom/csipsimple/ui/messages/ConversationsListFragment;

    invoke-virtual {v2, v4}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->onVisibilityChanged(Z)V

    .line 439
    iput-object v5, p0, Lcom/csipsimple/ui/SipHome;->initTabId:Ljava/lang/Integer;

    goto :goto_1

    .line 441
    .restart local p1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_5
    instance-of v2, p1, Lcom/csipsimple/ui/favorites/FavListFragment;

    if-eqz v2, :cond_6

    .line 442
    check-cast p1, Lcom/csipsimple/ui/favorites/FavListFragment;

    .end local p1    # "fragment":Landroid/support/v4/app/Fragment;
    iput-object p1, p0, Lcom/csipsimple/ui/SipHome;->mPhoneFavoriteFragment:Lcom/csipsimple/ui/favorites/FavListFragment;

    .line 443
    iget-object v2, p0, Lcom/csipsimple/ui/SipHome;->initTabId:Ljava/lang/Integer;

    if-ne v2, v1, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 444
    iget-object v2, p0, Lcom/csipsimple/ui/SipHome;->mPhoneFavoriteFragment:Lcom/csipsimple/ui/favorites/FavListFragment;

    invoke-virtual {v2, v4}, Lcom/csipsimple/ui/favorites/FavListFragment;->onVisibilityChanged(Z)V

    .line 445
    iput-object v5, p0, Lcom/csipsimple/ui/SipHome;->initTabId:Ljava/lang/Integer;

    goto :goto_1

    .line 447
    .restart local p1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_6
    instance-of v2, p1, Lcom/csipsimple/ui/warnings/WarningFragment;

    if-eqz v2, :cond_1

    .line 448
    check-cast p1, Lcom/csipsimple/ui/warnings/WarningFragment;

    .end local p1    # "fragment":Landroid/support/v4/app/Fragment;
    iput-object p1, p0, Lcom/csipsimple/ui/SipHome;->mWarningFragment:Lcom/csipsimple/ui/warnings/WarningFragment;

    .line 449
    iget-object v3, p0, Lcom/csipsimple/ui/SipHome;->warningList:Ljava/util/List;

    monitor-enter v3

    .line 450
    :try_start_0
    iget-object v2, p0, Lcom/csipsimple/ui/SipHome;->mWarningFragment:Lcom/csipsimple/ui/warnings/WarningFragment;

    iget-object v4, p0, Lcom/csipsimple/ui/SipHome;->warningList:Ljava/util/List;

    invoke-virtual {v2, v4}, Lcom/csipsimple/ui/warnings/WarningFragment;->setWarningList(Ljava/util/List;)V

    .line 451
    iget-object v2, p0, Lcom/csipsimple/ui/SipHome;->mWarningFragment:Lcom/csipsimple/ui/warnings/WarningFragment;

    invoke-virtual {v2, p0}, Lcom/csipsimple/ui/warnings/WarningFragment;->setOnWarningChangedListener(Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;)V

    .line 449
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 132
    new-instance v5, Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-direct {v5, p0}, Lcom/csipsimple/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/csipsimple/ui/SipHome;->prefProviderWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    .line 147
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const v5, 0x7f03005e

    invoke-virtual {p0, v5}, Lcom/csipsimple/ui/SipHome;->setContentView(I)V

    .line 151
    invoke-virtual {p0}, Lcom/csipsimple/ui/SipHome;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 152
    .local v0, "ab":Lcom/actionbarsherlock/app/ActionBar;
    invoke-virtual {v0, v8}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 153
    invoke-virtual {v0, v8}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 154
    invoke-virtual {v0, v9}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 161
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v5

    .line 162
    const v6, 0x7f0b01e0

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setContentDescription(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v5

    .line 163
    const v6, 0x7f020095

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setIcon(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 164
    .local v2, "dialerTab":Lcom/actionbarsherlock/app/ActionBar$Tab;
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v5

    .line 165
    const v6, 0x7f0b01e1

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setContentDescription(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v5

    .line 166
    const v6, 0x7f020098

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setIcon(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 167
    .local v1, "callLogTab":Lcom/actionbarsherlock/app/ActionBar$Tab;
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v5

    .line 168
    const v6, 0x7f0b01e3

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setContentDescription(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v5

    .line 169
    const v6, 0x7f020097

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setIcon(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v3

    .line 171
    .local v3, "favoritesTab":Lcom/actionbarsherlock/app/ActionBar$Tab;
    const/4 v4, 0x0

    .line 172
    .local v4, "messagingTab":Lcom/actionbarsherlock/app/ActionBar$Tab;
    invoke-static {}, Lcom/csipsimple/utils/CustomDistribution;->supportMessaging()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v5

    .line 174
    const v6, 0x7f0b01e2

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setContentDescription(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v5

    .line 175
    const v6, 0x7f020099

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setIcon(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v4

    .line 178
    :cond_0
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v5

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setIcon(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v5

    iput-object v5, p0, Lcom/csipsimple/ui/SipHome;->warningTab:Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 179
    iget-object v5, p0, Lcom/csipsimple/ui/SipHome;->warningTab:Lcom/actionbarsherlock/app/ActionBar$Tab;

    invoke-virtual {v5}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string v6, "alpha"

    new-array v7, v9, [I

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/csipsimple/ui/SipHome;->warningTabfadeAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    .line 180
    iget-object v5, p0, Lcom/csipsimple/ui/SipHome;->warningTabfadeAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    const-wide/16 v6, 0x5dc

    invoke-virtual {v5, v6, v7}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    .line 181
    iget-object v5, p0, Lcom/csipsimple/ui/SipHome;->warningTabfadeAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 182
    iget-object v5, p0, Lcom/csipsimple/ui/SipHome;->warningTabfadeAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v5, v9}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 184
    invoke-virtual {p0}, Lcom/csipsimple/ui/SipHome;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/csipsimple/ui/SipHome;->mDualPane:Z

    .line 186
    const v5, 0x7f06005d

    invoke-virtual {p0, v5}, Lcom/csipsimple/ui/SipHome;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/csipsimple/ui/SipHome;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 187
    new-instance v5, Lcom/csipsimple/ui/SipHome$TabsAdapter;

    invoke-virtual {p0}, Lcom/csipsimple/ui/SipHome;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v6

    iget-object v7, p0, Lcom/csipsimple/ui/SipHome;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v5, p0, p0, v6, v7}, Lcom/csipsimple/ui/SipHome$TabsAdapter;-><init>(Lcom/csipsimple/ui/SipHome;Landroid/support/v4/app/FragmentActivity;Lcom/actionbarsherlock/app/ActionBar;Landroid/support/v4/view/ViewPager;)V

    iput-object v5, p0, Lcom/csipsimple/ui/SipHome;->mTabsAdapter:Lcom/csipsimple/ui/SipHome$TabsAdapter;

    .line 188
    iget-object v5, p0, Lcom/csipsimple/ui/SipHome;->mTabsAdapter:Lcom/csipsimple/ui/SipHome$TabsAdapter;

    const-class v6, Lcom/csipsimple/ui/dialpad/DialerFragment;

    invoke-virtual {v5, v2, v6, v8}, Lcom/csipsimple/ui/SipHome$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;I)V

    .line 189
    iget-object v5, p0, Lcom/csipsimple/ui/SipHome;->mTabsAdapter:Lcom/csipsimple/ui/SipHome$TabsAdapter;

    const-class v6, Lcom/csipsimple/ui/calllog/CallLogListFragment;

    const/4 v7, 0x1

    invoke-virtual {v5, v1, v6, v7}, Lcom/csipsimple/ui/SipHome$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;I)V

    .line 190
    iget-object v5, p0, Lcom/csipsimple/ui/SipHome;->mTabsAdapter:Lcom/csipsimple/ui/SipHome$TabsAdapter;

    const-class v6, Lcom/csipsimple/ui/favorites/FavListFragment;

    invoke-virtual {v5, v3, v6, v9}, Lcom/csipsimple/ui/SipHome$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;I)V

    .line 191
    if-eqz v4, :cond_1

    .line 192
    iget-object v5, p0, Lcom/csipsimple/ui/SipHome;->mTabsAdapter:Lcom/csipsimple/ui/SipHome$TabsAdapter;

    const-class v6, Lcom/csipsimple/ui/messages/ConversationsListFragment;

    const/4 v7, 0x3

    invoke-virtual {v5, v4, v6, v7}, Lcom/csipsimple/ui/SipHome$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;I)V

    .line 196
    :cond_1
    iput-boolean v8, p0, Lcom/csipsimple/ui/SipHome;->hasTriedOnceActivateAcc:Z

    .line 198
    iget-object v5, p0, Lcom/csipsimple/ui/SipHome;->prefProviderWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v6, "prevent_screen_rotation"

    invoke-virtual {v5, v6}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 199
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/csipsimple/ui/SipHome;->setRequestedOrientation(I)V

    .line 202
    :cond_2
    invoke-virtual {p0}, Lcom/csipsimple/ui/SipHome;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/csipsimple/ui/SipHome;->selectTabWithAction(Landroid/content/Intent;)V

    .line 203
    iget-object v5, p0, Lcom/csipsimple/ui/SipHome;->prefProviderWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-virtual {v5}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getLogLevel()I

    move-result v5

    invoke-static {v5}, Lcom/csipsimple/utils/Log;->setLogLevel(I)V

    .line 207
    new-instance v5, Lcom/csipsimple/ui/SipHome$2;

    invoke-direct {v5, p0}, Lcom/csipsimple/ui/SipHome$2;-><init>(Lcom/csipsimple/ui/SipHome;)V

    iput-object v5, p0, Lcom/csipsimple/ui/SipHome;->asyncSanityChecker:Ljava/lang/Thread;

    .line 212
    iget-object v5, p0, Lcom/csipsimple/ui/SipHome;->asyncSanityChecker:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 214
    return-void

    .line 179
    :array_0
    .array-data 4
        0xff
        0x64
    .end array-data
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 746
    invoke-virtual {p0}, Lcom/csipsimple/ui/SipHome;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    .line 748
    .local v1, "actionRoom":I
    :goto_0
    invoke-static {}, Lcom/csipsimple/utils/CustomDistribution;->getCustomDistributionWizard()Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    move-result-object v2

    .line 749
    .local v2, "distribWizard":Lcom/csipsimple/wizards/WizardUtils$WizardInfo;
    if-eqz v2, :cond_0

    .line 750
    const/4 v4, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "My "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v3, v5}, Lcom/actionbarsherlock/view/Menu;->add(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    .line 751
    iget v5, v2, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->icon:I

    invoke-interface {v4, v5}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    .line 752
    invoke-interface {v4, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 754
    :cond_0
    invoke-static {}, Lcom/csipsimple/utils/CustomDistribution;->distributionWantsOtherAccounts()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 755
    move v0, v1

    .line 756
    .local v0, "accountRoom":I
    const/16 v4, 0xd

    invoke-static {v4}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 757
    or-int/lit8 v0, v0, 0x4

    .line 759
    :cond_1
    const/4 v5, 0x2

    .line 760
    if-nez v2, :cond_4

    const v4, 0x7f0b01c5

    .line 759
    :goto_1
    invoke-interface {p1, v3, v5, v3, v4}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    .line 761
    const v5, 0x7f0200b8

    invoke-interface {v4, v5}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    .line 762
    const/16 v5, 0x61

    invoke-interface {v4, v5}, Lcom/actionbarsherlock/view/MenuItem;->setAlphabeticShortcut(C)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    .line 763
    invoke-interface {v4, v0}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 765
    .end local v0    # "accountRoom":I
    :cond_2
    const/4 v4, 0x3

    const v5, 0x7f0b0094

    invoke-interface {p1, v3, v4, v3, v5}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    .line 766
    const v5, 0x1080049

    invoke-interface {v4, v5}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    .line 767
    invoke-interface {v4, v3}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 769
    const/4 v4, 0x5

    const v5, 0x7f0b01eb

    invoke-interface {p1, v3, v4, v3, v5}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    .line 770
    const v5, 0x1080040

    invoke-interface {v4, v5}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    .line 771
    invoke-interface {v4, v3}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 772
    const/4 v4, 0x4

    const v5, 0x7f0b01e4

    invoke-interface {p1, v3, v4, v3, v5}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    .line 773
    const v5, 0x7f0200b7

    invoke-interface {v4, v5}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    .line 774
    invoke-interface {v4, v3}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 776
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v3

    return v3

    .end local v1    # "actionRoom":I
    .end local v2    # "distribWizard":Lcom/csipsimple/wizards/WizardUtils$WizardInfo;
    :cond_3
    move v1, v3

    .line 746
    goto/16 :goto_0

    .line 760
    .restart local v0    # "accountRoom":I
    .restart local v1    # "actionRoom":I
    .restart local v2    # "distribWizard":Lcom/csipsimple/wizards/WizardUtils$WizardInfo;
    :cond_4
    const v4, 0x7f0b01c6

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 737
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/csipsimple/ui/SipHome;->disconnect(Z)V

    .line 738
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    .line 739
    const-string v0, "SIP_HOME"

    const-string v1, "---DESTROY SIP HOME END---"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 678
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 679
    invoke-direct {p0, p1}, Lcom/csipsimple/ui/SipHome;->selectTabWithAction(Landroid/content/Intent;)V

    .line 680
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 15
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 781
    invoke-interface/range {p1 .. p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 851
    invoke-super/range {p0 .. p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 783
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/csipsimple/ui/account/AccountsEditList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/SipHome;->startActivity(Landroid/content/Intent;)V

    .line 784
    const/4 v0, 0x1

    goto :goto_0

    .line 786
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.csipsimple.ui.action.PREFS_GLOBAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/ui/SipHome;->startActivityForResult(Landroid/content/Intent;I)V

    .line 787
    const/4 v0, 0x1

    goto :goto_0

    .line 789
    :pswitch_2
    const-string v0, "SIP_HOME"

    const-string v1, "CLOSE"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome;->prefProviderWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-virtual {v0}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->isValidConnectionForIncoming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 794
    const v1, 0x7f0b01f1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 795
    const v1, 0x7f0b01f2

    invoke-virtual {p0, v1}, Lcom/csipsimple/ui/SipHome;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 796
    const v1, 0x7f0b01ef

    new-instance v2, Lcom/csipsimple/ui/SipHome$4;

    invoke-direct {v2, p0}, Lcom/csipsimple/ui/SipHome$4;-><init>(Lcom/csipsimple/ui/SipHome;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 803
    const v1, 0x7f0b01c8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 804
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 814
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome;->prefProviderWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-virtual {v0}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getAllIncomingNetworks()Ljava/util/ArrayList;

    move-result-object v12

    .line 807
    .local v12, "networks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 808
    const v0, 0x7f0b02ba

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 809
    const-string v3, ", "

    invoke-static {v3, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 808
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/ui/SipHome;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 810
    .local v11, "msg":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-static {p0, v11, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 812
    .end local v11    # "msg":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/csipsimple/ui/SipHome;->disconnect(Z)V

    goto :goto_1

    .line 817
    .end local v12    # "networks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_3
    invoke-static {}, Lcom/csipsimple/ui/help/Help;->newInstance()Lcom/csipsimple/ui/help/Help;

    move-result-object v13

    .line 818
    .local v13, "newFragment":Landroid/support/v4/app/DialogFragment;
    invoke-virtual {p0}, Lcom/csipsimple/ui/SipHome;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {v13, v0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 819
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 821
    .end local v13    # "newFragment":Landroid/support/v4/app/DialogFragment;
    :pswitch_4
    invoke-static {}, Lcom/csipsimple/utils/CustomDistribution;->getCustomDistributionWizard()Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    move-result-object v8

    .line 823
    .local v8, "distribWizard":Lcom/csipsimple/wizards/WizardUtils$WizardInfo;
    invoke-virtual {p0}, Lcom/csipsimple/ui/SipHome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/csipsimple/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 824
    const-string v4, "id"

    aput-object v4, v2, v3

    .line 825
    const-string v3, "wizard=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 826
    iget-object v14, v8, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->id:Ljava/lang/String;

    aput-object v14, v4, v5

    .line 827
    const/4 v5, 0x0

    .line 823
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 829
    .local v7, "c":Landroid/database/Cursor;
    new-instance v10, Landroid/content/Intent;

    const-class v0, Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-direct {v10, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 830
    .local v10, "it":Landroid/content/Intent;
    const-string v0, "wizard"

    iget-object v1, v8, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->id:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 831
    const/4 v6, 0x0

    .line 832
    .local v6, "accountId":Ljava/lang/Long;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 834
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 835
    const-string v0, "id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 839
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 842
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    .line 843
    const-string v0, "id"

    invoke-virtual {v10, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 845
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v10, v0}, Lcom/csipsimple/ui/SipHome;->startActivityForResult(Landroid/content/Intent;I)V

    .line 847
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 836
    :catch_0
    move-exception v9

    .line 837
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SIP_HOME"

    const-string v1, "Error while getting wizard"

    invoke-static {v0, v1, v9}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 839
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 838
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 839
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 840
    throw v0

    .line 781
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 567
    const-string v0, "SIP_HOME"

    const-string v1, "On Pause SIPHOME"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/ui/SipHome;->onForeground:Z

    .line 569
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome;->asyncSanityChecker:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome;->asyncSanityChecker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome;->asyncSanityChecker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 572
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/ui/SipHome;->asyncSanityChecker:Ljava/lang/Thread;

    .line 575
    :cond_0
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPause()V

    .line 577
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 581
    const-string v0, "SIP_HOME"

    const-string v1, "On Resume SIPHOME"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 583
    iput-boolean v3, p0, Lcom/csipsimple/ui/SipHome;->onForeground:Z

    .line 585
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome;->prefProviderWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v1, "has_been_quit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 588
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/csipsimple/ui/SipHome;->sendFragmentVisibilityChange(IZ)V

    .line 590
    const-string v0, "SIP_HOME"

    const-string v1, "WE CAN NOW start SIP service"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-direct {p0}, Lcom/csipsimple/ui/SipHome;->startSipService()V

    .line 593
    invoke-direct {p0}, Lcom/csipsimple/ui/SipHome;->applyTheme()V

    .line 594
    return-void
.end method

.method public onWarningRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1, "warnKey"    # Ljava/lang/String;

    .prologue
    .line 937
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/csipsimple/ui/SipHome;->applyWarning(Ljava/lang/String;Z)V

    .line 938
    return-void
.end method
