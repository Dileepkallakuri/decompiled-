.class Lorg/apache/cordova/firebase/FirebasePlugin$62;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->getProviderData(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 2426
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$62;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$62;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2429
    :try_start_0
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    .line 2430
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$62;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$62;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v1, v2}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1900(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2432
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getProviderData()Ljava/util/List;

    move-result-object v0

    .line 2433
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2434
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/auth/UserInfo;

    .line 2435
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "providerId"

    .line 2436
    invoke-interface {v2}, Lcom/google/firebase/auth/UserInfo;->getProviderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "uid"

    .line 2437
    invoke-interface {v2}, Lcom/google/firebase/auth/UserInfo;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "displayName"

    .line 2438
    invoke-interface {v2}, Lcom/google/firebase/auth/UserInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "email"

    .line 2439
    invoke-interface {v2}, Lcom/google/firebase/auth/UserInfo;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "phoneNumber"

    .line 2440
    invoke-interface {v2}, Lcom/google/firebase/auth/UserInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "photoUrl"

    .line 2441
    invoke-interface {v2}, Lcom/google/firebase/auth/UserInfo;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2442
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 2444
    :cond_1
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$62;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v3, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v2, v3, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2446
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$62;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_1
    return-void
.end method
