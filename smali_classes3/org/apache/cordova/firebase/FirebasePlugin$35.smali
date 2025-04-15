.class Lorg/apache/cordova/firebase/FirebasePlugin$35;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->updateUserProfile(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
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

    .line 1303
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$35;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$35;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$35;->val$args:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "name"

    .line 1306
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$35;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$35;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v1, v2}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1900(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1307
    :cond_0
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    .line 1308
    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$35;->val$args:Lorg/json/JSONArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1310
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "photoUri"

    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1311
    new-instance v3, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;

    invoke-direct {v3}, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;-><init>()V

    .line 1312
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;

    move-result-object v0

    .line 1313
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;->setPhotoUri(Landroid/net/Uri;)Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;

    move-result-object v0

    .line 1314
    invoke-virtual {v0}, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;->build()Lcom/google/firebase/auth/UserProfileChangeRequest;

    move-result-object v0

    goto :goto_0

    .line 1315
    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1316
    new-instance v3, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;

    invoke-direct {v3}, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;-><init>()V

    .line 1317
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;

    move-result-object v0

    .line 1318
    invoke-virtual {v0}, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;->build()Lcom/google/firebase/auth/UserProfileChangeRequest;

    move-result-object v0

    goto :goto_0

    .line 1319
    :cond_2
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1320
    new-instance v0, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;

    invoke-direct {v0}, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;-><init>()V

    .line 1321
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;->setPhotoUri(Landroid/net/Uri;)Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;

    move-result-object v0

    .line 1322
    invoke-virtual {v0}, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;->build()Lcom/google/firebase/auth/UserProfileChangeRequest;

    move-result-object v0

    .line 1328
    :goto_0
    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$35;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-virtual {v1, v0}, Lcom/google/firebase/auth/FirebaseUser;->updateProfile(Lcom/google/firebase/auth/UserProfileChangeRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$35;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v2, v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1300(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_1

    .line 1324
    :cond_3
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$35;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "\'name\' and/or \'photoUri\' keys must be specified in the profile object"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1330
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$35;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_1
    return-void
.end method
