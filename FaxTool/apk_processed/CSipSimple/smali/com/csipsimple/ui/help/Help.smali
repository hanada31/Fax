.class public Lcom/csipsimple/ui/help/Help;
.super Lcom/actionbarsherlock/app/SherlockDialogFragment;
.source "Help.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/help/Help$HelpArrayAdapter;,
        Lcom/csipsimple/ui/help/Help$HelpEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/actionbarsherlock/app/SherlockDialogFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final ARG_KILL_LOADING:Ljava/lang/String; = "kill_loading"

.field private static final FAQ:I = 0x0

.field private static final LEGALS:I = 0x4

.field private static final NIGHTLY:I = 0x5

.field private static final OPEN_ISSUES:I = 0x1

.field private static final REQUEST_SEND_LOGS:I = 0x0

.field private static final SEND_LOGS:I = 0x2

.field private static final START_LOGS:I = 0x3

.field private static final THIS_FILE:Ljava/lang/String; = "Help"


# instance fields
.field private prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;-><init>()V

    return-void
.end method

.method private isRecording()Z
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/csipsimple/ui/help/Help;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-virtual {v0}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getLogLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance()Lcom/csipsimple/ui/help/Help;
    .locals 4

    .prologue
    .line 63
    new-instance v1, Lcom/csipsimple/ui/help/Help;

    invoke-direct {v1}, Lcom/csipsimple/ui/help/Help;-><init>()V

    .line 64
    .local v1, "instance":Lcom/csipsimple/ui/help/Help;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "kill_loading"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    invoke-virtual {v1, v0}, Lcom/csipsimple/ui/help/Help;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object v1
.end method


