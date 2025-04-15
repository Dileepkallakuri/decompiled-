.class Lorg/apache/cordova/firebase/FirebasePlugin$87$2;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin$87;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/firebase/functions/HttpsCallableResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/firebase/FirebasePlugin$87;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin$87;)V
    .locals 0

    .line 3374
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$87$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$87;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/firebase/functions/HttpsCallableResult;)V
    .locals 2

    .line 3378
    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/functions/HttpsCallableResult;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 3379
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$87$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$87;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$87;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$87$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$87;

    iget-object v1, v1, Lorg/apache/cordova/firebase/FirebasePlugin$87;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-virtual {p1}, Lcom/google/firebase/functions/HttpsCallableResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {v1, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$4300(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 3380
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/functions/HttpsCallableResult;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 3381
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$87$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$87;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$87;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$87$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$87;

    iget-object v1, v1, Lorg/apache/cordova/firebase/FirebasePlugin$87;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-virtual {p1}, Lcom/google/firebase/functions/HttpsCallableResult;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$4400(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V

    goto :goto_0

    .line 3382
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/functions/HttpsCallableResult;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 3383
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$87$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$87;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$87;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1}, Lcom/google/firebase/functions/HttpsCallableResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->success(I)V

    goto :goto_0

    .line 3384
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/functions/HttpsCallableResult;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3385
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$87$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$87;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$87;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1}, Lcom/google/firebase/functions/HttpsCallableResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 3387
    :cond_3
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$87$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$87;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$87;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1}, Lcom/google/firebase/functions/HttpsCallableResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->success([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3390
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$87$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$87;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$87;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 3374
    check-cast p1, Lcom/google/firebase/functions/HttpsCallableResult;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$87$2;->onSuccess(Lcom/google/firebase/functions/HttpsCallableResult;)V

    return-void
.end method
