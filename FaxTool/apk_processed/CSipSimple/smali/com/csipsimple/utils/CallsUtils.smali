.class public Lcom/csipsimple/utils/CallsUtils;
.super Ljava/lang/Object;
.source "CallsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getStringCallState(Lcom/csipsimple/api/SipCallSession;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "session"    # Lcom/csipsimple/api/SipCallSession;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/csipsimple/api/SipCallSession;->getCallState()I

    move-result v0

    .line 38
    .local v0, "callState":I
    packed-switch v0, :pswitch_data_0

    .line 55
    const-string v1, ""

    :goto_0
    return-object v1

    .line 40
    :pswitch_0
    const v1, 0x7f0b0041

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 42
    :pswitch_1
    const v1, 0x7f0b0042

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 44
    :pswitch_2
    const v1, 0x7f0b0043

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 46
    :pswitch_3
    const v1, 0x7f0b0044

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 48
    :pswitch_4
    const v1, 0x7f0b0045

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 50
    :pswitch_5
    const v1, 0x7f0b0046

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 52
    :pswitch_6
    const v1, 0x7f0b0047

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
