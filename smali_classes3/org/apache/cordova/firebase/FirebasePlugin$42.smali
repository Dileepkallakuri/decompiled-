.class Lorg/apache/cordova/firebase/FirebasePlugin$42;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->reauthenticateWithCredential(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
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

    .line 1443
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$42;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$42;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$42;->val$args:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1446
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$42;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$42;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1900(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1447
    :cond_0
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    .line 1448
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$42;->val$args:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1449
    sget-object v2, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v2, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$2100(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1450
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$42;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "No auth credentials specified"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 1454
    :cond_1
    sget-object v2, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v2, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$2200(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONObject;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1456
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$42;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-virtual {v0, v2}, Lcom/google/firebase/auth/FirebaseUser;->reauthenticateAndRetrieveData(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$42;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v1, v0, v2}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$2300(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 1460
    :cond_2
    sget-object v2, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v2, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$2400(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONObject;)Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1462
    sget-object v2, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$42;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v2}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$2502(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;

    .line 1463
    invoke-static {}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1000()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/auth/FirebaseUser;->startActivityForReauthenticateWithProvider(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnSuccessListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnSuccessListener;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$1;)V

    .line 1464
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnFailureListener;

    invoke-direct {v1, v2}, Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnFailureListener;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$1;)V

    .line 1465
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 1470
    :cond_3
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$42;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Specified native auth credential id does not exist"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1473
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$42;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method
