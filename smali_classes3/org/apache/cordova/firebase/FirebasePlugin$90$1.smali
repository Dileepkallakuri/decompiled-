.class Lorg/apache/cordova/firebase/FirebasePlugin$90$1;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin$90;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/installations/InstallationTokenResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/firebase/FirebasePlugin$90;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin$90;)V
    .locals 0

    .line 3459
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$90$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$90;

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
            "Lcom/google/firebase/installations/InstallationTokenResult;",
            ">;)V"
        }
    .end annotation

    .line 3462
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3464
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3465
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$90$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$90;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$90;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 3467
    :cond_1
    iget-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$90$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$90;

    iget-object p1, p1, Lorg/apache/cordova/firebase/FirebasePlugin$90;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v0, "Task failed for unknown reason"

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 3463
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$90$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$90;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$90;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/installations/InstallationTokenResult;

    invoke-virtual {p1}, Lcom/google/firebase/installations/InstallationTokenResult;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
