.class public Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;
.super Ljava/lang/Object;
.source "ContactsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/utils/contacts/ContactsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Phone"
.end annotation


# instance fields
.field private number:Ljava/lang/String;

.field final synthetic this$0:Lcom/csipsimple/utils/contacts/ContactsWrapper;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/csipsimple/utils/contacts/ContactsWrapper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "n"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;->this$0:Lcom/csipsimple/utils/contacts/ContactsWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p2, p0, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;->number:Ljava/lang/String;

    .line 259
    iput-object p3, p0, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;->type:Ljava/lang/String;

    .line 260
    return-void
.end method


# virtual methods
.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;->number:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;->type:Ljava/lang/String;

    .line 255
    return-void
.end method
