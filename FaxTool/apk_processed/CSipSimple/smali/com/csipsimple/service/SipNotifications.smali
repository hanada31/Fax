.class public Lcom/csipsimple/service/SipNotifications;
.super Ljava/lang/Object;
.source "SipNotifications.java"


# static fields
.field public static final CALLLOG_NOTIF_ID:I = 0x3

.field public static final CALL_NOTIF_ID:I = 0x2

.field public static final MESSAGE_NOTIF_ID:I = 0x4

.field public static final REGISTER_NOTIF_ID:I = 0x1

.field private static final SET_FG_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final START_FG_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final STOP_FG_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final THIS_FILE:Ljava/lang/String; = "Notifications"

.field private static TO_SEARCH:Ljava/lang/String; = null

.field public static final VOICEMAIL_NOTIF_ID:I = 0x5

.field private static isInit:Z

.field private static viewingRemoteFrom:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private inCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

.field private isServiceWrapper:Z

.field private mSetForeground:Ljava/lang/reflect/Method;

.field private mSetForegroundArgs:[Ljava/lang/Object;

.field private mStartForeground:Ljava/lang/reflect/Method;

.field private mStartForegroundArgs:[Ljava/lang/Object;

.field private mStopForeground:Ljava/lang/reflect/Method;

.field private mStopForegroundArgs:[Ljava/lang/Object;

.field private messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

.field private messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

.field private missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

.field private final notificationManager:Landroid/app/NotificationManager;

.field private notificationPrimaryTextColor:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    sput-boolean v2, Lcom/csipsimple/service/SipNotifications;->isInit:Z

    .line 94
    const-string v0, "Search"

    sput-object v0, Lcom/csipsimple/service/SipNotifications;->TO_SEARCH:Ljava/lang/String;

    .line 132
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lcom/csipsimple/service/SipNotifications;->SET_FG_SIG:[Ljava/lang/Class;

    .line 133
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Landroid/app/Notification;

    aput-object v1, v0, v3

    sput-object v0, Lcom/csipsimple/service/SipNotifications;->START_FG_SIG:[Ljava/lang/Class;

    .line 134
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lcom/csipsimple/service/SipNotifications;->STOP_FG_SIG:[Ljava/lang/Class;

    .line 390
    const/4 v0, 0x0

    sput-object v0, Lcom/csipsimple/service/SipNotifications;->viewingRemoteFrom:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/service/SipNotifications;->notificationPrimaryTextColor:Ljava/lang/Integer;

    .line 140
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/csipsimple/service/SipNotifications;->mSetForegroundArgs:[Ljava/lang/Object;

    .line 141
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/csipsimple/service/SipNotifications;->mStartForegroundArgs:[Ljava/lang/Object;

    .line 142
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/csipsimple/service/SipNotifications;->mStopForegroundArgs:[Ljava/lang/Object;

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/service/SipNotifications;->isServiceWrapper:Z

    .line 78
    iput-object p1, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    .line 79
    iget-object v0, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/csipsimple/service/SipNotifications;->notificationManager:Landroid/app/NotificationManager;

    .line 81
    sget-boolean v0, Lcom/csipsimple/service/SipNotifications;->isInit:Z

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/csipsimple/service/SipNotifications;->cancelAll()V

    .line 83
    invoke-virtual {p0}, Lcom/csipsimple/service/SipNotifications;->cancelCalls()V

    .line 84
    sput-boolean v2, Lcom/csipsimple/service/SipNotifications;->isInit:Z

    .line 87
    :cond_0
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-direct {p0, p1}, Lcom/csipsimple/service/SipNotifications;->searchNotificationPrimaryText(Landroid/content/Context;)V

    .line 90
    :cond_1
    return-void
.end method

.method protected static buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x20

    .line 397
    move-object v1, p1

    .line 399
    .local v1, "displayAddress":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    const-string v4, ""

    :goto_0
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 404
    .local v2, "offset":I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 405
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 406
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_0
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 410
    .local v3, "spanText":Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 412
    return-object v3

    .line 399
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v2    # "offset":I
    .end local v3    # "spanText":Landroid/text/SpannableString;
    :cond_1
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    invoke-virtual {p1, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 154
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "Notifications"

    const-string v2, "Unable to invoke method"

    invoke-static {v1, v2, v0}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 150
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "Notifications"

    const-string v2, "Unable to invoke method"

    invoke-static {v1, v2, v0}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private recurseSearchNotificationPrimaryText(Landroid/view/ViewGroup;)Z
    .locals 6
    .param p1, "gp"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x1

    .line 111
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 112
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 126
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 113
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 114
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 115
    .local v3, "text":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "szText":Ljava/lang/String;
    sget-object v4, Lcom/csipsimple/service/SipNotifications;->TO_SEARCH:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/csipsimple/service/SipNotifications;->notificationPrimaryTextColor:Ljava/lang/Integer;

    move v4, v5

    .line 118
    goto :goto_1

    .line 120
    .end local v2    # "szText":Ljava/lang/String;
    .end local v3    # "text":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 121
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lcom/csipsimple/service/SipNotifications;->recurseSearchNotificationPrimaryText(Landroid/view/ViewGroup;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    .line 122
    goto :goto_1

    .line 112
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private searchNotificationPrimaryText(Landroid/content/Context;)V
    .locals 7
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 99
    :try_start_0
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 100
    .local v3, "ntf":Landroid/app/Notification;
    sget-object v4, Lcom/csipsimple/service/SipNotifications;->TO_SEARCH:Ljava/lang/String;

    const-string v5, ""

    const/4 v6, 0x0

    invoke-virtual {v3, p1, v4, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 101
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 102
    .local v2, "group":Landroid/widget/LinearLayout;
    iget-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4, p1, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 103
    .local v1, "event":Landroid/view/ViewGroup;
    invoke-direct {p0, v1}, Lcom/csipsimple/service/SipNotifications;->recurseSearchNotificationPrimaryText(Landroid/view/ViewGroup;)Z

    .line 104
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1    # "event":Landroid/view/ViewGroup;
    .end local v2    # "group":Landroid/widget/LinearLayout;
    .end local v3    # "ntf":Landroid/app/Notification;
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Notifications"

    const-string v5, "Can\'t retrieve the color"

    invoke-static {v4, v5, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startForegroundCompat(ILandroid/app/Notification;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lcom/csipsimple/service/SipNotifications;->mStartForeground:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/csipsimple/service/SipNotifications;->mStartForegroundArgs:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 164
    iget-object v0, p0, Lcom/csipsimple/service/SipNotifications;->mStartForegroundArgs:[Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 165
    iget-object v0, p0, Lcom/csipsimple/service/SipNotifications;->mStartForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/csipsimple/service/SipNotifications;->mStartForegroundArgs:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/csipsimple/service/SipNotifications;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/service/SipNotifications;->mSetForegroundArgs:[Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 171
    iget-object v0, p0, Lcom/csipsimple/service/SipNotifications;->mSetForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/csipsimple/service/SipNotifications;->mSetForegroundArgs:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/csipsimple/service/SipNotifications;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/csipsimple/service/SipNotifications;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private stopForegroundCompat(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/csipsimple/service/SipNotifications;->mStopForeground:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/csipsimple/service/SipNotifications;->mStopForegroundArgs:[Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 183
    iget-object v0, p0, Lcom/csipsimple/service/SipNotifications;->mStopForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/csipsimple/service/SipNotifications;->mStopForegroundArgs:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/csipsimple/service/SipNotifications;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 192
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/service/SipNotifications;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 190
    iget-object v0, p0, Lcom/csipsimple/service/SipNotifications;->mSetForegroundArgs:[Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 191
    iget-object v0, p0, Lcom/csipsimple/service/SipNotifications;->mSetForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/csipsimple/service/SipNotifications;->mSetForegroundArgs:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/csipsimple/service/SipNotifications;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final cancelAll()V
    .locals 1

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/csipsimple/service/SipNotifications;->isServiceWrapper:Z

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/csipsimple/service/SipNotifications;->cancelRegisters()V

    .line 446
    :cond_0
    invoke-virtual {p0}, Lcom/csipsimple/service/SipNotifications;->cancelMessages()V

    .line 447
    invoke-virtual {p0}, Lcom/csipsimple/service/SipNotifications;->cancelMissedCalls()V

    .line 448
    invoke-virtual {p0}, Lcom/csipsimple/service/SipNotifications;->cancelVoicemails()V

    .line 449
    return-void
.end method

.method public final cancelCalls()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/csipsimple/service/SipNotifications;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 426
    return-void
.end method

.method public final cancelMessages()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/csipsimple/service/SipNotifications;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 434
    return-void
.end method

.method public final cancelMissedCalls()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/csipsimple/service/SipNotifications;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 430
    return-void
.end method

.method public final cancelRegisters()V
    .locals 2

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/csipsimple/service/SipNotifications;->isServiceWrapper:Z

    if-nez v0, :cond_0

    .line 418
    const-string v0, "Notifications"

    const-string v1, "Trying to cancel a service notification from outside the service"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :goto_0
    return-void

    .line 421
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/csipsimple/service/SipNotifications;->stopForegroundCompat(I)V

    goto :goto_0
.end method

.method public final cancelVoicemails()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/csipsimple/service/SipNotifications;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 438
    return-void
.end method

.method public declared-synchronized notifyRegisteredAccounts(Ljava/util/ArrayList;Z)V
    .locals 12
    .param p2, "showNumbers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/csipsimple/api/SipProfileState;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "activeAccountsInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/api/SipProfileState;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v9, p0, Lcom/csipsimple/service/SipNotifications;->isServiceWrapper:Z

    if-nez v9, :cond_0

    .line 225
    const-string v9, "Notifications"

    const-string v10, "Trying to create a service notification from outside the service"

    invoke-static {v9, v10}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :goto_0
    monitor-exit p0

    return-void

    .line 228
    :cond_0
    const v2, 0x7f0200ce

    .line 229
    .local v2, "icon":I
    :try_start_1
    iget-object v9, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    const v10, 0x7f0b01e5

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, "tickerText":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 233
    .local v7, "when":J
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v9, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    invoke-direct {v3, v9}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 234
    .local v3, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 235
    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 236
    invoke-virtual {v3, v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 237
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.csipsimple.phone.action.DIALER"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v5, "notificationIntent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 239
    iget-object v9, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    const/4 v10, 0x0

    const/high16 v11, 0x8000000

    invoke-static {v9, v10, v5, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 241
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    new-instance v1, Lcom/csipsimple/widgets/RegistrationNotification;

    iget-object v9, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/csipsimple/widgets/RegistrationNotification;-><init>(Ljava/lang/String;)V

    .line 242
    .local v1, "contentView":Lcom/csipsimple/widgets/RegistrationNotification;
    invoke-virtual {v1}, Lcom/csipsimple/widgets/RegistrationNotification;->clearRegistrations()V

    .line 243
    const/16 v9, 0x9

    invoke-static {v9}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 244
    iget-object v9, p0, Lcom/csipsimple/service/SipNotifications;->notificationPrimaryTextColor:Ljava/lang/Integer;

    invoke-virtual {v1, v9}, Lcom/csipsimple/widgets/RegistrationNotification;->setTextsColor(Ljava/lang/Integer;)V

    .line 246
    :cond_1
    iget-object v9, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    invoke-virtual {v1, v9, p1}, Lcom/csipsimple/widgets/RegistrationNotification;->addAccountInfos(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 250
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 251
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 252
    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 253
    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 255
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 256
    .local v4, "notification":Landroid/app/Notification;
    iget v9, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x20

    iput v9, v4, Landroid/app/Notification;->flags:I

    .line 258
    iput-object v1, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 259
    if-eqz p2, :cond_2

    .line 261
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    iput v9, v4, Landroid/app/Notification;->number:I

    .line 263
    :cond_2
    const/4 v9, 0x1

    invoke-direct {p0, v9, v4}, Lcom/csipsimple/service/SipNotifications;->startForegroundCompat(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 224
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v1    # "contentView":Lcom/csipsimple/widgets/RegistrationNotification;
    .end local v2    # "icon":I
    .end local v3    # "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v5    # "notificationIntent":Landroid/content/Intent;
    .end local v6    # "tickerText":Ljava/lang/CharSequence;
    .end local v7    # "when":J
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public onServiceCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "startForeground"

    sget-object v3, Lcom/csipsimple/service/SipNotifications;->START_FG_SIG:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/csipsimple/service/SipNotifications;->mStartForeground:Ljava/lang/reflect/Method;

    .line 199
    iget-object v1, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "stopForeground"

    sget-object v3, Lcom/csipsimple/service/SipNotifications;->STOP_FG_SIG:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/csipsimple/service/SipNotifications;->mStopForeground:Ljava/lang/reflect/Method;

    .line 200
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/csipsimple/service/SipNotifications;->isServiceWrapper:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/csipsimple/service/SipNotifications;->mStopForeground:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/csipsimple/service/SipNotifications;->mStartForeground:Ljava/lang/reflect/Method;

    .line 207
    :try_start_1
    iget-object v1, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setForeground"

    sget-object v3, Lcom/csipsimple/service/SipNotifications;->SET_FG_SIG:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/csipsimple/service/SipNotifications;->mSetForeground:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    iput-boolean v4, p0, Lcom/csipsimple/service/SipNotifications;->isServiceWrapper:Z

    goto :goto_0

    .line 208
    :catch_1
    move-exception v0

    .line 209
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "OS doesn\'t have Service.startForeground OR Service.setForeground!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onServiceDestroy()V
    .locals 0

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/csipsimple/service/SipNotifications;->cancelAll()V

    .line 217
    invoke-virtual {p0}, Lcom/csipsimple/service/SipNotifications;->cancelCalls()V

    .line 218
    return-void
.end method

.method public setViewingMessageFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "remoteFrom"    # Ljava/lang/String;

    .prologue
    .line 393
    sput-object p1, Lcom/csipsimple/service/SipNotifications;->viewingRemoteFrom:Ljava/lang/String;

    .line 394
    return-void
.end method

.method public showNotificationForCall(Lcom/csipsimple/api/SipCallSession;)V
    .locals 11
    .param p1, "currentCallInfo2"    # Lcom/csipsimple/api/SipCallSession;

    .prologue
    const v10, 0x7f0b01d1

    .line 271
    const v1, 0x1080084

    .line 272
    .local v1, "icon":I
    iget-object v7, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 273
    .local v4, "tickerText":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 275
    .local v5, "when":J
    iget-object v7, p0, Lcom/csipsimple/service/SipNotifications;->inCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v7, :cond_0

    .line 276
    new-instance v7, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v8, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/csipsimple/service/SipNotifications;->inCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 277
    iget-object v7, p0, Lcom/csipsimple/service/SipNotifications;->inCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v7, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 278
    iget-object v7, p0, Lcom/csipsimple/service/SipNotifications;->inCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v7, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 279
    iget-object v7, p0, Lcom/csipsimple/service/SipNotifications;->inCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v7, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 280
    iget-object v7, p0, Lcom/csipsimple/service/SipNotifications;->inCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 283
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.csipsimple.phone.action.INCALL"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .local v3, "notificationIntent":Landroid/content/Intent;
    const-string v7, "call_info"

    invoke-virtual {v3, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 285
    const/high16 v7, 0x30000000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 286
    iget-object v7, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x10000000

    invoke-static {v7, v8, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 288
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/csipsimple/service/SipNotifications;->inCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v8, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    invoke-virtual {v8, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 289
    iget-object v7, p0, Lcom/csipsimple/service/SipNotifications;->inCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Lcom/csipsimple/api/SipCallSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 290
    iget-object v7, p0, Lcom/csipsimple/service/SipNotifications;->inCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v7, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 292
    iget-object v7, p0, Lcom/csipsimple/service/SipNotifications;->inCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 293
    .local v2, "notification":Landroid/app/Notification;
    iget v7, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v2, Landroid/app/Notification;->flags:I

    .line 294
    iget-object v7, p0, Lcom/csipsimple/service/SipNotifications;->notificationManager:Landroid/app/NotificationManager;

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 295
    return-void
.end method

.method public showNotificationForMessage(Lcom/csipsimple/api/SipMessage;)V
    .locals 9
    .param p1, "msg"    # Lcom/csipsimple/api/SipMessage;

    .prologue
    const/high16 v8, 0x10000000

    const/4 v7, 0x1

    .line 324
    invoke-static {}, Lcom/csipsimple/utils/CustomDistribution;->supportMessaging()Z

    move-result v4

    if-nez v4, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    invoke-virtual {p1}, Lcom/csipsimple/api/SipMessage;->getFrom()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/csipsimple/service/SipNotifications;->viewingRemoteFrom:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 329
    invoke-virtual {p1}, Lcom/csipsimple/api/SipMessage;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "from":Ljava/lang/String;
    iget-object v4, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/csipsimple/api/SipMessage;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/csipsimple/service/SipNotifications;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 332
    .local v3, "tickerText":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/csipsimple/service/SipNotifications;->messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v4, :cond_2

    .line 333
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/csipsimple/service/SipNotifications;->messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 334
    iget-object v5, p0, Lcom/csipsimple/service/SipNotifications;->messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {v1}, Lcom/csipsimple/api/SipUri;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f020170

    :goto_1
    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 335
    iget-object v4, p0, Lcom/csipsimple/service/SipNotifications;->messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 336
    iget-object v4, p0, Lcom/csipsimple/service/SipNotifications;->messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 337
    iget-object v4, p0, Lcom/csipsimple/service/SipNotifications;->messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 338
    iget-object v4, p0, Lcom/csipsimple/service/SipNotifications;->messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 339
    iget-object v4, p0, Lcom/csipsimple/service/SipNotifications;->messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 342
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.csipsimple.phone.action.MESSAGES"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v2, "notificationIntent":Landroid/content/Intent;
    const-string v4, "sender"

    invoke-virtual {p1}, Lcom/csipsimple/api/SipMessage;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v4, "body"

    invoke-virtual {p1}, Lcom/csipsimple/api/SipMessage;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 346
    iget-object v4, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 348
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/csipsimple/service/SipNotifications;->messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 349
    iget-object v4, p0, Lcom/csipsimple/service/SipNotifications;->messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Lcom/csipsimple/api/SipMessage;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 350
    iget-object v4, p0, Lcom/csipsimple/service/SipNotifications;->messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 352
    iget-object v4, p0, Lcom/csipsimple/service/SipNotifications;->notificationManager:Landroid/app/NotificationManager;

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/csipsimple/service/SipNotifications;->messageNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 334
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v2    # "notificationIntent":Landroid/content/Intent;
    :cond_3
    const v4, 0x1080077

    goto :goto_1
.end method

.method public showNotificationForMissedCall(Landroid/content/ContentValues;)V
    .locals 11
    .param p1, "callLog"    # Landroid/content/ContentValues;

    .prologue
    const v10, 0x7f0b01d2

    const/high16 v9, 0x10000000

    const/4 v8, 0x1

    .line 298
    const v1, 0x108007f

    .line 299
    .local v1, "icon":I
    iget-object v6, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    invoke-virtual {v6, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 300
    .local v3, "tickerText":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 302
    .local v4, "when":J
    iget-object v6, p0, Lcom/csipsimple/service/SipNotifications;->missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v6, :cond_0

    .line 303
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v7, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/csipsimple/service/SipNotifications;->missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 304
    iget-object v6, p0, Lcom/csipsimple/service/SipNotifications;->missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v6, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 305
    iget-object v6, p0, Lcom/csipsimple/service/SipNotifications;->missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v6, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 306
    iget-object v6, p0, Lcom/csipsimple/service/SipNotifications;->missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v6, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 307
    iget-object v6, p0, Lcom/csipsimple/service/SipNotifications;->missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v6, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 308
    iget-object v6, p0, Lcom/csipsimple/service/SipNotifications;->missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v6, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 309
    iget-object v6, p0, Lcom/csipsimple/service/SipNotifications;->missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 312
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.csipsimple.phone.action.CALLLOG"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    .local v2, "notificationIntent":Landroid/content/Intent;
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 314
    iget-object v6, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v6, v7, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 316
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/csipsimple/service/SipNotifications;->missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v7, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 317
    iget-object v6, p0, Lcom/csipsimple/service/SipNotifications;->missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v7, "number"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 318
    iget-object v6, p0, Lcom/csipsimple/service/SipNotifications;->missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 320
    iget-object v6, p0, Lcom/csipsimple/service/SipNotifications;->notificationManager:Landroid/app/NotificationManager;

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/csipsimple/service/SipNotifications;->missedCallNotification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v8}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 321
    return-void
.end method

.method public showNotificationForVoiceMail(Lcom/csipsimple/api/SipProfile;I)V
    .locals 9
    .param p1, "acc"    # Lcom/csipsimple/api/SipProfile;
    .param p2, "numberOfMessages"    # I

    .prologue
    const v8, 0x7f0b01fc

    const/high16 v7, 0x10000000

    const/4 v6, 0x1

    .line 357
    iget-object v3, p0, Lcom/csipsimple/service/SipNotifications;->messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v3, :cond_0

    .line 359
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/csipsimple/service/SipNotifications;->messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 360
    iget-object v3, p0, Lcom/csipsimple/service/SipNotifications;->messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

    const v4, 0x108007e

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 361
    iget-object v3, p0, Lcom/csipsimple/service/SipNotifications;->messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 362
    iget-object v3, p0, Lcom/csipsimple/service/SipNotifications;->messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 363
    iget-object v3, p0, Lcom/csipsimple/service/SipNotifications;->messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 364
    iget-object v3, p0, Lcom/csipsimple/service/SipNotifications;->messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 365
    iget-object v3, p0, Lcom/csipsimple/service/SipNotifications;->messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 368
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .local v2, "notificationIntent":Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 370
    const-string v3, "csip"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/csipsimple/api/SipProfile;->vm_nbr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/csipsimple/api/SipProfile;->getDefaultDomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/csipsimple/api/SipUri;->forgeSipUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 371
    const-string v3, "acc_id"

    iget-wide v4, p1, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 373
    :cond_1
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 375
    iget-object v3, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 377
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    const-string v1, ""

    .line 378
    .local v1, "messageText":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/csipsimple/api/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    iget-object v3, p0, Lcom/csipsimple/service/SipNotifications;->messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/csipsimple/service/SipNotifications;->context:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 384
    iget-object v3, p0, Lcom/csipsimple/service/SipNotifications;->messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 385
    iget-object v3, p0, Lcom/csipsimple/service/SipNotifications;->messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 387
    iget-object v3, p0, Lcom/csipsimple/service/SipNotifications;->notificationManager:Landroid/app/NotificationManager;

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/csipsimple/service/SipNotifications;->messageVoicemail:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 388
    return-void
.end method
