.class public Lorg/apache/cordova/firebase/OnNotificationReceiverActivity;
.super Landroid/app/Activity;
.source "OnNotificationReceiverActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static handleNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "messageType"

    const-string v1, "OnNotificationReceiverActivity.handleNotification(): "

    .line 29
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x14000000

    .line 32
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 34
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "notification"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "tap"

    .line 36
    invoke-static {}, Lorg/apache/cordova/firebase/FirebasePlugin;->inBackground()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "background"

    goto :goto_0

    :cond_1
    const-string v3, "foreground"

    :goto_0
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FirebasePlugin"

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {p1, p0}, Lorg/apache/cordova/firebase/FirebasePlugin;->sendMessage(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 42
    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 45
    invoke-static {p0}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithoutContext(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "FirebasePlugin"

    const-string v0, "OnNotificationReceiverActivity.onCreate()"

    .line 14
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p0}, Lorg/apache/cordova/firebase/OnNotificationReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/cordova/firebase/OnNotificationReceiverActivity;->handleNotification(Landroid/content/Context;Landroid/content/Intent;)V

    .line 16
    invoke-virtual {p0}, Lorg/apache/cordova/firebase/OnNotificationReceiverActivity;->finish()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "FirebasePlugin"

    const-string v1, "OnNotificationReceiverActivity.onNewIntent()"

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {p0, p1}, Lorg/apache/cordova/firebase/OnNotificationReceiverActivity;->handleNotification(Landroid/content/Context;Landroid/content/Intent;)V

    .line 24
    invoke-virtual {p0}, Lorg/apache/cordova/firebase/OnNotificationReceiverActivity;->finish()V

    return-void
.end method
