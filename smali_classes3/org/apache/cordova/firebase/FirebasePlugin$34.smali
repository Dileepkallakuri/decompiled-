.class Lorg/apache/cordova/firebase/FirebasePlugin$34;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->extractAndReturnUserInfo(Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/firebase/auth/GetTokenResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$returnResults:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 1279
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$34;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$34;->val$returnResults:Lorg/json/JSONObject;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$34;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/firebase/auth/GetTokenResult;)V
    .locals 3

    .line 1283
    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/auth/GetTokenResult;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 1284
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$34;->val$returnResults:Lorg/json/JSONObject;

    const-string v2, "idToken"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1285
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$34;->val$returnResults:Lorg/json/JSONObject;

    const-string v1, "providerId"

    invoke-virtual {p1}, Lcom/google/firebase/auth/GetTokenResult;->getSignInProvider()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1286
    iget-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$34;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$34;->val$returnResults:Lorg/json/JSONObject;

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1288
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$34;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1279
    check-cast p1, Lcom/google/firebase/auth/GetTokenResult;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$34;->onSuccess(Lcom/google/firebase/auth/GetTokenResult;)V

    return-void
.end method
