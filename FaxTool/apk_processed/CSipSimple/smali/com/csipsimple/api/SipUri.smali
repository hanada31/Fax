.class public final Lcom/csipsimple/api/SipUri;
.super Ljava/lang/Object;
.source "SipUri.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;,
        Lcom/csipsimple/api/SipUri$ParsedSipUriInfos;
    }
.end annotation


# static fields
.field private static final DIGIT_NBR_RULE:Ljava/lang/String; = "^[0-9\\-#\\+\\*\\(\\)]+$"

.field private static final SIP_CONTACT_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

.field private static final SIP_CONTACT_PATTERN:Ljava/util/regex/Pattern;

.field private static final SIP_HOST_PATTERN:Ljava/util/regex/Pattern;

.field private static final SIP_SCHEME_RULE:Ljava/lang/String; = "sip(?:s)?|tel"

.field private static final SIP_URI_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "^([^@:]+)@([^@]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 45
    sput-object v0, Lcom/csipsimple/api/SipUri;->SIP_CONTACT_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 48
    const-string v0, "^(?:\")?([^<\"]*)(?:\")?[ ]*(?:<)?(sip(?:s)?|tel):([^@]+)@([^>]+)(?:>)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 47
    sput-object v0, Lcom/csipsimple/api/SipUri;->SIP_CONTACT_PATTERN:Ljava/util/regex/Pattern;

    .line 50
    const-string v0, "^(?:\")?([^<\"]*)(?:\")?[ ]*(?:<)?(sip(?:s)?|tel):([^@>]+)(?:>)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 49
    sput-object v0, Lcom/csipsimple/api/SipUri;->SIP_HOST_PATTERN:Ljava/util/regex/Pattern;

    .line 292
    const-string v0, "^(sip(?:s)?):(?:[^:]*(?::[^@]*)?@)?([^:@]*)(?::([0-9]*))?$"

    const/4 v1, 0x2

    .line 291
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/csipsimple/api/SipUri;->SIP_URI_PATTERN:Ljava/util/regex/Pattern;

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static encodeUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "user"    # Ljava/lang/String;

    .prologue
    .line 330
    const-string v0, "&=+$,;?/-_.!~*\'()"

    invoke-static {p0, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static forgeSipUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCanonicalSipContact(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "sipContact"    # Ljava/lang/String;

    .prologue
    .line 218
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/csipsimple/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCanonicalSipContact(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "sipContact"    # Ljava/lang/String;
    .param p1, "includeScheme"    # Z

    .prologue
    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 234
    sget-object v4, Lcom/csipsimple/api/SipUri;->SIP_CONTACT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 235
    .local v2, "m":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 236
    .local v0, "hasUsername":Z
    const/4 v1, 0x0

    .line 238
    .local v1, "isHost":Z
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 239
    const/4 v0, 0x1

    .line 245
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 246
    if-nez p1, :cond_0

    if-eqz v1, :cond_1

    .line 247
    :cond_0
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_1
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    if-eqz v0, :cond_2

    .line 252
    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .end local v0    # "hasUsername":Z
    .end local v1    # "isHost":Z
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 241
    .restart local v0    # "hasUsername":Z
    .restart local v1    # "isHost":Z
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    :cond_3
    sget-object v4, Lcom/csipsimple/api/SipUri;->SIP_HOST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 242
    const/4 v1, 0x1

    goto :goto_0

    .line 256
    :cond_4
    sget-object v4, Lcom/csipsimple/api/SipUri;->SIP_CONTACT_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 257
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 258
    if-eqz p1, :cond_5

    .line 259
    const-string v4, "sip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_5
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 263
    :cond_6
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static getDisplayedSimpleContact(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Ljava/lang/CharSequence;

    .prologue
    .line 164
    if-eqz p0, :cond_2

    .line 165
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "remoteContact":Ljava/lang/String;
    invoke-static {v1}, Lcom/csipsimple/api/SipUri;->parseSipContact(Ljava/lang/String;)Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;

    move-result-object v0

    .line 168
    .local v0, "parsedInfos":Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;
    iget-object v2, v0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 170
    iget-object v1, v0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    .line 177
    .end local v0    # "parsedInfos":Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;
    .end local v1    # "remoteContact":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 171
    .restart local v0    # "parsedInfos":Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;
    .restart local v1    # "remoteContact":Ljava/lang/String;
    :cond_1
    iget-object v2, v0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    iget-object v1, v0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    goto :goto_0

    .line 177
    .end local v0    # "parsedInfos":Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;
    .end local v1    # "remoteContact":Ljava/lang/String;
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method public static getPhoneNumber(Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;)Ljava/lang/String;
    .locals 2
    .param p0, "uriInfos"    # Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;

    .prologue
    const/4 v0, 0x0

    .line 197
    if-nez p0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-object v0

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    invoke-static {v1}, Lcom/csipsimple/api/SipUri;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    iget-object v0, p0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    goto :goto_0

    .line 202
    :cond_2
    iget-object v1, p0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    invoke-static {v1}, Lcom/csipsimple/api/SipUri;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isPhoneNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "phone"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^[0-9\\-#\\+\\*\\(\\)]+$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseSipContact(Ljava/lang/String;)Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;
    .locals 6
    .param p0, "sipUri"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 123
    new-instance v1, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;

    invoke-direct {v1}, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;-><init>()V

    .line 125
    .local v1, "parsedInfos":Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    sget-object v2, Lcom/csipsimple/api/SipUri;->SIP_CONTACT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 127
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    .line 129
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    .line 130
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->scheme:Ljava/lang/String;

    .line 152
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    return-object v1

    .line 134
    .restart local v0    # "m":Ljava/util/regex/Matcher;
    :cond_1
    sget-object v2, Lcom/csipsimple/api/SipUri;->SIP_HOST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    .line 137
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    .line 138
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->scheme:Ljava/lang/String;

    goto :goto_0

    .line 140
    :cond_2
    sget-object v2, Lcom/csipsimple/api/SipUri;->SIP_CONTACT_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    .line 143
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    goto :goto_0

    .line 146
    :cond_3
    iput-object p0, v1, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static parseSipUri(Ljava/lang/String;)Lcom/csipsimple/api/SipUri$ParsedSipUriInfos;
    .locals 4
    .param p0, "sipUri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    .line 301
    new-instance v1, Lcom/csipsimple/api/SipUri$ParsedSipUriInfos;

    invoke-direct {v1}, Lcom/csipsimple/api/SipUri$ParsedSipUriInfos;-><init>()V

    .line 303
    .local v1, "parsedInfos":Lcom/csipsimple/api/SipUri$ParsedSipUriInfos;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 304
    sget-object v2, Lcom/csipsimple/api/SipUri;->SIP_URI_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 305
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/api/SipUri$ParsedSipUriInfos;->scheme:Ljava/lang/String;

    .line 307
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/api/SipUri$ParsedSipUriInfos;->domain:Ljava/lang/String;

    .line 308
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 310
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/csipsimple/api/SipUri$ParsedSipUriInfos;->port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    return-object v1

    .line 311
    .restart local v0    # "m":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
