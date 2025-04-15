.class Lorg/apache/cordova/firebase/FirebasePlugin$13;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->setCrashlyticsCustomKey(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$data:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 866
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->val$data:Lorg/json/JSONArray;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 868
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1500(Lorg/apache/cordova/firebase/FirebasePlugin;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 870
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->val$data:Lorg/json/JSONArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 872
    instance-of v2, v0, Ljava/lang/Integer;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 873
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1600(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->val$data:Lorg/json/JSONArray;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->val$data:Lorg/json/JSONArray;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;I)V

    .line 874
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    goto/16 :goto_0

    .line 875
    :cond_0
    instance-of v2, v0, Ljava/lang/Double;

    if-eqz v2, :cond_1

    .line 876
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1600(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->val$data:Lorg/json/JSONArray;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->val$data:Lorg/json/JSONArray;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;D)V

    .line 877
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    goto/16 :goto_0

    .line 878
    :cond_1
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 879
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1600(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->val$data:Lorg/json/JSONArray;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->val$data:Lorg/json/JSONArray;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;J)V

    .line 880
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    .line 881
    :cond_2
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 882
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1600(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->val$data:Lorg/json/JSONArray;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->val$data:Lorg/json/JSONArray;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    .line 884
    :cond_3
    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 885
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1600(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->val$data:Lorg/json/JSONArray;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->val$data:Lorg/json/JSONArray;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Z)V

    .line 886
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    .line 888
    :cond_4
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Cannot set custom key - Value is not an acceptable type"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 891
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 894
    :cond_5
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$13;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Cannot set custom key - Crashlytics collection is disabled"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
