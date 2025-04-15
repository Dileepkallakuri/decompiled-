.class Lorg/apache/cordova/firebase/FirebasePlugin$82$1;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin$82;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/firebase/FirebasePlugin$82;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin$82;)V
    .locals 0

    .line 3071
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$82$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$82;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 3074
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$82$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$82;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$82;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method
