.class public final synthetic Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lorg/apache/cordova/firebase/FirebasePlugin$46;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Z

.field public final synthetic f$5:Lorg/apache/cordova/CallbackContext;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin$46;Ljava/lang/String;Ljava/lang/String;IZLorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda1;->f$0:Lorg/apache/cordova/firebase/FirebasePlugin$46;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput p4, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda1;->f$3:I

    iput-boolean p5, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda1;->f$4:Z

    iput-object p6, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda1;->f$5:Lorg/apache/cordova/CallbackContext;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 7

    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda1;->f$0:Lorg/apache/cordova/firebase/FirebasePlugin$46;

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget v3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda1;->f$3:I

    iget-boolean v4, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda1;->f$4:Z

    iget-object v5, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda1;->f$5:Lorg/apache/cordova/CallbackContext;

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/cordova/firebase/FirebasePlugin$46;->lambda$run$2$org-apache-cordova-firebase-FirebasePlugin$46(Ljava/lang/String;Ljava/lang/String;IZLorg/apache/cordova/CallbackContext;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
