.class Lorg/apache/cordova/firebase/FirebasePlugin$5;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->grantPermission(Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$plugin:Lorg/apache/cordova/CordovaPlugin;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;Lorg/apache/cordova/CordovaPlugin;)V
    .locals 0

    .line 689
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$5;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$5;->val$plugin:Lorg/apache/cordova/CordovaPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "POST_NOTIFICATIONS"

    .line 692
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 693
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$5;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->hasRuntimePermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 695
    iget-object v3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$5;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-virtual {v3, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->qualifyPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 696
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1202(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;

    .line 697
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$5;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$5;->val$plugin:Lorg/apache/cordova/CordovaPlugin;

    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/cordova/firebase/FirebasePlugin;->requestPermissions(Lorg/apache/cordova/CordovaPlugin;I[Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$5;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->sendEmptyPluginResultAndKeepCallback(Lorg/apache/cordova/CallbackContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 703
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :cond_0
    :goto_0
    return-void
.end method
