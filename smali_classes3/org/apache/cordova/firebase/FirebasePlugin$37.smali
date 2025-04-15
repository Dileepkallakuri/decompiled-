.class Lorg/apache/cordova/firebase/FirebasePlugin$37;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->sendUserEmailVerification(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
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
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 0

    .line 1353
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$37;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$37;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$37;->val$args:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1356
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$37;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$37;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1900(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1357
    :cond_0
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    .line 1359
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$37;->val$args:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1360
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$37;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1361
    invoke-static {}, Lcom/google/firebase/auth/ActionCodeSettings;->newBuilder()Lcom/google/firebase/auth/ActionCodeSettings$Builder;

    move-result-object v2

    const-string v3, "url"

    .line 1362
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->setUrl(Ljava/lang/String;)Lcom/google/firebase/auth/ActionCodeSettings$Builder;

    move-result-object v2

    const-string v3, "dynamicLinkDomain"

    .line 1363
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->setDynamicLinkDomain(Ljava/lang/String;)Lcom/google/firebase/auth/ActionCodeSettings$Builder;

    move-result-object v2

    const-string v3, "handleCodeInApp"

    .line 1364
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->setHandleCodeInApp(Z)Lcom/google/firebase/auth/ActionCodeSettings$Builder;

    move-result-object v2

    const-string v3, "iosBundleId"

    .line 1365
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->setIOSBundleId(Ljava/lang/String;)Lcom/google/firebase/auth/ActionCodeSettings$Builder;

    move-result-object v2

    const-string v3, "androidPackageName"

    .line 1366
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "installIfNotAvailable"

    .line 1367
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "minimumVersion"

    .line 1368
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1366
    invoke-virtual {v2, v3, v4, v1}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->setAndroidPackageName(Ljava/lang/String;ZLjava/lang/String;)Lcom/google/firebase/auth/ActionCodeSettings$Builder;

    move-result-object v1

    .line 1369
    invoke-virtual {v1}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->build()Lcom/google/firebase/auth/ActionCodeSettings;

    move-result-object v1

    .line 1370
    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$37;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/FirebaseUser;->sendEmailVerification(Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$37;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v2, v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1300(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 1372
    :cond_1
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$37;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->sendEmailVerification()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$37;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v1, v0, v2}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1300(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1376
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$37;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method
