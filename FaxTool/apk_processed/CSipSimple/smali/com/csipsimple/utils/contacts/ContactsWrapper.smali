.class public abstract Lcom/csipsimple/utils/contacts/ContactsWrapper;
.super Ljava/lang/Object;
.source "ContactsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;,
        Lcom/csipsimple/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;,
        Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;
    }
.end annotation


# static fields
.field public static final FIELD_GROUP_NAME:Ljava/lang/String; = "title"

.field public static final FIELD_TYPE:Ljava/lang/String; = "wrapped_type"

.field public static final TYPE_CONFIGURE:I = 0x2

.field public static final TYPE_CONTACT:I = 0x1

.field public static final TYPE_GROUP:I

.field public static URI_ALLS:I

.field public static URI_IM:I

.field public static URI_NBR:I

.field public static URI_SIP:I

.field private static instance:Lcom/csipsimple/utils/contacts/ContactsWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x1

    sput v0, Lcom/csipsimple/utils/contacts/ContactsWrapper;->URI_NBR:I

    .line 84
    const/4 v0, 0x2

    sput v0, Lcom/csipsimple/utils/contacts/ContactsWrapper;->URI_IM:I

    .line 85
    const/4 v0, 0x4

    sput v0, Lcom/csipsimple/utils/contacts/ContactsWrapper;->URI_SIP:I

    .line 86
    sget v0, Lcom/csipsimple/utils/contacts/ContactsWrapper;->URI_IM:I

    sget v1, Lcom/csipsimple/utils/contacts/ContactsWrapper;->URI_NBR:I

    or-int/2addr v0, v1

    sget v1, Lcom/csipsimple/utils/contacts/ContactsWrapper;->URI_SIP:I

    or-int/2addr v0, v1

    sput v0, Lcom/csipsimple/utils/contacts/ContactsWrapper;->URI_ALLS:I

    .line 43
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method private formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 320
    if-eqz p2, :cond_1

    const-string v1, "sip"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sip:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 331
    .end local p1    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 323
    .restart local p1    # "number":Ljava/lang/String;
    :cond_1
    const-string v1, "sip:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "rNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getInstance()Lcom/csipsimple/utils/contacts/ContactsWrapper;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/csipsimple/utils/contacts/ContactsWrapper;->instance:Lcom/csipsimple/utils/contacts/ContactsWrapper;

    if-nez v0, :cond_0

    .line 54
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Lcom/csipsimple/utils/contacts/ContactsUtils14;

    invoke-direct {v0}, Lcom/csipsimple/utils/contacts/ContactsUtils14;-><init>()V

    sput-object v0, Lcom/csipsimple/utils/contacts/ContactsWrapper;->instance:Lcom/csipsimple/utils/contacts/ContactsWrapper;

    .line 63
    :cond_0
    :goto_0
    sget-object v0, Lcom/csipsimple/utils/contacts/ContactsWrapper;->instance:Lcom/csipsimple/utils/contacts/ContactsWrapper;

    return-object v0

    .line 56
    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    new-instance v0, Lcom/csipsimple/utils/contacts/ContactsUtils5;

    invoke-direct {v0}, Lcom/csipsimple/utils/contacts/ContactsUtils5;-><init>()V

    sput-object v0, Lcom/csipsimple/utils/contacts/ContactsWrapper;->instance:Lcom/csipsimple/utils/contacts/ContactsWrapper;

    goto :goto_0

    .line 59
    :cond_2
    new-instance v0, Lcom/csipsimple/utils/contacts/ContactsUtils3;

    invoke-direct {v0}, Lcom/csipsimple/utils/contacts/ContactsUtils3;-><init>()V

    sput-object v0, Lcom/csipsimple/utils/contacts/ContactsWrapper;->instance:Lcom/csipsimple/utils/contacts/ContactsWrapper;

    goto :goto_0
.end method


# virtual methods
.method public abstract bindAutoCompleteView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public abstract bindContactPhoneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public abstract findCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/csipsimple/models/CallerInfo;
.end method

.method public abstract findCallerInfoForUri(Landroid/content/Context;Ljava/lang/String;)Lcom/csipsimple/models/CallerInfo;
.end method

.method public abstract findSelfInfo(Landroid/content/Context;)Lcom/csipsimple/models/CallerInfo;
.end method

