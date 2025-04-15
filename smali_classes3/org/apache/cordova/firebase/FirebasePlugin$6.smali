.class Lorg/apache/cordova/firebase/FirebasePlugin$6;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->subscribe(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$topic:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 710
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$6;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$6;->val$topic:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 713
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$6;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$6;->val$topic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1300(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 715
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method
