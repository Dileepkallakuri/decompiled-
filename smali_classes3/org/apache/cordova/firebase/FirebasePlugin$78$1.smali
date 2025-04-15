.class Lorg/apache/cordova/firebase/FirebasePlugin$78$1;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin$78;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/firebase/FirebasePlugin$78;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin$78;)V
    .locals 0

    .line 2922
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$78$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$78;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 2925
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$78$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$78;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$78;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method
