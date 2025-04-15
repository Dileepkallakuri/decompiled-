.class Lorg/apache/cordova/firebase/FirebasePlugin$74;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->setDefaultChannel(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$options:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 2769
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$74;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$74;->val$options:Lorg/json/JSONObject;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$74;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2772
    :try_start_0
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->defaultChannelId:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->deleteChannel(Ljava/lang/String;)V

    .line 2774
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$74;->val$options:Lorg/json/JSONObject;

    const-string v1, "id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2776
    sput-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->defaultChannelId:Ljava/lang/String;

    .line 2779
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$74;->val$options:Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2781
    sput-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->defaultChannelName:Ljava/lang/String;

    .line 2783
    :cond_1
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$74;->val$options:Lorg/json/JSONObject;

    invoke-static {v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->createDefaultChannel(Lorg/json/JSONObject;)V

    .line 2784
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$74;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2786
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$74;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method
