.class public Lcom/csipsimple/api/MediaState;
.super Ljava/lang/Object;
.source "MediaState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/csipsimple/api/MediaState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public canBluetoothSco:Z

.field public canMicrophoneMute:Z

.field public canSpeakerphoneOn:Z

.field public isBluetoothScoOn:Z

.field public isMicrophoneMute:Z

.field public isSpeakerphoneOn:Z

.field public primaryKey:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/csipsimple/api/MediaState$1;

    invoke-direct {v0}, Lcom/csipsimple/api/MediaState$1;-><init>()V

    sput-object v0, Lcom/csipsimple/api/MediaState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/csipsimple/api/MediaState;->primaryKey:I

    .line 48
    iput-boolean v1, p0, Lcom/csipsimple/api/MediaState;->isMicrophoneMute:Z

    .line 53
    iput-boolean v1, p0, Lcom/csipsimple/api/MediaState;->isSpeakerphoneOn:Z

    .line 57
    iput-boolean v1, p0, Lcom/csipsimple/api/MediaState;->isBluetoothScoOn:Z

    .line 61
    iput-boolean v2, p0, Lcom/csipsimple/api/MediaState;->canMicrophoneMute:Z

    .line 65
    iput-boolean v2, p0, Lcom/csipsimple/api/MediaState;->canSpeakerphoneOn:Z

    .line 69
    iput-boolean v1, p0, Lcom/csipsimple/api/MediaState;->canBluetoothSco:Z

    .line 100
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/csipsimple/api/MediaState;->primaryKey:I

    .line 48
    iput-boolean v2, p0, Lcom/csipsimple/api/MediaState;->isMicrophoneMute:Z

    .line 53
    iput-boolean v2, p0, Lcom/csipsimple/api/MediaState;->isSpeakerphoneOn:Z

    .line 57
    iput-boolean v2, p0, Lcom/csipsimple/api/MediaState;->isBluetoothScoOn:Z

    .line 61
    iput-boolean v1, p0, Lcom/csipsimple/api/MediaState;->canMicrophoneMute:Z

    .line 65
    iput-boolean v1, p0, Lcom/csipsimple/api/MediaState;->canSpeakerphoneOn:Z

    .line 69
    iput-boolean v2, p0, Lcom/csipsimple/api/MediaState;->canBluetoothSco:Z

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/MediaState;->primaryKey:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/csipsimple/api/MediaState;->isMicrophoneMute:Z

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/csipsimple/api/MediaState;->isSpeakerphoneOn:Z

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/csipsimple/api/MediaState;->isBluetoothScoOn:Z

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/csipsimple/api/MediaState;->canMicrophoneMute:Z

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/csipsimple/api/MediaState;->canSpeakerphoneOn:Z

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    :goto_5
    iput-boolean v1, p0, Lcom/csipsimple/api/MediaState;->canBluetoothSco:Z

    .line 116
    return-void

    :cond_0
    move v0, v2

    .line 110
    goto :goto_0

    :cond_1
    move v0, v2

    .line 111
    goto :goto_1

    :cond_2
    move v0, v2

    .line 112
    goto :goto_2

    :cond_3
    move v0, v2

    .line 113
    goto :goto_3

    :cond_4
    move v0, v2

    .line 114
    goto :goto_4

    :cond_5
    move v1, v2

    .line 115
    goto :goto_5
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/csipsimple/api/MediaState;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/csipsimple/api/MediaState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 74
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/csipsimple/api/MediaState;

    if-ne v1, v2, :cond_1

    move-object v0, p1

    .line 75
    check-cast v0, Lcom/csipsimple/api/MediaState;

    .line 76
    .local v0, "oState":Lcom/csipsimple/api/MediaState;
    iget-boolean v1, v0, Lcom/csipsimple/api/MediaState;->isBluetoothScoOn:Z

    iget-boolean v2, p0, Lcom/csipsimple/api/MediaState;->isBluetoothScoOn:Z

    if-ne v1, v2, :cond_0

    .line 77
    iget-boolean v1, v0, Lcom/csipsimple/api/MediaState;->isMicrophoneMute:Z

    iget-boolean v2, p0, Lcom/csipsimple/api/MediaState;->isMicrophoneMute:Z

    if-ne v1, v2, :cond_0

    .line 78
    iget-boolean v1, v0, Lcom/csipsimple/api/MediaState;->isSpeakerphoneOn:Z

    iget-boolean v2, p0, Lcom/csipsimple/api/MediaState;->isSpeakerphoneOn:Z

    if-ne v1, v2, :cond_0

    .line 79
    iget-boolean v1, v0, Lcom/csipsimple/api/MediaState;->canBluetoothSco:Z

    iget-boolean v2, p0, Lcom/csipsimple/api/MediaState;->canBluetoothSco:Z

    if-ne v1, v2, :cond_0

    .line 80
    iget-boolean v1, v0, Lcom/csipsimple/api/MediaState;->canSpeakerphoneOn:Z

    iget-boolean v2, p0, Lcom/csipsimple/api/MediaState;->canSpeakerphoneOn:Z

    if-ne v1, v2, :cond_0

    .line 81
    iget-boolean v1, v0, Lcom/csipsimple/api/MediaState;->canMicrophoneMute:Z

    iget-boolean v2, p0, Lcom/csipsimple/api/MediaState;->canMicrophoneMute:Z

    if-ne v1, v2, :cond_0

    .line 82
    const/4 v1, 0x1

    .line 88
    .end local v0    # "oState":Lcom/csipsimple/api/MediaState;
    :goto_0
    return v1

    .line 84
    .restart local v0    # "oState":Lcom/csipsimple/api/MediaState;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 88
    .end local v0    # "oState":Lcom/csipsimple/api/MediaState;
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    iget v0, p0, Lcom/csipsimple/api/MediaState;->primaryKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-boolean v0, p0, Lcom/csipsimple/api/MediaState;->isMicrophoneMute:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-boolean v0, p0, Lcom/csipsimple/api/MediaState;->isSpeakerphoneOn:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-boolean v0, p0, Lcom/csipsimple/api/MediaState;->isBluetoothScoOn:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-boolean v0, p0, Lcom/csipsimple/api/MediaState;->canMicrophoneMute:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-boolean v0, p0, Lcom/csipsimple/api/MediaState;->canSpeakerphoneOn:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-boolean v0, p0, Lcom/csipsimple/api/MediaState;->canBluetoothSco:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    return-void

    :cond_0
    move v0, v2

    .line 146
    goto :goto_0

    :cond_1
    move v0, v2

    .line 147
    goto :goto_1

    :cond_2
    move v0, v2

    .line 148
    goto :goto_2

    :cond_3
    move v0, v2

    .line 149
    goto :goto_3

    :cond_4
    move v0, v2

    .line 150
    goto :goto_4

    :cond_5
    move v1, v2

    .line 151
    goto :goto_5
.end method
