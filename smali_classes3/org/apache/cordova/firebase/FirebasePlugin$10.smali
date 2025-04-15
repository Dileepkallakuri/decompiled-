.class Lorg/apache/cordova/firebase/FirebasePlugin$10;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->setAutoInitEnabled(Lorg/apache/cordova/CallbackContext;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin;ZLorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 761
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$10;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-boolean p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$10;->val$enabled:Z

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$10;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 764
    :try_start_0
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$10;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->setAutoInitEnabled(Z)V

    .line 765
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$10;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 767
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$10;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1400(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/Exception;)V

    .line 768
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 769
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$10;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
