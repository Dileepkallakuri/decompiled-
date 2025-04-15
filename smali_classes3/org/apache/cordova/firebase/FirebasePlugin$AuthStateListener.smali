.class Lorg/apache/cordova/firebase/FirebasePlugin$AuthStateListener;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthStateListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin$1;)V
    .locals 0

    .line 3776
    invoke-direct {p0}, Lorg/apache/cordova/firebase/FirebasePlugin$AuthStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthStateChanged(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 3

    const-string v0, "FirebasePlugin._onAuthStateChange("

    .line 3780
    :try_start_0
    sget-object v1, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$4600(Lorg/apache/cordova/firebase/FirebasePlugin;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3781
    sget-object p1, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$4602(Lorg/apache/cordova/firebase/FirebasePlugin;Z)Z

    goto :goto_1

    .line 3783
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    .line 3784
    sget-object v1, Lorg/apache/cordova/firebase/FirebasePlugin;->instance:Lorg/apache/cordova/firebase/FirebasePlugin;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$4700(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3787
    invoke-static {p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithoutContext(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method
