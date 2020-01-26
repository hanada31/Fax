.class Lcom/csipsimple/api/SipProfileState$1;
.super Ljava/lang/Object;
.source "SipProfileState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/api/SipProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/csipsimple/api/SipProfileState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/csipsimple/api/SipProfileState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 234
    new-instance v0, Lcom/csipsimple/api/SipProfileState;

    invoke-direct {v0, p1}, Lcom/csipsimple/api/SipProfileState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/csipsimple/api/SipProfileState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/csipsimple/api/SipProfileState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/csipsimple/api/SipProfileState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 238
    new-array v0, p1, [Lcom/csipsimple/api/SipProfileState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/csipsimple/api/SipProfileState$1;->newArray(I)[Lcom/csipsimple/api/SipProfileState;

    move-result-object v0

    return-object v0
.end method
