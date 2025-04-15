.class Lorg/apache/cordova/firebase/FirebasePlugin$88;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->deleteInstallationId(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
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

    .line 3431
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$88;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$88;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3434
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$88;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {}, Lcom/google/firebase/installations/FirebaseInstallations;->getInstance()Lcom/google/firebase/installations/FirebaseInstallations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/installations/FirebaseInstallations;->delete()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$88;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1300(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3436
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$88;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method
