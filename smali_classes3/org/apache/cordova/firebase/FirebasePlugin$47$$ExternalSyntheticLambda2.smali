.class public final synthetic Lorg/apache/cordova/firebase/FirebasePlugin$47$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/cordova/firebase/FirebasePlugin$OnReceivePhoneAuthCredential;


# instance fields
.field public final synthetic f$0:Lorg/apache/cordova/firebase/FirebasePlugin$47;

.field public final synthetic f$1:Lorg/apache/cordova/CallbackContext;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin$47;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47$$ExternalSyntheticLambda2;->f$0:Lorg/apache/cordova/firebase/FirebasePlugin$47;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47$$ExternalSyntheticLambda2;->f$1:Lorg/apache/cordova/CallbackContext;

    return-void
.end method


# virtual methods
.method public final onCredential(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47$$ExternalSyntheticLambda2;->f$0:Lorg/apache/cordova/firebase/FirebasePlugin$47;

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47$$ExternalSyntheticLambda2;->f$1:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v1, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$47;->lambda$run$2$org-apache-cordova-firebase-FirebasePlugin$47(Lorg/apache/cordova/CallbackContext;Lcom/google/firebase/auth/PhoneAuthCredential;)V

    return-void
.end method