# virtual methods
.method public getCustomView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 116
    const v4, 0x7f030039

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 117
    .local v3, "v":Landroid/view/View;
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 118
    .local v1, "lv":Landroid/widget/ListView;
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/ui/help/Help$HelpEntry;>;"
    invoke-static {}, Lcom/csipsimple/utils/CustomDistribution;->getFaqLink()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 125
    new-instance v4, Lcom/csipsimple/ui/help/Help$HelpEntry;

    const v5, 0x1080041

    const v6, 0x7f0b01ea

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/csipsimple/ui/help/Help$HelpEntry;-><init>(Lcom/csipsimple/ui/help/Help;III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    invoke-static {}, Lcom/csipsimple/utils/CustomDistribution;->showIssueList()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 130
    new-instance v4, Lcom/csipsimple/ui/help/Help$HelpEntry;

    const v5, 0x1080057

    const v6, 0x7f0b01ee

    const/4 v7, 0x1

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/csipsimple/ui/help/Help$HelpEntry;-><init>(Lcom/csipsimple/ui/help/Help;III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_1
    invoke-static {}, Lcom/csipsimple/utils/CustomDistribution;->getSupportEmail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 135
    invoke-direct {p0}, Lcom/csipsimple/ui/help/Help;->isRecording()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 136
    new-instance v4, Lcom/csipsimple/ui/help/Help$HelpEntry;

    const v5, 0x1080050

    const v6, 0x7f0b01ed

    const/4 v7, 0x2

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/csipsimple/ui/help/Help$HelpEntry;-><init>(Lcom/csipsimple/ui/help/Help;III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_2
    :goto_0
    new-instance v4, Lcom/csipsimple/ui/help/Help$HelpEntry;

    const v5, 0x108003f

    const v6, 0x7f0b0200

    const/4 v7, 0x4

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/csipsimple/ui/help/Help$HelpEntry;-><init>(Lcom/csipsimple/ui/help/Help;III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {p0}, Lcom/csipsimple/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/csipsimple/utils/NightlyUpdater;->isNightlyBuild(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 145
    new-instance v4, Lcom/csipsimple/ui/help/Help$HelpEntry;

    const v5, 0x7f0200b5

    const v6, 0x7f0b0201

    const/4 v7, 0x5

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/csipsimple/ui/help/Help$HelpEntry;-><init>(Lcom/csipsimple/ui/help/Help;III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_3
    new-instance v4, Lcom/csipsimple/ui/help/Help$HelpArrayAdapter;

    invoke-virtual {p0}, Lcom/csipsimple/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, p0, v5, v0}, Lcom/csipsimple/ui/help/Help$HelpArrayAdapter;-><init>(Lcom/csipsimple/ui/help/Help;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 151
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/csipsimple/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/csipsimple/utils/CollectLogs;->getApplicationInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    return-object v3

    .line 138
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_4
    new-instance v4, Lcom/csipsimple/ui/help/Help$HelpEntry;

    const v5, 0x108004e

    const v6, 0x7f0b01ec

    const/4 v7, 0x3

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/csipsimple/ui/help/Help$HelpEntry;-><init>(Lcom/csipsimple/ui/help/Help;III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 247
    if-nez p1, :cond_0

    .line 249
    :try_start_0
    invoke-virtual {p0}, Lcom/csipsimple/ui/help/Help;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 255
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "ex":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Lcom/csipsimple/ui/help/Help;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "kill_loading"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 91
    new-instance v0, Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-virtual {p0}, Lcom/csipsimple/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/csipsimple/ui/help/Help;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    .line 94
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/csipsimple/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    const v1, 0x1080040

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 102
    const v1, 0x7f0b01eb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 103
    const v1, 0x7f0b01c8

    .line 104
    new-instance v2, Lcom/csipsimple/ui/help/Help$1;

    invoke-direct {v2, p0}, Lcom/csipsimple/ui/help/Help$1;-><init>(Lcom/csipsimple/ui/help/Help;)V

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Lcom/csipsimple/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lcom/csipsimple/ui/help/Help;->getCustomView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 100
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 13
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v10, "Help"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Item clicked : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p4

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/csipsimple/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    check-cast v3, Lcom/csipsimple/ui/help/Help$HelpArrayAdapter;

    .line 190
    .local v3, "haa":Lcom/csipsimple/ui/help/Help$HelpArrayAdapter;
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/csipsimple/ui/help/Help$HelpArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/csipsimple/ui/help/Help$HelpEntry;

    .line 193
    .local v4, "he":Lcom/csipsimple/ui/help/Help$HelpEntry;
    iget v10, v4, Lcom/csipsimple/ui/help/Help$HelpEntry;->choiceTag:I

    packed-switch v10, :pswitch_data_0

    .line 240
    :goto_0
    return-void

    .line 195
    :pswitch_0
    invoke-static {}, Lcom/csipsimple/ui/help/Faq;->newInstance()Lcom/csipsimple/ui/help/Faq;

    move-result-object v7

    .line 196
    .local v7, "newFragment":Lcom/actionbarsherlock/app/SherlockDialogFragment;
    invoke-virtual {p0}, Lcom/csipsimple/ui/help/Help;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    const-string v11, "faq"

    invoke-virtual {v7, v10, v11}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    .end local v7    # "newFragment":Lcom/actionbarsherlock/app/SherlockDialogFragment;
    :pswitch_1
    invoke-static {}, Lcom/csipsimple/ui/help/Legal;->newInstance()Lcom/csipsimple/ui/help/Legal;

    move-result-object v7

    .line 200
    .restart local v7    # "newFragment":Lcom/actionbarsherlock/app/SherlockDialogFragment;
    invoke-virtual {p0}, Lcom/csipsimple/ui/help/Help;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    const-string v11, "issues"

    invoke-virtual {v7, v10, v11}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    .end local v7    # "newFragment":Lcom/actionbarsherlock/app/SherlockDialogFragment;
    :pswitch_2
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v6, "it":Landroid/content/Intent;
    const/high16 v10, 0x10000000

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 205
    const-string v10, "http://code.google.com/p/csipsimple/issues"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0, v6}, Lcom/csipsimple/ui/help/Help;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 210
    .end local v6    # "it":Landroid/content/Intent;
    :pswitch_3
    new-instance v8, Lcom/csipsimple/utils/NightlyUpdater;

    invoke-virtual {p0}, Lcom/csipsimple/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/csipsimple/utils/NightlyUpdater;-><init>(Landroid/content/Context;)V

    .line 211
    .local v8, "nu":Lcom/csipsimple/utils/NightlyUpdater;
    new-instance v9, Lcom/csipsimple/ui/help/Help$2;

    invoke-direct {v9, p0, v8}, Lcom/csipsimple/ui/help/Help$2;-><init>(Lcom/csipsimple/ui/help/Help;Lcom/csipsimple/utils/NightlyUpdater;)V

    .line 219
    .local v9, "t":Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 222
    .end local v8    # "nu":Lcom/csipsimple/utils/NightlyUpdater;
    .end local v9    # "t":Ljava/lang/Thread;
    :pswitch_4
    iget-object v10, p0, Lcom/csipsimple/ui/help/Help;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v11, "log_level"

    const-string v12, "1"

    invoke-virtual {v10, v11, v12}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :try_start_0
    const-string v10, "<<<PLEASE ADD THE BUG DESCRIPTION HERE>>>"

    invoke-virtual {p0}, Lcom/csipsimple/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/csipsimple/utils/CollectLogs;->getLogReportIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/csipsimple/ui/help/Help;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_1
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/csipsimple/utils/Log;->setLogLevel(I)V

    goto :goto_0

    .line 225
    :catch_0
    move-exception v2

    .line 226
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "Help"

    const-string v11, "Impossible to send logs..."

    invoke-static {v10, v11, v2}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 231
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_5
    iget-object v10, p0, Lcom/csipsimple/ui/help/Help;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v11, "log_level"

    const-string v12, "4"

    invoke-virtual {v10, v11, v12}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/4 v10, 0x4

    invoke-static {v10}, Lcom/csipsimple/utils/Log;->setLogLevel(I)V

    .line 233
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.csipsimple.service.ACTION_SIP_REQUEST_RESTART"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/csipsimple/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 235
    invoke-virtual {p0}, Lcom/csipsimple/ui/help/Help;->dismiss()V

    goto/16 :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 259
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onResume()V

    .line 260
    invoke-virtual {p0}, Lcom/csipsimple/ui/help/Help;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "kill_loading"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 261
    .local v0, "kill":Z
    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/csipsimple/ui/help/Help;->dismiss()V

    .line 264
    :cond_0
    return-void
.end method
