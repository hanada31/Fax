.class public Lcom/csipsimple/service/OutgoingCall;
.super Landroid/content/BroadcastReceiver;
.source "OutgoingCall.java"


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "Outgoing RCV"

.field private static gsmCallHandlerId:Ljava/lang/Long;

.field public static ignoreNext:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/csipsimple/service/OutgoingCall;->gsmCallHandlerId:Ljava/lang/Long;

    .line 49
    const-string v0, ""

    sput-object v0, Lcom/csipsimple/service/OutgoingCall;->ignoreNext:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 54
    iput-object p1, p0, Lcom/csipsimple/service/OutgoingCall;->context:Landroid/content/Context;

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/csipsimple/service/OutgoingCall;->getResultData()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "number":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    const-string v4, ""

    sput-object v4, Lcom/csipsimple/service/OutgoingCall;->ignoreNext:Ljava/lang/String;

    .line 67
    invoke-virtual {p0, v1}, Lcom/csipsimple/service/OutgoingCall;->setResultData(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_1
    new-instance v4, Lcom/csipsimple/utils/PreferencesProviderWrapper;

    iget-object v5, p0, Lcom/csipsimple/service/OutgoingCall;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/csipsimple/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/csipsimple/service/OutgoingCall;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    .line 73
    sget-object v4, Lcom/csipsimple/service/OutgoingCall;->ignoreNext:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 74
    iget-object v4, p0, Lcom/csipsimple/service/OutgoingCall;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v5, "integrate_with_native_dialer"

    invoke-virtual {v4, v5, v7}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 75
    if-nez v0, :cond_3

    .line 77
    :cond_2
    const-string v4, "Outgoing RCV"

    const-string v5, "Our selector disabled, or Mobile chosen in our selector, send to tel"

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v4, ""

    sput-object v4, Lcom/csipsimple/service/OutgoingCall;->ignoreNext:Ljava/lang/String;

    .line 79
    invoke-virtual {p0, v1}, Lcom/csipsimple/service/OutgoingCall;->setResultData(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_3
    const-string v4, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 88
    iget-object v4, p0, Lcom/csipsimple/service/OutgoingCall;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/csipsimple/utils/CallHandlerPlugin;->getAvailableCallHandlers(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    .line 89
    .local v3, "potentialHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Outgoing RCV"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "We have "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " potential handlers"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v4, p0, Lcom/csipsimple/service/OutgoingCall;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-virtual {v4}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->isValidConnectionForOutgoing()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-le v4, v7, :cond_7

    .line 96
    :cond_4
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    sget-object v4, Lcom/csipsimple/service/OutgoingCall;->gsmCallHandlerId:Ljava/lang/Long;

    if-nez v4, :cond_5

    .line 103
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/csipsimple/plugins/telephony/CallHandler;

    invoke-direct {v4, p1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/csipsimple/utils/CallHandlerPlugin;->getAccountIdForCallHandler(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    sput-object v4, Lcom/csipsimple/service/OutgoingCall;->gsmCallHandlerId:Ljava/lang/Long;

    .line 105
    :cond_5
    sget-object v4, Lcom/csipsimple/service/OutgoingCall;->gsmCallHandlerId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    .line 106
    sget-object v4, Lcom/csipsimple/service/OutgoingCall;->gsmCallHandlerId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p1, v4, v5, v1}, Lcom/csipsimple/models/Filter;->isMustCallNumber(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 107
    const-string v4, "Outgoing RCV"

    const-string v5, "Filtering to force pass number along"

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, v1}, Lcom/csipsimple/service/OutgoingCall;->setResultData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, "outgoingCallChooserIntent":Landroid/content/Intent;
    const-string v4, "sip"

    invoke-static {v4, v1}, Lcom/csipsimple/api/SipUri;->forgeSipUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 118
    iget-object v4, p0, Lcom/csipsimple/service/OutgoingCall;->context:Landroid/content/Context;

    const-class v5, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 120
    const-string v4, "Outgoing RCV"

    const-string v5, "Start outgoing call chooser for CSipSimple"

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v4, p0, Lcom/csipsimple/service/OutgoingCall;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/csipsimple/service/OutgoingCall;->setResultData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    .end local v2    # "outgoingCallChooserIntent":Landroid/content/Intent;
    .end local v3    # "potentialHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    const-string v4, "Outgoing RCV"

    const-string v5, "Can\'t use SIP, pass number along"

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0, v1}, Lcom/csipsimple/service/OutgoingCall;->setResultData(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
