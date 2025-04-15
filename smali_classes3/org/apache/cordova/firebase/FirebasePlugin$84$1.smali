.class Lorg/apache/cordova/firebase/FirebasePlugin$84$1;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin$84;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/firestore/QuerySnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/firebase/FirebasePlugin$84;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin$84;)V
    .locals 0

    .line 3146
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$84$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$84;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;)V"
        }
    .end annotation

    .line 3150
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3151
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3152
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/QuerySnapshot;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    .line 3153
    invoke-virtual {v1}, Lcom/google/firebase/firestore/QueryDocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$84$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$84;

    iget-object v3, v3, Lorg/apache/cordova/firebase/FirebasePlugin$84;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/QueryDocumentSnapshot;->getData()Ljava/util/Map;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$3900(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 3155
    :cond_0
    iget-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$84$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$84;

    iget-object p1, p1, Lorg/apache/cordova/firebase/FirebasePlugin$84;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 3157
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$84$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$84;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$84;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3160
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$84$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$84;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$84;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_1
    return-void
.end method
