.class public Lcom/csipsimple/pjsip/PjSipAccount;
.super Ljava/lang/Object;
.source "PjSipAccount.java"


# instance fields
.field public active:Z

.field public cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

.field public css_cfg:Lorg/pjsip/pjsua/csipsimple_acc_config;

.field private displayName:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field private profile_default_rtp_port:Z

.field private profile_enable_qos:I

.field private profile_qos_dscp:I

.field private profile_vid_auto_show:I

.field private profile_vid_auto_transmit:I

.field public transport:Ljava/lang/Integer;

.field public wizard:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/pjsip/PjSipAccount;->transport:Ljava/lang/Integer;

    .line 61
    iput v1, p0, Lcom/csipsimple/pjsip/PjSipAccount;->profile_vid_auto_show:I

    .line 62
    iput v1, p0, Lcom/csipsimple/pjsip/PjSipAccount;->profile_vid_auto_transmit:I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csipsimple/pjsip/PjSipAccount;->profile_default_rtp_port:Z

    .line 72
    new-instance v0, Lorg/pjsip/pjsua/pjsua_acc_config;

    invoke-direct {v0}, Lorg/pjsip/pjsua/pjsua_acc_config;-><init>()V

    iput-object v0, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    .line 73
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua;->acc_config_default(Lorg/pjsip/pjsua/pjsua_acc_config;)V

    .line 75
    new-instance v0, Lorg/pjsip/pjsua/csipsimple_acc_config;

    invoke-direct {v0}, Lorg/pjsip/pjsua/csipsimple_acc_config;-><init>()V

    iput-object v0, p0, Lcom/csipsimple/pjsip/PjSipAccount;->css_cfg:Lorg/pjsip/pjsua/csipsimple_acc_config;

    .line 76
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipAccount;->css_cfg:Lorg/pjsip/pjsua/csipsimple_acc_config;

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua;->csipsimple_acc_config_default(Lorg/pjsip/pjsua/csipsimple_acc_config;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/csipsimple/api/SipProfile;)V
    .locals 13
    .param p1, "profile"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/csipsimple/pjsip/PjSipAccount;-><init>()V

    .line 86
    iget-wide v7, p1, Lcom/csipsimple/api/SipProfile;->id:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 87
    iget-wide v7, p1, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->id:Ljava/lang/Long;

    .line 90
    :cond_0
    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    iput-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->displayName:Ljava/lang/String;

    .line 91
    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->wizard:Ljava/lang/String;

    iput-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->wizard:Ljava/lang/String;

    .line 92
    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    iput-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->transport:Ljava/lang/Integer;

    .line 93
    iget-boolean v7, p1, Lcom/csipsimple/api/SipProfile;->active:Z

    iput-boolean v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->active:Z

    .line 94
    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    iput-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->transport:Ljava/lang/Integer;

    .line 97
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    iget v8, p1, Lcom/csipsimple/api/SipProfile;->priority:I

    invoke-virtual {v7, v8}, Lorg/pjsip/pjsua/pjsua_acc_config;->setPriority(I)V

    .line 98
    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 99
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    iget-object v8, p1, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    invoke-static {v8}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/pjsip/pjsua/pjsua_acc_config;->setId(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 101
    :cond_1
    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 102
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    iget-object v8, p1, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    invoke-static {v8}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/pjsip/pjsua/pjsua_acc_config;->setReg_uri(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 104
    :cond_2
    iget v7, p1, Lcom/csipsimple/api/SipProfile;->publish_enabled:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 105
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    iget v8, p1, Lcom/csipsimple/api/SipProfile;->publish_enabled:I

    invoke-virtual {v7, v8}, Lorg/pjsip/pjsua/pjsua_acc_config;->setPublish_enabled(I)V

    .line 107
    :cond_3
    iget v7, p1, Lcom/csipsimple/api/SipProfile;->reg_timeout:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 108
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    iget v8, p1, Lcom/csipsimple/api/SipProfile;->reg_timeout:I

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lorg/pjsip/pjsua/pjsua_acc_config;->setReg_timeout(J)V

    .line 110
    :cond_4
    iget v7, p1, Lcom/csipsimple/api/SipProfile;->reg_delay_before_refresh:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    .line 111
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    iget v8, p1, Lcom/csipsimple/api/SipProfile;->reg_delay_before_refresh:I

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lorg/pjsip/pjsua/pjsua_acc_config;->setReg_delay_before_refresh(J)V

    .line 113
    :cond_5
    iget v7, p1, Lcom/csipsimple/api/SipProfile;->ka_interval:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    .line 114
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    iget v8, p1, Lcom/csipsimple/api/SipProfile;->ka_interval:I

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lorg/pjsip/pjsua/pjsua_acc_config;->setKa_interval(J)V

    .line 116
    :cond_6
    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 117
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    iget-object v8, p1, Lcom/csipsimple/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    invoke-static {v8}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/pjsip/pjsua/pjsua_acc_config;->setPidf_tuple_id(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 119
    :cond_7
    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->force_contact:Ljava/lang/String;

    if-eqz v7, :cond_8

    .line 120
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    iget-object v8, p1, Lcom/csipsimple/api/SipProfile;->force_contact:Ljava/lang/String;

    invoke-static {v8}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/pjsip/pjsua/pjsua_acc_config;->setForce_contact(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 123
    :cond_8
    iget-object v8, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    iget-boolean v7, p1, Lcom/csipsimple/api/SipProfile;->allow_contact_rewrite:Z

    if-eqz v7, :cond_14

    sget v7, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    :goto_0
    invoke-virtual {v8, v7}, Lorg/pjsip/pjsua/pjsua_acc_config;->setAllow_contact_rewrite(I)V

    .line 124
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    iget v8, p1, Lcom/csipsimple/api/SipProfile;->contact_rewrite_method:I

    invoke-virtual {v7, v8}, Lorg/pjsip/pjsua/pjsua_acc_config;->setContact_rewrite_method(I)V

    .line 125
    iget-object v8, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    iget-boolean v7, p1, Lcom/csipsimple/api/SipProfile;->allow_via_rewrite:Z

    if-eqz v7, :cond_15

    sget v7, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    :goto_1
    invoke-virtual {v8, v7}, Lorg/pjsip/pjsua/pjsua_acc_config;->setAllow_via_rewrite(I)V

    .line 128
    iget v7, p1, Lcom/csipsimple/api/SipProfile;->use_srtp:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_9

    .line 129
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    iget v8, p1, Lcom/csipsimple/api/SipProfile;->use_srtp:I

    invoke-static {v8}, Lorg/pjsip/pjsua/pjmedia_srtp_use;->swigToEnum(I)Lorg/pjsip/pjsua/pjmedia_srtp_use;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/pjsip/pjsua/pjsua_acc_config;->setUse_srtp(Lorg/pjsip/pjsua/pjmedia_srtp_use;)V

    .line 130
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/pjsip/pjsua/pjsua_acc_config;->setSrtp_secure_signaling(I)V

    .line 133
    :cond_9
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->css_cfg:Lorg/pjsip/pjsua/csipsimple_acc_config;

    iget v8, p1, Lcom/csipsimple/api/SipProfile;->use_zrtp:I

    invoke-virtual {v7, v8}, Lorg/pjsip/pjsua/csipsimple_acc_config;->setUse_zrtp(I)V

    .line 136
    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    if-eqz v7, :cond_17

    .line 137
    const-string v7, "PjSipAccount"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Create proxy "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p1, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    iget-object v8, p1, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    array-length v8, v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lorg/pjsip/pjsua/pjsua_acc_config;->setProxy_cnt(J)V

    .line 139
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    invoke-virtual {v7}, Lorg/pjsip/pjsua/pjsua_acc_config;->getProxy()[Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v3

    .line 140
    .local v3, "proxies":[Lorg/pjsip/pjsua/pj_str_t;
    const/4 v1, 0x0

    .line 141
    .local v1, "i":I
    iget-object v8, p1, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_2
    if-lt v7, v9, :cond_16

    .line 146
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    invoke-virtual {v7, v3}, Lorg/pjsip/pjsua/pjsua_acc_config;->setProxy([Lorg/pjsip/pjsua/pj_str_t;)V

    .line 150
    .end local v1    # "i":I
    .end local v3    # "proxies":[Lorg/pjsip/pjsua/pj_str_t;
    :goto_3
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    iget v8, p1, Lcom/csipsimple/api/SipProfile;->reg_use_proxy:I

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lorg/pjsip/pjsua/pjsua_acc_config;->setReg_use_proxy(J)V

    .line 152
    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    if-nez v7, :cond_a

    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    if-eqz v7, :cond_18

    .line 153
    :cond_a
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    const-wide/16 v8, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/pjsip/pjsua/pjsua_acc_config;->setCred_count(J)V

    .line 154
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    invoke-virtual {v7}, Lorg/pjsip/pjsua/pjsua_acc_config;->getCred_info()Lorg/pjsip/pjsua/pjsip_cred_info;

    move-result-object v0

    .line 156
    .local v0, "cred_info":Lorg/pjsip/pjsua/pjsip_cred_info;
    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->realm:Ljava/lang/String;

    if-eqz v7, :cond_b

    .line 157
    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->realm:Ljava/lang/String;

    invoke-static {v7}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/pjsip/pjsua/pjsip_cred_info;->setRealm(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 159
    :cond_b
    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    if-eqz v7, :cond_c

    .line 160
    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    invoke-static {v7}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/pjsip/pjsua/pjsip_cred_info;->setUsername(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 162
    :cond_c
    iget v7, p1, Lcom/csipsimple/api/SipProfile;->datatype:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_d

    .line 163
    iget v7, p1, Lcom/csipsimple/api/SipProfile;->datatype:I

    invoke-virtual {v0, v7}, Lorg/pjsip/pjsua/pjsip_cred_info;->setData_type(I)V

    .line 165
    :cond_d
    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    if-eqz v7, :cond_e

    .line 166
    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    invoke-static {v7}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/pjsip/pjsua/pjsip_cred_info;->setData(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 172
    .end local v0    # "cred_info":Lorg/pjsip/pjsua/pjsip_cred_info;
    :cond_e
    :goto_4
    iget-object v8, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    iget-boolean v7, p1, Lcom/csipsimple/api/SipProfile;->mwi_enabled:Z

    if-eqz v7, :cond_19

    sget v7, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    :goto_5
    invoke-virtual {v8, v7}, Lorg/pjsip/pjsua/pjsua_acc_config;->setMwi_enabled(I)V

    .line 176
    iget-object v8, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    iget-boolean v7, p1, Lcom/csipsimple/api/SipProfile;->use_rfc5626:Z

    if-eqz v7, :cond_1a

    sget v7, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    :goto_6
    int-to-long v9, v7

    invoke-virtual {v8, v9, v10}, Lorg/pjsip/pjsua/pjsua_acc_config;->setUse_rfc5626(J)V

    .line 177
    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 178
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    iget-object v8, p1, Lcom/csipsimple/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    invoke-static {v8}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/pjsip/pjsua/pjsua_acc_config;->setRfc5626_instance_id(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 180
    :cond_f
    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 181
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    iget-object v8, p1, Lcom/csipsimple/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    invoke-static {v8}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/pjsip/pjsua/pjsua_acc_config;->setRfc5626_reg_id(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 186
    :cond_10
    iget v7, p1, Lcom/csipsimple/api/SipProfile;->vid_in_auto_show:I

    iput v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->profile_vid_auto_show:I

    .line 187
    iget v7, p1, Lcom/csipsimple/api/SipProfile;->vid_out_auto_transmit:I

    iput v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->profile_vid_auto_transmit:I

    .line 191
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    invoke-virtual {v7}, Lorg/pjsip/pjsua/pjsua_acc_config;->getRtp_cfg()Lorg/pjsip/pjsua/pjsua_transport_config;

    move-result-object v5

    .line 192
    .local v5, "rtpCfg":Lorg/pjsip/pjsua/pjsua_transport_config;
    iget v7, p1, Lcom/csipsimple/api/SipProfile;->rtp_port:I

    if-ltz v7, :cond_11

    .line 193
    iget v7, p1, Lcom/csipsimple/api/SipProfile;->rtp_port:I

    int-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Lorg/pjsip/pjsua/pjsua_transport_config;->setPort(J)V

    .line 194
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->profile_default_rtp_port:Z

    .line 196
    :cond_11
    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 197
    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    invoke-static {v7}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/pjsip/pjsua/pjsua_transport_config;->setPublic_addr(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 199
    :cond_12
    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 200
    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    invoke-static {v7}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/pjsip/pjsua/pjsua_transport_config;->setBound_addr(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 203
    :cond_13
    iget v7, p1, Lcom/csipsimple/api/SipProfile;->rtp_enable_qos:I

    iput v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->profile_enable_qos:I

    .line 204
    iget v7, p1, Lcom/csipsimple/api/SipProfile;->rtp_qos_dscp:I

    iput v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->profile_qos_dscp:I

    .line 206
    iget-object v8, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    iget v7, p1, Lcom/csipsimple/api/SipProfile;->sip_stun_use:I

    if-nez v7, :cond_1b

    sget-object v7, Lorg/pjsip/pjsua/pjsua_stun_use;->PJSUA_STUN_USE_DISABLED:Lorg/pjsip/pjsua/pjsua_stun_use;

    :goto_7
    invoke-virtual {v8, v7}, Lorg/pjsip/pjsua/pjsua_acc_config;->setSip_stun_use(Lorg/pjsip/pjsua/pjsua_stun_use;)V

    .line 207
    iget-object v8, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    iget v7, p1, Lcom/csipsimple/api/SipProfile;->media_stun_use:I

    if-nez v7, :cond_1c

    sget-object v7, Lorg/pjsip/pjsua/pjsua_stun_use;->PJSUA_STUN_USE_DISABLED:Lorg/pjsip/pjsua/pjsua_stun_use;

    :goto_8
    invoke-virtual {v8, v7}, Lorg/pjsip/pjsua/pjsua_acc_config;->setMedia_stun_use(Lorg/pjsip/pjsua/pjsua_stun_use;)V

    .line 208
    iget v7, p1, Lcom/csipsimple/api/SipProfile;->ice_cfg_use:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1e

    .line 209
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    sget-object v8, Lorg/pjsip/pjsua/pjsua_ice_config_use;->PJSUA_ICE_CONFIG_USE_CUSTOM:Lorg/pjsip/pjsua/pjsua_ice_config_use;

    invoke-virtual {v7, v8}, Lorg/pjsip/pjsua/pjsua_acc_config;->setIce_cfg_use(Lorg/pjsip/pjsua/pjsua_ice_config_use;)V

    .line 210
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    invoke-virtual {v7}, Lorg/pjsip/pjsua/pjsua_acc_config;->getIce_cfg()Lorg/pjsip/pjsua/pjsua_ice_config;

    move-result-object v2

    .line 211
    .local v2, "iceCfg":Lorg/pjsip/pjsua/pjsua_ice_config;
    iget v7, p1, Lcom/csipsimple/api/SipProfile;->ice_cfg_enable:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1d

    sget v7, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    :goto_9
    invoke-virtual {v2, v7}, Lorg/pjsip/pjsua/pjsua_ice_config;->setEnable_ice(I)V

    .line 215
    .end local v2    # "iceCfg":Lorg/pjsip/pjsua/pjsua_ice_config;
    :goto_a
    iget v7, p1, Lcom/csipsimple/api/SipProfile;->turn_cfg_use:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_20

    .line 216
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    sget-object v8, Lorg/pjsip/pjsua/pjsua_turn_config_use;->PJSUA_TURN_CONFIG_USE_CUSTOM:Lorg/pjsip/pjsua/pjsua_turn_config_use;

    invoke-virtual {v7, v8}, Lorg/pjsip/pjsua/pjsua_acc_config;->setTurn_cfg_use(Lorg/pjsip/pjsua/pjsua_turn_config_use;)V

    .line 217
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    invoke-virtual {v7}, Lorg/pjsip/pjsua/pjsua_acc_config;->getTurn_cfg()Lorg/pjsip/pjsua/pjsua_turn_config;

    move-result-object v6

    .line 218
    .local v6, "turnCfg":Lorg/pjsip/pjsua/pjsua_turn_config;
    iget v7, p1, Lcom/csipsimple/api/SipProfile;->turn_cfg_enable:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1f

    sget v7, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    :goto_b
    invoke-virtual {v6, v7}, Lorg/pjsip/pjsua/pjsua_turn_config;->setEnable_turn(I)V

    .line 219
    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->turn_cfg_server:Ljava/lang/String;

    invoke-static {v7}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/pjsip/pjsua/pjsua_turn_config;->setTurn_server(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 221
    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->turn_cfg_user:Ljava/lang/String;

    invoke-static {v7}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v7

    .line 222
    iget-object v8, p1, Lcom/csipsimple/api/SipProfile;->turn_cfg_password:Ljava/lang/String;

    invoke-static {v8}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v8

    .line 223
    const-string v9, "*"

    invoke-static {v9}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v9

    .line 224
    invoke-virtual {v6}, Lorg/pjsip/pjsua/pjsua_turn_config;->getTurn_auth_cred()Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;

    move-result-object v10

    .line 220
    invoke-static {v7, v8, v9, v10}, Lorg/pjsip/pjsua/pjsua;->set_turn_credentials(Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;)I

    .line 228
    .end local v6    # "turnCfg":Lorg/pjsip/pjsua/pjsua_turn_config;
    :goto_c
    return-void

    .line 123
    .end local v5    # "rtpCfg":Lorg/pjsip/pjsua/pjsua_transport_config;
    :cond_14
    sget v7, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_0

    .line 125
    :cond_15
    sget v7, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_1

    .line 141
    .restart local v1    # "i":I
    .restart local v3    # "proxies":[Lorg/pjsip/pjsua/pj_str_t;
    :cond_16
    aget-object v4, v8, v7

    .line 142
    .local v4, "proxy":Ljava/lang/String;
    const-string v10, "PjSipAccount"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Add proxy "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {v4}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v10

    aput-object v10, v3, v1

    .line 144
    add-int/lit8 v1, v1, 0x1

    .line 141
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 148
    .end local v1    # "i":I
    .end local v3    # "proxies":[Lorg/pjsip/pjsua/pj_str_t;
    .end local v4    # "proxy":Ljava/lang/String;
    :cond_17
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/pjsip/pjsua/pjsua_acc_config;->setProxy_cnt(J)V

    goto/16 :goto_3

    .line 169
    :cond_18
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/pjsip/pjsua/pjsua_acc_config;->setCred_count(J)V

    goto/16 :goto_4

    .line 172
    :cond_19
    sget v7, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_5

    .line 176
    :cond_1a
    sget v7, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_6

    .line 206
    .restart local v5    # "rtpCfg":Lorg/pjsip/pjsua/pjsua_transport_config;
    :cond_1b
    sget-object v7, Lorg/pjsip/pjsua/pjsua_stun_use;->PJSUA_STUN_USE_DEFAULT:Lorg/pjsip/pjsua/pjsua_stun_use;

    goto/16 :goto_7

    .line 207
    :cond_1c
    sget-object v7, Lorg/pjsip/pjsua/pjsua_stun_use;->PJSUA_STUN_USE_DEFAULT:Lorg/pjsip/pjsua/pjsua_stun_use;

    goto/16 :goto_8

    .line 211
    .restart local v2    # "iceCfg":Lorg/pjsip/pjsua/pjsua_ice_config;
    :cond_1d
    sget v7, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_9

    .line 213
    .end local v2    # "iceCfg":Lorg/pjsip/pjsua/pjsua_ice_config;
    :cond_1e
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    sget-object v8, Lorg/pjsip/pjsua/pjsua_ice_config_use;->PJSUA_ICE_CONFIG_USE_DEFAULT:Lorg/pjsip/pjsua/pjsua_ice_config_use;

    invoke-virtual {v7, v8}, Lorg/pjsip/pjsua/pjsua_acc_config;->setIce_cfg_use(Lorg/pjsip/pjsua/pjsua_ice_config_use;)V

    goto/16 :goto_a

    .line 218
    .restart local v6    # "turnCfg":Lorg/pjsip/pjsua/pjsua_turn_config;
    :cond_1f
    sget v7, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_b

    .line 226
    .end local v6    # "turnCfg":Lorg/pjsip/pjsua/pjsua_turn_config;
    :cond_20
    iget-object v7, p0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    sget-object v8, Lorg/pjsip/pjsua/pjsua_turn_config_use;->PJSUA_TURN_CONFIG_USE_DEFAULT:Lorg/pjsip/pjsua/pjsua_turn_config_use;

    invoke-virtual {v7, v8}, Lorg/pjsip/pjsua/pjsua_acc_config;->setTurn_cfg_use(Lorg/pjsip/pjsua/pjsua_turn_config_use;)V

    goto :goto_c
.end method


# virtual methods
.method public applyExtraParams(Landroid/content/Context;)V
    .locals 19
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 240
    const-string v14, ""

    .line 241
    .local v14, "regUri":Ljava/lang/String;
    const-string v3, ""

    .line 242
    .local v3, "argument":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipAccount;->transport:Ljava/lang/Integer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    packed-switch v16, :pswitch_data_0

    .line 257
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/pjsip/pjsua/pjsua_acc_config;->getReg_uri()Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v14

    .line 259
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/pjsip/pjsua/pjsua_acc_config;->getProxy_cnt()J

    move-result-wide v8

    .line 261
    .local v8, "initialProxyCnt":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/pjsip/pjsua/pjsua_acc_config;->getProxy()[Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v12

    .line 265
    .local v12, "proxies":[Lorg/pjsip/pjsua/pj_str_t;
    const/16 v16, 0x0

    aget-object v16, v12, v16

    invoke-static/range {v16 .. v16}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v6

    .line 266
    .local v6, "firstProxy":Ljava/lang/String;
    const-wide/16 v16, 0x0

    cmp-long v16, v8, v16

    if-eqz v16, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 267
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lorg/pjsip/pjsua/pjsua_acc_config;->setReg_uri(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v16, v0

    const-wide/16 v17, 0x0

    invoke-virtual/range {v16 .. v18}, Lorg/pjsip/pjsua/pjsua_acc_config;->setProxy_cnt(J)V

    .line 281
    .end local v6    # "firstProxy":Ljava/lang/String;
    .end local v8    # "initialProxyCnt":J
    .end local v12    # "proxies":[Lorg/pjsip/pjsua/pj_str_t;
    :cond_1
    :goto_1
    new-instance v11, Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/csipsimple/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    .line 282
    .local v11, "prefs":Lcom/csipsimple/utils/PreferencesProviderWrapper;
    const-string v16, "default_caller_id"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, "defaultCallerid":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/pjsip/pjsua/pjsua_acc_config;->getId()Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "accId":Ljava/lang/String;
    invoke-static {v2}, Lcom/csipsimple/api/SipUri;->parseSipContact(Ljava/lang/String;)Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;

    move-result-object v10

    .line 287
    .local v10, "parsedInfos":Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;
    iget-object v0, v10, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 289
    iput-object v4, v10, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v16, v0

    invoke-virtual {v10}, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lorg/pjsip/pjsua/pjsua_acc_config;->setId(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 295
    .end local v2    # "accId":Ljava/lang/String;
    .end local v10    # "parsedInfos":Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v16, v0

    invoke-virtual {v11}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getUdpKeepAliveInterval()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Lorg/pjsip/pjsua/pjsua_acc_config;->setKa_interval(J)V

    .line 298
    move-object/from16 v0, p0

    iget v0, v0, Lcom/csipsimple/pjsip/PjSipAccount;->profile_vid_auto_show:I

    move/from16 v16, v0

    if-ltz v16, :cond_8

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/csipsimple/pjsip/PjSipAccount;->profile_vid_auto_show:I

    move/from16 v16, v0

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    sget v16, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    :goto_2
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjsua_acc_config;->setVid_in_auto_show(I)V

    .line 303
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/csipsimple/pjsip/PjSipAccount;->profile_vid_auto_transmit:I

    move/from16 v16, v0

    if-ltz v16, :cond_a

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/csipsimple/pjsip/PjSipAccount;->profile_vid_auto_transmit:I

    move/from16 v16, v0

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    sget v16, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    :goto_4
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjsua_acc_config;->setVid_out_auto_transmit(I)V

    .line 311
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/pjsip/pjsua/pjsua_acc_config;->getRtp_cfg()Lorg/pjsip/pjsua/pjsua_transport_config;

    move-result-object v15

    .line 312
    .local v15, "rtpCfg":Lorg/pjsip/pjsua/pjsua_transport_config;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/csipsimple/pjsip/PjSipAccount;->profile_default_rtp_port:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 313
    invoke-virtual {v11}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getRTPPort()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Lorg/pjsip/pjsua/pjsua_transport_config;->setPort(J)V

    .line 315
    :cond_3
    const-string v16, "enable_qos"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v7

    .line 316
    .local v7, "hasQos":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/csipsimple/pjsip/PjSipAccount;->profile_enable_qos:I

    move/from16 v16, v0

    if-ltz v16, :cond_4

    .line 317
    move-object/from16 v0, p0

    iget v0, v0, Lcom/csipsimple/pjsip/PjSipAccount;->profile_enable_qos:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    const/4 v7, 0x1

    .line 319
    :cond_4
    :goto_6
    if-eqz v7, :cond_5

    .line 321
    sget-object v16, Lorg/pjsip/pjsua/pj_qos_type;->PJ_QOS_TYPE_VOICE:Lorg/pjsip/pjsua/pj_qos_type;

    invoke-virtual/range {v15 .. v16}, Lorg/pjsip/pjsua/pjsua_transport_config;->setQos_type(Lorg/pjsip/pjsua/pj_qos_type;)V

    .line 322
    invoke-virtual {v15}, Lorg/pjsip/pjsua/pjsua_transport_config;->getQos_params()Lorg/pjsip/pjsua/pj_qos_params;

    move-result-object v13

    .line 324
    .local v13, "qosParam":Lorg/pjsip/pjsua/pj_qos_params;
    invoke-virtual {v11}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getDSCPVal()I

    move-result v16

    move/from16 v0, v16

    int-to-short v5, v0

    .line 325
    .local v5, "dscpVal":S
    move-object/from16 v0, p0

    iget v0, v0, Lcom/csipsimple/pjsip/PjSipAccount;->profile_qos_dscp:I

    move/from16 v16, v0

    if-ltz v16, :cond_5

    .line 327
    move-object/from16 v0, p0

    iget v0, v0, Lcom/csipsimple/pjsip/PjSipAccount;->profile_qos_dscp:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-short v5, v0

    .line 328
    invoke-virtual {v13, v5}, Lorg/pjsip/pjsua/pj_qos_params;->setDscp_val(S)V

    .line 329
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/pjsip/pjsua/pj_qos_params;->setFlags(S)V

    .line 333
    .end local v5    # "dscpVal":S
    .end local v13    # "qosParam":Lorg/pjsip/pjsua/pj_qos_params;
    :cond_5
    return-void

    .line 244
    .end local v4    # "defaultCallerid":Ljava/lang/String;
    .end local v7    # "hasQos":Z
    .end local v11    # "prefs":Lcom/csipsimple/utils/PreferencesProviderWrapper;
    .end local v15    # "rtpCfg":Lorg/pjsip/pjsua/pjsua_transport_config;
    :pswitch_0
    const-string v3, ";transport=udp;lr"

    .line 245
    goto/16 :goto_0

    .line 247
    :pswitch_1
    const-string v3, ";transport=tcp;lr"

    .line 248
    goto/16 :goto_0

    .line 251
    :pswitch_2
    const-string v3, ";transport=tls;lr"

    .line 252
    goto/16 :goto_0

    .line 270
    .restart local v6    # "firstProxy":Ljava/lang/String;
    .restart local v8    # "initialProxyCnt":J
    .restart local v12    # "proxies":[Lorg/pjsip/pjsua/pj_str_t;
    :cond_6
    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v17

    aput-object v17, v12, v16

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lorg/pjsip/pjsua/pjsua_acc_config;->setProxy([Lorg/pjsip/pjsua/pj_str_t;)V

    goto/16 :goto_1

    .line 299
    .end local v6    # "firstProxy":Ljava/lang/String;
    .end local v8    # "initialProxyCnt":J
    .end local v12    # "proxies":[Lorg/pjsip/pjsua/pj_str_t;
    .restart local v4    # "defaultCallerid":Ljava/lang/String;
    .restart local v11    # "prefs":Lcom/csipsimple/utils/PreferencesProviderWrapper;
    :cond_7
    sget v16, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_2

    .line 301
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v16, v0

    sget v17, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    invoke-virtual/range {v16 .. v17}, Lorg/pjsip/pjsua/pjsua_acc_config;->setVid_in_auto_show(I)V

    goto/16 :goto_3

    .line 304
    :cond_9
    sget v16, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_4

    .line 306
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    move-object/from16 v16, v0

    sget v17, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    invoke-virtual/range {v16 .. v17}, Lorg/pjsip/pjsua/pjsua_acc_config;->setVid_out_auto_transmit(I)V

    goto/16 :goto_5

    .line 317
    .restart local v7    # "hasQos":Z
    .restart local v15    # "rtpCfg":Lorg/pjsip/pjsua/pjsua_transport_config;
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 242
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 345
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/csipsimple/pjsip/PjSipAccount;

    if-ne v1, v2, :cond_1

    move-object v0, p1

    .line 346
    check-cast v0, Lcom/csipsimple/pjsip/PjSipAccount;

    .line 347
    .local v0, "oAccount":Lcom/csipsimple/pjsip/PjSipAccount;
    iget-object v1, v0, Lcom/csipsimple/pjsip/PjSipAccount;->id:Ljava/lang/Long;

    iget-object v2, p0, Lcom/csipsimple/pjsip/PjSipAccount;->id:Ljava/lang/Long;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 349
    .end local v0    # "oAccount":Lcom/csipsimple/pjsip/PjSipAccount;
    :goto_0
    return v1

    .line 347
    .restart local v0    # "oAccount":Lcom/csipsimple/pjsip/PjSipAccount;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 349
    .end local v0    # "oAccount":Lcom/csipsimple/pjsip/PjSipAccount;
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipAccount;->displayName:Ljava/lang/String;

    return-object v0
.end method
