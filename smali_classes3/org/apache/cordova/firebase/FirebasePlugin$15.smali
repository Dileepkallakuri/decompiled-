.class Lorg/apache/cordova/firebase/FirebasePlugin$15;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->setCrashlyticsUserId(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 925
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$15;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$15;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$15;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 928
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$15;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1500(Lorg/apache/cordova/firebase/FirebasePlugin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$15;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1600(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$15;->val$userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setUserId(Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$15;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    .line 932
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$15;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Cannot set Crashlytics user ID - Crashlytics collection is disabled"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 935
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$15;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method
