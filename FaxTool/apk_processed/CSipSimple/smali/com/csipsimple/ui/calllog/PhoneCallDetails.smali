.class public Lcom/csipsimple/ui/calllog/PhoneCallDetails;
.super Ljava/lang/Object;
.source "PhoneCallDetails.java"


# instance fields
.field public final accountId:Ljava/lang/Long;

.field public final callTypes:[I

.field public final contactUri:Landroid/net/Uri;

.field public final date:J

.field public final duration:J

.field public final formattedNumber:Ljava/lang/CharSequence;

.field public final name:Ljava/lang/CharSequence;

.field public final number:Ljava/lang/CharSequence;

.field public final numberLabel:Ljava/lang/CharSequence;

.field public final numberType:I

.field public final photoUri:Landroid/net/Uri;

.field public final statusCode:I

.field public final statusText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[IJJ)V
    .locals 13
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p3, "callTypes"    # [I
    .param p4, "date"    # J
    .param p6, "duration"    # J

    .prologue
    .line 80
    const-string v8, ""

    const/4 v9, 0x0

    const-string v10, ""

    .line 81
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v12}, Lcom/csipsimple/ui/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 16
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p3, "callTypes"    # [I
    .param p4, "date"    # J
    .param p6, "duration"    # J
    .param p8, "name"    # Ljava/lang/CharSequence;
    .param p9, "numberType"    # I
    .param p10, "numberLabel"    # Ljava/lang/CharSequence;
    .param p11, "contactUri"    # Landroid/net/Uri;
    .param p12, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 88
    const/4 v8, 0x0

    const/16 v9, 0xc8

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-direct/range {v0 .. v15}, Lcom/csipsimple/ui/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[IJJLjava/lang/Long;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[IJJLjava/lang/Long;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p3, "callTypes"    # [I
    .param p4, "date"    # J
    .param p6, "duration"    # J
    .param p8, "accountId"    # Ljava/lang/Long;
    .param p9, "statusCode"    # I
    .param p10, "statusText"    # Ljava/lang/String;
    .param p11, "name"    # Ljava/lang/CharSequence;
    .param p12, "numberType"    # I
    .param p13, "numberLabel"    # Ljava/lang/CharSequence;
    .param p14, "contactUri"    # Landroid/net/Uri;
    .param p15, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 98
    iput-object p2, p0, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 99
    iput-object p3, p0, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->callTypes:[I

    .line 100
    iput-wide p4, p0, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->date:J

    .line 101
    iput-wide p6, p0, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->duration:J

    .line 102
    iput-object p11, p0, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 103
    iput p12, p0, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->numberType:I

    .line 104
    iput-object p13, p0, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 105
    iput-object p14, p0, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 106
    iput-object p15, p0, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 107
    iput-object p8, p0, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->accountId:Ljava/lang/Long;

    .line 108
    iput p9, p0, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->statusCode:I

    .line 109
    iput-object p10, p0, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->statusText:Ljava/lang/String;

    .line 110
    return-void
.end method
