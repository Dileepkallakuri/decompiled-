.class Lorg/apache/cordova/firebase/FirebasePlugin$81$2;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin$81;->run()V
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
.field final synthetic this$1:Lorg/apache/cordova/firebase/FirebasePlugin$81;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin$81;)V
    .locals 0

    .line 3008
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$81$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$81;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            ">;)V"
        }
    .end annotation

    .line 3012
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3013
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    .line 3014
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$81$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$81;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$81;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$81$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$81;

    iget-object v1, v1, Lorg/apache/cordova/firebase/FirebasePlugin$81;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getData()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v1, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1100(Lorg/apache/cordova/firebase/FirebasePlugin;Z)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->success(I)V

    goto :goto_1

    .line 3016
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3018
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$81$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$81;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$81;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3022
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$81$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$81;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$81;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :cond_2
    :goto_1
    return-void
.end method
