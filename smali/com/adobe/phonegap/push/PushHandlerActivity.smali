.class public final Lcom/adobe/phonegap/push/PushHandlerActivity;
.super Landroid/app/Activity;
.source "PushHandlerActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/phonegap/push/PushHandlerActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0012\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\n\u001a\u00020\u0004H\u0014J\u0008\u0010\u000b\u001a\u00020\u0006H\u0002\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/adobe/phonegap/push/PushHandlerActivity;",
        "Landroid/app/Activity;",
        "()V",
        "forceMainActivityReload",
        "",
        "startOnBackground",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
        "processPushBundle",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/adobe/phonegap/push/PushHandlerActivity$Companion;

.field private static final TAG:Ljava/lang/String; = "cordova-plugin-push (PushHandlerActivity)"


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/adobe/phonegap/push/PushHandlerActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/adobe/phonegap/push/PushHandlerActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/adobe/phonegap/push/PushHandlerActivity;->Companion:Lcom/adobe/phonegap/push/PushHandlerActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/adobe/phonegap/push/PushHandlerActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final forceMainActivityReload(Z)V
    .locals 3

    .line 116
    invoke-virtual {p0}, Lcom/adobe/phonegap/push/PushHandlerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/phonegap/push/PushHandlerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lcom/adobe/phonegap/push/PushHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v2, "pushBundle"

    .line 120
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const/high16 v1, 0x4000000

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x4

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "cdvStartInBackground"

    .line 126
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    :cond_1
    invoke-virtual {p0, v0}, Lcom/adobe/phonegap/push/PushHandlerActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final processPushBundle()Z
    .locals 6

    .line 84
    invoke-virtual {p0}, Lcom/adobe/phonegap/push/PushHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v2, "pushBundle"

    .line 87
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "foreground"

    const/4 v4, 0x0

    .line 88
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    sget-object v3, Lcom/adobe/phonegap/push/PushPlugin;->Companion:Lcom/adobe/phonegap/push/PushPlugin$Companion;

    invoke-virtual {v3}, Lcom/adobe/phonegap/push/PushPlugin$Companion;->isActive()Z

    move-result v3

    xor-int/2addr v3, v1

    const-string v5, "coldstart"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "dismissed"

    .line 90
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "callback"

    .line 93
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "actionCallback"

    .line 91
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "no-cache"

    .line 95
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/adobe/phonegap/push/PushHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "inlineReply"

    .line 98
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Inline Reply: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "cordova-plugin-push (PushHandlerActivity)"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    .line 105
    :cond_0
    sget-object v0, Lcom/adobe/phonegap/push/PushPlugin;->Companion:Lcom/adobe/phonegap/push/PushPlugin$Companion;

    invoke-virtual {v0, v2}, Lcom/adobe/phonegap/push/PushPlugin$Companion;->sendExtras(Landroid/os/Bundle;)V

    :cond_1
    return v1
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/adobe/phonegap/push/PushHandlerActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/adobe/phonegap/push/PushHandlerActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/adobe/phonegap/push/PushHandlerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "onCreate"

    const-string v0, "cordova-plugin-push (PushHandlerActivity)"

    .line 33
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p0}, Lcom/adobe/phonegap/push/PushHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "notId"

    const/4 v2, 0x0

    .line 36
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "callback"

    .line 37
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "foreground"

    const/4 v5, 0x1

    .line 38
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v6, "cdvStartInBackground"

    .line 39
    invoke-virtual {p1, v6, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "dismissed"

    .line 40
    invoke-virtual {p1, v7, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 42
    new-instance v7, Lcom/adobe/phonegap/push/FCMService;

    invoke-direct {v7}, Lcom/adobe/phonegap/push/FCMService;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v1, v8}, Lcom/adobe/phonegap/push/FCMService;->setNotification(ILjava/lang/String;)V

    if-nez v6, :cond_0

    const-string v7, "notification"

    .line 45
    invoke-virtual {p0, v7}, Lcom/adobe/phonegap/push/PushHandlerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/app/NotificationManager;

    .line 46
    sget-object v8, Lcom/adobe/phonegap/push/FCMService;->Companion:Lcom/adobe/phonegap/push/FCMService$Companion;

    move-object v9, p0

    check-cast v9, Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/adobe/phonegap/push/FCMService$Companion;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushHandlerActivity;->processPushBundle()Z

    move-result v7

    .line 55
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Not ID: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "Callback: "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Foreground: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Start On Background: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Dismissed: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Lcom/adobe/phonegap/push/PushHandlerActivity;->finish()V

    if-nez p1, :cond_3

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Is Push Plugin Active: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/adobe/phonegap/push/PushPlugin;->Companion:Lcom/adobe/phonegap/push/PushPlugin$Companion;

    invoke-virtual {v1}, Lcom/adobe/phonegap/push/PushPlugin$Companion;->isActive()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object p1, Lcom/adobe/phonegap/push/PushPlugin;->Companion:Lcom/adobe/phonegap/push/PushPlugin$Companion;

    invoke-virtual {p1}, Lcom/adobe/phonegap/push/PushPlugin$Companion;->isActive()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v4, :cond_1

    if-eqz v7, :cond_1

    const-string p1, "Force Main Activity Reload: Start on Background = False"

    .line 67
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-direct {p0, v2}, Lcom/adobe/phonegap/push/PushHandlerActivity;->forceMainActivityReload(Z)V

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_2

    const-string p1, "Force Main Activity Reload: Start on Background = True"

    .line 70
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct {p0, v5}, Lcom/adobe/phonegap/push/PushHandlerActivity;->forceMainActivityReload(Z)V

    goto :goto_0

    :cond_2
    const-string p1, "Don\'t Want Main Activity"

    .line 73
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "notification"

    .line 139
    invoke-virtual {p0, v0}, Lcom/adobe/phonegap/push/PushHandlerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    .line 140
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method
