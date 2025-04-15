.class Lorg/apache/cordova/firebase/FirebasePlugin$79$2;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin$79;->run()V
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
.field final synthetic this$1:Lorg/apache/cordova/firebase/FirebasePlugin$79;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin$79;)V
    .locals 0

    .line 2952
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$79$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$79;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 2952
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$79$2;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 0

    .line 2955
    iget-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$79$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$79;

    iget-object p1, p1, Lorg/apache/cordova/firebase/FirebasePlugin$79;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void
.end method
