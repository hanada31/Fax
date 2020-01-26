.class public Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;
.super Ljava/lang/Object;
.source "ContactsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/utils/contacts/ContactsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactInfo"
.end annotation


# instance fields
.field public callerInfo:Lcom/csipsimple/models/CallerInfo;

.field public contactId:Ljava/lang/Long;

.field public displayName:Ljava/lang/String;

.field public hasPresence:Z

.field public presence:I

.field public status:Ljava/lang/String;

.field final synthetic this$0:Lcom/csipsimple/utils/contacts/ContactsWrapper;

.field public userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/csipsimple/utils/contacts/ContactsWrapper;)V
    .locals 1

    .prologue
    .line 224
    iput-object p1, p0, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->this$0:Lcom/csipsimple/utils/contacts/ContactsWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->contactId:Ljava/lang/Long;

    .line 227
    new-instance v0, Lcom/csipsimple/models/CallerInfo;

    invoke-direct {v0}, Lcom/csipsimple/models/CallerInfo;-><init>()V

    iput-object v0, p0, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->callerInfo:Lcom/csipsimple/models/CallerInfo;

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->hasPresence:Z

    return-void
.end method
