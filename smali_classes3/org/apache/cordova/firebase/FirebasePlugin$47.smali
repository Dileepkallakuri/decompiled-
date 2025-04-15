.class Lorg/apache/cordova/firebase/FirebasePlugin$47;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->verifySecondAuthFactor(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
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

    .line 1864
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47;->val$args:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$org-apache-cordova-firebase-FirebasePlugin$47(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 1942
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1943
    iget-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$3002(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/firebase/auth/MultiFactorResolver;)Lcom/google/firebase/auth/MultiFactorResolver;

    :cond_0
    return-void
.end method

.method synthetic lambda$run$1$org-apache-cordova-firebase-FirebasePlugin$47(Lorg/apache/cordova/CallbackContext;Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 1940
    :try_start_0
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 1941
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lorg/apache/cordova/firebase/FirebasePlugin$47$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/apache/cordova/firebase/FirebasePlugin$47$$ExternalSyntheticLambda1;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$47;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 1946
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v1, p2, p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$3100(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1948
    invoke-static {p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$run$2$org-apache-cordova-firebase-FirebasePlugin$47(Lorg/apache/cordova/CallbackContext;Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 1

    .line 1933
    :try_start_0
    invoke-static {p2}, Lcom/google/firebase/auth/PhoneMultiFactorGenerator;->getAssertion(Lcom/google/firebase/auth/PhoneAuthCredential;)Lcom/google/firebase/auth/PhoneMultiFactorAssertion;

    move-result-object p2

    .line 1935
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$3000(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/auth/MultiFactorResolver;

    move-result-object v0

    .line 1936
    invoke-virtual {v0, p2}, Lcom/google/firebase/auth/MultiFactorResolver;->resolveSignIn(Lcom/google/firebase/auth/MultiFactorAssertion;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lorg/apache/cordova/firebase/FirebasePlugin$47$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$47$$ExternalSyntheticLambda0;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$47;Lorg/apache/cordova/CallbackContext;)V

    .line 1937
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1953
    invoke-static {p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 14

    const-string v0, "phoneNumber"

    const-string v1, "requireSmsValidation"

    const-string v2, "fakeVerificationCode"

    const-string v3, "code"

    const-string v4, "timeOutDuration"

    const-string v5, "verificationId"

    const-string v6, "credential"

    const-string v7, "selectedIndex"

    .line 1867
    :try_start_0
    iget-object v8, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v8}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$3000(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/auth/MultiFactorResolver;

    move-result-object v8

    if-nez v8, :cond_0

    .line 1868
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "No multi-factor challenge exists to resolve"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 1872
    :cond_0
    iget-object v8, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47;->val$args:Lorg/json/JSONArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 1874
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_2

    .line 1875
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "Selected index value ("

    if-gez v7, :cond_1

    .line 1877
    :try_start_1
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") must be a positive integer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    add-int/lit8 v12, v7, 0x1

    .line 1879
    iget-object v13, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v13}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$3000(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/auth/MultiFactorResolver;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/firebase/auth/MultiFactorResolver;->getHints()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-le v12, v13, :cond_3

    .line 1880
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") exceeds the number of enrolled factors ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v2}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$3000(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/auth/MultiFactorResolver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/auth/MultiFactorResolver;->getHints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

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

    :cond_2
    move v7, v11

    .line 1887
    :cond_3
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    const/4 v12, 0x0

    if-eqz v10, :cond_5

    .line 1888
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1889
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1890
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1891
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1893
    :cond_4
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "\'verificationId\' and/or \'code\' properties not found on \'credential\' object"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    :cond_5
    move-object v3, v12

    move-object v5, v3

    :goto_0
    if-ne v7, v11, :cond_6

    if-nez v5, :cond_6

    .line 1899
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Neither \'selectedIndex\' or \'credential\' properties found on \'params\' object - either one must be specified"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 1904
    :cond_6
    iget-object v6, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47;->val$args:Lorg/json/JSONArray;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 1907
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1908
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_7
    const/16 v4, 0x1e

    .line 1913
    :goto_1
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1914
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1915
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1916
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1918
    :cond_8
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "\'phoneNumber\' property must also be specified on \'opts\' object when \'fakeVerificationCode\' is specified"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    :cond_9
    move-object v0, v12

    .line 1924
    :goto_2
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1925
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 1929
    :cond_a
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v2, Lorg/apache/cordova/firebase/FirebasePlugin$47$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin$47$$ExternalSyntheticLambda2;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$47;Lorg/apache/cordova/CallbackContext;)V

    if-eqz v5, :cond_b

    .line 1959
    invoke-static {v5, v3}, Lcom/google/firebase/auth/PhoneAuthProvider;->getCredential(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthCredential;

    move-result-object v0

    .line 1960
    invoke-interface {v2, v0}, Lorg/apache/cordova/firebase/FirebasePlugin$OnReceivePhoneAuthCredential;->onCredential(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    return-void

    .line 1968
    :cond_b
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    new-instance v3, Lorg/apache/cordova/firebase/FirebasePlugin$47$1;

    invoke-direct {v3, p0, v2}, Lorg/apache/cordova/firebase/FirebasePlugin$47$1;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$47;Lorg/apache/cordova/firebase/FirebasePlugin$OnReceivePhoneAuthCredential;)V

    invoke-static {v1, v3}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$2802(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    if-eqz v12, :cond_c

    const-string v1, "null"

    .line 2035
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "FirebasePlugin"

    const-string v2, "verifySecondAuthFactor: using mock instant verification for test phone number"

    .line 2036
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getFirebaseAuthSettings()Lcom/google/firebase/auth/FirebaseAuthSettings;

    move-result-object v1

    invoke-virtual {v1, v0, v12}, Lcom/google/firebase/auth/FirebaseAuthSettings;->setAutoRetrievedSmsCodeForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 2040
    :cond_c
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$3000(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/auth/MultiFactorResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/MultiFactorResolver;->getHints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 2043
    invoke-static {}, Lcom/google/firebase/auth/PhoneAuthOptions;->newBuilder()Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    .line 2044
    invoke-static {v2}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$3000(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/auth/MultiFactorResolver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/auth/MultiFactorResolver;->getSession()Lcom/google/firebase/auth/MultiFactorSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->setMultiFactorSession(Lcom/google/firebase/auth/MultiFactorSession;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    move-result-object v1

    .line 2045
    invoke-virtual {v1, v0}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->setMultiFactorHint(Lcom/google/firebase/auth/PhoneMultiFactorInfo;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    move-result-object v0

    int-to-long v1, v4

    .line 2046
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->setTimeout(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    .line 2047
    invoke-static {v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$2800(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->setCallbacks(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    move-result-object v0

    .line 2048
    invoke-static {}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1000()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->setActivity(Landroid/app/Activity;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    move-result-object v0

    .line 2049
    invoke-virtual {v0, v9}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->requireSmsValidation(Z)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    move-result-object v0

    .line 2050
    invoke-virtual {v0}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->build()Lcom/google/firebase/auth/PhoneAuthOptions;

    move-result-object v0

    .line 2051
    invoke-static {v0}, Lcom/google/firebase/auth/PhoneAuthProvider;->verifyPhoneNumber(Lcom/google/firebase/auth/PhoneAuthOptions;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 2053
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$47;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_3
    return-void
.end method
