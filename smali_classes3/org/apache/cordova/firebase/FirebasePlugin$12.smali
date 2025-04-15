.class Lorg/apache/cordova/firebase/FirebasePlugin$12;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->logError(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

.field final synthetic val$args:Lorg/json/JSONArray;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 827
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$12;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$12;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$12;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/cordova/firebase/FirebasePlugin$12;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 830
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$12;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1500(Lorg/apache/cordova/firebase/FirebasePlugin;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 832
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$12;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 833
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$12;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    .line 834
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    const/4 v3, 0x0

    .line 835
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 836
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 837
    new-instance v5, Ljava/lang/StackTraceElement;

    const-string v6, ""

    const-string v7, "functionName"

    const-string v8, "(anonymous function)"

    .line 839
    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "fileName"

    const-string v9, "(unknown file)"

    .line 840
    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "lineNumber"

    const/4 v10, -0x1

    .line 841
    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v5, v6, v7, v8, v4}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 845
    :cond_0
    new-instance v0, Lorg/apache/cordova/firebase/JavaScriptException;

    iget-object v3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$12;->val$message:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/apache/cordova/firebase/JavaScriptException;-><init>(Ljava/lang/String;)V

    .line 846
    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 847
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$12;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1400(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/Exception;)V

    goto :goto_1

    .line 849
    :cond_1
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$12;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    new-instance v1, Lorg/apache/cordova/firebase/JavaScriptException;

    iget-object v3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$12;->val$message:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/apache/cordova/firebase/JavaScriptException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1400(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/Exception;)V

    :goto_1
    const-string v0, "FirebasePlugin"

    .line 852
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$12;->val$message:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$12;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CallbackContext;->success(I)V

    goto :goto_2

    .line 855
    :cond_2
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$12;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Cannot log error - Crashlytics collection is disabled"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 858
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$12;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1400(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/Exception;)V

    .line 859
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$12;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
