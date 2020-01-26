.class public final Lcom/csipsimple/api/SipCallSession;
.super Ljava/lang/Object;
.source "SipCallSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/api/SipCallSession$InvState;,
        Lcom/csipsimple/api/SipCallSession$MediaState;,
        Lcom/csipsimple/api/SipCallSession$StatusCode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/csipsimple/api/SipCallSession;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_CALL_ID:I = -0x1

.field public static final OPT_CALL_VIDEO:Ljava/lang/String; = "opt_call_video"


# instance fields
.field private accId:J

.field private callId:I

.field public callStart:J

.field private callState:I

.field private canRecord:Z

.field private confPort:I

.field private connectStart:J

.field private isIncoming:Z

.field private isRecording:Z

.field private lastStatusCode:I

.field private lastStatusComment:Ljava/lang/String;

.field private mediaHasVideoStream:Z

.field private mediaSecure:Z

.field private mediaSecureInfo:Ljava/lang/String;

.field private mediaStatus:I

.field public primaryKey:I

.field private remoteContact:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 280
    new-instance v0, Lcom/csipsimple/api/SipCallSession$1;

    invoke-direct {v0}, Lcom/csipsimple/api/SipCallSession$1;-><init>()V

    sput-object v0, Lcom/csipsimple/api/SipCallSession;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput v0, p0, Lcom/csipsimple/api/SipCallSession;->primaryKey:I

    .line 191
    iput-wide v3, p0, Lcom/csipsimple/api/SipCallSession;->callStart:J

    .line 193
    iput v0, p0, Lcom/csipsimple/api/SipCallSession;->callId:I

    .line 194
    iput v0, p0, Lcom/csipsimple/api/SipCallSession;->callState:I

    .line 197
    iput v0, p0, Lcom/csipsimple/api/SipCallSession;->confPort:I

    .line 198
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/csipsimple/api/SipCallSession;->accId:J

    .line 199
    iput v2, p0, Lcom/csipsimple/api/SipCallSession;->mediaStatus:I

    .line 200
    iput-boolean v2, p0, Lcom/csipsimple/api/SipCallSession;->mediaSecure:Z

    .line 201
    iput-boolean v2, p0, Lcom/csipsimple/api/SipCallSession;->mediaHasVideoStream:Z

    .line 202
    iput-wide v3, p0, Lcom/csipsimple/api/SipCallSession;->connectStart:J

    .line 203
    iput v2, p0, Lcom/csipsimple/api/SipCallSession;->lastStatusCode:I

    .line 204
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipCallSession;->lastStatusComment:Ljava/lang/String;

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipCallSession;->mediaSecureInfo:Ljava/lang/String;

    .line 206
    iput-boolean v2, p0, Lcom/csipsimple/api/SipCallSession;->canRecord:Z

    .line 207
    iput-boolean v2, p0, Lcom/csipsimple/api/SipCallSession;->isRecording:Z

    .line 243
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v5, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput v0, p0, Lcom/csipsimple/api/SipCallSession;->primaryKey:I

    .line 191
    iput-wide v5, p0, Lcom/csipsimple/api/SipCallSession;->callStart:J

    .line 193
    iput v0, p0, Lcom/csipsimple/api/SipCallSession;->callId:I

    .line 194
    iput v0, p0, Lcom/csipsimple/api/SipCallSession;->callState:I

    .line 197
    iput v0, p0, Lcom/csipsimple/api/SipCallSession;->confPort:I

    .line 198
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/csipsimple/api/SipCallSession;->accId:J

    .line 199
    iput v2, p0, Lcom/csipsimple/api/SipCallSession;->mediaStatus:I

    .line 200
    iput-boolean v2, p0, Lcom/csipsimple/api/SipCallSession;->mediaSecure:Z

    .line 201
    iput-boolean v2, p0, Lcom/csipsimple/api/SipCallSession;->mediaHasVideoStream:Z

    .line 202
    iput-wide v5, p0, Lcom/csipsimple/api/SipCallSession;->connectStart:J

    .line 203
    iput v2, p0, Lcom/csipsimple/api/SipCallSession;->lastStatusCode:I

    .line 204
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipCallSession;->lastStatusComment:Ljava/lang/String;

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipCallSession;->mediaSecureInfo:Ljava/lang/String;

    .line 206
    iput-boolean v2, p0, Lcom/csipsimple/api/SipCallSession;->canRecord:Z

    .line 207
    iput-boolean v2, p0, Lcom/csipsimple/api/SipCallSession;->isRecording:Z

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipCallSession;->primaryKey:I

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipCallSession;->callId:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipCallSession;->callState:I

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipCallSession;->mediaStatus:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipCallSession;->remoteContact:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/csipsimple/api/SipCallSession;->setIncoming(Z)V

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipCallSession;->confPort:I

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v3, v0

    iput-wide v3, p0, Lcom/csipsimple/api/SipCallSession;->accId:J

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipCallSession;->lastStatusCode:I

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipCallSession;->mediaSecureInfo:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/csipsimple/api/SipCallSession;->connectStart:J

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/csipsimple/api/SipCallSession;->mediaSecure:Z

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/csipsimple/api/SipCallSession;->setLastStatusComment(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/csipsimple/api/SipCallSession;->setMediaHasVideo(Z)V

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/csipsimple/api/SipCallSession;->canRecord:Z

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    :goto_4
    iput-boolean v1, p0, Lcom/csipsimple/api/SipCallSession;->isRecording:Z

    .line 232
    return-void

    :cond_0
    move v0, v2

    .line 221
    goto :goto_0

    :cond_1
    move v0, v2

    .line 227
    goto :goto_1

    :cond_2
    move v0, v2

    .line 229
    goto :goto_2

    :cond_3
    move v0, v2

    .line 230
    goto :goto_3

    :cond_4
    move v1, v2

    .line 231
    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/csipsimple/api/SipCallSession;)V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/csipsimple/api/SipCallSession;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public canRecord()Z
    .locals 1

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/csipsimple/api/SipCallSession;->canRecord:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 297
    if-ne p1, p0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v1

    .line 300
    :cond_1
    instance-of v3, p1, Lcom/csipsimple/api/SipCallSession;

    if-nez v3, :cond_2

    move v1, v2

    .line 301
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 303
    check-cast v0, Lcom/csipsimple/api/SipCallSession;

    .line 304
    .local v0, "ci":Lcom/csipsimple/api/SipCallSession;
    invoke-virtual {v0}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v3

    iget v4, p0, Lcom/csipsimple/api/SipCallSession;->callId:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 307
    goto :goto_0
