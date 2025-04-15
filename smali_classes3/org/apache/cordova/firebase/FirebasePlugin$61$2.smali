.class Lorg/apache/cordova/firebase/FirebasePlugin$61$2;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin$61;->run()V
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
.field final synthetic this$1:Lorg/apache/cordova/firebase/FirebasePlugin$61;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin$61;)V
    .locals 0

    .line 2401
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$61$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$61;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/firebase/auth/GetTokenResult;)V
    .locals 3

    .line 2405
    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/auth/GetTokenResult;->getClaims()Ljava/util/Map;

    move-result-object p1

    .line 2406
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 2407
    iget-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$61$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$61;

    iget-object p1, p1, Lorg/apache/cordova/firebase/FirebasePlugin$61;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v1, v2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2409
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$61$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$61;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$61;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 2401
    check-cast p1, Lcom/google/firebase/auth/GetTokenResult;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$61$2;->onSuccess(Lcom/google/firebase/auth/GetTokenResult;)V

    return-void
.end method
