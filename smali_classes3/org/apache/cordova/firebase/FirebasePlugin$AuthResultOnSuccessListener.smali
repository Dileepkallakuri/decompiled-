.class Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnSuccessListener;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthResultOnSuccessListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/firebase/auth/AuthResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin$1;)V
    .locals 0

    .line 3743
    invoke-direct {p0}, Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/firebase/auth/AuthResult;)V
    .locals 2

    .line 3746
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AuthResult:onSuccess:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FirebasePlugin"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3747
    sget-object p1, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$2500()Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3748
    sget-object p1, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$2500()Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/cordova/CallbackContext;->success()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 3743
    check-cast p1, Lcom/google/firebase/auth/AuthResult;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnSuccessListener;->onSuccess(Lcom/google/firebase/auth/AuthResult;)V

    return-void
.end method
