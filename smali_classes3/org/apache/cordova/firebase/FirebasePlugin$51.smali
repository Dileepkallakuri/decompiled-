.class Lorg/apache/cordova/firebase/FirebasePlugin$51;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->createUserWithEmailAndPassword(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
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

    .line 2156
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$51;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$51;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$51;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, ""

    .line 2159
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$51;->val$args:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2160
    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$51;->val$args:Lorg/json/JSONArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_3

    .line 2162
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_2

    .line 2167
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2172
    :cond_1
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/auth/FirebaseAuth;->createUserWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$51;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v1, v1, Lorg/apache/cordova/firebase/FirebasePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    new-instance v2, Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnCompleteListener;

    iget-object v3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$51;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {v2, v3}, Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnCompleteListener;-><init>(Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_2

    .line 2168
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$51;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "User password must be specified"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 2163
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$51;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "User email address must be specified"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2174
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$51;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_2
    return-void
.end method