.end method

.method public getAccId()J
    .locals 2

    .prologue
    .line 479
    iget-wide v0, p0, Lcom/csipsimple/api/SipCallSession;->accId:J

    return-wide v0
.end method

.method public getCallId()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/csipsimple/api/SipCallSession;->callId:I

    return v0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/csipsimple/api/SipCallSession;->callState:I

    return v0
.end method

.method public getConfPort()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lcom/csipsimple/api/SipCallSession;->confPort:I

    return v0
.end method

.method public getConnectStart()J
    .locals 2

    .prologue
    .line 412
    iget-wide v0, p0, Lcom/csipsimple/api/SipCallSession;->connectStart:J

    return-wide v0
.end method

.method public getLastStatusCode()I
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Lcom/csipsimple/api/SipCallSession;->lastStatusCode:I

    return v0
.end method

.method public getLastStatusComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/csipsimple/api/SipCallSession;->lastStatusComment:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaSecureInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/csipsimple/api/SipCallSession;->mediaSecureInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaStatus()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/csipsimple/api/SipCallSession;->mediaStatus:I

    return v0
.end method

.method public getRemoteContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/csipsimple/api/SipCallSession;->remoteContact:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 434
    iget v1, p0, Lcom/csipsimple/api/SipCallSession;->callState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/csipsimple/api/SipCallSession;->callState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 435
    iget v1, p0, Lcom/csipsimple/api/SipCallSession;->callState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/csipsimple/api/SipCallSession;->callState:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/csipsimple/api/SipCallSession;->callState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isAfterEnded()Z
    .locals 2

    .prologue
    .line 570
    iget v0, p0, Lcom/csipsimple/api/SipCallSession;->callState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/csipsimple/api/SipCallSession;->callState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/csipsimple/api/SipCallSession;->callState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isBeforeConfirmed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 558
    iget v1, p0, Lcom/csipsimple/api/SipCallSession;->callState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/csipsimple/api/SipCallSession;->callState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 559
    iget v1, p0, Lcom/csipsimple/api/SipCallSession;->callState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/csipsimple/api/SipCallSession;->callState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/csipsimple/api/SipCallSession;->isIncoming:Z

    return v0
.end method

.method public isLocalHeld()Z
    .locals 2

    .prologue
    .line 539
    iget v0, p0, Lcom/csipsimple/api/SipCallSession;->mediaStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOngoing()Z
    .locals 2

    .prologue
    .line 444
    iget v0, p0, Lcom/csipsimple/api/SipCallSession;->callState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/csipsimple/api/SipCallSession;->isRecording:Z

    return v0
.end method

.method public isRemoteHeld()Z
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/csipsimple/api/SipCallSession;->mediaStatus:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/csipsimple/api/SipCallSession;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/csipsimple/api/SipCallSession;->isBeforeConfirmed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/csipsimple/api/SipCallSession;->mediaSecure:Z

    return v0
.end method

.method public mediaHasVideo()Z
    .locals 1

    .prologue
    .line 621
    iget-boolean v0, p0, Lcom/csipsimple/api/SipCallSession;->mediaHasVideoStream:Z

    return v0
.end method

.method public setAccId(J)V
    .locals 0
    .param p1, "accId2"    # J

    .prologue
    .line 490
    iput-wide p1, p0, Lcom/csipsimple/api/SipCallSession;->accId:J

    .line 491
    return-void
.end method

.method public setCallId(I)V
    .locals 0
    .param p1, "callId2"    # I

    .prologue
    .line 327
    iput p1, p0, Lcom/csipsimple/api/SipCallSession;->callId:I

    .line 328
    return-void
.end method

