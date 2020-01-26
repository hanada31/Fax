.class Lcom/csipsimple/wizards/impl/Betamax$1;
.super Ljava/util/TreeMap;
.source "Betamax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/wizards/impl/Betamax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap",
        "<",
        "Ljava/lang/String;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x452e1167d7a9a938L


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 58
    const-string v0, "FreeCall"

    new-array v1, v5, [Ljava/lang/String;

    .line 59
    const-string v2, "sip.voiparound.com"

    aput-object v2, v1, v3

    const-string v2, "stun.voiparound.com"

    aput-object v2, v1, v4

    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v0, "InternetCalls"

    new-array v1, v5, [Ljava/lang/String;

    .line 62
    const-string v2, "sip.internetcalls.com"

    aput-object v2, v1, v3

    const-string v2, "stun.internetcalls.com"

    aput-object v2, v1, v4

    .line 61
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v0, "Low Rate VoIP"

    new-array v1, v5, [Ljava/lang/String;

    .line 65
    const-string v2, "sip.lowratevoip.com"

    aput-object v2, v1, v3

    const-string v2, "stun.lowratevoip.com"

    aput-object v2, v1, v4

    .line 64
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v0, "NetAppel"

    new-array v1, v5, [Ljava/lang/String;

    .line 68
    const-string v2, "sip.netappel.fr"

    aput-object v2, v1, v3

    const-string v2, "stun.netappel.fr"

    aput-object v2, v1, v4

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "Poivy"

    new-array v1, v5, [Ljava/lang/String;

    .line 71
    const-string v2, "sip.poivy.com"

    aput-object v2, v1, v3

    const-string v2, "stun.poivy.com"

    aput-object v2, v1, v4

    .line 70
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "SIP Discount"

    new-array v1, v5, [Ljava/lang/String;

    .line 74
    const-string v2, "sip.sipdiscount.com"

    aput-object v2, v1, v3

    const-string v2, "stun.sipdiscount.com"

    aput-object v2, v1, v4

    .line 73
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v0, "SMS Discount"

    new-array v1, v5, [Ljava/lang/String;

    .line 77
    const-string v2, "sip.smsdiscount.com"

    aput-object v2, v1, v3

    const-string v2, "stun.smsdiscount.com"

    aput-object v2, v1, v4

    .line 76
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "SparVoIP"

    new-array v1, v5, [Ljava/lang/String;

    .line 80
    const-string v2, "sip.sparvoip.com"

    aput-object v2, v1, v3

    const-string v2, "stun.sparvoip.com"

    aput-object v2, v1, v4

    .line 79
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v0, "VoIP Buster"

    new-array v1, v5, [Ljava/lang/String;

    .line 83
    const-string v2, "sip.voipbuster.com"

    aput-object v2, v1, v3

    const-string v2, "stun.voipbuster.com"

    aput-object v2, v1, v4

    .line 82
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, "VoIP Buster Pro"

    new-array v1, v5, [Ljava/lang/String;

    .line 86
    const-string v2, "sip.voipbusterpro.com"

    aput-object v2, v1, v3

    const-string v2, "stun.voipbusterpro.com"

    aput-object v2, v1, v4

    .line 85
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "VoIP Cheap"

    new-array v1, v5, [Ljava/lang/String;

    .line 89
    const-string v2, "sip.voipcheap.com"

    aput-object v2, v1, v3

    const-string v2, "stun.voipcheap.com"

    aput-object v2, v1, v4

    .line 88
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v0, "VoIP Discount"

    new-array v1, v5, [Ljava/lang/String;

    .line 92
    const-string v2, "sip.voipdiscount.com"

    aput-object v2, v1, v3

    const-string v2, "stun.voipdiscount.com"

    aput-object v2, v1, v4

    .line 91
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v0, "12VoIP"

    new-array v1, v5, [Ljava/lang/String;

    .line 95
    const-string v2, "sip.12voip.com"

    aput-object v2, v1, v3

    const-string v2, "stun.12voip.com"

    aput-object v2, v1, v4

    .line 94
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v0, "VoIP Stunt"

    new-array v1, v5, [Ljava/lang/String;

    .line 98
    const-string v2, "sip.voipstunt.com"

    aput-object v2, v1, v3

    const-string v2, "stun.voipstunt.com"

    aput-object v2, v1, v4

    .line 97
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "WebCall Direct"

    new-array v1, v5, [Ljava/lang/String;

    .line 101
    const-string v2, "sip.webcalldirect.com"

    aput-object v2, v1, v3

    const-string v2, "stun.webcalldirect.com"

    aput-object v2, v1, v4

    .line 100
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v0, "Just VoIP"

    new-array v1, v5, [Ljava/lang/String;

    .line 104
    const-string v2, "sip.justvoip.com"

    aput-object v2, v1, v3

    const-string v2, "stun.justvoip.com"

    aput-object v2, v1, v4

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v0, "Nonoh"

    new-array v1, v5, [Ljava/lang/String;

    .line 107
    const-string v2, "sip.nonoh.net"

    aput-object v2, v1, v3

    const-string v2, "stun.nonoh.net"

    aput-object v2, v1, v4

    .line 106
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "VoIPWise"

    new-array v1, v5, [Ljava/lang/String;

    .line 110
    const-string v2, "sip.voipwise.com"

    aput-object v2, v1, v3

    const-string v2, "stun.voipwise.com"

    aput-object v2, v1, v4

    .line 109
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v0, "VoIPRaider"

    new-array v1, v5, [Ljava/lang/String;

    .line 113
    const-string v2, "sip.voipraider.com"

    aput-object v2, v1, v3

    const-string v2, "stun.voipraider.com"

    aput-object v2, v1, v4

    .line 112
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "BudgetSIP"

    new-array v1, v5, [Ljava/lang/String;

    .line 116
    const-string v2, "sip.budgetsip.com"

    aput-object v2, v1, v3

    const-string v2, "stun.budgetsip.com"

    aput-object v2, v1, v4

    .line 115
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v0, "InterVoIP"

    new-array v1, v5, [Ljava/lang/String;

    .line 119
    const-string v2, "sip.intervoip.com"

    aput-object v2, v1, v3

    const-string v2, "stun.intervoip.com"

    aput-object v2, v1, v4

    .line 118
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v0, "VoIPHit"

    new-array v1, v5, [Ljava/lang/String;

    .line 122
    const-string v2, "sip.voiphit.com"

    aput-object v2, v1, v3

    const-string v2, "stun.voiphit.com"

    aput-object v2, v1, v4

    .line 121
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v0, "SmartVoIP"

    new-array v1, v5, [Ljava/lang/String;

    .line 125
    const-string v2, "sip.smartvoip.com"

    aput-object v2, v1, v3

    const-string v2, "stun.smartvoip.com"

    aput-object v2, v1, v4

    .line 124
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v0, "ActionVoIP"

    new-array v1, v5, [Ljava/lang/String;

    .line 128
    const-string v2, "sip.actionvoip.com"

    aput-object v2, v1, v3

    const-string v2, "stun.actionvoip.com"

    aput-object v2, v1, v4

    .line 127
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v0, "Jumblo"

    new-array v1, v5, [Ljava/lang/String;

    .line 131
    const-string v2, "sip.jumblo.com"

    aput-object v2, v1, v3

    const-string v2, "stun.jumblo.com"

    aput-object v2, v1, v4

    .line 130
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v0, "Rynga"

    new-array v1, v5, [Ljava/lang/String;

    .line 134
    const-string v2, "sip.rynga.com"

    aput-object v2, v1, v3

    const-string v2, "stun.rynga.com"

    aput-object v2, v1, v4

    .line 133
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v0, "PowerVoIP"

    new-array v1, v5, [Ljava/lang/String;

    .line 137
    const-string v2, "sip.powervoip.com"

    aput-object v2, v1, v3

    const-string v2, "stun.powervoip.com"

    aput-object v2, v1, v4

    .line 136
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v0, "Voice Trading"

    new-array v1, v5, [Ljava/lang/String;

    .line 140
    const-string v2, "sip.voicetrading.com"

    aput-object v2, v1, v3

    const-string v2, "stun.voicetrading.com"

    aput-object v2, v1, v4

    .line 139
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v0, "EasyVoip"

    new-array v1, v5, [Ljava/lang/String;

    .line 143
    const-string v2, "sip.easyvoip.com"

    aput-object v2, v1, v3

    const-string v2, "stun.easyvoip.com"

    aput-object v2, v1, v4

    .line 142
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v0, "VoipBlast"

    new-array v1, v5, [Ljava/lang/String;

    .line 146
    const-string v2, "sip.voipblast.com"

    aput-object v2, v1, v3

    const-string v2, "stun.voipblast.com"

    aput-object v2, v1, v4

    .line 145
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v0, "FreeVoipDeal"

    new-array v1, v5, [Ljava/lang/String;

    .line 149
    const-string v2, "sip.freevoipdeal.com"

    aput-object v2, v1, v3

    const-string v2, "stun.freevoipdeal.com"

    aput-object v2, v1, v4

    .line 148
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v0, "VoipAlot"

    new-array v1, v5, [Ljava/lang/String;

    .line 152
    const-string v2, "sip.voipalot.com"

    aput-object v2, v1, v3

    const-string v2, ""

    aput-object v2, v1, v4

    .line 151
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v0, "CosmoVoip"

    new-array v1, v5, [Ljava/lang/String;

    .line 155
    const-string v2, "sip.cosmovoip.com"

    aput-object v2, v1, v3

    const-string v2, "stun.cosmovoip.com"

    aput-object v2, v1, v4

    .line 154
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v0, "BudgetVoipCall"

    new-array v1, v5, [Ljava/lang/String;

    .line 158
    const-string v2, "sip.budgetvoipcall.com"

    aput-object v2, v1, v3

    const-string v2, "stun.budgetvoipcall.com"

    aput-object v2, v1, v4

    .line 157
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v0, "CheapBuzzer"

    new-array v1, v5, [Ljava/lang/String;

    .line 161
    const-string v2, "sip.cheapbuzzer.com"

    aput-object v2, v1, v3

    const-string v2, "stun.cheapbuzzer.com"

    aput-object v2, v1, v4

    .line 160
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v0, "CallPirates"

    new-array v1, v5, [Ljava/lang/String;

    .line 164
    const-string v2, "sip.callpirates.com"

    aput-object v2, v1, v3

    const-string v2, "stun.callpirates.com"

    aput-object v2, v1, v4

    .line 163
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v0, "CheapVoipCall"

    new-array v1, v5, [Ljava/lang/String;

    .line 167
    const-string v2, "sip.cheapvoipcall.com"

    aput-object v2, v1, v3

    const-string v2, "stun.cheapvoipcall.com"

    aput-object v2, v1, v4

    .line 166
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v0, "DialCheap"

    new-array v1, v5, [Ljava/lang/String;

    .line 170
    const-string v2, "sip.dialcheap.com"

    aput-object v2, v1, v3

    const-string v2, "stun.dialcheap.com"

    aput-object v2, v1, v4

    .line 169
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v0, "DiscountCalling"

    new-array v1, v5, [Ljava/lang/String;

    .line 173
    const-string v2, "sip.discountcalling.com"

    aput-object v2, v1, v3

    const-string v2, "stun.discountcalling.com"

    aput-object v2, v1, v4

    .line 172
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v0, "Frynga"

    new-array v1, v5, [Ljava/lang/String;

    .line 176
    const-string v2, "sip.frynga.com"

    aput-object v2, v1, v3

    const-string v2, "stun.frynga.com"

    aput-object v2, v1, v4

    .line 175
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v0, "GlobalFreeCall"

    new-array v1, v5, [Ljava/lang/String;

    .line 179
    const-string v2, "sip.globalfreecall.com"

    aput-object v2, v1, v3

    const-string v2, "stun.globalfreecall.com"

    aput-object v2, v1, v4

    .line 178
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v0, "HotVoip"

    new-array v1, v5, [Ljava/lang/String;

    .line 182
    const-string v2, "sip.hotvoip.com"

    aput-object v2, v1, v3

    const-string v2, "stun.hotvoip.com"

    aput-object v2, v1, v4

    .line 181
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v0, "MEGAvoip"

    new-array v1, v5, [Ljava/lang/String;

    .line 185
    const-string v2, "sip.megavoip.com"

    aput-object v2, v1, v3

    const-string v2, "stun.megavoip.com"

    aput-object v2, v1, v4

    .line 184
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v0, "PennyConnect"

    new-array v1, v5, [Ljava/lang/String;

    .line 188
    const-string v2, "sip.pennyconnect.com"

    aput-object v2, v1, v3

    const-string v2, "stun.pennyconnect.com"

    aput-object v2, v1, v4

    .line 187
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v0, "Rebvoice"

    new-array v1, v5, [Ljava/lang/String;

    .line 191
    const-string v2, "sip.rebvoice.com"

    aput-object v2, v1, v3

    const-string v2, "stun.rebvoice.com"

    aput-object v2, v1, v4

    .line 190
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v0, "StuntCalls"

    new-array v1, v5, [Ljava/lang/String;

    .line 194
    const-string v2, "sip.stuntcalls.com"

    aput-object v2, v1, v3

    const-string v2, "stun.stuntcalls.com"

    aput-object v2, v1, v4

    .line 193
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v0, "VoipBlazer"

    new-array v1, v5, [Ljava/lang/String;

    .line 197
    const-string v2, "sip.voipblazer.com"

    aput-object v2, v1, v3

    const-string v2, "stun.voipblazer.com"

    aput-object v2, v1, v4

    .line 196
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v0, "VoipCaptain"

    new-array v1, v5, [Ljava/lang/String;

    .line 200
    const-string v2, "sip.voipcaptain.com"

    aput-object v2, v1, v3

    const-string v2, "stun.voipcaptain.com"

    aput-object v2, v1, v4

    .line 199
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v0, "VoipChief"

    new-array v1, v5, [Ljava/lang/String;

    .line 203
    const-string v2, "sip.voipchief.com"

    aput-object v2, v1, v3

    const-string v2, "stun.voipchief.com"

    aput-object v2, v1, v4

    .line 202
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v0, "VoipJumper"

    new-array v1, v5, [Ljava/lang/String;

    .line 206
    const-string v2, "sip.voipjumper.com"

    aput-object v2, v1, v3

    const-string v2, "stun.voipjumper.com"

    aput-object v2, v1, v4

    .line 205
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v0, "VoipMove"

    new-array v1, v5, [Ljava/lang/String;

    .line 209
    const-string v2, "sip.voipmove.com"

    aput-object v2, v1, v3

    const-string v2, "stun.voipmove.com"

    aput-object v2, v1, v4

    .line 208
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v0, "VoipSmash"

    new-array v1, v5, [Ljava/lang/String;

    .line 212
    const-string v2, "sip.voipsmash.com"

    aput-object v2, v1, v3

    const-string v2, "stun.voipsmash.com"

    aput-object v2, v1, v4

    .line 211
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v0, "VoipGain"

    new-array v1, v5, [Ljava/lang/String;

    .line 215
    const-string v2, "sip.voipgain.com"

    aput-object v2, v1, v3

    const-string v2, "stun.voipgain.com"

    aput-object v2, v1, v4

    .line 214
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v0, "VoipZoom"

    new-array v1, v5, [Ljava/lang/String;

    .line 218
    const-string v2, "sip.voipzoom.com"

    aput-object v2, v1, v3

    const-string v2, "stun.voipzoom.com"

    aput-object v2, v1, v4

    .line 217
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v0, "Telbo"

    new-array v1, v5, [Ljava/lang/String;

    .line 221
    const-string v2, "sip.telbo.com"

    aput-object v2, v1, v3

    const-string v2, "stun.telbo.com"

    aput-object v2, v1, v4

    .line 220
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v0, "Llevoip"

    new-array v1, v5, [Ljava/lang/String;

    .line 224
    const-string v2, "77.72.174.129"

    aput-object v2, v1, v3

    const-string v2, "77.72.174.160"

    aput-object v2, v1, v4

    .line 223
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v0, "Llevoip (server 2)"

    new-array v1, v5, [Ljava/lang/String;

    .line 227
    const-string v2, "77.72.174.130:6000"

    aput-object v2, v1, v3

    const-string v2, "77.72.174.162"

    aput-object v2, v1, v4

    .line 226
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Betamax$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    return-void
.end method
