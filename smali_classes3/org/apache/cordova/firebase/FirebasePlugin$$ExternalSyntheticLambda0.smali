.class public final synthetic Lorg/apache/cordova/firebase/FirebasePlugin$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lorg/apache/cordova/CallbackContext;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$$ExternalSyntheticLambda0;->f$0:Lorg/apache/cordova/CallbackContext;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$$ExternalSyntheticLambda0;->f$0:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->lambda$handleTaskOutcome$0(Lorg/apache/cordova/CallbackContext;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
