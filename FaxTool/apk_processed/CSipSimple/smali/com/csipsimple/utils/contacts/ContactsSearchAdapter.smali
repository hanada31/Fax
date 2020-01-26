.class public Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "ContactsSearchAdapter.java"


# instance fields
.field private currentAccId:J

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;->currentAccId:J

    .line 57
    iput-object p1, p0, Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 73
    invoke-static {}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getInstance()Lcom/csipsimple/utils/contacts/ContactsWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->bindAutoCompleteView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 74
    return-void
.end method

.method public final convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 83
    invoke-static {}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getInstance()Lcom/csipsimple/utils/contacts/ContactsWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->transformToSipUri(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 84
    .local v0, "number":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "stripNbr":Ljava/lang/String;
    iget-object v2, p0, Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;->currentAccId:J

    invoke-static {v2, v3, v4, v1}, Lcom/csipsimple/models/Filter;->rewritePhoneNumber(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .end local v0    # "number":Ljava/lang/CharSequence;
    .end local v1    # "stripNbr":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 67
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 68
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03004c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 78
    invoke-static {}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getInstance()Lcom/csipsimple/utils/contacts/ContactsWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->searchContact(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final setSelectedAccount(J)V
    .locals 0
    .param p1, "accId"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;->currentAccId:J

    .line 62
    return-void
.end method
