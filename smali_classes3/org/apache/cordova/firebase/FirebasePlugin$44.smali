.class Lorg/apache/cordova/firebase/FirebasePlugin$44;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->linkUserWithCredential(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
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

    .line 1516
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$44;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$44;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$44;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1519
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$44;->val$args:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1520
    sget-object v1, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$2100(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1521
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$44;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "No auth credentials specified"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 1525
    :cond_0
    sget-object v1, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$2200(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONObject;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1527
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/FirebaseUser;->linkWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$44;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v1, v1, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    new-instance v2, Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnCompleteListener;

    iget-object v3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$44;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {v2, v3}, Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnCompleteListener;-><init>(Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 1531
    :cond_1
    sget-object v1, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$2400(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONObject;)Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1533
    sget-object v1, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$44;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$2502(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;

    .line 1534
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    invoke-static {}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1000()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/auth/FirebaseUser;->startActivityForLinkWithProvider(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnSuccessListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnSuccessListener;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$1;)V

    .line 1535
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnFailureListener;

    invoke-direct {v1, v2}, Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnFailureListener;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$1;)V

    .line 1536
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 1541
    :cond_2
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$44;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Specified native auth credential id does not exist"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1544
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$44;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method
