.class public final synthetic Lorg/apache/cordova/firebase/FirebasePlugin$47$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lorg/apache/cordova/firebase/FirebasePlugin$47;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin$47;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47$$ExternalSyntheticLambda1;->f$0:Lorg/apache/cordova/firebase/FirebasePlugin$47;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47$$ExternalSyntheticLambda1;->f$0:Lorg/apache/cordova/firebase/FirebasePlugin$47;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$47;->lambda$run$0$org-apache-cordova-firebase-FirebasePlugin$47(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
