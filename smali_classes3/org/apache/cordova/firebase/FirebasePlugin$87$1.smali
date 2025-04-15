.class Lorg/apache/cordova/firebase/FirebasePlugin$87$1;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin$87;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/firebase/FirebasePlugin$87;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin$87;)V
    .locals 0

    .line 3394
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$87$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$87;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(Lcom/google/firebase/functions/FirebaseFunctionsException;)V
    .locals 2

    .line 3405
    invoke-virtual {p1}, Lcom/google/firebase/functions/FirebaseFunctionsException;->getDetails()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3406
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$87$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$87;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$87;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 3409
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/functions/FirebaseFunctionsException;->getDetails()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3410
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$87$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$87;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$87;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1}, Lcom/google/firebase/functions/FirebaseFunctionsException;->getDetails()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 3413
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$87$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$87;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$87;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$87$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$87;

    iget-object v1, v1, Lorg/apache/cordova/firebase/FirebasePlugin$87;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-virtual {p1}, Lcom/google/firebase/functions/FirebaseFunctionsException;->getDetails()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {v1, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$4300(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3415
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$87$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$87;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$87;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 3397
    instance-of v0, p1, Lcom/google/firebase/functions/FirebaseFunctionsException;

    if-eqz v0, :cond_0

    .line 3398
    check-cast p1, Lcom/google/firebase/functions/FirebaseFunctionsException;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$87$1;->onFailure(Lcom/google/firebase/functions/FirebaseFunctionsException;)V

    return-void

    .line 3401
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$87$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$87;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$87;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method
