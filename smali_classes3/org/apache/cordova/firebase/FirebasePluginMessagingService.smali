.class public Lorg/apache/cordova/firebase/FirebasePluginMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "FirebasePluginMessagingService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FirebasePlugin"

.field static final defaultLargeIconName:Ljava/lang/String; = "notification_icon_large"

.field static final defaultSmallIconName:Ljava/lang/String; = "notification_icon"

.field static final imageTypeBigPicture:Ljava/lang/String; = "big_picture"

.field static final imageTypeCircle:Ljava/lang/String; = "circle"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method

.method private fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 0

    if-eqz p1, :cond_0

    .line 470
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 445
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 446
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 448
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 449
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 450
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v4, 0x1

    .line 452
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 453
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const/high16 v4, -0x10000

    .line 454
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 455
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 456
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

    .line 458
    :goto_0
    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 460
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 461
    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 463
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method private putKVInBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 476
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private sendMessage(Lcom/google/firebase/messaging/RemoteMessage;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/messaging/RemoteMessage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    move-object/from16 v15, p17

    .line 229
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v14, "sendMessage(): messageType="

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; showNotification="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; id="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; title="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; body="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; sound="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; vibrate="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; light="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; color="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; icon="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; channel="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; data="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "FirebasePlugin"

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 231
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v15

    move-object/from16 v15, v17

    check-cast v15, Ljava/lang/String;

    move-object/from16 v6, p2

    .line 232
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v15, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v6, p8

    move-object/from16 v15, v18

    goto :goto_0

    :cond_0
    move-object/from16 v18, v15

    const-string v6, "messageType"

    .line 234
    invoke-virtual {v14, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "id"

    .line 235
    invoke-direct {v1, v0, v2, v14}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->putKVInBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "title"

    .line 236
    invoke-direct {v1, v0, v3, v14}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->putKVInBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "body"

    .line 237
    invoke-direct {v1, v0, v4, v14}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->putKVInBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "body_html"

    .line 238
    invoke-direct {v1, v0, v5, v14}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->putKVInBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "sound"

    .line 239
    invoke-direct {v1, v0, v7, v14}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->putKVInBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "vibrate"

    .line 240
    invoke-direct {v1, v0, v8, v14}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->putKVInBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "light"

    .line 241
    invoke-direct {v1, v0, v9, v14}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->putKVInBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v6, "color"

    .line 242
    invoke-direct {v1, v6, v10, v14}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->putKVInBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "icon"

    .line 243
    invoke-direct {v1, v0, v11, v14}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->putKVInBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "channel_id"

    .line 244
    invoke-direct {v1, v0, v12, v14}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->putKVInBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "priority"

    .line 245
    invoke-direct {v1, v0, v13, v14}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->putKVInBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "visibility"

    move-object/from16 v15, p16

    .line 246
    invoke-direct {v1, v0, v15, v14}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->putKVInBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "image"

    move-object/from16 v2, p17

    .line 247
    invoke-direct {v1, v0, v2, v14}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->putKVInBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "image_type"

    move-object/from16 v13, p18

    .line 248
    invoke-direct {v1, v0, v13, v14}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->putKVInBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "show_notification"

    .line 249
    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v0, v15, v14}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->putKVInBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "from"

    .line 250
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/messaging/RemoteMessage;->getFrom()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v0, v15, v14}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->putKVInBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "collapse_key"

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/messaging/RemoteMessage;->getCollapseKey()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v0, v15, v14}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->putKVInBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 252
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/messaging/RemoteMessage;->getSentTime()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v15, "sent_time"

    invoke-direct {v1, v15, v0, v14}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->putKVInBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/messaging/RemoteMessage;->getTtl()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v15, "ttl"

    invoke-direct {v1, v15, v0, v14}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->putKVInBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz p8, :cond_1a

    .line 261
    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v15, 0x1f

    move-object/from16 p2, v6

    const/high16 v6, 0xc000000

    if-lt v0, v15, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v15, :cond_1

    .line 262
    new-instance v0, Landroid/content/Intent;

    const-class v15, Lorg/apache/cordova/firebase/OnNotificationReceiverActivity;

    invoke-direct {v0, v1, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    invoke-virtual {v0, v14}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 264
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    move-result v15

    invoke-static {v1, v15, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_1

    .line 266
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v15, Lorg/apache/cordova/firebase/OnNotificationOpenReceiver;

    invoke-direct {v0, v1, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    invoke-virtual {v0, v14}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 268
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    move-result v15

    invoke-static {v1, v15, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_1
    if-eqz v12, :cond_3

    .line 273
    invoke-static/range {p14 .. p14}, Lorg/apache/cordova/firebase/FirebasePlugin;->channelExists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    move-object v6, v12

    goto :goto_3

    .line 274
    :cond_3
    :goto_2
    sget-object v6, Lorg/apache/cordova/firebase/FirebasePlugin;->defaultChannelId:Ljava/lang/String;

    .line 276
    :goto_3
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1a

    if-lt v12, v15, :cond_4

    .line 277
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "Channel ID: "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v15, v18

    invoke-static {v15, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    move-object/from16 v15, v18

    .line 281
    :goto_4
    new-instance v12, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v12, v1, v6}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v12, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v6, 0x1

    .line 284
    invoke-virtual {v3, v6}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 285
    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v5, :cond_5

    .line 289
    invoke-direct {v1, v4}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    new-instance v3, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 290
    invoke-direct {v1, v4}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_5

    .line 293
    :cond_5
    invoke-virtual {v12, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    new-instance v3, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 294
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 299
    :goto_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x1a

    if-ge v0, v5, :cond_b

    if-nez v7, :cond_6

    const-string v0, "Sound: none"

    .line 302
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_6
    const-string v0, "default"

    .line 303
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 304
    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    const-string v0, "Sound: default"

    .line 305
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 307
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "android.resource://"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/raw/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "Sound: custom="

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; path="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {v12, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    :goto_6
    const-string v0, ","

    const-string v3, ""

    const-string v5, "\\s"

    if-eqz v9, :cond_9

    .line 315
    :try_start_0
    invoke-virtual {v10, v5, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 316
    array-length v9, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v6, 0x3

    if-ne v9, v6, :cond_8

    .line 317
    :try_start_1
    aget-object v9, v7, v4

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v16, 0x1

    .line 318
    :try_start_2
    aget-object v17, v7, v16

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/16 v17, 0x2

    .line 319
    :try_start_3
    aget-object v18, v7, v17
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 320
    invoke-virtual {v12, v9, v6, v4}, Landroidx/core/app/NotificationCompat$Builder;->setLights(III)Landroidx/core/app/NotificationCompat$Builder;

    .line 321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Lights: color="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v9, v7, v6

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "; on(ms)="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v9, 0x2

    :try_start_5
    aget-object v6, v7, v9

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "; off(ms)="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x3

    aget-object v6, v7, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    :catch_0
    move/from16 v9, v17

    goto :goto_7

    :catch_1
    :cond_8
    const/4 v9, 0x2

    const/16 v16, 0x1

    goto :goto_7

    :catch_2
    :cond_9
    move/from16 v16, v6

    :catch_3
    const/4 v9, 0x2

    :catch_4
    :goto_7
    if-eqz v8, :cond_c

    .line 330
    :try_start_6
    invoke-virtual {v8, v5, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 331
    array-length v3, v0

    new-array v3, v3, [J

    .line 333
    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_8
    if-ge v5, v4, :cond_a

    aget-object v7, v0, v5

    .line 334
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v9, v7

    aput-wide v9, v3, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v10, p12

    const/4 v9, 0x2

    goto :goto_8

    .line 337
    :cond_a
    invoke-virtual {v12, v3}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vibrate: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    .line 340
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_b
    move/from16 v16, v6

    .line 347
    :cond_c
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "notification_icon"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "drawable"

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v11, :cond_d

    .line 350
    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v11, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_a

    :cond_d
    const/4 v3, 0x0

    :goto_a
    if-eqz v3, :cond_e

    .line 354
    invoke-virtual {v12, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Small icon: custom="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_e
    if-eqz v0, :cond_f

    const-string v3, "Small icon: default=notification_icon"

    .line 357
    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {v12, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_b

    :cond_f
    const-string v0, "Small icon: application"

    .line 360
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v12, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 365
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "notification_icon_large"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v11, :cond_10

    .line 368
    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_large"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_c

    :cond_10
    const/4 v4, 0x0

    :goto_c
    if-nez v4, :cond_11

    if-eqz v0, :cond_13

    :cond_11
    if-eqz v4, :cond_12

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Large icon: custom="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_d

    :cond_12
    const-string v3, "Large icon: default=notification_icon_large"

    .line 377
    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_13
    const/4 v0, 0x0

    if-eqz v2, :cond_16

    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Large icon: image="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {v1, v2}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_16

    const-string v3, "circle"

    .line 389
    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 390
    invoke-direct {v1, v2}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_e

    :cond_14
    const-string v3, "big_picture"

    .line 392
    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 393
    new-instance v3, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 395
    :cond_15
    :goto_e
    invoke-virtual {v12, v2}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 401
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "accent"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p2

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    move-object/from16 v2, p12

    if-eqz v2, :cond_17

    .line 403
    invoke-static/range {p12 .. p12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Color: custom="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_17
    const-string v2, "Color: default"

    .line 406
    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {v12, v0}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    :goto_f
    if-eqz p16, :cond_18

    .line 414
    invoke-static/range {p16 .. p16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_10

    :cond_18
    move/from16 v6, v16

    .line 416
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Visibility: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {v12, v6}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz p15, :cond_19

    .line 422
    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_11

    :cond_19
    const/4 v3, 0x2

    .line 424
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Priority: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {v12, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 428
    invoke-virtual {v12}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const-string v2, "notification"

    .line 431
    invoke-virtual {v1, v2}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 432
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "show notification: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 436
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v14, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->sendMessage(Landroid/os/Bundle;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 69
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/16 v0, 0x3a98

    .line 71
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 73
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 74
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 75
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 49

    const-string v0, "notification_android_image_type"

    const-string v1, "notification_android_image"

    const-string v2, "notification_android_priority"

    const-string v3, "notification_android_visibility"

    const-string v4, "notification_android_icon"

    const-string v5, "notification_android_color"

    const-string v6, "notification_android_light"

    const-string v7, "notification_android_vibrate"

    const-string v8, "notification_android_sound"

    const-string v9, "notification_android_id"

    const-string v10, "notification_android_channel_id"

    const-string v11, "notification_android_body_html"

    const-string v12, "notification_body"

    const-string v13, "notification_title"

    const-string v14, "image Type: "

    const-string v15, "Image: "

    move-object/from16 v16, v14

    const-string v14, "Priority: "

    move-object/from16 v17, v15

    const-string v15, "Visibility: "

    move-object/from16 v18, v14

    const-string v14, "Channel Id: "

    move-object/from16 v19, v15

    const-string v15, "Icon: "

    move-object/from16 v20, v14

    const-string v14, "Color: "

    move-object/from16 v21, v15

    const-string v15, "Light: "

    move-object/from16 v22, v14

    const-string v14, "Vibrate: "

    move-object/from16 v23, v15

    const-string v15, "Sound: "

    move-object/from16 v24, v14

    const-string v14, "Body: "

    move-object/from16 v25, v15

    const-string v15, "Title: "

    move-object/from16 v26, v14

    const-string v14, "Id: "

    move-object/from16 v27, v15

    const-string v15, "From: "

    .line 105
    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/apache/cordova/firebase/FirebasePluginMessageReceiverManager;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)Z

    move-result v28
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v29, v14

    const-string v14, "FirebasePlugin"

    if-eqz v28, :cond_0

    :try_start_1
    const-string v0, "Message was handled by a registered receiver"

    .line 107
    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 113
    :cond_0
    sget-object v28, Lorg/apache/cordova/firebase/FirebasePlugin;->applicationContext:Landroid/content/Context;

    if-nez v28, :cond_1

    .line 114
    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v28

    sput-object v28, Lorg/apache/cordova/firebase/FirebasePlugin;->applicationContext:Landroid/content/Context;

    :cond_1
    move-object/from16 v28, v15

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v15

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v30

    const/16 v31, 0x0

    if-eqz v30, :cond_6

    move-object/from16 v30, v0

    const-string v0, "Received message: notification"

    .line 144
    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "notification"

    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/messaging/RemoteMessage;->getMessageId()Ljava/lang/String;

    move-result-object v32

    .line 147
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v33

    .line 148
    invoke-virtual/range {v33 .. v33}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTitle()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v35, v0

    .line 149
    invoke-virtual/range {v33 .. v33}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTitleLocalizationKey()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual/range {v33 .. v33}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTitleLocalizationArgs()[Ljava/lang/String;

    move-result-object v36

    .line 151
    invoke-virtual/range {v33 .. v33}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBody()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v38, v1

    .line 152
    invoke-virtual/range {v33 .. v33}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBodyLocalizationKey()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual/range {v33 .. v33}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBodyLocalizationArgs()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v40, v2

    .line 154
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v41, v3

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2

    .line 155
    invoke-virtual/range {v33 .. v33}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object/from16 v2, v31

    .line 157
    :goto_0
    invoke-virtual/range {v33 .. v33}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getSound()Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-virtual/range {v33 .. v33}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getColor()Ljava/lang/String;

    move-result-object v42

    .line 159
    invoke-virtual/range {v33 .. v33}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getIcon()Ljava/lang/String;

    move-result-object v43

    .line 160
    invoke-virtual/range {v33 .. v33}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getImageUrl()Landroid/net/Uri;

    move-result-object v44

    if-eqz v44, :cond_3

    .line 161
    invoke-virtual/range {v33 .. v33}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getImageUrl()Landroid/net/Uri;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v33

    goto :goto_1

    :cond_3
    move-object/from16 v33, v31

    .line 163
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v44
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v45, v2

    const-string v2, "string"

    if-nez v44, :cond_4

    move-object/from16 v44, v3

    .line 164
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v46, v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 165
    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v36

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    goto :goto_2

    :cond_4
    move-object/from16 v44, v3

    move-object/from16 v46, v4

    .line 167
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 168
    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 169
    invoke-virtual/range {p0 .. p0}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v39

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    :cond_5
    move-object/from16 v0, v35

    move-object/from16 v3, v44

    move-object/from16 v2, v45

    goto :goto_3

    :cond_6
    move-object/from16 v30, v0

    move-object/from16 v38, v1

    move-object/from16 v40, v2

    move-object/from16 v41, v3

    move-object/from16 v46, v4

    const-string v0, "Received message: data"

    .line 172
    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "data"

    move-object/from16 v2, v31

    move-object v3, v2

    move-object/from16 v32, v3

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v37, v34

    move-object/from16 v42, v37

    move-object/from16 v43, v42

    :goto_3
    if-eqz v15, :cond_15

    const-string v4, "notification_foreground"

    .line 178
    invoke-interface {v15, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 181
    invoke-interface {v15, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_7

    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v34, v13

    check-cast v34, Ljava/lang/String;

    .line 182
    :cond_7
    invoke-interface {v15, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v37, v12

    check-cast v37, Ljava/lang/String;

    .line 183
    :cond_8
    invoke-interface {v15, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v15, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_4

    :cond_9
    move-object/from16 v11, v31

    .line 184
    :goto_4
    invoke-interface {v15, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v15, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 185
    :cond_a
    invoke-interface {v15, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v32, v9

    check-cast v32, Ljava/lang/String;

    .line 186
    :cond_b
    invoke-interface {v15, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 187
    :cond_c
    invoke-interface {v15, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v15, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_5

    :cond_d
    move-object/from16 v7, v31

    .line 188
    :goto_5
    invoke-interface {v15, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_6

    :cond_e
    move-object/from16 v6, v31

    .line 189
    :goto_6
    invoke-interface {v15, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v42, v5

    check-cast v42, Ljava/lang/String;

    :cond_f
    move-object/from16 v5, v46

    .line 190
    invoke-interface {v15, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v43, v5

    check-cast v43, Ljava/lang/String;

    :cond_10
    move-object/from16 v5, v41

    .line 191
    invoke-interface {v15, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_7

    :cond_11
    move-object/from16 v5, v31

    :goto_7
    move-object/from16 v8, v40

    .line 192
    invoke-interface {v15, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_8

    :cond_12
    move-object/from16 v8, v31

    :goto_8
    move-object/from16 v9, v38

    .line 193
    invoke-interface {v15, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v33, v9

    check-cast v33, Ljava/lang/String;

    :cond_13
    move-object/from16 v9, v30

    .line 194
    invoke-interface {v15, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v10, v2

    move-object v12, v5

    move-object v1, v9

    goto :goto_9

    :cond_14
    move-object v10, v2

    move-object v12, v5

    move-object/from16 v1, v31

    :goto_9
    move-object/from16 v13, v33

    move-object/from16 v2, v34

    move-object/from16 v9, v43

    move-object v5, v3

    move-object/from16 v3, v37

    move-object/from16 v37, v11

    move-object v11, v8

    move-object/from16 v8, v42

    goto :goto_a

    :cond_15
    move-object v10, v2

    move-object v5, v3

    move-object/from16 v1, v31

    move-object v6, v1

    move-object v7, v6

    move-object v11, v7

    move-object v12, v11

    move-object/from16 v13, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v37

    move-object/from16 v8, v42

    move-object/from16 v9, v43

    const/4 v4, 0x0

    move-object/from16 v37, v12

    .line 197
    :goto_a
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    const/16 v33, 0x1

    if-eqz v31, :cond_16

    move-object/from16 v34, v0

    .line 198
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    move/from16 v31, v4

    const/16 v4, 0x32

    .line 199
    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_16
    move-object/from16 v34, v0

    move/from16 v31, v4

    move-object/from16 v0, v32

    .line 203
    :goto_b
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v32, v15

    move-object/from16 v15, v28

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/messaging/RemoteMessage;->getFrom()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v15, v29

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v15, v27

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v15, v26

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v15, v25

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v15, v24

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v15, v23

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v15, v22

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v15, v21

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v15, v20

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v15, v19

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v15, v18

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v15, v17

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v15, v16

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    if-eqz v32, :cond_1b

    invoke-interface/range {v32 .. v32}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 220
    :cond_17
    invoke-static {}, Lorg/apache/cordova/firebase/FirebasePlugin;->inBackground()Z

    move-result v4

    if-nez v4, :cond_18

    invoke-static {}, Lorg/apache/cordova/firebase/FirebasePlugin;->hasNotificationsCallback()Z

    move-result v4

    if-eqz v4, :cond_18

    if-eqz v31, :cond_19

    :cond_18
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_c

    :cond_19
    const/16 v38, 0x0

    goto :goto_d

    :cond_1a
    :goto_c
    move/from16 v38, v33

    :goto_d
    move-object/from16 v30, p0

    move-object/from16 v31, p1

    move-object/from16 v33, v34

    move-object/from16 v34, v0

    move-object/from16 v35, v2

    move-object/from16 v36, v3

    move-object/from16 v39, v5

    move-object/from16 v40, v7

    move-object/from16 v41, v6

    move-object/from16 v42, v8

    move-object/from16 v43, v9

    move-object/from16 v44, v10

    move-object/from16 v45, v11

    move-object/from16 v46, v12

    move-object/from16 v47, v13

    move-object/from16 v48, v1

    .line 221
    invoke-direct/range {v30 .. v48}, Lorg/apache/cordova/firebase/FirebasePluginMessagingService;->sendMessage(Lcom/google/firebase/messaging/RemoteMessage;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_e

    :catch_0
    move-exception v0

    .line 224
    invoke-static {v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithoutContext(Ljava/lang/Exception;)V

    :cond_1b
    :goto_e
    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Refreshed token: "

    .line 59
    :try_start_0
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onNewToken(Ljava/lang/String;)V

    const-string v1, "FirebasePlugin"

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->sendToken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    invoke-static {p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithoutContext(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
