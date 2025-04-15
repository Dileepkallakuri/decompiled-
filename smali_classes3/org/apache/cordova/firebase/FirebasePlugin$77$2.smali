.class Lorg/apache/cordova/firebase/FirebasePlugin$77$2;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin$77;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/firebase/firestore/DocumentReference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/firebase/FirebasePlugin$77;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin$77;)V
    .locals 0

    .line 2880
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$77$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$77;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/firebase/firestore/DocumentReference;)V
    .locals 1

    .line 2883
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$77$2;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$77;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$77;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentReference;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 2880
    check-cast p1, Lcom/google/firebase/firestore/DocumentReference;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$77$2;->onSuccess(Lcom/google/firebase/firestore/DocumentReference;)V

    return-void
.end method
