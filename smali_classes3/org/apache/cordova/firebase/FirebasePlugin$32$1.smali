.class Lorg/apache/cordova/firebase/FirebasePlugin$32$1;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin$32;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/firebase/FirebasePlugin$32;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin$32;)V
    .locals 0

    .line 1231
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$32$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1231
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$32$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 1

    .line 1235
    :try_start_0
    iget-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$32$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$32;

    iget-object p1, p1, Lorg/apache/cordova/firebase/FirebasePlugin$32;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$32$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$32;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$32;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$2000(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1237
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$32$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$32;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$32;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method
