.class Lcom/csipsimple/models/CallerInfo$CallerInfoLruCache;
.super Landroid/support/v4/util/LruCache;
.source "CallerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/models/CallerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallerInfoLruCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/csipsimple/models/CallerInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/high16 v0, 0x400000

    invoke-direct {p0, v0}, Landroid/support/v4/util/LruCache;-><init>(I)V

    .line 75
    iput-object p1, p0, Lcom/csipsimple/models/CallerInfo$CallerInfoLruCache;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/String;)Lcom/csipsimple/models/CallerInfo;
    .locals 6
    .param p1, "sipUri"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "callerInfo":Lcom/csipsimple/models/CallerInfo;
    invoke-static {p1}, Lcom/csipsimple/api/SipUri;->parseSipContact(Ljava/lang/String;)Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;

    move-result-object v2

    .line 82
    .local v2, "uriInfos":Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;
    invoke-static {v2}, Lcom/csipsimple/api/SipUri;->getPhoneNumber(Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "phoneNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Number found "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", try People lookup"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getInstance()Lcom/csipsimple/utils/contacts/ContactsWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/csipsimple/models/CallerInfo$CallerInfoLruCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v1}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->findCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/csipsimple/models/CallerInfo;

    move-result-object v0

    .line 88
    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lcom/csipsimple/models/CallerInfo;->contactExists:Z

    if-nez v3, :cond_2

    .line 90
    :cond_1
    invoke-static {}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getInstance()Lcom/csipsimple/utils/contacts/ContactsWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/csipsimple/models/CallerInfo$CallerInfoLruCache;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {v2}, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->getContactAddress()Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-virtual {v3, v4, v5}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->findCallerInfoForUri(Landroid/content/Context;Ljava/lang/String;)Lcom/csipsimple/models/CallerInfo;

    move-result-object v0

    .line 94
    :cond_2
    if-nez v0, :cond_3

    .line 95
    new-instance v0, Lcom/csipsimple/models/CallerInfo;

    .end local v0    # "callerInfo":Lcom/csipsimple/models/CallerInfo;
    invoke-direct {v0}, Lcom/csipsimple/models/CallerInfo;-><init>()V

    .line 96
    .restart local v0    # "callerInfo":Lcom/csipsimple/models/CallerInfo;
    iput-object p1, v0, Lcom/csipsimple/models/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 99
    :cond_3
    return-object v0
.end method

.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/csipsimple/models/CallerInfo$CallerInfoLruCache;->create(Ljava/lang/String;)Lcom/csipsimple/models/CallerInfo;

    move-result-object v0

    return-object v0
.end method
