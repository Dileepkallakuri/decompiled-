.class Lorg/apache/cordova/firebase/FirebasePlugin$76;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->listChannels(Lorg/apache/cordova/CallbackContext;)V
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

    .line 2814
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$76;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$76;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2817
    :try_start_0
    invoke-static {}, Lorg/apache/cordova/firebase/FirebasePlugin;->listChannels()Ljava/util/List;

    move-result-object v0

    .line 2818
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2819
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 2820
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 2821
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "id"

    .line 2822
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "name"

    .line 2823
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2824
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 2827
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$76;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2829
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$76;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_1
    return-void
.end method
