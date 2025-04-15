.class Lorg/apache/cordova/firebase/FirebasePlugin$45$1;
.super Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
.source "FirebasePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin$45;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/firebase/FirebasePlugin$45;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin$45;)V
    .locals 0

    .line 1563
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$45$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$45;

    invoke-direct {p0}, Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onCodeSent(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)V
    .locals 1

    :try_start_0
    const-string p2, "FirebasePlugin"

    const-string v0, "success: verifyPhoneNumber.onCodeSent"

    .line 1616
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "verificationId"

    .line 1620
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "instantVerification"

    const/4 v0, 0x0

    .line 1621
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1626
    :try_start_2
    iget-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$45$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$45;

    iget-object p1, p1, Lorg/apache/cordova/firebase/FirebasePlugin$45;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$45$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$45;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$45;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1, p2, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->sendPluginResultAndKeepCallback(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1623
    iget-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$45$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$45;

    iget-object p2, p2, Lorg/apache/cordova/firebase/FirebasePlugin$45;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 1628
    iget-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$45$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$45;

    iget-object p2, p2, Lorg/apache/cordova/firebase/FirebasePlugin$45;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method

.method public onVerificationCompleted(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 3

    :try_start_0
    const-string v0, "FirebasePlugin"

    const-string v1, "success: verifyPhoneNumber.onVerificationCompleted"

    .line 1573
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$2900(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/firebase/auth/AuthCredential;)Ljava/lang/String;

    move-result-object p1

    .line 1577
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "instantVerification"

    const/4 v2, 0x1

    .line 1578
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "id"

    .line 1579
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1581
    iget-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$45$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$45;

    iget-object p1, p1, Lorg/apache/cordova/firebase/FirebasePlugin$45;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$45$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$45;

    iget-object v1, v1, Lorg/apache/cordova/firebase/FirebasePlugin$45;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1, v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->sendPluginResultAndKeepCallback(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1583
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$45$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$45;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$45;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method

.method public onVerificationFailed(Lcom/google/firebase/FirebaseException;)V
    .locals 2

    :try_start_0
    const-string v0, "FirebasePlugin"

    const-string v1, "failed: verifyPhoneNumber.onVerificationFailed "

    .line 1592
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1595
    instance-of v0, p1, Lcom/google/firebase/auth/FirebaseAuthInvalidCredentialsException;

    if-eqz v0, :cond_0

    const-string p1, "Invalid phone number"

    goto :goto_0

    .line 1598
    :cond_0
    instance-of v0, p1, Lcom/google/firebase/FirebaseTooManyRequestsException;

    if-eqz v0, :cond_1

    const-string p1, "The SMS quota for the project has been exceeded"

    goto :goto_0

    .line 1602
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 1604
    :goto_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$45$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$45;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$45;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1606
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$45$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$45;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$45;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_1
    return-void
.end method
