.class Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;
.super Ljava/lang/Object;
.source "AccountsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/account/AccountsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilteredProfile"
.end annotation


# instance fields
.field final account:Lcom/csipsimple/api/SipProfile;

.field final callHandlerPlugin:Lcom/csipsimple/utils/CallHandlerPlugin;

.field final isForceCall:Z

.field private final statusColor:I

.field private final statusForOutgoing:Z

.field final synthetic this$0:Lcom/csipsimple/ui/account/AccountsLoader;


# direct methods
.method public constructor <init>(Lcom/csipsimple/ui/account/AccountsLoader;Lcom/csipsimple/api/SipProfile;Z)V
    .locals 4
    .param p2, "acc"    # Lcom/csipsimple/api/SipProfile;
    .param p3, "forceCall"    # Z

    .prologue
    .line 204
    iput-object p1, p0, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->this$0:Lcom/csipsimple/ui/account/AccountsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p2, p0, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->account:Lcom/csipsimple/api/SipProfile;

    .line 206
    iput-boolean p3, p0, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->isForceCall:Z

    .line 207
    invoke-virtual {p1}, Lcom/csipsimple/ui/account/AccountsLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p2, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {v1, v2, v3}, Lcom/csipsimple/utils/AccountListUtils;->getAccountDisplay(Landroid/content/Context;J)Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;

    move-result-object v0

    .line 208
    .local v0, "displayState":Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;
    iget v1, v0, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->statusColor:I

    iput v1, p0, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->statusColor:I

    .line 209
    iget-boolean v1, v0, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->availableForCalls:Z

    iput-boolean v1, p0, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->statusForOutgoing:Z

    .line 210
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->callHandlerPlugin:Lcom/csipsimple/utils/CallHandlerPlugin;

    .line 211
    return-void
.end method

.method public constructor <init>(Lcom/csipsimple/ui/account/AccountsLoader;Ljava/lang/String;Z)V
    .locals 10
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "forceCall"    # Z

    .prologue
    .line 219
    iput-object p1, p0, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->this$0:Lcom/csipsimple/ui/account/AccountsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v7, Lcom/csipsimple/api/SipProfile;

    invoke-direct {v7}, Lcom/csipsimple/api/SipProfile;-><init>()V

    iput-object v7, p0, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->account:Lcom/csipsimple/api/SipProfile;

    .line 221
    invoke-virtual {p1}, Lcom/csipsimple/ui/account/AccountsLoader;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, p2}, Lcom/csipsimple/utils/CallHandlerPlugin;->getAccountIdForCallHandler(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 222
    .local v0, "accId":J
    iget-object v7, p0, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->account:Lcom/csipsimple/api/SipProfile;

    iput-wide v0, v7, Lcom/csipsimple/api/SipProfile;->id:J

    .line 223
    iget-object v7, p0, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->account:Lcom/csipsimple/api/SipProfile;

    const-string v8, "EXPERT"

    iput-object v8, v7, Lcom/csipsimple/api/SipProfile;->wizard:Ljava/lang/String;

    .line 224
    new-instance v2, Lcom/csipsimple/utils/CallHandlerPlugin;

    invoke-virtual {p1}, Lcom/csipsimple/ui/account/AccountsLoader;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/csipsimple/utils/CallHandlerPlugin;-><init>(Landroid/content/Context;)V

    .line 225
    .local v2, "ch":Lcom/csipsimple/utils/CallHandlerPlugin;
    new-instance v4, Ljava/util/concurrent/Semaphore;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 227
    .local v4, "semaphore":Ljava/util/concurrent/Semaphore;
    invoke-static {p1}, Lcom/csipsimple/ui/account/AccountsLoader;->access$3(Lcom/csipsimple/ui/account/AccountsLoader;)Ljava/lang/String;

    move-result-object v6

    .line 228
    .local v6, "toCall":Ljava/lang/String;
    invoke-static {p1}, Lcom/csipsimple/ui/account/AccountsLoader;->access$4(Lcom/csipsimple/ui/account/AccountsLoader;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 229
    invoke-virtual {p1}, Lcom/csipsimple/ui/account/AccountsLoader;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {p1}, Lcom/csipsimple/ui/account/AccountsLoader;->access$3(Lcom/csipsimple/ui/account/AccountsLoader;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v0, v1, v8}, Lcom/csipsimple/models/Filter;->rewritePhoneNumber(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 231
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-instance v8, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile$1;

    invoke-direct {v8, p0, v4}, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile$1;-><init>(Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v7, v6, v8}, Lcom/csipsimple/utils/CallHandlerPlugin;->loadFrom(Ljava/lang/Long;Ljava/lang/String;Lcom/csipsimple/utils/CallHandlerPlugin$OnLoadListener;)V

    .line 238
    const/4 v5, 0x0

    .line 240
    .local v5, "succeedInLoading":Z
    const-wide/16 v7, 0x3

    :try_start_0
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v9}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 244
    :goto_0
    if-nez v5, :cond_1

    .line 245
    const-string v7, "OutgoingAccountsLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unreachable callhandler plugin "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_1
    iget-object v7, p0, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->account:Lcom/csipsimple/api/SipProfile;

    invoke-virtual {v2}, Lcom/csipsimple/utils/CallHandlerPlugin;->getLabel()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    .line 248
    iget-object v7, p0, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->account:Lcom/csipsimple/api/SipProfile;

    invoke-virtual {v2}, Lcom/csipsimple/utils/CallHandlerPlugin;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v7, Lcom/csipsimple/api/SipProfile;->icon:Landroid/graphics/Bitmap;

    .line 250
    iput-boolean p3, p0, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->isForceCall:Z

    .line 251
    invoke-virtual {p1}, Lcom/csipsimple/ui/account/AccountsLoader;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x106000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->statusColor:I

    .line 252
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->statusForOutgoing:Z

    .line 253
    iput-object v2, p0, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->callHandlerPlugin:Lcom/csipsimple/utils/CallHandlerPlugin;

    .line 254
    return-void

    .line 241
    :catch_0
    move-exception v3

    .line 242
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v7, "OutgoingAccountsLoader"

    const-string v8, "Not possible to bind callhandler plugin"

    invoke-static {v7, v8}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCallHandlerPlugin()Lcom/csipsimple/utils/CallHandlerPlugin;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->callHandlerPlugin:Lcom/csipsimple/utils/CallHandlerPlugin;

    return-object v0
.end method

.method public getStatusColor()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->statusColor:I

    return v0
.end method

.method public getStatusForOutgoing()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->statusForOutgoing:Z

    return v0
.end method

.method public rewriteNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->this$0:Lcom/csipsimple/ui/account/AccountsLoader;

    invoke-static {v0}, Lcom/csipsimple/ui/account/AccountsLoader;->access$4(Lcom/csipsimple/ui/account/AccountsLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    .end local p1    # "number":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "number":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->this$0:Lcom/csipsimple/ui/account/AccountsLoader;

    invoke-virtual {v0}, Lcom/csipsimple/ui/account/AccountsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->account:Lcom/csipsimple/api/SipProfile;

    iget-wide v1, v1, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {v0, v1, v2, p1}, Lcom/csipsimple/models/Filter;->rewritePhoneNumber(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
