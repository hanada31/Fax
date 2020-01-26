.class public Lcom/csipsimple/utils/contacts/ContactsAutocompleteAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ContactsAutocompleteAdapter.java"


# instance fields
.field private currentAccId:J

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const v0, 0x7f03004b

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/csipsimple/utils/contacts/ContactsAutocompleteAdapter;->currentAccId:J

    .line 54
    iput-object p1, p0, Lcom/csipsimple/utils/contacts/ContactsAutocompleteAdapter;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 63
    invoke-static {}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getInstance()Lcom/csipsimple/utils/contacts/ContactsWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->bindAutoCompleteView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 64
    return-void
.end method

.method public final convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 73
    invoke-static {}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getInstance()Lcom/csipsimple/utils/contacts/ContactsWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/csipsimple/utils/contacts/ContactsAutocompleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->transformToSipUri(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 74
    .local v0, "number":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/csipsimple/utils/contacts/ContactsAutocompleteAdapter;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/csipsimple/utils/contacts/ContactsAutocompleteAdapter;->currentAccId:J

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/csipsimple/models/Filter;->rewritePhoneNumber(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .end local v0    # "number":Ljava/lang/CharSequence;
    :cond_0
    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 68
    invoke-static {}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getInstance()Lcom/csipsimple/utils/contacts/ContactsWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/csipsimple/utils/contacts/ContactsAutocompleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->searchContact(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final setSelectedAccount(J)V
    .locals 0
    .param p1, "accId"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/csipsimple/utils/contacts/ContactsAutocompleteAdapter;->currentAccId:J

    .line 59
    return-void
.end method
