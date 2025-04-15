.class Lorg/apache/cordova/firebase/FirebasePlugin$46$1;
.super Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
.source "FirebasePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin$46;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/firebase/FirebasePlugin$46;

.field final synthetic val$credentialReceiver:Lorg/apache/cordova/firebase/FirebasePlugin$OnReceivePhoneAuthCredential;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin$46;Lorg/apache/cordova/firebase/FirebasePlugin$OnReceivePhoneAuthCredential;)V
    .locals 0

    .line 1755
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$46;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$1;->val$credentialReceiver:Lorg/apache/cordova/firebase/FirebasePlugin$OnReceivePhoneAuthCredential;

    invoke-direct {p0}, Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onCodeSent(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)V
    .locals 1

    :try_start_0
    const-string p2, "FirebasePlugin"

    const-string v0, "success: enrollSecondAuthFactor.onCodeSent"

    .line 1802
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "verificationId"

    .line 1806
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1811
    :try_start_2
    iget-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$46;

    iget-object p1, p1, Lorg/apache/cordova/firebase/FirebasePlugin$46;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$46;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$46;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1, p2, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->sendPluginResultAndKeepCallback(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1808
    iget-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$46;

    iget-object p2, p2, Lorg/apache/cordova/firebase/FirebasePlugin$46;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 1813
    iget-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$46;

    iget-object p2, p2, Lorg/apache/cordova/firebase/FirebasePlugin$46;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method

.method public onVerificationCompleted(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 2

    :try_start_0
    const-string v0, "FirebasePlugin"

    const-string v1, "success: enrollSecondAuthFactor.onVerificationCompleted"

    .line 1765
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$1;->val$credentialReceiver:Lorg/apache/cordova/firebase/FirebasePlugin$OnReceivePhoneAuthCredential;

    invoke-interface {v0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin$OnReceivePhoneAuthCredential;->onCredential(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1769
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$46;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$46;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method

.method public onVerificationFailed(Lcom/google/firebase/FirebaseException;)V
    .locals 2

    :try_start_0
    const-string v0, "FirebasePlugin"

    const-string v1, "failed: enrollSecondAuthFactor.onVerificationFailed "

    .line 1778
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1781
    instance-of v0, p1, Lcom/google/firebase/auth/FirebaseAuthInvalidCredentialsException;

    if-eqz v0, :cond_0

    const-string p1, "Invalid phone number"

    goto :goto_0

    .line 1784
    :cond_0
    instance-of v0, p1, Lcom/google/firebase/FirebaseTooManyRequestsException;

    if-eqz v0, :cond_1

    const-string p1, "The SMS quota for the project has been exceeded"

    goto :goto_0

    .line 1788
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 1790
    :goto_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$46;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$46;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1792
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$46$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$46;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$46;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_1
    return-void
.end method
