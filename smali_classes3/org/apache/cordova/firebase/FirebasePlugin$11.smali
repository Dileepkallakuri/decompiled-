.class Lorg/apache/cordova/firebase/FirebasePlugin$11;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->logEvent(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;Landroid/os/Bundle;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 812
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$11;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$11;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$11;->val$bundle:Landroid/os/Bundle;

    iput-object p4, p0, Lorg/apache/cordova/firebase/FirebasePlugin$11;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 815
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$11;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$200(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$11;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$11;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 816
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$11;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 818
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$11;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method
