.class Lcom/csipsimple/ui/favorites/FavAdapter$2;
.super Ljava/lang/Object;
.source "FavAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/favorites/FavAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/favorites/FavAdapter;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/favorites/FavAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/favorites/FavAdapter$2;->this$0:Lcom/csipsimple/ui/favorites/FavAdapter;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;

    .line 88
    .local v4, "ci":Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;
    invoke-static {}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getInstance()Lcom/csipsimple/utils/contacts/ContactsWrapper;

    move-result-object v10

    iget-object v11, p0, Lcom/csipsimple/ui/favorites/FavAdapter$2;->this$0:Lcom/csipsimple/ui/favorites/FavAdapter;

    invoke-static {v11}, Lcom/csipsimple/ui/favorites/FavAdapter;->access$0(Lcom/csipsimple/ui/favorites/FavAdapter;)Landroid/content/Context;

    move-result-object v11

    iget-object v12, v4, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->contactId:Ljava/lang/Long;

    invoke-virtual {v10, v11, v12}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getCSipPhonesContact(Landroid/content/Context;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v6

    .line 89
    .local v6, "phones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    .line 90
    .local v9, "useCSip":Z
    const/4 v8, 0x0

    .line 91
    .local v8, "toCall":Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 92
    const/4 v10, 0x0

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "toCall":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 101
    .restart local v8    # "toCall":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 102
    iget-object v11, p0, Lcom/csipsimple/ui/favorites/FavAdapter$2;->this$0:Lcom/csipsimple/ui/favorites/FavAdapter;

    iget-object v10, v4, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->userData:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v11, v10}, Lcom/csipsimple/ui/favorites/FavAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 103
    .local v0, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 104
    .local v7, "profileId":Ljava/lang/Long;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v10

    if-nez v10, :cond_5

    .line 115
    :goto_1
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.CALL"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v5, "it":Landroid/content/Intent;
    if-eqz v9, :cond_6

    const-string v10, "csip"

    :goto_2
    invoke-static {v10, v8}, Lcom/csipsimple/api/SipUri;->forgeSipUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 117
    const/high16 v10, 0x10000000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    if-eqz v7, :cond_2

    .line 119
    const-string v10, "acc_id"

    invoke-virtual {v5, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 121
    :cond_2
    iget-object v10, p0, Lcom/csipsimple/ui/favorites/FavAdapter$2;->this$0:Lcom/csipsimple/ui/favorites/FavAdapter;

    invoke-static {v10}, Lcom/csipsimple/ui/favorites/FavAdapter;->access$0(Lcom/csipsimple/ui/favorites/FavAdapter;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v5    # "it":Landroid/content/Intent;
    .end local v7    # "profileId":Ljava/lang/Long;
    :cond_3
    return-void

    .line 94
    :cond_4
    invoke-static {}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getInstance()Lcom/csipsimple/utils/contacts/ContactsWrapper;

    move-result-object v10

    iget-object v11, p0, Lcom/csipsimple/ui/favorites/FavAdapter$2;->this$0:Lcom/csipsimple/ui/favorites/FavAdapter;

    invoke-static {v11}, Lcom/csipsimple/ui/favorites/FavAdapter;->access$0(Lcom/csipsimple/ui/favorites/FavAdapter;)Landroid/content/Context;

    move-result-object v11

    iget-object v12, v4, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->contactId:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sget v14, Lcom/csipsimple/utils/contacts/ContactsWrapper;->URI_ALLS:I

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getPhoneNumbers(Landroid/content/Context;JI)Ljava/util/List;

    move-result-object v2

    .line 95
    .local v2, "cPhones":Ljava/util/List;, "Ljava/util/List<Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 96
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;

    invoke-virtual {v10}, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;->getNumber()Ljava/lang/String;

    move-result-object v8

    .line 97
    const/4 v9, 0x0

    goto :goto_0

    .line 105
    .end local v2    # "cPhones":Ljava/util/List;, "Ljava/util/List<Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;>;"
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v7    # "profileId":Ljava/lang/Long;
    :cond_5
    const-string v10, "wrapped_type"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 106
    .local v3, "cTypeIdx":I
    const-string v10, "_id"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 107
    .local v1, "cAccIdx":I
    if-ltz v3, :cond_1

    if-ltz v1, :cond_1

    .line 108
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-nez v10, :cond_1

    .line 109
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 110
    goto :goto_1

    .line 116
    .end local v1    # "cAccIdx":I
    .end local v3    # "cTypeIdx":I
    .restart local v5    # "it":Landroid/content/Intent;
    :cond_6
    const-string v10, "sip"

    goto :goto_2
.end method
