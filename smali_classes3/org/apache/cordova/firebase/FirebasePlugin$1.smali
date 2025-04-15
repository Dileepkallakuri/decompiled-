.class Lorg/apache/cordova/firebase/FirebasePlugin$1;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->pluginInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin;Landroid/os/Bundle;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$1;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$1;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "firebase_performance_collection_enabled"

    const-string v1, "firebase_analytics_collection_enabled"

    const-string v2, "firebase_crashlytics_collection_enabled"

    const-string v3, "FirebasePlugin"

    const-string v4, "Notification message found on init: "

    :try_start_0
    const-string v5, "Starting Firebase plugin"

    .line 191
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v5, p0, Lorg/apache/cordova/firebase/FirebasePlugin$1;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v5, v2}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$000(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 194
    iget-object v5, p0, Lorg/apache/cordova/firebase/FirebasePlugin$1;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v5, v2, v6}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$100(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;Z)V

    .line 197
    :cond_0
    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$1;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v2, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$000(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$1;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v2, v1, v6}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$100(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;Z)V

    .line 201
    :cond_1
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$1;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$000(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$1;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v1, v0, v6}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$100(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;Z)V

    .line 205
    :cond_2
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    .line 206
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$1;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    sget-object v1, Lorg/apache/cordova/firebase/FirebasePlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$202(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/firebase/analytics/FirebaseAnalytics;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 208
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$1;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$AuthStateListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/cordova/firebase/FirebasePlugin$AuthStateListener;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$1;)V

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$302(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;)Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;

    .line 209
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$1;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$300(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->addAuthStateListener(Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;)V

    .line 211
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$1;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$502(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/firebase/firestore/FirebaseFirestore;)Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 212
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$1;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {}, Lcom/google/firebase/functions/FirebaseFunctions;->getInstance()Lcom/google/firebase/functions/FirebaseFunctions;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$602(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/firebase/functions/FirebaseFunctions;)Lcom/google/firebase/functions/FirebaseFunctions;

    .line 214
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$1;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v2, Ljava/lang/Double;

    new-instance v5, Lorg/apache/cordova/firebase/FirebasePlugin$1$1;

    invoke-direct {v5, p0}, Lorg/apache/cordova/firebase/FirebasePlugin$1$1;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$1;)V

    .line 215
    invoke-virtual {v1, v2, v5}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 214
    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$702(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/gson/Gson;)Lcom/google/gson/Gson;

    .line 224
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$1;->val$extras:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-le v0, v6, :cond_4

    .line 225
    invoke-static {}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$800()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$802(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 228
    :cond_3
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$1;->val$extras:Landroid/os/Bundle;

    const-string v1, "google.message_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 229
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$1;->val$extras:Landroid/os/Bundle;

    const-string v1, "messageType"

    const-string v2, "notification"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$1;->val$extras:Landroid/os/Bundle;

    const-string v1, "tap"

    const-string v2, "background"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$800()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$1;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$1;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_4
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$1;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    const-string v1, "default_notification_channel_id"

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$900(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->defaultChannelId:Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$1;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    const-string v1, "default_notification_channel_name"

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$900(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/cordova/firebase/FirebasePlugin;->defaultChannelName:Ljava/lang/String;

    .line 237
    invoke-static {}, Lorg/apache/cordova/firebase/FirebasePlugin;->createDefaultChannel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 239
    invoke-static {v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithoutContext(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
