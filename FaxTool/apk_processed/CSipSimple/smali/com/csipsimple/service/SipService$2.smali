.class Lcom/csipsimple/service/SipService$2;
.super Lcom/csipsimple/api/ISipConfiguration$Stub;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/service/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/service/SipService;


# direct methods
.method constructor <init>(Lcom/csipsimple/service/SipService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/service/SipService$2;->this$0:Lcom/csipsimple/service/SipService;

    .line 820
    invoke-direct {p0}, Lcom/csipsimple/api/ISipConfiguration$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreferenceBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 850
    iget-object v0, p0, Lcom/csipsimple/service/SipService$2;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.CONFIGURE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lcom/csipsimple/service/SipService$2;->this$0:Lcom/csipsimple/service/SipService;

    invoke-static {v0}, Lcom/csipsimple/service/SipService;->access$4(Lcom/csipsimple/service/SipService;)Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPreferenceFloat(Ljava/lang/String;)F
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 857
    iget-object v0, p0, Lcom/csipsimple/service/SipService$2;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.CONFIGURE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/csipsimple/service/SipService$2;->this$0:Lcom/csipsimple/service/SipService;

    invoke-static {v0}, Lcom/csipsimple/service/SipService;->access$4(Lcom/csipsimple/service/SipService;)Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceFloatValue(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getPreferenceString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 844
    iget-object v0, p0, Lcom/csipsimple/service/SipService$2;->this$0:Lcom/csipsimple/service/SipService;

    invoke-static {v0}, Lcom/csipsimple/service/SipService;->access$4(Lcom/csipsimple/service/SipService;)Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setPreferenceBoolean(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 824
    iget-object v0, p0, Lcom/csipsimple/service/SipService$2;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.CONFIGURE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/csipsimple/service/SipService$2;->this$0:Lcom/csipsimple/service/SipService;

    invoke-static {v0}, Lcom/csipsimple/service/SipService;->access$4(Lcom/csipsimple/service/SipService;)Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 826
    return-void
.end method

.method public setPreferenceFloat(Ljava/lang/String;F)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 830
    iget-object v0, p0, Lcom/csipsimple/service/SipService$2;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.CONFIGURE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/csipsimple/service/SipService$2;->this$0:Lcom/csipsimple/service/SipService;

    invoke-static {v0}, Lcom/csipsimple/service/SipService;->access$4(Lcom/csipsimple/service/SipService;)Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 833
    return-void
.end method

.method public setPreferenceString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 837
    iget-object v0, p0, Lcom/csipsimple/service/SipService$2;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.CONFIGURE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, Lcom/csipsimple/service/SipService$2;->this$0:Lcom/csipsimple/service/SipService;

    invoke-static {v0}, Lcom/csipsimple/service/SipService;->access$4(Lcom/csipsimple/service/SipService;)Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    return-void
.end method
