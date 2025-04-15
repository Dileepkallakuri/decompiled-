.class Lorg/apache/cordova/firebase/FirebasePlugin$28;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->didCrashOnPreviousExecution(Lorg/apache/cordova/CallbackContext;)V
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

    .line 1128
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$28;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$28;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1130
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$28;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1500(Lorg/apache/cordova/firebase/FirebasePlugin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$28;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    iget-object v3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$28;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v3}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1600(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->didCrashOnPreviousExecution()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Z)V

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1134
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$28;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 1137
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$28;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Cannot query didCrashOnPreviousExecution - Crashlytics collection is disabled"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
