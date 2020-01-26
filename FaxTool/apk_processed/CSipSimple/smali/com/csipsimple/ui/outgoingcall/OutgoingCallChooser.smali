.class public Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "OutgoingCallChooser.java"


# static fields
.field private static final AUTHORITY_CSIP:Ljava/lang/String; = "csip"

.field private static final AUTHORITY_SIP:Ljava/lang/String; = "sip"

.field private static final AUTHORITY_SKYPE:Ljava/lang/String; = "skype"

.field private static final SCHEME_CSIP:Ljava/lang/String; = "csip"

.field private static final SCHEME_IMTO:Ljava/lang/String; = "imto"

.field private static final SCHEME_SMSTO:Ljava/lang/String; = "smsto"

.field private static final THIS_FILE:Ljava/lang/String; = "OutgoingCallChooser"


# instance fields
.field private accountToCallTo:Ljava/lang/Long;

.field private connection:Landroid/content/ServiceConnection;

.field private ignoreRewritingRules:Z

.field private phoneNumber:Ljava/lang/String;

.field private service:Lcom/csipsimple/api/ISipService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 65
    iput-object v1, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->phoneNumber:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->ignoreRewritingRules:Z

    .line 67
    iput-object v1, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->accountToCallTo:Ljava/lang/Long;

    .line 183
    iput-object v1, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->service:Lcom/csipsimple/api/ISipService;

    .line 184
    new-instance v0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser$1;

    invoke-direct {v0, p0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser$1;-><init>(Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;)V

    iput-object v0, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->connection:Landroid/content/ServiceConnection;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;Lcom/csipsimple/api/ISipService;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->service:Lcom/csipsimple/api/ISipService;

    return-void
.end method

.method private connectService()V
    .locals 4

    .prologue
    .line 167
    new-instance v0, Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-direct {v0, p0}, Lcom/csipsimple/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, "prefsWrapper":Lcom/csipsimple/utils/PreferencesProviderWrapper;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.csipsimple.service.SipService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v1, "sipService":Landroid/content/Intent;
    invoke-virtual {v0}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->isValidConnectionForOutgoing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    const-string v2, "outgoing_activity"

    invoke-virtual {p0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v1}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->connection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 174
    return-void
.end method

.method private resetInternals()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->phoneNumber:Ljava/lang/String;

    .line 235
    iput-object v0, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->accountToCallTo:Ljava/lang/Long;

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->ignoreRewritingRules:Z

    .line 237
    return-void
.end method


# virtual methods
.method public finishServiceIfNeeded(Z)V
    .locals 3
    .param p1, "defer"    # Z

    .prologue
    .line 217
    new-instance v0, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "com.csipsimple.service.ACTION_DEFER_OUTGOING_UNREGISTER"

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "outgoing_activity"

    invoke-virtual {p0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->sendBroadcast(Landroid/content/Intent;)V

    .line 220
    invoke-virtual {p0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->finish()V

    .line 221
    return-void

    .line 217
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v1, "com.csipsimple.service.ACTION_OUTGOING_UNREGISTER"

    goto :goto_0
.end method

.method public getAccountToCallTo()J
    .locals 4

    .prologue
    .line 156
    iget-object v0, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->accountToCallTo:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "acc_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->accountToCallTo:Ljava/lang/Long;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->accountToCallTo:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getConnectedService()Lcom/csipsimple/api/ISipService;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->service:Lcom/csipsimple/api/ISipService;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 6

    .prologue
    .line 82
    iget-object v5, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->phoneNumber:Ljava/lang/String;

    if-nez v5, :cond_8

    .line 83
    invoke-virtual {p0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 85
    .local v3, "it":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v5, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->phoneNumber:Ljava/lang/String;

    .line 86
    iget-object v5, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->phoneNumber:Ljava/lang/String;

    if-nez v5, :cond_6

    .line 87
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 89
    .local v2, "data":Landroid/net/Uri;
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 90
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "scheme":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 92
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 95
    :cond_0
    const-string v5, "android.intent.action.SENDTO"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 97
    const-string v5, "imto"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 99
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "auth":Ljava/lang/String;
    const-string v5, "csip"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 101
    const-string v5, "sip"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 102
    const-string v5, "skype"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 103
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->phoneNumber:Ljava/lang/String;

    .line 131
    .end local v1    # "auth":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->phoneNumber:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 132
    const-string v5, ""

    iput-object v5, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->phoneNumber:Ljava/lang/String;

    .line 134
    :cond_3
    iget-object v5, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->phoneNumber:Ljava/lang/String;

    .line 137
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "data":Landroid/net/Uri;
    .end local v3    # "it":Landroid/content/Intent;
    :goto_1
    return-object v5

    .line 105
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "data":Landroid/net/Uri;
    .restart local v3    # "it":Landroid/content/Intent;
    .restart local v4    # "scheme":Ljava/lang/String;
    :cond_4
    const-string v5, "smsto"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 106
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_5
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->phoneNumber:Ljava/lang/String;

    .line 111
    const-string v5, "csip"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 112
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->ignoreRewritingRules:Z

    goto :goto_0

    .line 117
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "data":Landroid/net/Uri;
    .end local v4    # "scheme":Ljava/lang/String;
    :cond_6
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 119
    .restart local v0    # "action":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 120
    .restart local v2    # "data":Landroid/net/Uri;
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 121
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 122
    .restart local v4    # "scheme":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 123
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 124
    const-string v5, "smsto"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "tel"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    :cond_7
    iget-object v5, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->phoneNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 137
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "data":Landroid/net/Uri;
    .end local v3    # "it":Landroid/content/Intent;
    .end local v4    # "scheme":Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->phoneNumber:Ljava/lang/String;

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->finishServiceIfNeeded(Z)V

    .line 209
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-direct {p0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->resetInternals()V

    .line 56
    invoke-virtual {p0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "OutgoingCallChooser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No number detected for : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->finish()V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->setContentView(I)V

    .line 62
    invoke-direct {p0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->connectService()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    .line 226
    invoke-direct {p0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->resetInternals()V

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 198
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 199
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->onBackPressed()V

    .line 204
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public shouldIgnoreRewritingRules()Z
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->getPhoneNumber()Ljava/lang/String;

    .line 148
    iget-boolean v0, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->ignoreRewritingRules:Z

    return v0
.end method
