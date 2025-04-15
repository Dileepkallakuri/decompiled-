.class public final Lcom/adobe/phonegap/push/PushPlugin$Companion;
.super Ljava/lang/Object;
.source "PushPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/phonegap/push/PushPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPushPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PushPlugin.kt\ncom/adobe/phonegap/push/PushPlugin$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,927:1\n1#2:928\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u001bJ\u0010\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fJ\u0012\u0010 \u001a\u00020\u001d2\u0008\u0010!\u001a\u0004\u0018\u00010\nH\u0007J\u0018\u0010\"\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010#\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R2\u0010\u0008\u001a&\u0012\u000c\u0012\n \u000b*\u0004\u0018\u00010\n0\n \u000b*\u0012\u0012\u000c\u0012\n \u000b*\u0004\u0018\u00010\n0\n\u0018\u00010\u000c0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000f\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011\"\u0004\u0008\u0013\u0010\u0014R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/adobe/phonegap/push/PushPlugin$Companion;",
        "",
        "()V",
        "PREFIX_TAG",
        "",
        "REQ_CODE_INITIALIZE_PLUGIN",
        "",
        "TAG",
        "gCachedExtras",
        "",
        "Landroid/os/Bundle;",
        "kotlin.jvm.PlatformType",
        "",
        "gWebView",
        "Lorg/apache/cordova/CordovaWebView;",
        "isActive",
        "",
        "()Z",
        "isInForeground",
        "setInForeground",
        "(Z)V",
        "pluginInitData",
        "Lorg/json/JSONArray;",
        "pushContext",
        "Lorg/apache/cordova/CallbackContext;",
        "getApplicationIconBadgeNumber",
        "context",
        "Landroid/content/Context;",
        "sendEvent",
        "",
        "json",
        "Lorg/json/JSONObject;",
        "sendExtras",
        "extras",
        "setApplicationIconBadgeNumber",
        "badgeCount",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/phonegap/push/PushPlugin$Companion;-><init>()V

    return-void
.end method

.method private static final sendExtras$convertBundleToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 15

    const-string v0, "dismissed"

    const-string v1, "foreground"

    const-string v2, "coldstart"

    const-string v3, "Convert Extras to JSON"

    const-string v4, "cordova-plugin-push (PushPlugin)"

    .line 80
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 83
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 84
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 87
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 90
    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    const-string v9, "title"

    const-string v10, "message"

    const-string v11, "count"

    const-string v12, "sound"

    const-string v13, "image"

    .line 95
    filled-new-array {v9, v10, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v9

    .line 89
    invoke-static {v8, v9}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 100
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 101
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 102
    invoke-virtual {p0, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 104
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Extras Iteration: key="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 108
    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 111
    :cond_1
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 112
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 115
    :cond_2
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 116
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 119
    :cond_3
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 120
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 123
    :cond_4
    instance-of v11, v10, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v11, :cond_0

    .line 127
    :try_start_1
    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    const-string v12, "{"

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {v11, v12, v14, v13, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 128
    new-instance v11, Lorg/json/JSONObject;

    move-object v12, v10

    check-cast v12, Ljava/lang/String;

    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 131
    :cond_5
    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    const-string v12, "["

    invoke-static {v11, v12, v14, v13, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 132
    new-instance v11, Lorg/json/JSONArray;

    move-object v12, v10

    check-cast v12, Ljava/lang/String;

    invoke-direct {v11, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 136
    :cond_6
    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 140
    :catch_0
    :try_start_2
    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_7
    const-string p0, "additionalData"

    .line 146
    invoke-virtual {v5, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Extras To JSON Result: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v5

    :catch_1
    const-string p0, "convertBundleToJson had a JSON Exception"

    .line 151
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method


# virtual methods
.method public final getApplicationIconBadgeNumber(Landroid/content/Context;)I
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badge"

    const/4 v1, 0x0

    .line 177
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 178
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final isActive()Z
    .locals 1

    .line 206
    invoke-static {}, Lcom/adobe/phonegap/push/PushPlugin;->access$getGWebView$cp()Lorg/apache/cordova/CordovaWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInForeground()Z
    .locals 1

    .line 47
    invoke-static {}, Lcom/adobe/phonegap/push/PushPlugin;->access$isInForeground$cp()Z

    move-result v0

    return v0
.end method

.method public final sendEvent(Lorg/json/JSONObject;)V
    .locals 2

    .line 58
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    .line 59
    invoke-virtual {v0, p1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 60
    invoke-static {}, Lcom/adobe/phonegap/push/PushPlugin;->access$getPushContext$cp()Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :cond_0
    return-void
.end method

.method public final sendExtras(Landroid/os/Bundle;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, "no-cache"

    .line 158
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {}, Lcom/adobe/phonegap/push/PushPlugin;->access$getGWebView$cp()Lorg/apache/cordova/CordovaWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 161
    sget-object v0, Lcom/adobe/phonegap/push/PushPlugin;->Companion:Lcom/adobe/phonegap/push/PushPlugin$Companion;

    invoke-static {p1}, Lcom/adobe/phonegap/push/PushPlugin$Companion;->sendExtras$convertBundleToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/adobe/phonegap/push/PushPlugin$Companion;->sendEvent(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    const-string v1, "1"

    .line 162
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cordova-plugin-push (PushPlugin)"

    const-string v1, "sendExtras: Caching extras to send at a later time."

    .line 163
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {}, Lcom/adobe/phonegap/push/PushPlugin;->access$getGCachedExtras$cp()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final setApplicationIconBadgeNumber(Landroid/content/Context;I)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p2, :cond_0

    .line 190
    invoke-static {p1, p2}, Lme/leolin/shortcutbadger/ShortcutBadger;->applyCount(Landroid/content/Context;I)Z

    goto :goto_0

    .line 192
    :cond_0
    invoke-static {p1}, Lme/leolin/shortcutbadger/ShortcutBadger;->removeCount(Landroid/content/Context;)Z

    :goto_0
    const-string v0, "badge"

    const/4 v1, 0x0

    .line 195
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 196
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 197
    invoke-static {p2, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method public final setInForeground(Z)V
    .locals 0

    .line 47
    invoke-static {p1}, Lcom/adobe/phonegap/push/PushPlugin;->access$setInForeground$cp(Z)V

    return-void
.end method
