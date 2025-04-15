.class Lorg/apache/cordova/firebase/FirebasePlugin$46;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->enrollSecondAuthFactor(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
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

    .line 1681
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46;->val$args:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$org-apache-cordova-firebase-FirebasePlugin$46(Lorg/apache/cordova/CallbackContext;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 1733
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v0, p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1300(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1735
    invoke-static {p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$run$1$org-apache-cordova-firebase-FirebasePlugin$46(Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 0

    .line 1727
    :try_start_0
    invoke-static {p4}, Lcom/google/firebase/auth/PhoneMultiFactorGenerator;->getAssertion(Lcom/google/firebase/auth/PhoneAuthCredential;)Lcom/google/firebase/auth/PhoneMultiFactorAssertion;

    move-result-object p4

    .line 1728
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getMultiFactor()Lcom/google/firebase/auth/MultiFactor;

    move-result-object p1

    .line 1729
    invoke-virtual {p1, p4, p2}, Lcom/google/firebase/auth/MultiFactor;->enroll(Lcom/google/firebase/auth/MultiFactorAssertion;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p3}, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda2;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$46;Lorg/apache/cordova/CallbackContext;)V

    .line 1730
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1740
    invoke-static {p1, p3}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$run$2$org-apache-cordova-firebase-FirebasePlugin$46(Ljava/lang/String;Ljava/lang/String;IZLorg/apache/cordova/CallbackContext;Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 1827
    :try_start_0
    invoke-virtual {p6}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1828
    invoke-virtual {p6}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/google/firebase/auth/MultiFactorSession;

    if-eqz p1, :cond_0

    const-string v0, "null"

    .line 1830
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FirebasePlugin"

    const-string v1, "enrollSecondAuthFactor: using mock instant verification for test phone number"

    .line 1831
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getFirebaseAuthSettings()Lcom/google/firebase/auth/FirebaseAuthSettings;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/google/firebase/auth/FirebaseAuthSettings;->setAutoRetrievedSmsCodeForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    :cond_0
    invoke-static {}, Lcom/google/firebase/auth/PhoneAuthOptions;->newBuilder()Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    move-result-object p1

    .line 1837
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    move-result-object p1

    int-to-long p2, p3

    .line 1838
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->setTimeout(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    .line 1839
    invoke-static {p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$2800(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->setCallbacks(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    move-result-object p1

    .line 1840
    invoke-static {}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1000()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->setActivity(Landroid/app/Activity;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    move-result-object p1

    .line 1841
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->requireSmsValidation(Z)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    move-result-object p1

    .line 1842
    invoke-virtual {p1, p6}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->setMultiFactorSession(Lcom/google/firebase/auth/MultiFactorSession;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    move-result-object p1

    .line 1843
    invoke-virtual {p1}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->build()Lcom/google/firebase/auth/PhoneAuthOptions;

    move-result-object p1

    .line 1844
    invoke-static {p1}, Lcom/google/firebase/auth/PhoneAuthProvider;->verifyPhoneNumber(Lcom/google/firebase/auth/PhoneAuthOptions;)V

    goto :goto_0

    .line 1846
    :cond_1
    iget-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {p1, p6, p5}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1300(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/android/gms/tasks/Task;Lorg/apache/cordova/CallbackContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1849
    invoke-static {p1, p5}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 15

    const-string v0, "code"

    const-string v1, "verificationId"

    const-string v2, "credential"

    const-string v3, "requireSmsValidation"

    const-string v4, "fakeVerificationCode"

    const-string v5, "timeOutDuration"

    .line 1684
    :try_start_0
    iget-object v6, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v7, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v6, v7}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1900(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    .line 1687
    :cond_0
    iget-object v6, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46;->val$args:Lorg/json/JSONArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1688
    iget-object v6, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46;->val$args:Lorg/json/JSONArray;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 1691
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1692
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_1
    const/16 v5, 0x1e

    :goto_0
    move v12, v5

    .line 1696
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    .line 1697
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    goto :goto_1

    :cond_2
    move-object v10, v8

    .line 1700
    :goto_1
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1701
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    :cond_3
    move v13, v7

    const-string v3, "displayName"

    .line 1704
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1708
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1709
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1710
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1711
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1712
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1714
    :cond_4
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "\'verificationId\' and/or \'code\' properties not found on \'credential\' object"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    :cond_5
    move-object v0, v8

    .line 1719
    :goto_2
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    .line 1723
    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v4, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1, v3, v2}, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda0;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$46;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    if-eqz v8, :cond_6

    .line 1746
    invoke-static {v8, v0}, Lcom/google/firebase/auth/PhoneAuthProvider;->getCredential(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthCredential;

    move-result-object v0

    .line 1747
    invoke-interface {v4, v0}, Lorg/apache/cordova/firebase/FirebasePlugin$OnReceivePhoneAuthCredential;->onCredential(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    return-void

    .line 1755
    :cond_6
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    new-instance v2, Lorg/apache/cordova/firebase/FirebasePlugin$46$1;

    invoke-direct {v2, p0, v4}, Lorg/apache/cordova/firebase/FirebasePlugin$46$1;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$46;Lorg/apache/cordova/firebase/FirebasePlugin$OnReceivePhoneAuthCredential;)V

    invoke-static {v0, v2}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$2802(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    .line 1824
    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseUser;->getMultiFactor()Lcom/google/firebase/auth/MultiFactor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/MultiFactor;->getSession()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v14, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda1;

    move-object v8, v1

    move-object v9, p0

    invoke-direct/range {v8 .. v14}, Lorg/apache/cordova/firebase/FirebasePlugin$46$$ExternalSyntheticLambda1;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$46;Ljava/lang/String;Ljava/lang/String;IZLorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1854
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_3
    return-void
.end method
