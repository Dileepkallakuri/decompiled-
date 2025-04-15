.class Lorg/apache/cordova/firebase/FirebasePlugin$45;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->verifyPhoneNumber(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
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

    .line 1560
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$45;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$45;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$45;->val$args:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "requireSmsValidation"

    const-string v1, "fakeVerificationCode"

    const-string v2, "timeOutDuration"

    .line 1563
    :try_start_0
    iget-object v3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$45;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    new-instance v4, Lorg/apache/cordova/firebase/FirebasePlugin$45$1;

    invoke-direct {v4, p0}, Lorg/apache/cordova/firebase/FirebasePlugin$45$1;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$45;)V

    invoke-static {v3, v4}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$2802(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    .line 1634
    iget-object v3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$45;->val$args:Lorg/json/JSONArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1635
    iget-object v5, p0, Lorg/apache/cordova/firebase/FirebasePlugin$45;->val$args:Lorg/json/JSONArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1638
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1639
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x1e

    .line 1643
    :goto_0
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1644
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1647
    :goto_1
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1648
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    :cond_2
    if-eqz v1, :cond_3

    const-string v0, "null"

    .line 1651
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "FirebasePlugin"

    const-string v5, "verifyPhoneNumber: using mock instant verification for test phone number"

    .line 1652
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getFirebaseAuthSettings()Lcom/google/firebase/auth/FirebaseAuthSettings;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcom/google/firebase/auth/FirebaseAuthSettings;->setAutoRetrievedSmsCodeForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    :cond_3
    invoke-static {}, Lcom/google/firebase/auth/PhoneAuthOptions;->newBuilder()Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    move-result-object v0

    .line 1658
    invoke-virtual {v0, v3}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    move-result-object v0

    int-to-long v1, v2

    .line 1659
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->setTimeout(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$45;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    .line 1660
    invoke-static {v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$2800(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->setCallbacks(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    move-result-object v0

    .line 1661
    invoke-static {}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1000()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->setActivity(Landroid/app/Activity;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    move-result-object v0

    .line 1662
    invoke-virtual {v0, v4}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->requireSmsValidation(Z)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    move-result-object v0

    .line 1663
    invoke-virtual {v0}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->build()Lcom/google/firebase/auth/PhoneAuthOptions;

    move-result-object v0

    .line 1664
    invoke-static {v0}, Lcom/google/firebase/auth/PhoneAuthProvider;->verifyPhoneNumber(Lcom/google/firebase/auth/PhoneAuthOptions;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1666
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$45;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_2
    return-void
.end method
