.class public final synthetic Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/cordova/firebase/FirebasePlugin$OnReceivePhoneAuthCredential;


# instance fields
.field public final synthetic f$0:Lorg/apache/cordova/firebase/FirebasePlugin$46;

.field public final synthetic f$1:Lcom/google/firebase/auth/FirebaseUser;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lorg/apache/cordova/CallbackContext;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin$46;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda0;->f$0:Lorg/apache/cordova/firebase/FirebasePlugin$46;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/auth/FirebaseUser;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda0;->f$3:Lorg/apache/cordova/CallbackContext;

    return-void
.end method


# virtual methods
.method public final onCredential(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda0;->f$0:Lorg/apache/cordova/firebase/FirebasePlugin$46;

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/auth/FirebaseUser;

    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda0;->f$3:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$46;->lambda$run$1$org-apache-cordova-firebase-FirebasePlugin$46(Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;Lcom/google/firebase/auth/PhoneAuthCredential;)V

    return-void
.end method
