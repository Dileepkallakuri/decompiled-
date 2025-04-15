.class public final Lcom/adobe/phonegap/push/FCMService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "FCMService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/phonegap/push/FCMService$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFCMService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FCMService.kt\ncom/adobe/phonegap/push/FCMService\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,1199:1\n37#2,2:1200\n37#2,2:1225\n107#3:1202\n79#3,22:1203\n107#3:1227\n79#3,22:1228\n*S KotlinDebug\n*F\n+ 1 FCMService.kt\ncom/adobe/phonegap/push/FCMService\n*L\n220#1:1200,2\n956#1:1225,2\n825#1:1202\n825#1:1203,22\n968#1:1227\n968#1:1228,22\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 Q2\u00020\u0001:\u0001QB\u0005\u00a2\u0006\u0002\u0010\u0002J\u001b\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0002\u0010\u000fJ\"\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0012\u0010\u0018\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J\u001a\u0010\u0019\u001a\u00020\u00152\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0012\u0010\u001c\u001a\u00020\u00172\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J\u0014\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\rH\u0002J\u0014\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0010\"\u001a\u0004\u0018\u00010\rH\u0002J\u0014\u0010#\u001a\u0004\u0018\u00010!2\u0008\u0010$\u001a\u0004\u0018\u00010!H\u0002J\u0010\u0010%\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\rH\u0002J\u0012\u0010\'\u001a\u00020(2\u0008\u0010)\u001a\u0004\u0018\u00010\rH\u0002J\u0018\u0010*\u001a\u00020\r2\u0006\u0010+\u001a\u00020\r2\u0006\u0010,\u001a\u00020\rH\u0002J$\u0010-\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010.\u001a\u0004\u0018\u00010\r2\u0008\u0010/\u001a\u0004\u0018\u00010\rH\u0002J,\u00100\u001a\u00020\r2\u0006\u0010+\u001a\u00020\r2\u0008\u0010.\u001a\u0004\u0018\u00010\r2\u0008\u0010/\u001a\u0004\u0018\u00010\r2\u0006\u00101\u001a\u00020\u0013H\u0002J\u0010\u00102\u001a\u00020\u00112\u0006\u00103\u001a\u000204H\u0016J\u0010\u00105\u001a\u00020\u00112\u0006\u00106\u001a\u00020\rH\u0016J\u0012\u00107\u001a\u00020\u00172\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J(\u00108\u001a\u00020\u00112\u0006\u00109\u001a\u00020\r2\u0006\u0010:\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u00101\u001a\u00020\u0013H\u0002J\u0018\u0010;\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u00103\u001a\u0004\u0018\u00010\rJ\u001a\u0010<\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J$\u0010=\u001a\u00020\u00112\u0008\u0010>\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010?\u001a\u0004\u0018\u00010\rH\u0002J\u001a\u0010@\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u001a\u0010A\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\"\u0010B\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u001a\u0010C\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u001a\u0010D\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J$\u0010E\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010F\u001a\u0004\u0018\u00010\rH\u0002J\u001a\u0010G\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\"\u0010H\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010I\u001a\u00020(2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u001a\u0010J\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0012\u0010K\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J2\u0010L\u001a\u00020\u00112\u0006\u0010M\u001a\u00020N2\u0006\u0010O\u001a\u00020\r2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010P\u001a\u00020(2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006R"
    }
    d2 = {
        "Lcom/adobe/phonegap/push/FCMService;",
        "Lcom/google/firebase/messaging/FirebaseMessagingService;",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "pushSharedPref",
        "Landroid/content/SharedPreferences;",
        "getPushSharedPref",
        "()Landroid/content/SharedPreferences;",
        "convertToTypedArray",
        "",
        "",
        "item",
        "(Ljava/lang/String;)[Ljava/lang/String;",
        "createActions",
        "",
        "extras",
        "Landroid/os/Bundle;",
        "mBuilder",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "notId",
        "",
        "createNotification",
        "createNotificationBuilder",
        "notificationManager",
        "Landroid/app/NotificationManager;",
        "extractBadgeCount",
        "fromHtml",
        "Landroid/text/Spanned;",
        "source",
        "getBitmapFromURL",
        "Landroid/graphics/Bitmap;",
        "strURL",
        "getCircleBitmap",
        "bitmap",
        "getImageId",
        "icon",
        "isAvailableSender",
        "",
        "from",
        "localizeKey",
        "key",
        "value",
        "normalizeExtras",
        "messageKey",
        "titleKey",
        "normalizeKey",
        "newExtras",
        "onMessageReceived",
        "message",
        "Lcom/google/firebase/messaging/RemoteMessage;",
        "onNewToken",
        "token",
        "parseNotificationIdToInt",
        "replaceKey",
        "oldKey",
        "newKey",
        "setNotification",
        "setNotificationCount",
        "setNotificationIconColor",
        "color",
        "localIconColor",
        "setNotificationLargeIcon",
        "setNotificationLedColor",
        "setNotificationMessage",
        "setNotificationOngoing",
        "setNotificationPriority",
        "setNotificationSmallIcon",
        "localIcon",
        "setNotificationSound",
        "setNotificationVibration",
        "vibrateOption",
        "setVisibility",
        "showNotificationIfPossible",
        "updateIntent",
        "intent",
        "Landroid/content/Intent;",
        "callback",
        "foreground",
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
.field public static final Companion:Lcom/adobe/phonegap/push/FCMService$Companion;

.field private static final FLAG_IMMUTABLE:I

.field private static final FLAG_MUTABLE:I

.field private static final TAG:Ljava/lang/String; = "cordova-plugin-push (FCMService)"

.field private static final messageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/adobe/phonegap/push/FCMService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/adobe/phonegap/push/FCMService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/adobe/phonegap/push/FCMService;->Companion:Lcom/adobe/phonegap/push/FCMService$Companion;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adobe/phonegap/push/FCMService;->messageMap:Ljava/util/HashMap;

    const/high16 v0, 0x2000000

    .line 48
    sput v0, Lcom/adobe/phonegap/push/FCMService;->FLAG_MUTABLE:I

    const/high16 v0, 0x4000000

    .line 53
    sput v0, Lcom/adobe/phonegap/push/FCMService;->FLAG_IMMUTABLE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method

.method private final convertToTypedArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 953
    check-cast p1, Ljava/lang/CharSequence;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\["

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    new-instance v0, Lkotlin/text/Regex;

    const-string v2, "]"

    .line 954
    invoke-direct {v0, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string p1, ","

    .line 955
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1226
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private final createActions(Landroid/os/Bundle;Landroidx/core/app/NotificationCompat$Builder;I)V
    .locals 26

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "title"

    const-string v10, "action.optString(PushConstants.ICON, \"\")"

    const-string v11, ""

    const-string v12, "icon"

    const-string v13, "callback"

    const-string v0, "create actions: with in-line"

    const-string v14, "cordova-plugin-push (FCMService)"

    .line 651
    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_0

    const-string v0, "create actions: extras is null, skipping"

    .line 654
    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "actions"

    .line 658
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 661
    :try_start_0
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 662
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 664
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_5

    .line 667
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const v1, 0x77359400

    .line 668
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const-string v3, "adding action"

    .line 670
    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-virtual {v15, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v0

    const-string v0, "adding callback = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "foreground"

    const/4 v1, 0x1

    .line 676
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v17

    const-string v0, "inline"

    const/4 v1, 0x0

    .line 677
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 680
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v16, :cond_1

    .line 684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v2

    const-string v2, "Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = 23"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Push Receiver"

    .line 690
    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    new-instance v2, Landroid/content/Intent;

    move-object v1, v6

    check-cast v1, Landroid/content/Context;

    move-object/from16 v21, v3

    const-class v3, Lcom/adobe/phonegap/push/BackgroundActionButtonHandler;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 694
    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    move/from16 v3, v18

    move-object/from16 v0, p0

    move-object/from16 v18, v1

    const/16 v19, 0x0

    move-object v1, v2

    move-object v7, v2

    move-object/from16 v2, v18

    move-object/from16 v22, v15

    move-object/from16 v8, v21

    move v15, v3

    move-object/from16 v3, p1

    move/from16 v21, v4

    move/from16 v4, v17

    move-object/from16 v23, v5

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/adobe/phonegap/push/FCMService;->updateIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;ZI)V

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "push receiver for notId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v5, p3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    move-object v0, v6

    check-cast v0, Landroid/content/Context;

    .line 712
    sget v1, Lcom/adobe/phonegap/push/FCMService;->FLAG_MUTABLE:I

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    .line 708
    invoke-static {v0, v15, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto/16 :goto_1

    :cond_1
    move/from16 v19, v1

    move/from16 v20, v2

    move-object v8, v3

    move/from16 v21, v4

    move-object/from16 v23, v5

    move-object/from16 v22, v15

    move/from16 v15, v18

    move/from16 v5, p3

    move-object/from16 v18, v0

    const/high16 v7, 0x8000000

    if-eqz v17, :cond_2

    .line 718
    new-instance v4, Landroid/content/Intent;

    move-object v0, v6

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/adobe/phonegap/push/PushHandlerActivity;

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v2, v18

    .line 719
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v3, p1

    move-object/from16 v24, v4

    move/from16 v4, v17

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/adobe/phonegap/push/FCMService;->updateIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;ZI)V

    .line 721
    move-object v0, v6

    check-cast v0, Landroid/content/Context;

    .line 723
    sget v1, Lcom/adobe/phonegap/push/FCMService;->FLAG_IMMUTABLE:I

    or-int/2addr v1, v7

    move-object/from16 v2, v24

    .line 720
    invoke-static {v0, v15, v2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object/from16 v2, v18

    .line 728
    new-instance v5, Landroid/content/Intent;

    move-object v0, v6

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/adobe/phonegap/push/BackgroundActionButtonHandler;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 729
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v3, p1

    move/from16 v4, v17

    move-object/from16 v25, v5

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/adobe/phonegap/push/FCMService;->updateIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;ZI)V

    .line 731
    move-object v0, v6

    check-cast v0, Landroid/content/Context;

    .line 733
    sget v1, Lcom/adobe/phonegap/push/FCMService;->FLAG_IMMUTABLE:I

    or-int/2addr v1, v7

    move-object/from16 v2, v25

    .line 730
    invoke-static {v0, v15, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 737
    :goto_1
    new-instance v1, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 738
    invoke-virtual {v8, v12, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v2}, Lcom/adobe/phonegap/push/FCMService;->getImageId(Ljava/lang/String;)I

    move-result v2

    .line 739
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 737
    invoke-direct {v1, v2, v3, v0}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    if-eqz v16, :cond_3

    const-string v2, "Create Remote Input"

    .line 746
    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "replyLabel"

    const-string v3, "Enter your reply here"

    .line 748
    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 753
    new-instance v3, Landroidx/core/app/RemoteInput$Builder;

    const-string v4, "inlineReply"

    invoke-direct {v3, v4}, Landroidx/core/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 754
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroidx/core/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v2

    .line 755
    invoke-virtual {v2}, Landroidx/core/app/RemoteInput$Builder;->build()Landroidx/core/app/RemoteInput;

    move-result-object v2

    .line 757
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroidx/core/app/RemoteInput;)Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 760
    :cond_3
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v2

    const-string v3, "actionBuilder.build()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 761
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v1

    move-object/from16 v3, v23

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v16, :cond_4

    move-object/from16 v1, p2

    .line 764
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_2

    :cond_4
    move-object/from16 v1, p2

    move-object v4, v8

    .line 767
    invoke-virtual {v4, v12, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v2}, Lcom/adobe/phonegap/push/FCMService;->getImageId(Ljava/lang/String;)I

    move-result v2

    .line 768
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 766
    invoke-virtual {v1, v2, v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    :goto_2
    add-int/lit8 v2, v20, 0x1

    move-object/from16 v7, p1

    move-object v8, v1

    move-object v5, v3

    move/from16 v4, v21

    move-object/from16 v15, v22

    goto/16 :goto_0

    :cond_5
    move-object v3, v5

    move-object v1, v8

    .line 774
    new-instance v0, Landroidx/core/app/NotificationCompat$WearableExtender;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$WearableExtender;-><init>()V

    move-object v5, v3

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$WearableExtender;->addActions(Ljava/util/List;)Landroidx/core/app/NotificationCompat$WearableExtender;

    move-result-object v0

    check-cast v0, Landroidx/core/app/NotificationCompat$Extender;

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->extend(Landroidx/core/app/NotificationCompat$Extender;)Landroidx/core/app/NotificationCompat$Builder;

    .line 775
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    return-void
.end method

.method private final createNotification(Landroid/os/Bundle;)V
    .locals 12

    const-string v0, "notification"

    .line 461
    invoke-virtual {p0, v0}, Lcom/adobe/phonegap/push/FCMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    .line 462
    sget-object v1, Lcom/adobe/phonegap/push/FCMService;->Companion:Lcom/adobe/phonegap/push/FCMService$Companion;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/adobe/phonegap/push/FCMService$Companion;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 463
    invoke-direct {p0, p1}, Lcom/adobe/phonegap/push/FCMService;->parseNotificationIdToInt(Landroid/os/Bundle;)I

    move-result v3

    .line 464
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/adobe/phonegap/push/PushHandlerActivity;

    invoke-direct {v4, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x24000000

    .line 465
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v5, "pushBundle"

    .line 466
    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v6, "notId"

    .line 467
    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 469
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    .line 470
    invoke-virtual {v7}, Ljava/security/SecureRandom;->nextInt()I

    move-result v8

    .line 475
    sget v9, Lcom/adobe/phonegap/push/FCMService;->FLAG_IMMUTABLE:I

    const/high16 v10, 0x8000000

    or-int/2addr v10, v9

    .line 471
    invoke-static {v2, v8, v4, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 477
    new-instance v8, Landroid/content/Intent;

    .line 478
    const-class v10, Lcom/adobe/phonegap/push/PushDismissedHandler;

    .line 477
    invoke-direct {v8, v2, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 481
    invoke-virtual {v8, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 482
    invoke-virtual {v8, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "dismissed"

    const/4 v6, 0x1

    .line 483
    invoke-virtual {v8, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "push_dismissed"

    .line 485
    invoke-virtual {v8, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    invoke-virtual {v7}, Ljava/security/SecureRandom;->nextInt()I

    move-result v5

    const/high16 v7, 0x10000000

    or-int/2addr v7, v9

    .line 490
    invoke-static {v2, v5, v8, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 498
    invoke-direct {p0, p1, v0}, Lcom/adobe/phonegap/push/FCMService;->createNotificationBuilder(Landroid/os/Bundle;Landroid/app/NotificationManager;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    const-string v8, "title"

    const/4 v9, 0x0

    if-eqz p1, :cond_0

    .line 501
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_0
    move-object v10, v9

    :goto_0
    invoke-direct {p0, v10}, Lcom/adobe/phonegap/push/FCMService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v7, v10}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    if-eqz p1, :cond_1

    .line 502
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v9

    :goto_1
    invoke-direct {p0, v8}, Lcom/adobe/phonegap/push/FCMService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 503
    invoke-virtual {v7, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 504
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 505
    invoke-virtual {v2, v6}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 507
    invoke-direct {p0}, Lcom/adobe/phonegap/push/FCMService;->getPushSharedPref()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "icon"

    invoke-interface {v2, v4, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 508
    invoke-direct {p0}, Lcom/adobe/phonegap/push/FCMService;->getPushSharedPref()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, "iconColor"

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 509
    invoke-direct {p0}, Lcom/adobe/phonegap/push/FCMService;->getPushSharedPref()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "sound"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 510
    invoke-direct {p0}, Lcom/adobe/phonegap/push/FCMService;->getPushSharedPref()Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v10, "vibrate"

    invoke-interface {v8, v10, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 512
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "stored icon="

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "cordova-plugin-push (FCMService)"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "stored iconColor="

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "stored sound="

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "stored vibrate="

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-direct {p0, p1, v6, v5}, Lcom/adobe/phonegap/push/FCMService;->setNotificationVibration(Landroid/os/Bundle;ZLandroidx/core/app/NotificationCompat$Builder;)V

    if-eqz p1, :cond_2

    const-string v6, "color"

    .line 528
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_2
    invoke-direct {p0, v9, v5, v4}, Lcom/adobe/phonegap/push/FCMService;->setNotificationIconColor(Ljava/lang/String;Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;)V

    .line 541
    invoke-direct {p0, p1, v5, v2}, Lcom/adobe/phonegap/push/FCMService;->setNotificationSmallIcon(Landroid/os/Bundle;Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;)V

    .line 554
    invoke-direct {p0, p1, v5}, Lcom/adobe/phonegap/push/FCMService;->setNotificationLargeIcon(Landroid/os/Bundle;Landroidx/core/app/NotificationCompat$Builder;)V

    if-eqz v7, :cond_3

    .line 560
    invoke-direct {p0, p1, v5}, Lcom/adobe/phonegap/push/FCMService;->setNotificationSound(Landroid/os/Bundle;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 566
    :cond_3
    invoke-direct {p0, p1, v5}, Lcom/adobe/phonegap/push/FCMService;->setNotificationLedColor(Landroid/os/Bundle;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 571
    invoke-direct {p0, p1, v5}, Lcom/adobe/phonegap/push/FCMService;->setNotificationPriority(Landroid/os/Bundle;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 576
    invoke-direct {p0, v3, p1, v5}, Lcom/adobe/phonegap/push/FCMService;->setNotificationMessage(ILandroid/os/Bundle;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 581
    invoke-direct {p0, p1, v5}, Lcom/adobe/phonegap/push/FCMService;->setNotificationCount(Landroid/os/Bundle;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 586
    invoke-direct {p0, p1, v5}, Lcom/adobe/phonegap/push/FCMService;->setNotificationOngoing(Landroid/os/Bundle;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 591
    invoke-direct {p0, p1, v5}, Lcom/adobe/phonegap/push/FCMService;->setVisibility(Landroid/os/Bundle;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 596
    invoke-direct {p0, p1, v5, v3}, Lcom/adobe/phonegap/push/FCMService;->createActions(Landroid/os/Bundle;Landroidx/core/app/NotificationCompat$Builder;I)V

    .line 597
    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, v1, v3, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private final createNotificationBuilder(Landroid/os/Bundle;Landroid/app/NotificationManager;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 2

    .line 604
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    if-eqz p1, :cond_0

    const-string v0, "android_channel_id"

    .line 608
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 613
    new-instance p2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {p0}, Lcom/adobe/phonegap/push/FCMService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 615
    :cond_1
    invoke-virtual {p2}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object p1

    .line 617
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    .line 618
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, "PushPluginChannel"

    .line 623
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Using channel ID = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "cordova-plugin-push (FCMService)"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    new-instance p2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {p0}, Lcom/adobe/phonegap/push/FCMService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    return-object p2

    .line 627
    :cond_3
    new-instance p1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {p0}, Lcom/adobe/phonegap/push/FCMService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method private final extractBadgeCount(Landroid/os/Bundle;)I
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "count"

    .line 391
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 392
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 395
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "cordova-plugin-push (FCMService)"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private final fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1190
    invoke-static {p1, v0}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1161
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/net/HttpURLConnection;

    const/16 v0, 0x3a98

    .line 1163
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v0, 0x1

    .line 1164
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1165
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 1167
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 1168
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1170
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1011
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1012
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1013
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1010
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1016
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    .line 1017
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v2, -0x10000

    .line 1018
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1019
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v2, Landroid/graphics/Xfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1022
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 1023
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1025
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 1026
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpg-float v6, v4, v5

    if-gez v6, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v5

    .line 1028
    :goto_0
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v7, v3, v3, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1030
    invoke-virtual {v2, v4, v5, v6, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1031
    invoke-virtual {v2, p1, v7, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1034
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/adobe/phonegap/push/FCMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getImageId(Ljava/lang/String;)I
    .locals 3

    .line 1092
    invoke-direct {p0}, Lcom/adobe/phonegap/push/FCMService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lcom/adobe/phonegap/push/FCMService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1094
    invoke-direct {p0}, Lcom/adobe/phonegap/push/FCMService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lcom/adobe/phonegap/push/FCMService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mipmap"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private final getPushSharedPref()Landroid/content/SharedPreferences;
    .locals 3

    .line 71
    invoke-direct {p0}, Lcom/adobe/phonegap/push/FCMService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.adobe.phonegap.push"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "context.getSharedPrefere\u2026\n      MODE_PRIVATE\n    )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final isAvailableSender(Ljava/lang/String;)Z
    .locals 4

    .line 1194
    invoke-direct {p0}, Lcom/adobe/phonegap/push/FCMService;->getPushSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "senderID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1195
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sender id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cordova-plugin-push (FCMService)"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "/topics/"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method private final localizeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "locData"

    const-string v1, "cordova-plugin-push (FCMService)"

    .line 194
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x4719e20d

    if-eq v2, v3, :cond_2

    const v3, 0x6942258

    if-eq v2, v3, :cond_1

    const v3, 0x38eb0007

    if-eq v2, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v2, "message"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_1
    const-string v2, "title"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_3

    :cond_2
    const-string v2, "summaryText"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_3

    :cond_3
    :goto_0
    const/16 v2, 0x29

    .line 200
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "locKey"

    .line 201
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 202
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 204
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_4

    .line 205
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    move v6, v7

    :goto_1
    if-ge v6, v0, :cond_4

    .line 209
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 213
    :cond_4
    invoke-direct {p0}, Lcom/adobe/phonegap/push/FCMService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "string"

    .line 216
    invoke-direct {p0}, Lcom/adobe/phonegap/push/FCMService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 213
    invoke-virtual {v0, v4, v3, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 220
    invoke-direct {p0}, Lcom/adobe/phonegap/push/FCMService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    check-cast v5, Ljava/util/Collection;

    new-array v4, v7, [Ljava/lang/String;

    .line 1201
    invoke-interface {v5, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .line 220
    check-cast v4, [Ljava/lang/String;

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 222
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t Find Locale Resource (key="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No Locale Found (key= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ", error="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string p1, "{\n        try {\n        \u2026  value\n        }\n      }"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-object p2
.end method

.method private final normalizeExtras(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "jsonKey"

    const-string v5, "normalize extras"

    const-string v6, "cordova-plugin-push (FCMService)"

    .line 300
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 303
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 305
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 306
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 307
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "key = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "data"

    .line 312
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "message"

    const-string v11, "replace key "

    const-string v12, " with "

    if-nez v9, :cond_3

    .line 313
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 314
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v9, "notification"

    .line 357
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 358
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 359
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 361
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 362
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 363
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "notificationKey = "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-direct {v0, v10, v2, v3, v7}, Lcom/adobe/phonegap/push/FCMService;->normalizeKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v11

    .line 366
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Replace key "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 369
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v11, v10}, Lcom/adobe/phonegap/push/FCMService;->localizeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 370
    invoke-virtual {v7, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 379
    :cond_2
    invoke-direct {v0, v8, v2, v3, v7}, Lcom/adobe/phonegap/push/FCMService;->normalizeKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v9

    .line 380
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-direct {v0, v8, v9, v1, v7}, Lcom/adobe/phonegap/push/FCMService;->replaceKey(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 316
    :cond_3
    :goto_2
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 319
    instance-of v13, v9, Ljava/lang/String;

    if-eqz v13, :cond_9

    move-object v13, v9

    check-cast v13, Ljava/lang/String;

    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object/from16 v16, v5

    const-string v5, "{"

    move-object/from16 v17, v4

    const/4 v4, 0x0

    invoke-static {v13, v5, v4, v14, v15}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "extracting nested message data from key = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    check-cast v9, Ljava/lang/String;

    invoke-direct {v4, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "alert"

    .line 326
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 327
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "body"

    .line 328
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "title"

    .line 329
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 330
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 331
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    const-string v5, "locKey"

    .line 344
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "locData"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 345
    :cond_5
    invoke-direct {v0, v8, v2, v3, v7}, Lcom/adobe/phonegap/push/FCMService;->normalizeKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 346
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-direct {v0, v8, v4, v1, v7}, Lcom/adobe/phonegap/push/FCMService;->replaceKey(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_5

    .line 333
    :cond_6
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 335
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 336
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 337
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "key = data/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v10, v17

    .line 340
    :try_start_1
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v8, v2, v3, v7}, Lcom/adobe/phonegap/push/FCMService;->normalizeKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v8

    .line 341
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "value"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v8, v9}, Lcom/adobe/phonegap/push/FCMService;->localizeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 342
    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v17, v10

    goto :goto_4

    :cond_7
    :goto_5
    move-object/from16 v5, v16

    move-object/from16 v4, v17

    goto/16 :goto_0

    :catch_0
    move-object/from16 v10, v17

    :catch_1
    const-string v4, "normalizeExtras: JSON exception"

    .line 350
    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_8
    move-object/from16 v10, v17

    goto :goto_6

    :cond_9
    move-object v10, v4

    move-object/from16 v16, v5

    .line 353
    :goto_6
    invoke-direct {v0, v8, v2, v3, v7}, Lcom/adobe/phonegap/push/FCMService;->normalizeKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 354
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-direct {v0, v8, v4, v1, v7}, Lcom/adobe/phonegap/push/FCMService;->replaceKey(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    :goto_7
    move-object v4, v10

    move-object/from16 v5, v16

    goto/16 :goto_0

    :cond_a
    return-object v7
.end method

.method private final normalizeKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3

    const-string v0, "body"

    .line 244
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "alert"

    .line 245
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "mp_message"

    .line 246
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "gcm.notification.body"

    .line 247
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "twi_body"

    .line 248
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 249
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    const-string p2, "pinpoint.notification.body"

    .line 250
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string p2, "twi_title"

    .line 255
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    const-string p2, "subject"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string p2, "msgcnt"

    .line 259
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, "badge"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string p2, "soundname"

    .line 263
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "twi_sound"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto/16 :goto_0

    :cond_3
    const-string p2, "pinpoint.notification.imageUrl"

    .line 267
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p1, "style"

    const-string p2, "picture"

    .line 268
    invoke-virtual {p4, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, p2

    goto/16 :goto_4

    :cond_4
    const-string p2, "gcm.notification"

    const/4 p3, 0x0

    const/4 p4, 0x2

    const/4 v0, 0x0

    .line 272
    invoke-static {p1, p2, p3, p4, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    if-eqz p2, :cond_5

    const/16 p2, 0x11

    .line 273
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string p2, "gcm.n."

    .line 276
    invoke-static {p1, p2, p3, p4, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x7

    .line 277
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string p2, "com.urbanairship.push"

    .line 280
    invoke-static {p1, p2, p3, p4, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    const/16 v2, 0x16

    if-eqz p2, :cond_7

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string p2, "pinpoint.notification"

    .line 284
    invoke-static {p1, p2, p3, p4, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 285
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    :goto_0
    const-string p1, "sound"

    goto :goto_4

    :cond_9
    :goto_1
    const-string p1, "count"

    goto :goto_4

    :cond_a
    :goto_2
    const-string p1, "title"

    goto :goto_4

    :cond_b
    :goto_3
    const-string p1, "message"

    :cond_c
    :goto_4
    return-object p1
.end method

.method private final parseNotificationIdToInt(Landroid/os/Bundle;)I
    .locals 3

    const-string v0, "cordova-plugin-push (FCMService)"

    .line 1179
    :try_start_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "notId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1183
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception occurred when parsing notId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1181
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NumberFormatException occurred: notId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private final replaceKey(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    .line 169
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 172
    instance-of p3, p1, Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 173
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/adobe/phonegap/push/FCMService;->localizeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_0
    instance-of p3, p1, Ljava/lang/Boolean;

    if-eqz p3, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 179
    :cond_1
    instance-of p3, p1, Ljava/lang/Number;

    if-eqz p3, :cond_2

    .line 180
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p4, p2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final setNotificationCount(Landroid/os/Bundle;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 2

    .line 783
    invoke-direct {p0, p1}, Lcom/adobe/phonegap/push/FCMService;->extractBadgeCount(Landroid/os/Bundle;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "count =["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cordova-plugin-push (FCMService)"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method

.method private final setNotificationIconColor(Ljava/lang/String;Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    const-string v1, "cordova-plugin-push (FCMService)"

    if-eqz p1, :cond_0

    .line 1132
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1134
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Couldn\'t parse color from Android options"

    .line 1136
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 1140
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1142
    :try_start_1
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string p1, "Couldn\'t parse color from android options"

    .line 1144
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_1
    const-string p1, "No icon color settings found"

    .line 1149
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 1155
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    :cond_2
    return-void
.end method

.method private final setNotificationLargeIcon(Landroid/os/Bundle;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 8

    if-eqz p1, :cond_5

    const-string v0, "image"

    .line 1043
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image-type"

    const-string v2, "square"

    .line 1044
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_5

    const-string v1, ""

    .line 1046
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "http://"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 1048
    invoke-static {v0, v1, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x1

    const-string v7, "cordova-plugin-push (FCMService)"

    if-nez v1, :cond_3

    const-string v1, "https://"

    .line 1049
    invoke-static {v0, v1, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1063
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/phonegap/push/FCMService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v3, "assets.open(gcmLargeIcon)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1065
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1067
    invoke-static {v2, p1, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1068
    invoke-virtual {p2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 1070
    :cond_1
    invoke-direct {p0, v1}, Lcom/adobe/phonegap/push/FCMService;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1071
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    :goto_0
    const-string p1, "Using assets large-icon from GCM"

    .line 1074
    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1076
    :catch_0
    invoke-direct {p0, v0}, Lcom/adobe/phonegap/push/FCMService;->getImageId(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 1079
    invoke-direct {p0}, Lcom/adobe/phonegap/push/FCMService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1080
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    const-string p1, "Using resources large-icon from GCM"

    .line 1081
    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    const-string p1, "Not large icon settings"

    .line 1083
    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1051
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lcom/adobe/phonegap/push/FCMService;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1053
    invoke-static {v2, p1, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1054
    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_2

    .line 1056
    :cond_4
    invoke-direct {p0, v0}, Lcom/adobe/phonegap/push/FCMService;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1057
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    :goto_2
    const-string p1, "Using remote large-icon from GCM"

    .line 1060
    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return-void
.end method

.method private final setNotificationLedColor(Landroid/os/Bundle;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 13

    if-eqz p1, :cond_8

    const-string v0, "ledColor"

    .line 961
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 963
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/adobe/phonegap/push/FCMService;->convertToTypedArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 964
    array-length v0, p1

    new-array v1, v0, [I

    .line 966
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "cordova-plugin-push (FCMService)"

    const/4 v6, 0x1

    if-ge v4, v2, :cond_6

    .line 968
    :try_start_0
    aget-object v7, p1, v4

    .line 1227
    check-cast v7, Ljava/lang/CharSequence;

    .line 1229
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sub-int/2addr v8, v6

    move v9, v3

    move v10, v9

    :goto_1
    if-gt v9, v8, :cond_5

    if-nez v10, :cond_0

    move v11, v9

    goto :goto_2

    :cond_0
    move v11, v8

    .line 1234
    :goto_2
    invoke-interface {v7, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/16 v12, 0x20

    .line 968
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v11

    if-gtz v11, :cond_1

    move v11, v6

    goto :goto_3

    :cond_1
    move v11, v3

    :goto_3
    if-nez v10, :cond_3

    if-nez v11, :cond_2

    move v10, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    if-nez v11, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_5
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 1249
    invoke-interface {v7, v9, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1227
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 968
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v1, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v6

    .line 970
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Number Format Exception: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    const/4 p1, 0x4

    if-ne v0, p1, :cond_7

    .line 975
    aget p1, v1, v3

    aget v0, v1, v6

    const/4 v2, 0x2

    aget v2, v1, v2

    const/4 v3, 0x3

    aget v1, v1, v3

    .line 976
    invoke-static {p1, v0, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    const/16 v0, 0x1f4

    invoke-virtual {p2, p1, v0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setLights(III)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-string p2, "{\n          val (alpha, \u2026lue), 500, 500)\n        }"

    .line 974
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    const-string p1, "ledColor parameter must be an array of length == 4 (ARGB)"

    .line 978
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    :cond_8
    :goto_6
    return-void
.end method

.method private final setNotificationMessage(ILandroid/os/Bundle;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 11

    if-eqz p2, :cond_7

    const-string v0, "message"

    .line 849
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "style"

    const-string v2, "text"

    .line 851
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "inbox"

    .line 852
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "summaryText"

    const-string v4, "title"

    if-eqz v2, :cond_4

    .line 853
    invoke-virtual {p0, p1, v0}, Lcom/adobe/phonegap/push/FCMService;->setNotification(ILjava/lang/String;)V

    .line 854
    invoke-direct {p0, v0}, Lcom/adobe/phonegap/push/FCMService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 856
    sget-object v1, Lcom/adobe/phonegap/push/FCMService;->messageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    .line 857
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 860
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " more"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 863
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 864
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "%n%"

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 867
    :cond_0
    new-instance v1, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    .line 868
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/adobe/phonegap/push/FCMService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Landroidx/core/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 869
    invoke-direct {p0, v0}, Lcom/adobe/phonegap/push/FCMService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Landroidx/core/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    move-result-object p2

    .line 871
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 872
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/phonegap/push/FCMService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    const-string p1, "InboxStyle().run {\n     \u2026        }\n              }"

    .line 870
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 876
    check-cast p2, Landroidx/core/app/NotificationCompat$Style;

    invoke-virtual {p3, p2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    goto/16 :goto_3

    :cond_3
    if-eqz v0, :cond_7

    .line 879
    new-instance p1, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 880
    invoke-direct {p0, v0}, Lcom/adobe/phonegap/push/FCMService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 881
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/adobe/phonegap/push/FCMService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p1

    const-string p2, "BigTextStyle().run {\n   \u2026ITLE)))\n                }"

    .line 879
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 884
    check-cast p1, Landroidx/core/app/NotificationCompat$Style;

    invoke-virtual {p3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    goto/16 :goto_3

    :cond_4
    const-string v2, "picture"

    .line 890
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v5, ""

    if-eqz v1, :cond_5

    .line 891
    invoke-virtual {p0, p1, v5}, Lcom/adobe/phonegap/push/FCMService;->setNotification(ILjava/lang/String;)V

    .line 892
    new-instance p1, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {p1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 893
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adobe/phonegap/push/FCMService;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 894
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adobe/phonegap/push/FCMService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 895
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adobe/phonegap/push/FCMService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object p1

    const-string v1, "BigPictureStyle().run {\n\u2026MMARY_TEXT)))\n          }"

    .line 892
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 899
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/adobe/phonegap/push/FCMService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p3, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 900
    invoke-direct {p0, v0}, Lcom/adobe/phonegap/push/FCMService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p3, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 901
    check-cast p1, Landroidx/core/app/NotificationCompat$Style;

    invoke-virtual {p3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_3

    .line 906
    :cond_5
    invoke-virtual {p0, p1, v5}, Lcom/adobe/phonegap/push/FCMService;->setNotification(ILjava/lang/String;)V

    if-eqz v0, :cond_7

    .line 909
    new-instance p1, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 910
    invoke-direct {p0, v0}, Lcom/adobe/phonegap/push/FCMService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 911
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adobe/phonegap/push/FCMService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 913
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 914
    invoke-direct {p0, p2}, Lcom/adobe/phonegap/push/FCMService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    .line 918
    :goto_2
    invoke-direct {p0, v0}, Lcom/adobe/phonegap/push/FCMService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p3, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 919
    check-cast p1, Landroidx/core/app/NotificationCompat$Style;

    invoke-virtual {p3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_7
    :goto_3
    return-void
.end method

.method private final setNotificationOngoing(Landroid/os/Bundle;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "ongoing"

    const-string v1, "false"

    .line 838
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 839
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method

.method private final setNotificationPriority(Landroid/os/Bundle;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "priority"

    .line 986
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    const-string v0, "priorityStr"

    .line 988
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 994
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const-string p1, "cordova-plugin-push (FCMService)"

    const-string p2, "Priority parameter must be between -2 and 2"

    .line 996
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 999
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    :goto_0
    return-void
.end method

.method private final setNotificationSmallIcon(Landroid/os/Bundle;Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    const-string v0, "icon"

    .line 1105
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 1108
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1109
    invoke-direct {p0, p1}, Lcom/adobe/phonegap/push/FCMService;->getImageId(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 1112
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1113
    invoke-direct {p0, p3}, Lcom/adobe/phonegap/push/FCMService;->getImageId(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_1
    const-string p1, "cordova-plugin-push (FCMService)"

    const-string p3, "No icon resource found from settings, using application icon"

    .line 1117
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    invoke-direct {p0}, Lcom/adobe/phonegap/push/FCMService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 1122
    :goto_0
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    :cond_2
    return-void
.end method

.method private final setNotificationSound(Landroid/os/Bundle;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 2

    if-eqz p1, :cond_3

    const-string v0, "soundname"

    .line 928
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "sound"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string p1, "ringtone"

    .line 931
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 932
    sget-object p1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const-string p1, "default"

    .line 935
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 937
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/phonegap/push/FCMService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "/raw/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 936
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sound URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cordova-plugin-push (FCMService)"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 946
    :cond_2
    sget-object p1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_3
    :goto_0
    return-void
.end method

.method private final setNotificationVibration(Landroid/os/Bundle;ZLandroidx/core/app/NotificationCompat$Builder;)V
    .locals 10

    if-nez p1, :cond_0

    const-string p1, "cordova-plugin-push (FCMService)"

    const-string p2, "setNotificationVibration: extras is null, skipping"

    .line 815
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "vibrationPattern"

    .line 819
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 821
    invoke-direct {p0, p1}, Lcom/adobe/phonegap/push/FCMService;->convertToTypedArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 822
    array-length p2, p1

    new-array p2, p2, [J

    .line 823
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    .line 825
    :try_start_0
    aget-object v3, p1, v2

    .line 1202
    check-cast v3, Ljava/lang/CharSequence;

    .line 1204
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move v6, v1

    move v7, v6

    :goto_1
    if-gt v6, v4, :cond_6

    if-nez v7, :cond_1

    move v8, v6

    goto :goto_2

    :cond_1
    move v8, v4

    .line 1209
    :goto_2
    invoke-interface {v3, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    .line 825
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v8

    if-gtz v8, :cond_2

    move v8, v5

    goto :goto_3

    :cond_2
    move v8, v1

    :goto_3
    if-nez v7, :cond_4

    if-nez v8, :cond_3

    move v7, v5

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    if-nez v8, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 1224
    invoke-interface {v3, v6, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1202
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 825
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, p2, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 829
    :cond_7
    invoke-virtual {p3, p2}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_5

    :cond_8
    if-eqz p2, :cond_9

    const/4 p1, 0x2

    .line 832
    invoke-virtual {p3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    :cond_9
    :goto_5
    return-void
.end method

.method private final setVisibility(Landroid/os/Bundle;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "visibility"

    .line 791
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 793
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 799
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-string p2, "{\n          mBuilder.set\u2026(visibilityInt)\n        }"

    .line 798
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "cordova-plugin-push (FCMService)"

    const-string p2, "Visibility parameter must be between -1 and 1"

    .line 801
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 804
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    :goto_0
    return-void
.end method

.method private final showNotificationIfPossible(Landroid/os/Bundle;)V
    .locals 9

    if-eqz p1, :cond_a

    const-string v0, "message"

    .line 404
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    .line 405
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "content-available"

    .line 406
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "force-start"

    .line 407
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 408
    invoke-direct {p0, p1}, Lcom/adobe/phonegap/push/FCMService;->extractBadgeCount(Landroid/os/Bundle;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 411
    sget-object v6, Lcom/adobe/phonegap/push/PushPlugin;->Companion:Lcom/adobe/phonegap/push/PushPlugin$Companion;

    invoke-direct {p0}, Lcom/adobe/phonegap/push/FCMService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/adobe/phonegap/push/PushPlugin$Companion;->setApplicationIconBadgeNumber(Landroid/content/Context;I)V

    :cond_0
    if-nez v5, :cond_1

    const-string v6, "notification"

    .line 415
    invoke-virtual {p0, v6}, Lcom/adobe/phonegap/push/FCMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/app/NotificationManager;

    .line 416
    invoke-virtual {v6}, Landroid/app/NotificationManager;->cancelAll()V

    .line 419
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "message="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cordova-plugin-push (FCMService)"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "title="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "contentAvailable="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "forceStart="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "badgeCount="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    .line 425
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v6

    :goto_0
    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_1

    :cond_3
    move v0, v6

    :goto_1
    if-eqz v2, :cond_5

    .line 426
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_4

    move v2, v5

    goto :goto_2

    :cond_4
    move v2, v6

    :goto_2
    if-eqz v2, :cond_5

    move v2, v5

    goto :goto_3

    :cond_5
    move v2, v6

    :goto_3
    if-nez v0, :cond_6

    if-eqz v2, :cond_8

    :cond_6
    const-string v0, "Create Notification"

    .line 429
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_7

    .line 432
    sget-object v0, Lcom/adobe/phonegap/push/FCMService;->Companion:Lcom/adobe/phonegap/push/FCMService$Companion;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/adobe/phonegap/push/FCMService$Companion;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_7
    invoke-direct {p0, p1}, Lcom/adobe/phonegap/push/FCMService;->createNotification(Landroid/os/Bundle;)V

    .line 438
    :cond_8
    sget-object v0, Lcom/adobe/phonegap/push/PushPlugin;->Companion:Lcom/adobe/phonegap/push/PushPlugin$Companion;

    invoke-virtual {v0}, Lcom/adobe/phonegap/push/PushPlugin$Companion;->isActive()Z

    move-result v0

    const-string v1, "1"

    if-nez v0, :cond_9

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "The app is not running, attempting to start in the background"

    .line 439
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/adobe/phonegap/push/PushHandlerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 442
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "pushBundle"

    .line 443
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "cdvStartInBackground"

    .line 444
    invoke-virtual {v0, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "foreground"

    .line 445
    invoke-virtual {v0, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 448
    invoke-virtual {p0, v0}, Lcom/adobe/phonegap/push/FCMService;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 449
    :cond_9
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "The app is not running and content available is true, sending notification event"

    .line 450
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    sget-object v0, Lcom/adobe/phonegap/push/PushPlugin;->Companion:Lcom/adobe/phonegap/push/PushPlugin$Companion;

    invoke-virtual {v0, p1}, Lcom/adobe/phonegap/push/PushPlugin$Companion;->sendExtras(Landroid/os/Bundle;)V

    :cond_a
    :goto_4
    return-void
.end method

.method private final updateIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;ZI)V
    .locals 1

    const-string v0, "callback"

    .line 639
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "pushBundle"

    .line 640
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p2, "foreground"

    .line 641
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "notId"

    .line 642
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 8

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onMessageReceived (from="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cordova-plugin-push (FCMService)"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 120
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v4

    const-string v5, "title"

    if-eqz v4, :cond_0

    .line 121
    invoke-virtual {v4}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v4}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "sound"

    .line 123
    invoke-virtual {v4}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getSound()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "icon"

    .line 124
    invoke-virtual {v4}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getIcon()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "color"

    .line 125
    invoke-virtual {v4}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getColor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p1

    const-string v4, "message.data"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 129
    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-direct {p0, v1}, Lcom/adobe/phonegap/push/FCMService;->isAvailableSender(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 133
    invoke-direct {p0}, Lcom/adobe/phonegap/push/FCMService;->getPushSharedPref()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "messageKey"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-direct {p0}, Lcom/adobe/phonegap/push/FCMService;->getPushSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "titleKey"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-direct {p0, v2, p1, v0}, Lcom/adobe/phonegap/push/FCMService;->normalizeExtras(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 139
    invoke-direct {p0}, Lcom/adobe/phonegap/push/FCMService;->getPushSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "clearBadge"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    sget-object v0, Lcom/adobe/phonegap/push/PushPlugin;->Companion:Lcom/adobe/phonegap/push/PushPlugin$Companion;

    invoke-direct {p0}, Lcom/adobe/phonegap/push/FCMService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/adobe/phonegap/push/PushPlugin$Companion;->setApplicationIconBadgeNumber(Landroid/content/Context;I)V

    .line 145
    :cond_2
    sget-object v0, Lcom/adobe/phonegap/push/PushPlugin;->Companion:Lcom/adobe/phonegap/push/PushPlugin$Companion;

    invoke-virtual {v0}, Lcom/adobe/phonegap/push/PushPlugin$Companion;->isInForeground()Z

    move-result v0

    const-string v1, "foreground"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 148
    invoke-direct {p0}, Lcom/adobe/phonegap/push/FCMService;->getPushSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "forceShow"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "coldstart"

    if-nez v0, :cond_3

    .line 149
    sget-object v4, Lcom/adobe/phonegap/push/PushPlugin;->Companion:Lcom/adobe/phonegap/push/PushPlugin$Companion;

    invoke-virtual {v4}, Lcom/adobe/phonegap/push/PushPlugin$Companion;->isInForeground()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v0, "Do Not Force & Is In Foreground"

    .line 150
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    sget-object v0, Lcom/adobe/phonegap/push/PushPlugin;->Companion:Lcom/adobe/phonegap/push/PushPlugin$Companion;

    invoke-virtual {v0, p1}, Lcom/adobe/phonegap/push/PushPlugin$Companion;->sendExtras(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 153
    sget-object v0, Lcom/adobe/phonegap/push/PushPlugin;->Companion:Lcom/adobe/phonegap/push/PushPlugin$Companion;

    invoke-virtual {v0}, Lcom/adobe/phonegap/push/PushPlugin$Companion;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Force & Is In Foreground"

    .line 154
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    invoke-direct {p0, p1}, Lcom/adobe/phonegap/push/FCMService;->showNotificationIfPossible(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    const-string v0, "In Background"

    .line 158
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-object v0, Lcom/adobe/phonegap/push/PushPlugin;->Companion:Lcom/adobe/phonegap/push/PushPlugin$Companion;

    invoke-virtual {v0}, Lcom/adobe/phonegap/push/PushPlugin$Companion;->isActive()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    invoke-direct {p0, p1}, Lcom/adobe/phonegap/push/FCMService;->showNotificationIfPossible(Landroid/os/Bundle;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 2

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onNewToken(Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Refreshed token: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cordova-plugin-push (FCMService)"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setNotification(ILjava/lang/String;)V
    .locals 2

    .line 97
    sget-object v0, Lcom/adobe/phonegap/push/FCMService;->messageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 101
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_3

    .line 104
    move-object p1, p2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    .line 107
    :cond_2
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 105
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_2
    return-void
.end method