.method public setCallState(I)V
    .locals 0
    .param p1, "callState2"    # I

    .prologue
    .line 348
    iput p1, p0, Lcom/csipsimple/api/SipCallSession;->callState:I

    .line 349
    return-void
.end method

.method public setCanRecord(Z)V
    .locals 0
    .param p1, "canRecord"    # Z

    .prologue
    .line 642
    iput-boolean p1, p0, Lcom/csipsimple/api/SipCallSession;->canRecord:Z

    .line 643
    return-void
.end method

.method public setConfPort(I)V
    .locals 0
    .param p1, "confPort2"    # I

    .prologue
    .line 467
    iput p1, p0, Lcom/csipsimple/api/SipCallSession;->confPort:I

    .line 468
    return-void
.end method

.method public setConnectStart(J)V
    .locals 0
    .param p1, "connectStart2"    # J

    .prologue
    .line 423
    iput-wide p1, p0, Lcom/csipsimple/api/SipCallSession;->connectStart:J

    .line 424
    return-void
.end method

.method public setIncoming(Z)V
    .locals 0
    .param p1, "isIncoming"    # Z

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/csipsimple/api/SipCallSession;->isIncoming:Z

    .line 394
    return-void
.end method

.method public setIsRecording(Z)V
    .locals 0
    .param p1, "isRecording"    # Z

    .prologue
    .line 653
    iput-boolean p1, p0, Lcom/csipsimple/api/SipCallSession;->isRecording:Z

    .line 654
    return-void
.end method

.method public setLastStatusCode(I)V
    .locals 0
    .param p1, "status_code"    # I

    .prologue
    .line 593
    iput p1, p0, Lcom/csipsimple/api/SipCallSession;->lastStatusCode:I

    .line 594
    return-void
.end method

.method public setLastStatusComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastStatusComment"    # Ljava/lang/String;

    .prologue
    .line 612
    iput-object p1, p0, Lcom/csipsimple/api/SipCallSession;->lastStatusComment:Ljava/lang/String;

    .line 613
    return-void
.end method

.method public setMediaHasVideo(Z)V
    .locals 0
    .param p1, "mediaHasVideo"    # Z

    .prologue
    .line 632
    iput-boolean p1, p0, Lcom/csipsimple/api/SipCallSession;->mediaHasVideoStream:Z

    .line 633
    return-void
.end method

.method public setMediaSecure(Z)V
    .locals 0
    .param p1, "mediaSecure2"    # Z

    .prologue
    .line 510
    iput-boolean p1, p0, Lcom/csipsimple/api/SipCallSession;->mediaSecure:Z

    .line 511
    return-void
.end method

.method public setMediaSecureInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "aInfo"    # Ljava/lang/String;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/csipsimple/api/SipCallSession;->mediaSecureInfo:Ljava/lang/String;

    .line 522
    return-void
.end method

.method public setMediaStatus(I)V
    .locals 0
    .param p1, "mediaStatus2"    # I

    .prologue
    .line 362
    iput p1, p0, Lcom/csipsimple/api/SipCallSession;->mediaStatus:I

    .line 363
    return-void
.end method

.method public setRemoteContact(Ljava/lang/String;)V
    .locals 0
    .param p1, "remoteContact2"    # Ljava/lang/String;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/csipsimple/api/SipCallSession;->remoteContact:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 258
    iget v0, p0, Lcom/csipsimple/api/SipCallSession;->primaryKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget v0, p0, Lcom/csipsimple/api/SipCallSession;->callId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget v0, p0, Lcom/csipsimple/api/SipCallSession;->callState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget v0, p0, Lcom/csipsimple/api/SipCallSession;->mediaStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget-object v0, p0, Lcom/csipsimple/api/SipCallSession;->remoteContact:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/csipsimple/api/SipCallSession;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget v0, p0, Lcom/csipsimple/api/SipCallSession;->confPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget-wide v3, p0, Lcom/csipsimple/api/SipCallSession;->accId:J

    long-to-int v0, v3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget v0, p0, Lcom/csipsimple/api/SipCallSession;->lastStatusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget-object v0, p0, Lcom/csipsimple/api/SipCallSession;->mediaSecureInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-wide v3, p0, Lcom/csipsimple/api/SipCallSession;->connectStart:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 269
    iget-boolean v0, p0, Lcom/csipsimple/api/SipCallSession;->mediaSecure:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    invoke-virtual {p0}, Lcom/csipsimple/api/SipCallSession;->getLastStatusComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/csipsimple/api/SipCallSession;->mediaHasVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget-boolean v0, p0, Lcom/csipsimple/api/SipCallSession;->canRecord:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget-boolean v0, p0, Lcom/csipsimple/api/SipCallSession;->isRecording:Z

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    return-void

    :cond_0
    move v0, v2

    .line 263
    goto :goto_0

    :cond_1
    move v0, v2

    .line 269
    goto :goto_1

    :cond_2
    move v0, v2

    .line 271
    goto :goto_2

    :cond_3
    move v0, v2

    .line 272
    goto :goto_3

    :cond_4
    move v1, v2

    .line 273
    goto :goto_4
.end method
