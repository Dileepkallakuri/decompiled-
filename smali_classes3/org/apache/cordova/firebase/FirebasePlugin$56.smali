.class Lorg/apache/cordova/firebase/FirebasePlugin$56;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->authenticateUserWithMicrosoft(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

.field final synthetic val$args:Lorg/json/JSONArray;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 2289
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$56;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$56;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$56;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2292
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$56;->val$args:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "microsoft.com"

    .line 2293
    invoke-static {v1}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, "locale"

    .line 2295
    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->addCustomParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    const-string v0, "prompt"

    const-string v2, "consent"

    .line 2296
    invoke-virtual {v1, v0, v2}, Lcom/google/firebase/auth/OAuthProvider$Builder;->addCustomParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    .line 2298
    :cond_0
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getPendingAuthResult()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2300
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$56;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v2, "Auth result is already pending"

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 2301
    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnSuccessListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnSuccessListener;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$1;)V

    .line 2302
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnFailureListener;

    invoke-direct {v1, v2}, Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnFailureListener;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$1;)V

    .line 2303
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 2305
    :cond_1
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-virtual {v1}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$3500(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/firebase/auth/OAuthProvider;)Ljava/lang/String;

    move-result-object v0

    .line 2306
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "instantVerification"

    const/4 v3, 0x1

    .line 2307
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "id"

    .line 2308
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2309
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$56;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v3, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v2, v3, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2312
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$56;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method
