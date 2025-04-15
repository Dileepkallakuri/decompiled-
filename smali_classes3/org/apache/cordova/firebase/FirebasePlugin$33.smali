.class Lorg/apache/cordova/firebase/FirebasePlugin$33;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->extractAndReturnUserInfo(Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$returnResults:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V
    .locals 0

    .line 1292
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$33;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$33;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$33;->val$returnResults:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 4

    .line 1296
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$33;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    iget-object v3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$33;->val$returnResults:Lorg/json/JSONObject;

    invoke-direct {v1, v2, v3}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 1297
    invoke-static {p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithoutContext(Ljava/lang/Exception;)V

    return-void
.end method
