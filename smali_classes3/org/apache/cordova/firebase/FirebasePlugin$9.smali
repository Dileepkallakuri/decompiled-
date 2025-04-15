.class Lorg/apache/cordova/firebase/FirebasePlugin$9;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->isAutoInitEnabled(Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 746
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$9;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$9;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 749
    :try_start_0
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->isAutoInitEnabled()Z

    move-result v0

    .line 750
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$9;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$9;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v2, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1100(Lorg/apache/cordova/firebase/FirebasePlugin;Z)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->success(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 752
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$9;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1400(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/Exception;)V

    .line 753
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$9;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
