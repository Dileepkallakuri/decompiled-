.class Lorg/apache/cordova/firebase/FirebasePlugin$63;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->startTrace(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$self:Lorg/apache/cordova/firebase/FirebasePlugin;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 2460
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$63;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$63;->val$self:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$63;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/cordova/firebase/FirebasePlugin$63;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2465
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$63;->val$self:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$3600(Lorg/apache/cordova/firebase/FirebasePlugin;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$63;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2466
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$63;->val$self:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$3600(Lorg/apache/cordova/firebase/FirebasePlugin;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$63;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/metrics/Trace;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2470
    invoke-static {}, Lcom/google/firebase/perf/FirebasePerformance;->getInstance()Lcom/google/firebase/perf/FirebasePerformance;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$63;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/FirebasePerformance;->newTrace(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;

    move-result-object v0

    .line 2471
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    .line 2472
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$63;->val$self:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$3600(Lorg/apache/cordova/firebase/FirebasePlugin;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$63;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2475
    :cond_1
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$63;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2477
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$63;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    .line 2478
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
