.class Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnFailureListener;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthResultOnFailureListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin$1;)V
    .locals 0

    .line 3753
    invoke-direct {p0}, Lorg/apache/cordova/firebase/FirebasePlugin$AuthResultOnFailureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "FirebasePlugin"

    const-string v1, "AuthResult:onFailure"

    .line 3756
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3757
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$2500()Lorg/apache/cordova/CallbackContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3758
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$2500()Lorg/apache/cordova/CallbackContext;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :cond_0
    return-void
.end method
