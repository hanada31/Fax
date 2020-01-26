.class public Lcom/csipsimple/service/DeviceStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStateReceiver.java"


# static fields
.field public static final APPLY_NIGHTLY_UPLOAD:Ljava/lang/String; = "com.csipsimple.action.APPLY_NIGHTLY"

.field private static final THIS_FILE:Ljava/lang/String; = "Device State"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    new-instance v8, Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/csipsimple/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    .line 51
    .local v8, "prefWrapper":Lcom/csipsimple/utils/PreferencesProviderWrapper;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "intentAction":Ljava/lang/String;
    const-string v11, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 67
    const-string v11, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 69
    :cond_0
    invoke-virtual {v8}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->isValidConnectionForIncoming()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 72
    const-string v11, "has_been_quit"

    invoke-virtual {v8, v11}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 73
    const-string v11, "Device State"

    const-string v12, "Try to start service if not already started"

    invoke-static {v11, v12}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/csipsimple/service/SipService;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v10, "sip_service_intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 114
    .end local v10    # "sip_service_intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 78
    :cond_2
    const-string v11, "com.csipsimple.accounts.activate"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 79
    const-string v11, "android.permission.CONFIGURE_SIP"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v11, "id"

    const-wide/16 v12, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 84
    .local v1, "accId":J
    const-wide/16 v11, -0x1

    cmp-long v11, v1, v11

    if-nez v11, :cond_3

    .line 87
    const-string v11, "id"

    const-wide/16 v12, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 90
    :cond_3
    const-wide/16 v11, -0x1

    cmp-long v11, v1, v11

    if-eqz v11, :cond_1

    .line 91
    const-string v11, "active"

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 92
    .local v3, "active":Z
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 93
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v11, "active"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 95
    sget-object v12, Lcom/csipsimple/api/SipProfile;->ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

    invoke-static {v12, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 96
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 94
    invoke-virtual {v11, v12, v4, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 97
    .local v5, "done":I
    if-lez v5, :cond_1

    .line 98
    invoke-virtual {v8}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->isValidConnectionForIncoming()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 99
    new-instance v9, Landroid/content/Intent;

    const-class v11, Lcom/csipsimple/service/SipService;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v9, "sipServiceIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 104
    .end local v1    # "accId":J
    .end local v3    # "active":Z
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v5    # "done":I
    .end local v9    # "sipServiceIntent":Landroid/content/Intent;
    :cond_4
    const-string v11, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 105
    const-string v11, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 106
    :cond_5
    invoke-static {}, Lcom/csipsimple/utils/CallHandlerPlugin;->clearAvailableCallHandlers()V

    .line 107
    invoke-static {}, Lcom/csipsimple/utils/RewriterPlugin;->clearAvailableRewriters()V

    .line 108
    invoke-static {}, Lcom/csipsimple/utils/ExtraPlugins;->clearDynPlugins()V

    .line 109
    invoke-static {}, Lcom/csipsimple/utils/PhoneCapabilityTester;->deinit()V

    goto/16 :goto_0

    .line 110
    :cond_6
    const-string v11, "com.csipsimple.action.APPLY_NIGHTLY"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 111
    new-instance v7, Lcom/csipsimple/utils/NightlyUpdater;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/csipsimple/utils/NightlyUpdater;-><init>(Landroid/content/Context;)V

    .line 112
    .local v7, "nu":Lcom/csipsimple/utils/NightlyUpdater;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/csipsimple/utils/NightlyUpdater;->applyUpdate(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
