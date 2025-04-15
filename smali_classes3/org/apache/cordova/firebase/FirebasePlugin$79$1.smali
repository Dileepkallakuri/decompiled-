.class Lorg/apache/cordova/firebase/FirebasePlugin$79$1;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin$79;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/firebase/FirebasePlugin$79;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin$79;)V
    .locals 0

    .line 2958
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$79$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$79;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 2961
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$79$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$79;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$79;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method
