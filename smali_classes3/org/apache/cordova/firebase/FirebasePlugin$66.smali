.class Lorg/apache/cordova/firebase/FirebasePlugin$66;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->setAnalyticsCollectionEnabled(Lorg/apache/cordova/CallbackContext;Z)V
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

    .line 2536
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$66;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-boolean p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$66;->val$enabled:Z

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$66;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2539
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$66;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$200(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$66;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setAnalyticsCollectionEnabled(Z)V

    .line 2540
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$66;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    const-string v1, "firebase_analytics_collection_enabled"

    iget-boolean v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$66;->val$enabled:Z

    invoke-static {v0, v1, v2}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$100(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;Z)V

    .line 2541
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$66;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2543
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$66;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    .line 2544
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
