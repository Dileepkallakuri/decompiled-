.class public final synthetic Lorg/apache/cordova/firebase/FirebasePlugin$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lorg/apache/cordova/CallbackContext;

.field public final synthetic f$1:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/cordova/CallbackContext;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$$ExternalSyntheticLambda1;->f$0:Lorg/apache/cordova/CallbackContext;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$$ExternalSyntheticLambda1;->f$0:Lorg/apache/cordova/CallbackContext;

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v1, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->lambda$handleTaskOutcomeWithAdditionalTask$1(Lorg/apache/cordova/CallbackContext;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