.method public abstract getAddContactIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract getCSipPhonesByGroup(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCSipPhonesContact(Landroid/content/Context;Ljava/lang/Long;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContactIndexableColumnIndex(Landroid/database/Cursor;)I
.end method

.method public abstract getContactInfo(Landroid/content/Context;Landroid/database/Cursor;)Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;
.end method

.method public abstract getContactPhoto(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/Integer;)Landroid/graphics/Bitmap;
.end method

.method public abstract getContactsByGroup(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract getContactsPhones(Landroid/content/Context;)Landroid/database/Cursor;
.end method

.method public abstract getGroups(Landroid/content/Context;)Landroid/database/Cursor;
.end method

.method public abstract getPhoneNumbers(Landroid/content/Context;JI)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI)",
            "Ljava/util/List",
            "<",
            "Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPresenceIconResourceId(I)I
.end method

.method public abstract getViewContactIntent(Ljava/lang/Long;)Landroid/content/Intent;
.end method

.method public abstract insertOrUpdateCSipUri(Landroid/content/Context;JLjava/lang/String;)Z
.end method

.method public abstract searchContact(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/database/Cursor;
.end method

.method public abstract transformToSipUri(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
.end method

.method public treatContactPickerPositiveResult(Landroid/content/Context;Landroid/content/Intent;Lcom/csipsimple/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;)V
    .locals 4
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "l"    # Lcom/csipsimple/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;

    .prologue
    .line 265
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 266
    .local v1, "contactUri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 267
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 268
    .local v0, "contactId":Ljava/lang/String;
    invoke-virtual {p0, p1, v0, p3}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->treatContactPickerPositiveResult(Landroid/content/Context;Ljava/lang/String;Lcom/csipsimple/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;)V

    .line 269
    return-void
.end method

.method public treatContactPickerPositiveResult(Landroid/content/Context;Ljava/lang/String;Lcom/csipsimple/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;)V
    .locals 12
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "contactId"    # Ljava/lang/String;
    .param p3, "l"    # Lcom/csipsimple/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;

    .prologue
    const v11, 0x7f0b01f8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 273
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sget v8, Lcom/csipsimple/utils/contacts/ContactsWrapper;->URI_ALLS:I

    invoke-virtual {p0, p1, v6, v7, v8}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getPhoneNumbers(Landroid/content/Context;JI)Ljava/util/List;

    move-result-object v5

    .line 275
    .local v5, "phones":Ljava/util/List;, "Ljava/util/List<Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 276
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 277
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0b01ef

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 278
    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 279
    const v6, 0x7f0b01f9

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 280
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 281
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 317
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 283
    if-eqz p3, :cond_0

    .line 284
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;

    invoke-virtual {v6}, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;

    invoke-virtual {v6}, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v7, v6}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Lcom/csipsimple/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;->onTrigger(Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 289
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v2, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 294
    new-instance v4, Landroid/widget/ArrayAdapter;

    .line 295
    const v6, 0x109000a

    .line 294
    invoke-direct {v4, p1, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 297
    .local v4, "phoneChoiceAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 298
    new-instance v6, Lcom/csipsimple/utils/contacts/ContactsWrapper$1;

    invoke-direct {v6, p0, p3, v4}, Lcom/csipsimple/utils/contacts/ContactsWrapper$1;-><init>(Lcom/csipsimple/utils/contacts/ContactsWrapper;Lcom/csipsimple/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 306
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 307
    const v6, 0x7f0b01c8

    new-instance v7, Lcom/csipsimple/utils/contacts/ContactsWrapper$2;

    invoke-direct {v7, p0}, Lcom/csipsimple/utils/contacts/ContactsWrapper$2;-><init>(Lcom/csipsimple/utils/contacts/ContactsWrapper;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 314
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 315
    .restart local v1    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 290
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v4    # "phoneChoiceAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;

    .line 291
    .local v3, "phone":Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;
    invoke-virtual {v3}, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public abstract updateCSipPresence(Landroid/content/Context;Ljava/lang/String;Lcom/csipsimple/api/SipManager$PresenceStatus;Ljava/lang/String;)V
.end method

.method protected usefulAsDigits(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "cons"    # Ljava/lang/CharSequence;

    .prologue
    .line 352
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 354
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 374
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 355
    :cond_0
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 357
    .local v0, "c":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_2

    const/16 v3, 0x39

    if-gt v0, v3, :cond_2

    .line 354
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    :cond_2
    const/16 v3, 0x20

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_1

    const/16 v3, 0x28

    if-eq v0, v3, :cond_1

    const/16 v3, 0x29

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_1

    .line 361
    const/16 v3, 0x23

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_1

    .line 364
    const/16 v3, 0x41

    if-lt v0, v3, :cond_3

    const/16 v3, 0x5a

    if-le v0, v3, :cond_1

    .line 367
    :cond_3
    const/16 v3, 0x61

    if-lt v0, v3, :cond_4

    const/16 v3, 0x7a

    if-le v0, v3, :cond_1

    .line 371
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method
