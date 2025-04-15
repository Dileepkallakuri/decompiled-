.class Lorg/apache/cordova/firebase/FirebasePlugin$49;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->unenrollSecondAuthFactor(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
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
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 0

    .line 2101
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$49;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$49;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$49;->val$args:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$org-apache-cordova-firebase-FirebasePlugin$49(Lorg/apache/cordova/CallbackContext;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 2122
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$49;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1300(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 2124
    invoke-static {p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 6

    .line 2104
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$49;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$49;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1900(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2105
    :cond_0
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    .line 2107
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$49;->val$args:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Selected index value ("

    if-gez v1, :cond_1

    .line 2110
    :try_start_1
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$49;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") must be a positive integer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 2114
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getMultiFactor()Lcom/google/firebase/auth/MultiFactor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/auth/MultiFactor;->getEnrolledFactors()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    .line 2115
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-le v4, v5, :cond_2

    .line 2116
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$49;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") exceeds the number of enrolled factors ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 2120
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getMultiFactor()Lcom/google/firebase/auth/MultiFactor;

    move-result-object v0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/MultiFactorInfo;

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/MultiFactor;->unenroll(Lcom/google/firebase/auth/MultiFactorInfo;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$49;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v2, Lorg/apache/cordova/firebase/FirebasePlugin$49$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin$49$$ExternalSyntheticLambda0;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$49;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2128
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$49;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method
