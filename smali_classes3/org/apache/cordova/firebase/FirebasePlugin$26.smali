.class Lorg/apache/cordova/firebase/FirebasePlugin$26;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->setConfigSettings(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

.field final synthetic val$args:Lorg/json/JSONArray;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 1094
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$26;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$26;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$26;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1097
    :try_start_0
    new-instance v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    invoke-direct {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;-><init>()V

    .line 1099
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$26;->val$args:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1100
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$26;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->setFetchTimeoutInSeconds(J)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    .line 1103
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$26;->val$args:Lorg/json/JSONArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1104
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$26;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->setMinimumFetchIntervalInSeconds(J)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    .line 1107
    :cond_1
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$26;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->build()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setConfigSettingsAsync(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$26;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v1, v0, v2}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1300(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1109
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$26;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method
