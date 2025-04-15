.class Lorg/apache/cordova/firebase/FirebasePlugin$82$2;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin$82;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/firestore/DocumentSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/firebase/FirebasePlugin$82;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin$82;)V
    .locals 0

    .line 3048
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$82$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$82;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            ">;)V"
        }
    .end annotation

    .line 3052
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3053
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    if-eqz p1, :cond_0

    .line 3054
    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3055
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$82$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$82;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$82;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getData()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$3900(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3056
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$82$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$82;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$82;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 3058
    :cond_0
    iget-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$82$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$82;

    iget-object p1, p1, Lorg/apache/cordova/firebase/FirebasePlugin$82;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v0, "No document found in collection"

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 3061
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3063
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$82$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$82;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$82;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3067
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$82$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$82;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$82;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :cond_2
    :goto_0
    return-void
.end method
