.class public final Lcom/adobe/phonegap/push/PushPlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "PushPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/phonegap/push/PushPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0016\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\n\u0008\u0007\u0018\u0000 Q2\u00020\u0001:\u0001QB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0012\u0010\u001a\u001a\u00020\u00162\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0003J\u0012\u0010\u001d\u001a\u00020\u00162\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001cH\u0003J\u0010\u0010\u001f\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u0008H\u0003J \u0010!\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020\u00082\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0016J\u0010\u0010\'\u001a\u00020\u00162\u0006\u0010%\u001a\u00020&H\u0002J\u0018\u0010(\u001a\u00020\u00162\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0002J\u0018\u0010)\u001a\u00020\u00162\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0002J\u0018\u0010*\u001a\u00020\u00162\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0002J\u0010\u0010+\u001a\u00020\u00162\u0006\u0010%\u001a\u00020&H\u0002J\u0010\u0010,\u001a\u00020\u00162\u0006\u0010%\u001a\u00020&H\u0002J\u0018\u0010-\u001a\u00020\u00162\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0002J\u0010\u0010.\u001a\u00020\u00162\u0006\u0010%\u001a\u00020&H\u0002J\u0018\u0010/\u001a\u00020\u00162\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0002J\u0018\u00100\u001a\u00020\u00162\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0002J\u0018\u00101\u001a\u00020\u00162\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0002J\u0018\u00102\u001a\u00020\u00162\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0002J \u00103\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u000105\u0012\u0006\u0012\u0004\u0018\u000106042\u0006\u00107\u001a\u00020\u001cH\u0002J\u001e\u00108\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u000109042\u0006\u00107\u001a\u00020\u001cH\u0002J\u0018\u0010:\u001a\u00020\u00162\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>H\u0016J\u0008\u0010?\u001a\u00020$H\u0003J\u0008\u0010@\u001a\u00020\u0016H\u0016J\u0010\u0010A\u001a\u00020\u00162\u0006\u0010B\u001a\u00020\u0014H\u0016J1\u0010C\u001a\u00020\u00162\u0006\u0010D\u001a\u00020\u00192\u0010\u0010E\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0008\u0018\u00010F2\u0008\u0010G\u001a\u0004\u0018\u00010HH\u0016\u00a2\u0006\u0002\u0010IJ\u0010\u0010J\u001a\u00020\u00162\u0006\u0010B\u001a\u00020\u0014H\u0016J\u0012\u0010K\u001a\u00020\u00162\u0008\u0010L\u001a\u0004\u0018\u00010\u0008H\u0002J\u0012\u0010M\u001a\u00020\u00162\u0008\u0010N\u001a\u0004\u0018\u00010$H\u0002J\u0012\u0010O\u001a\u00020\u00162\u0008\u0010L\u001a\u0004\u0018\u00010\u0008H\u0002J\u0012\u0010P\u001a\u00020\u00162\u0008\u0010N\u001a\u0004\u0018\u00010$H\u0002R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006R"
    }
    d2 = {
        "Lcom/adobe/phonegap/push/PushPlugin;",
        "Lorg/apache/cordova/CordovaPlugin;",
        "()V",
        "activity",
        "Landroid/app/Activity;",
        "getActivity",
        "()Landroid/app/Activity;",
        "appName",
        "",
        "getAppName",
        "()Ljava/lang/String;",
        "applicationContext",
        "Landroid/content/Context;",
        "getApplicationContext",
        "()Landroid/content/Context;",
        "notificationManager",
        "Landroid/app/NotificationManager;",
        "getNotificationManager",
        "()Landroid/app/NotificationManager;",
        "checkForPostNotificationsPermission",
        "",
        "clearAllNotifications",
        "",
        "clearNotification",
        "id",
        "",
        "createChannel",
        "channel",
        "Lorg/json/JSONObject;",
        "createDefaultNotificationChannelIfNeeded",
        "options",
        "deleteChannel",
        "channelId",
        "execute",
        "action",
        "data",
        "Lorg/json/JSONArray;",
        "callbackContext",
        "Lorg/apache/cordova/CallbackContext;",
        "executeActionClearAllNotifications",
        "executeActionClearNotification",
        "executeActionCreateChannel",
        "executeActionDeleteChannel",
        "executeActionGetIconBadgeNumber",
        "executeActionHasPermission",
        "executeActionInitialize",
        "executeActionListChannels",
        "executeActionSetIconBadgeNumber",
        "executeActionSubscribe",
        "executeActionUnregister",
        "executeActionUnsubscribe",
        "getNotificationChannelSound",
        "Lkotlin/Pair;",
        "Landroid/net/Uri;",
        "Landroid/media/AudioAttributes;",
        "channelData",
        "getNotificationChannelVibration",
        "",
        "initialize",
        "cordova",
        "Lorg/apache/cordova/CordovaInterface;",
        "webView",
        "Lorg/apache/cordova/CordovaWebView;",
        "listChannels",
        "onDestroy",
        "onPause",
        "multitasking",
        "onRequestPermissionResult",
        "requestCode",
        "permissions",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "onResume",
        "subscribeToTopic",
        "topic",
        "subscribeToTopics",
        "topics",
        "unsubscribeFromTopic",
        "unsubscribeFromTopics",
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
.field public static final Companion:Lcom/adobe/phonegap/push/PushPlugin$Companion;

.field public static final PREFIX_TAG:Ljava/lang/String; = "cordova-plugin-push"

.field private static final REQ_CODE_INITIALIZE_PLUGIN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "cordova-plugin-push (PushPlugin)"

.field private static final gCachedExtras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private static gWebView:Lorg/apache/cordova/CordovaWebView;

.field private static isInForeground:Z

.field private static pluginInitData:Lorg/json/JSONArray;

.field private static pushContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method public static synthetic $r8$lambda$-bLJOgbmK_ier18dtXy13RCZD0g(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionInitialize$lambda$8(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3f_LGgVXZ-t1x-sBpieFsxIZico(Lorg/apache/cordova/CallbackContext;Lcom/adobe/phonegap/push/PushPlugin;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionListChannels$lambda$24(Lorg/apache/cordova/CallbackContext;Lcom/adobe/phonegap/push/PushPlugin;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7vAyOYKdFgIwcObHhRg3GbStzwY(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionUnsubscribe$lambda$21(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8MMaH7_CZlCOsttRSL7LrEpn0Xs(Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionHasPermission$lambda$15(Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9hH_xcYZ2VQ6y-4mH5kPDNO9Mjc(Lcom/adobe/phonegap/push/PushPlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionUnregister$lambda$11(Lcom/adobe/phonegap/push/PushPlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C5sWyljZ_TMQrSlBigJHpfZv-6Q(Lcom/adobe/phonegap/push/PushPlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionCreateChannel$lambda$22(Lcom/adobe/phonegap/push/PushPlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EWbLn1zS87bb52lxxf99rml96Ro(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionClearNotification$lambda$25(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E_FqIWDT8l1Pp0umi9Sq3ZRo3Bk(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionSubscribe$lambda$20(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PqMCIb28bg9rrrrmY1atmeTpsSk(Lorg/apache/cordova/CallbackContext;Lcom/adobe/phonegap/push/PushPlugin;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionGetIconBadgeNumber$lambda$18(Lorg/apache/cordova/CallbackContext;Lcom/adobe/phonegap/push/PushPlugin;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QXZiGNQqJxQvFeGRl_AI4R-e3h8(Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionClearAllNotifications$lambda$19(Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SJnRXyoW3dZzPOsamXkYxRZ7oLQ(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionDeleteChannel$lambda$23(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tFOKTBCNH9GT7r5Yxxftcg6qyyg(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionSetIconBadgeNumber$lambda$17(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/adobe/phonegap/push/PushPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/adobe/phonegap/push/PushPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/adobe/phonegap/push/PushPlugin;->Companion:Lcom/adobe/phonegap/push/PushPlugin$Companion;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/adobe/phonegap/push/PushPlugin;->gCachedExtras:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method public static final synthetic access$getGCachedExtras$cp()Ljava/util/List;
    .locals 1

    .line 35
    sget-object v0, Lcom/adobe/phonegap/push/PushPlugin;->gCachedExtras:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getGWebView$cp()Lorg/apache/cordova/CordovaWebView;
    .locals 1

    .line 35
    sget-object v0, Lcom/adobe/phonegap/push/PushPlugin;->gWebView:Lorg/apache/cordova/CordovaWebView;

    return-object v0
.end method

.method public static final synthetic access$getPushContext$cp()Lorg/apache/cordova/CallbackContext;
    .locals 1

    .line 35
    sget-object v0, Lcom/adobe/phonegap/push/PushPlugin;->pushContext:Lorg/apache/cordova/CallbackContext;

    return-object v0
.end method

.method public static final synthetic access$isInForeground$cp()Z
    .locals 1

    .line 35
    sget-boolean v0, Lcom/adobe/phonegap/push/PushPlugin;->isInForeground:Z

    return v0
.end method

.method public static final synthetic access$setInForeground$cp(Z)V
    .locals 0

    .line 35
    sput-boolean p0, Lcom/adobe/phonegap/push/PushPlugin;->isInForeground:Z

    return-void
.end method

.method private final checkForPostNotificationsPermission()Z
    .locals 3

    .line 614
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 615
    move-object v0, p0

    check-cast v0, Lorg/apache/cordova/CordovaPlugin;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v0, v1}, Lorg/apache/cordova/PermissionHelper;->hasPermission(Lorg/apache/cordova/CordovaPlugin;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 617
    invoke-static {v0, v2, v1}, Lorg/apache/cordova/PermissionHelper;->requestPermission(Lorg/apache/cordova/CordovaPlugin;ILjava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private final clearAllNotifications()V
    .locals 1

    .line 863
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method

.method private final clearNotification(I)V
    .locals 2

    .line 867
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method private final createChannel(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 252
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    if-eqz p1, :cond_2

    .line 254
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "id"

    .line 255
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "description"

    .line 256
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "importance"

    const/4 v4, 0x3

    .line 257
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 254
    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v1, "lightColor"

    const/4 v2, -0x1

    .line 262
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    .line 264
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 265
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    :cond_0
    const-string v1, "visibility"

    .line 271
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const-string v1, "badge"

    .line 279
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 284
    invoke-direct {p0, p1}, Lcom/adobe/phonegap/push/PushPlugin;->getNotificationChannelSound(Lorg/json/JSONObject;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 285
    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 291
    invoke-direct {p0, p1}, Lcom/adobe/phonegap/push/PushPlugin;->getNotificationChannelVibration(Lorg/json/JSONObject;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    if-eqz p1, :cond_1

    .line 293
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 298
    :goto_0
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_2
    return-void
.end method

.method private final createDefaultNotificationChannelIfNeeded(Lorg/json/JSONObject;)V
    .locals 5

    .line 359
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    .line 360
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object v0

    .line 362
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const-string v3, "PushPluginChannel"

    if-ge v2, v1, :cond_1

    .line 363
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    const-string v0, "id"

    .line 370
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "description"

    .line 371
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 374
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/adobe/phonegap/push/PushPlugin;->createChannel(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 376
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Execute: JSON Exception "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cordova-plugin-push (PushPlugin)"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    return-void
.end method

.method private final deleteChannel(Ljava/lang/String;)V
    .locals 2

    .line 244
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final executeActionClearAllNotifications(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 736
    iget-object v0, p0, Lcom/adobe/phonegap/push/PushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda7;-><init>(Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final executeActionClearAllNotifications$lambda$19(Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callbackContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cordova-plugin-push (PushPlugin)"

    const-string v1, "Execute Clear All Notifications"

    .line 737
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->clearAllNotifications()V

    .line 739
    invoke-virtual {p1}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void
.end method

.method private final executeActionClearNotification(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 806
    iget-object v0, p0, Lcom/adobe/phonegap/push/PushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p0, p2}, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda2;-><init>(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final executeActionClearNotification$lambda$25(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    const-string v0, "Execute::ClearNotification notificationId="

    const-string v1, "$data"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this$0"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$callbackContext"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 808
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result p0

    const-string v1, "cordova-plugin-push (PushPlugin)"

    .line 809
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-direct {p1, p0}, Lcom/adobe/phonegap/push/PushPlugin;->clearNotification(I)V

    .line 811
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 813
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final executeActionCreateChannel(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 770
    iget-object v0, p0, Lcom/adobe/phonegap/push/PushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda10;-><init>(Lcom/adobe/phonegap/push/PushPlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final executeActionCreateChannel$lambda$22(Lcom/adobe/phonegap/push/PushPlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callbackContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "cordova-plugin-push (PushPlugin)"

    const-string v1, "Execute::CreateChannel"

    .line 772
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 773
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/adobe/phonegap/push/PushPlugin;->createChannel(Lorg/json/JSONObject;)V

    .line 774
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 776
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final executeActionDeleteChannel(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 782
    iget-object v0, p0, Lcom/adobe/phonegap/push/PushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0, p2}, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda0;-><init>(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final executeActionDeleteChannel$lambda$23(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    const-string v0, "Execute::DeleteChannel channelId="

    const-string v1, "$data"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this$0"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$callbackContext"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 784
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "cordova-plugin-push (PushPlugin)"

    .line 785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "channelId"

    .line 786
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0}, Lcom/adobe/phonegap/push/PushPlugin;->deleteChannel(Ljava/lang/String;)V

    .line 787
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 789
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final executeActionGetIconBadgeNumber(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 729
    iget-object v0, p0, Lcom/adobe/phonegap/push/PushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1, p0}, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda9;-><init>(Lorg/apache/cordova/CallbackContext;Lcom/adobe/phonegap/push/PushPlugin;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final executeActionGetIconBadgeNumber$lambda$18(Lorg/apache/cordova/CallbackContext;Lcom/adobe/phonegap/push/PushPlugin;)V
    .locals 2

    const-string v0, "$callbackContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cordova-plugin-push (PushPlugin)"

    const-string v1, "Execute::GetIconBadgeNumber"

    .line 730
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    sget-object v0, Lcom/adobe/phonegap/push/PushPlugin;->Companion:Lcom/adobe/phonegap/push/PushPlugin$Companion;

    invoke-direct {p1}, Lcom/adobe/phonegap/push/PushPlugin;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/adobe/phonegap/push/PushPlugin$Companion;->getApplicationIconBadgeNumber(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/cordova/CallbackContext;->success(I)V

    return-void
.end method

.method private final executeActionHasPermission(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/adobe/phonegap/push/PushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda11;-><init>(Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final executeActionHasPermission$formatLogMessage$12(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Execute::HasPermission: ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final executeActionHasPermission$lambda$15(Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    const-string v0, "Has Notification Permission: "

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$callbackContext"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    :try_start_0
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p0

    .line 690
    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result p0

    const-string v1, "cordova-plugin-push (PushPlugin)"

    .line 692
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionHasPermission$formatLogMessage$12(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "isEnabled"

    .line 695
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 698
    new-instance p0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p0, v1, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    const/4 v0, 0x1

    .line 699
    invoke-virtual {p0, v0}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 702
    invoke-virtual {p1, p0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_0
    .catch Ljava/lang/UnknownError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 706
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 704
    invoke-virtual {p0}, Ljava/lang/UnknownError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final executeActionInitialize(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 441
    sput-object p2, Lcom/adobe/phonegap/push/PushPlugin;->pushContext:Lorg/apache/cordova/CallbackContext;

    .line 442
    sput-object p1, Lcom/adobe/phonegap/push/PushPlugin;->pluginInitData:Lorg/json/JSONArray;

    .line 444
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->checkForPostNotificationsPermission()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/adobe/phonegap/push/PushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p0, p2}, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda3;-><init>(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final executeActionInitialize$formatLogMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Execute::Initialize: ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final executeActionInitialize$lambda$8(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 13

    const-string v0, "onRegistered="

    const-string v1, "Firebase Token Exception "

    const-string v2, "Firebase Token Exception "

    const-string v3, "Firebase Token Exception "

    const-string v4, "senderID="

    const-string v5, "JSONObject="

    const-string v6, "$data"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "this$0"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "$callbackContext"

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "cordova-plugin-push (PushPlugin)"

    .line 449
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Data="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionInitialize$formatLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-direct {p1}, Lcom/adobe/phonegap/push/PushPlugin;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.adobe.phonegap.push"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const/4 v7, 0x0

    .line 459
    :try_start_0
    invoke-virtual {p0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v9, "android"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_a

    .line 461
    :try_start_1
    invoke-direct {p1}, Lcom/adobe/phonegap/push/PushPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "gcm_defaultSenderId"

    const-string v11, "string"

    .line 464
    invoke-direct {p1}, Lcom/adobe/phonegap/push/PushPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 461
    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 466
    invoke-direct {p1}, Lcom/adobe/phonegap/push/PushPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_7

    .line 469
    :try_start_2
    invoke-direct {p1, p0}, Lcom/adobe/phonegap/push/PushPlugin;->createDefaultNotificationChannelIfNeeded(Lorg/json/JSONObject;)V

    const-string v10, "cordova-plugin-push (PushPlugin)"

    .line 471
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionInitialize$formatLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "cordova-plugin-push (PushPlugin)"

    .line 472
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionInitialize$formatLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    .line 476
    :try_start_3
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v7, v4

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v4

    .line 478
    :try_start_4
    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v5, v4

    check-cast v5, Ljava/lang/Throwable;

    :cond_0
    throw v5
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_0
    :try_start_5
    const-string v3, "cordova-plugin-push (PushPlugin)"

    .line 487
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionInitialize$formatLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    move-exception v2

    const-string v3, "cordova-plugin-push (PushPlugin)"

    .line 484
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionInitialize$formatLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    const-string v2, "cordova-plugin-push (PushPlugin)"

    .line 481
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionInitialize$formatLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string v1, ""

    .line 491
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 492
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "registrationId"

    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "registrationType"

    const-string v3, "FCM"

    .line 493
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "cordova-plugin-push (PushPlugin)"

    .line 496
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionInitialize$formatLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "topics"

    .line 498
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 499
    invoke-direct {p1, v0}, Lcom/adobe/phonegap/push/PushPlugin;->subscribeToTopics(Lorg/json/JSONArray;)V

    .line 501
    sget-object v0, Lcom/adobe/phonegap/push/PushPlugin;->Companion:Lcom/adobe/phonegap/push/PushPlugin$Companion;

    invoke-virtual {v0, v1}, Lcom/adobe/phonegap/push/PushPlugin$Companion;->sendEvent(Lorg/json/JSONObject;)V

    goto/16 :goto_a

    :cond_1
    const-string v0, "Empty registration ID received from FCM"

    .line 503
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    return-void

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v9, v7

    :goto_3
    move-object v7, p0

    goto :goto_6

    :catch_8
    move-exception v0

    move-object v9, v7

    :goto_4
    move-object v7, p0

    goto :goto_7

    :catch_9
    move-exception v0

    move-object v9, v7

    :goto_5
    move-object v7, p0

    goto :goto_8

    :catch_a
    move-exception v0

    move-object v9, v7

    :goto_6
    const-string p0, "cordova-plugin-push (PushPlugin)"

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resources NotFoundException Exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionInitialize$formatLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_9

    :catch_b
    move-exception v0

    move-object v9, v7

    :goto_7
    const-string p0, "cordova-plugin-push (PushPlugin)"

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IO Exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionInitialize$formatLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_9

    :catch_c
    move-exception v0

    move-object v9, v7

    :goto_8
    const-string p0, "cordova-plugin-push (PushPlugin)"

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSON Exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionInitialize$formatLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_9
    move-object p0, v7

    :goto_a
    const/4 p2, 0x1

    if-eqz p0, :cond_3

    .line 523
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "edit()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_6
    const-string v1, "icon"

    const-string v2, "icon"

    .line 528
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_d

    goto :goto_b

    :catch_d
    const-string v1, "cordova-plugin-push (PushPlugin)"

    const-string v2, "No Icon Options"

    .line 530
    invoke-static {v2}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionInitialize$formatLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    :try_start_7
    const-string v1, "iconColor"

    const-string v2, "iconColor"

    .line 537
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_e

    goto :goto_c

    :catch_e
    const-string v1, "cordova-plugin-push (PushPlugin)"

    const-string v2, "No Icon Color Options"

    .line 539
    invoke-static {v2}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionInitialize$formatLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    const-string v1, "clearBadge"

    .line 545
    invoke-virtual {p0, v1, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "clearBadge"

    .line 546
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_2

    .line 549
    sget-object v1, Lcom/adobe/phonegap/push/PushPlugin;->Companion:Lcom/adobe/phonegap/push/PushPlugin$Companion;

    invoke-direct {p1}, Lcom/adobe/phonegap/push/PushPlugin;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1, p1, v8}, Lcom/adobe/phonegap/push/PushPlugin$Companion;->setApplicationIconBadgeNumber(Landroid/content/Context;I)V

    :cond_2
    const-string p1, "sound"

    const-string v1, "sound"

    .line 555
    invoke-virtual {p0, v1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string p1, "vibrate"

    const-string v1, "vibrate"

    .line 560
    invoke-virtual {p0, v1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string p1, "clearNotifications"

    const-string v1, "clearNotifications"

    .line 567
    invoke-virtual {p0, v1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 565
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string p1, "forceShow"

    const-string v1, "forceShow"

    .line 575
    invoke-virtual {p0, v1, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 573
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string p1, "senderID"

    .line 581
    invoke-interface {v0, p1, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "messageKey"

    const-string v1, "messageKey"

    .line 586
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "titleKey"

    const-string v1, "titleKey"

    .line 591
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 593
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 597
    :cond_3
    sget-object p0, Lcom/adobe/phonegap/push/PushPlugin;->gCachedExtras:Ljava/util/List;

    const-string p1, "gCachedExtras"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, p2

    if-eqz p1, :cond_5

    const-string p1, "cordova-plugin-push (PushPlugin)"

    const-string p2, "Sending Cached Extras"

    .line 598
    invoke-static {p2}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionInitialize$formatLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "gCachedExtras"

    .line 600
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    .line 601
    :try_start_8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 603
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 604
    sget-object p2, Lcom/adobe/phonegap/push/PushPlugin;->Companion:Lcom/adobe/phonegap/push/PushPlugin$Companion;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Lcom/adobe/phonegap/push/PushPlugin$Companion;->sendExtras(Landroid/os/Bundle;)V

    goto :goto_d

    .line 606
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 600
    monitor-exit p0

    .line 608
    sget-object p0, Lcom/adobe/phonegap/push/PushPlugin;->gCachedExtras:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_e

    :catchall_0
    move-exception p1

    .line 600
    monitor-exit p0

    throw p1

    :cond_5
    :goto_e
    return-void
.end method

.method private final executeActionListChannels(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 795
    iget-object v0, p0, Lcom/adobe/phonegap/push/PushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p0}, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda8;-><init>(Lorg/apache/cordova/CallbackContext;Lcom/adobe/phonegap/push/PushPlugin;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final executeActionListChannels$lambda$24(Lorg/apache/cordova/CallbackContext;Lcom/adobe/phonegap/push/PushPlugin;)V
    .locals 2

    const-string v0, "$callbackContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "cordova-plugin-push (PushPlugin)"

    const-string v1, "Execute::ListChannels"

    .line 797
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-direct {p1}, Lcom/adobe/phonegap/push/PushPlugin;->listChannels()Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 800
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final executeActionSetIconBadgeNumber(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 714
    iget-object v0, p0, Lcom/adobe/phonegap/push/PushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0, p2}, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda1;-><init>(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final executeActionSetIconBadgeNumber$formatLogMessage$16(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Execute::SetIconBadgeNumber: ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final executeActionSetIconBadgeNumber$lambda$17(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    const-string v0, "$data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callbackContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionSetIconBadgeNumber$formatLogMessage$16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cordova-plugin-push (PushPlugin)"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 718
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "badge"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 719
    sget-object v0, Lcom/adobe/phonegap/push/PushPlugin;->Companion:Lcom/adobe/phonegap/push/PushPlugin$Companion;

    invoke-direct {p1}, Lcom/adobe/phonegap/push/PushPlugin;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/adobe/phonegap/push/PushPlugin$Companion;->setApplicationIconBadgeNumber(Landroid/content/Context;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 721
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 724
    :goto_0
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void
.end method

.method private final executeActionSubscribe(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 744
    iget-object v0, p0, Lcom/adobe/phonegap/push/PushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p0, p2}, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda5;-><init>(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final executeActionSubscribe$lambda$20(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    const-string v0, "$data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callbackContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "cordova-plugin-push (PushPlugin)"

    const-string v1, "Execute::Subscribe"

    .line 746
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 747
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 748
    invoke-direct {p1, p0}, Lcom/adobe/phonegap/push/PushPlugin;->subscribeToTopic(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 751
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final executeActionUnregister(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/adobe/phonegap/push/PushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda4;-><init>(Lcom/adobe/phonegap/push/PushPlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final executeActionUnregister$formatLogMessage$9(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Execute::Unregister: ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final executeActionUnregister$lambda$11(Lcom/adobe/phonegap/push/PushPlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 4

    const-string v0, "cordova-plugin-push (PushPlugin)"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$data"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$callbackContext"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 635
    :try_start_0
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.adobe.phonegap.push"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 639
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 642
    invoke-direct {p0, p1}, Lcom/adobe/phonegap/push/PushPlugin;->unsubscribeFromTopics(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 645
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->deleteToken()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string p0, "UNREGISTER"

    .line 649
    invoke-static {p0}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionUnregister$formatLogMessage$9(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "icon"

    .line 657
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "iconColor"

    .line 658
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "clearBadge"

    .line 659
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "sound"

    .line 660
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "vibrate"

    .line 661
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "clearNotifications"

    .line 662
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "forceShow"

    .line 663
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "senderID"

    .line 664
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "messageKey"

    .line 665
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "titleKey"

    .line 666
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 668
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 672
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_1

    :catch_0
    move-exception p0

    .line 647
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_2

    move-object p1, p0

    check-cast p1, Ljava/lang/Throwable;

    :cond_2
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 677
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Interrupted "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionUnregister$formatLogMessage$9(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 674
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "IO Exception "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionUnregister$formatLogMessage$9(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private final executeActionUnsubscribe(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 757
    iget-object v0, p0, Lcom/adobe/phonegap/push/PushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, p0, p2}, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda6;-><init>(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final executeActionUnsubscribe$lambda$21(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    const-string v0, "$data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callbackContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "cordova-plugin-push (PushPlugin)"

    const-string v1, "Execute::Unsubscribe"

    .line 759
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 760
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 761
    invoke-direct {p1, p0}, Lcom/adobe/phonegap/push/PushPlugin;->unsubscribeFromTopic(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 764
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final getActivity()Landroid/app/Activity;
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/adobe/phonegap/push/PushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    const-string v1, "cordova.activity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method private final getAppName()Ljava/lang/String;
    .locals 2

    .line 219
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final getApplicationContext()Landroid/content/Context;
    .locals 2

    .line 213
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getNotificationChannelSound(Lorg/json/JSONObject;)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lkotlin/Pair<",
            "Landroid/net/Uri;",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation

    .line 305
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 306
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x6

    .line 307
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    const-string v1, "sound"

    const-string v2, "default"

    .line 310
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "ringtone"

    .line 313
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p1, Lkotlin/Pair;

    .line 314
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 313
    invoke-direct {p1, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 320
    :cond_0
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    new-instance p1, Lkotlin/Pair;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 323
    :cond_2
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 325
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 327
    new-instance v2, Lkotlin/Pair;

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "android.resource://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/raw/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 327
    invoke-direct {v2, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_1

    .line 333
    :cond_3
    new-instance p1, Lkotlin/Pair;

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-direct {p1, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-object p1
.end method

.method private final getNotificationChannelVibration(Lorg/json/JSONObject;)Lkotlin/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "[J>;"
        }
    .end annotation

    const-string v0, "vibration"

    .line 339
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 342
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 343
    new-array v3, v2, [J

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 346
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v5

    aput-wide v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 350
    :cond_1
    new-instance v1, Lkotlin/Pair;

    const/4 v2, 0x1

    .line 351
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 350
    invoke-direct {v1, p1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private final getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .line 216
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private final listChannels()Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 224
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 226
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object v1

    .line 229
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 230
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "id"

    .line 231
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "description"

    .line 232
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final sendExtras(Landroid/os/Bundle;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/adobe/phonegap/push/PushPlugin;->Companion:Lcom/adobe/phonegap/push/PushPlugin$Companion;

    invoke-virtual {v0, p0}, Lcom/adobe/phonegap/push/PushPlugin$Companion;->sendExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public static final setApplicationIconBadgeNumber(Landroid/content/Context;I)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/adobe/phonegap/push/PushPlugin;->Companion:Lcom/adobe/phonegap/push/PushPlugin$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/adobe/phonegap/push/PushPlugin$Companion;->setApplicationIconBadgeNumber(Landroid/content/Context;I)V

    return-void
.end method

.method private final subscribeToTopic(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Subscribing to Topic: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cordova-plugin-push (PushPlugin)"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method private final subscribeToTopics(Lorg/json/JSONArray;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 872
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v2, 0x0

    .line 873
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 874
    invoke-direct {p0, v2}, Lcom/adobe/phonegap/push/PushPlugin;->subscribeToTopic(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final unsubscribeFromTopic(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsubscribing to topic: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cordova-plugin-push (PushPlugin)"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->unsubscribeFromTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method private final unsubscribeFromTopics(Lorg/json/JSONArray;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 881
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v2, 0x0

    .line 882
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 883
    invoke-direct {p0, v2}, Lcom/adobe/phonegap/push/PushPlugin;->unsubscribeFromTopic(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Execute: Action = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cordova-plugin-push (PushPlugin)"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/adobe/phonegap/push/PushPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    sput-object v0, Lcom/adobe/phonegap/push/PushPlugin;->gWebView:Lorg/apache/cordova/CordovaWebView;

    .line 410
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "unregister"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 412
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionUnregister(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "unsubscribe"

    .line 410
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 423
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionUnsubscribe(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "deleteChannel"

    .line 410
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 425
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionDeleteChannel(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "subscribe"

    .line 410
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_1

    .line 422
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionSubscribe(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :sswitch_4
    const-string p2, "clearAllNotifications"

    .line 410
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_1

    .line 421
    :cond_4
    invoke-direct {p0, p3}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionClearAllNotifications(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    :sswitch_5
    const-string p2, "hasPermission"

    .line 410
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto/16 :goto_1

    .line 414
    :cond_5
    invoke-direct {p0, p3}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionHasPermission(Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    :sswitch_6
    const-string v0, "init"

    .line 410
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    .line 411
    :cond_6
    invoke-direct {p0, p2, p3}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionInitialize(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    :sswitch_7
    const-string v0, "clearNotification"

    .line 410
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    .line 427
    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionClearNotification(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    :sswitch_8
    const-string p2, "getApplicationIconBadgeNumber"

    .line 410
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_1

    .line 418
    :cond_8
    invoke-direct {p0, p3}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionGetIconBadgeNumber(Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    :sswitch_9
    const-string p2, "finish"

    .line 410
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_1

    .line 413
    :cond_9
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    :sswitch_a
    const-string v0, "createChannel"

    .line 410
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_1

    .line 424
    :cond_a
    invoke-direct {p0, p2, p3}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionCreateChannel(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    :sswitch_b
    const-string v0, "setApplicationIconBadgeNumber"

    .line 410
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1

    .line 415
    :cond_b
    invoke-direct {p0, p2, p3}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionSetIconBadgeNumber(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    :sswitch_c
    const-string p2, "listChannels"

    .line 410
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_1

    .line 426
    :cond_c
    invoke-direct {p0, p3}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionListChannels(Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 429
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Execute: Invalid Action "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object p2, Lorg/apache/cordova/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p1, p2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    const/4 p1, 0x0

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a024572 -> :sswitch_c
        -0x4e1fe2db -> :sswitch_b
        -0x4e0d5f99 -> :sswitch_a
        -0x4bf6736d -> :sswitch_9
        -0x3dde98e7 -> :sswitch_8
        -0x388c7828 -> :sswitch_7
        0x316510 -> :sswitch_6
        0xa3e3c09 -> :sswitch_5
        0x16327934 -> :sswitch_4
        0x1eafdd4a -> :sswitch_3
        0x1fd6e8d8 -> :sswitch_2
        0x22c42ad1 -> :sswitch_1
        0x31d4943c -> :sswitch_0
    .end sparse-switch
.end method

.method public initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 1

    const-string v0, "cordova"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 822
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaPlugin;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    const/4 p1, 0x1

    .line 823
    sput-boolean p1, Lcom/adobe/phonegap/push/PushPlugin;->isInForeground:Z

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v0, 0x0

    .line 846
    sput-boolean v0, Lcom/adobe/phonegap/push/PushPlugin;->isInForeground:Z

    const/4 v1, 0x0

    .line 847
    sput-object v1, Lcom/adobe/phonegap/push/PushPlugin;->gWebView:Lorg/apache/cordova/CordovaWebView;

    .line 850
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.adobe.phonegap.push"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "clearNotifications"

    const/4 v2, 0x1

    .line 854
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin;->clearAllNotifications()V

    .line 859
    :cond_0
    invoke-super {p0}, Lorg/apache/cordova/CordovaPlugin;->onDestroy()V

    return-void
.end method

.method public onPause(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 830
    sput-boolean v0, Lcom/adobe/phonegap/push/PushPlugin;->isInForeground:Z

    .line 831
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onPause(Z)V

    return-void
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 907
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/CordovaPlugin;->onRequestPermissionResult(I[Ljava/lang/String;[I)V

    .line 909
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget v1, p3, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 911
    sget-object p1, Lcom/adobe/phonegap/push/PushPlugin;->pushContext:Lorg/apache/cordova/CallbackContext;

    if-eqz p1, :cond_0

    .line 912
    new-instance p2, Lorg/apache/cordova/PluginResult;

    .line 913
    sget-object p3, Lorg/apache/cordova/PluginResult$Status;->ILLEGAL_ACCESS_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    const-string v0, "Permission to post notifications was denied by the user"

    .line 912
    invoke-direct {p2, p3, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 911
    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 923
    sget-object p1, Lcom/adobe/phonegap/push/PushPlugin;->pluginInitData:Lorg/json/JSONArray;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object p2, Lcom/adobe/phonegap/push/PushPlugin;->pushContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/adobe/phonegap/push/PushPlugin;->executeActionInitialize(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    :cond_3
    return-void
.end method

.method public onResume(Z)V
    .locals 0

    .line 838
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onResume(Z)V

    const/4 p1, 0x1

    .line 839
    sput-boolean p1, Lcom/adobe/phonegap/push/PushPlugin;->isInForeground:Z

    return-void
.end method
