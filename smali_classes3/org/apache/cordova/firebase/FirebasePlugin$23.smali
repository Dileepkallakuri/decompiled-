.class Lorg/apache/cordova/firebase/FirebasePlugin$23;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->getValue(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 1040
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$23;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$23;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$23;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1043
    :try_start_0
    invoke-static {}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$23;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getValue(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;

    move-result-object v0

    .line 1044
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$23;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-interface {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1046
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$23;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method
