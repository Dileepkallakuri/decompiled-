.class public Lmobi/monaca/plugin/MonacaPlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "MonacaPlugin.java"


# static fields
.field private static final DEVICE_ID_HASH_ALGORITH:Ljava/lang/String; = "SHA-1"

.field private static final MONACA_CONFIG_PREFIX:Ljava/lang/String; = "monaca:"

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "MonacaNativePlugin"

.field private static final TAG_PREFERENCE:Ljava/lang/String; = "preference"


# instance fields
.field private mBackendApiKey:Ljava/lang/String;

.field private mBackendId:Ljava/lang/String;

.field private mBackendUrl:Ljava/lang/String;

.field private mDisableCookie:Z

.field private mParsed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lmobi/monaca/plugin/MonacaPlugin;->mParsed:Z

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lmobi/monaca/plugin/MonacaPlugin;->mDisableCookie:Z

    return-void
.end method

.method private add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 78
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private buildResultJson()Lorg/json/JSONObject;
    .locals 3

    .line 52
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, v1}, Lmobi/monaca/plugin/MonacaPlugin;->parseConfigXml(Z)V

    .line 55
    iget-object v1, p0, Lmobi/monaca/plugin/MonacaPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1}, Lmobi/monaca/plugin/MonacaPlugin;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-direct {p0, v0, v2, v1}, Lmobi/monaca/plugin/MonacaPlugin;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "backendId"

    .line 56
    iget-object v2, p0, Lmobi/monaca/plugin/MonacaPlugin;->mBackendId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lmobi/monaca/plugin/MonacaPlugin;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "apiKey"

    .line 57
    iget-object v2, p0, Lmobi/monaca/plugin/MonacaPlugin;->mBackendApiKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lmobi/monaca/plugin/MonacaPlugin;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "url"

    .line 58
    iget-object v2, p0, Lmobi/monaca/plugin/MonacaPlugin;->mBackendUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lmobi/monaca/plugin/MonacaPlugin;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lmobi/monaca/plugin/MonacaPlugin;->isMonacaDebugger()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "isMonacaDebugger"

    const-string v2, "1"

    .line 60
    invoke-direct {p0, v0, v1, v2}, Lmobi/monaca/plugin/MonacaPlugin;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 163
    invoke-static {p0}, Lmobi/monaca/plugin/MonacaPlugin;->getIDUsingUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :try_start_0
    const-string p0, "SHA-1"

    .line 166
    invoke-static {v0, p0}, Lmobi/monaca/plugin/MonacaPlugin;->toHashedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 168
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIDUsingUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "MonacaNativePlugin"

    const/4 v1, 0x0

    .line 174
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "uuid"

    .line 175
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-object v0
.end method

.method private isMonacaDebugger()Z
    .locals 1

    :try_start_0
    const-string v0, "mobi.monaca.plugins.debugger.MonacaDebuggerPlugin"

    .line 69
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private static toHashedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 184
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v3, p0, v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 189
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v4, v1

    const-string v3, "%02x"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "getRuntimeConfiguration"

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-direct {p0}, Lmobi/monaca/plugin/MonacaPlugin;->buildResultJson()Lorg/json/JSONObject;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-nez p2, :cond_0

    const-string p1, "cannot get any values."

    .line 42
    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 48
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/CordovaPlugin;->execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)Z

    move-result p1

    return p1
.end method

.method protected getConfigXml()Lorg/xmlpull/v1/XmlPullParser;
    .locals 4

    .line 146
    iget-object v0, p0, Lmobi/monaca/plugin/MonacaPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lmobi/monaca/plugin/MonacaPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "config"

    const-string v3, "xml"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 150
    iget-object v1, p0, Lmobi/monaca/plugin/MonacaPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public parseConfigXml(Z)V
    .locals 7

    if-nez p1, :cond_0

    .line 94
    iget-boolean p1, p0, Lmobi/monaca/plugin/MonacaPlugin;->mParsed:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lmobi/monaca/plugin/MonacaPlugin;->mParsed:Z

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lmobi/monaca/plugin/MonacaPlugin;->mBackendId:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lmobi/monaca/plugin/MonacaPlugin;->mBackendApiKey:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lmobi/monaca/plugin/MonacaPlugin;->mBackendUrl:Ljava/lang/String;

    .line 102
    iput-boolean p1, p0, Lmobi/monaca/plugin/MonacaPlugin;->mDisableCookie:Z

    .line 103
    invoke-virtual {p0}, Lmobi/monaca/plugin/MonacaPlugin;->getConfigXml()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v2, -0x1

    :goto_0
    if-eq v2, p1, :cond_4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 110
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    const-string v5, "preference"

    .line 113
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "name"

    .line 114
    invoke-interface {v4, v0, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "value"

    .line 115
    invoke-interface {v4, v0, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "monaca:"

    .line 117
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, ""

    .line 118
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "MonacaBackendId"

    .line 119
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 120
    iput-object v4, p0, Lmobi/monaca/plugin/MonacaPlugin;->mBackendId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v5, "MonacaBackendApiKey"

    .line 121
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 122
    iput-object v4, p0, Lmobi/monaca/plugin/MonacaPlugin;->mBackendApiKey:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v5, "MonacaBackendUrl"

    .line 123
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 124
    iput-object v4, p0, Lmobi/monaca/plugin/MonacaPlugin;->mBackendUrl:Ljava/lang/String;

    .line 132
    :cond_3
    :goto_1
    :try_start_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 136
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 134
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    :cond_4
    return-void
.end method
