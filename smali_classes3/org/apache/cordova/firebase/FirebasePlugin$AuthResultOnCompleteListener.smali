.class Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnCompleteListener;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthResultOnCompleteListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/auth/AuthResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 3766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3767
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnCompleteListener;->callbackContext:Lorg/apache/cordova/CallbackContext;

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;)V"
        }
    .end annotation

    .line 3772
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnCompleteListener;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, p1, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$2300(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method
