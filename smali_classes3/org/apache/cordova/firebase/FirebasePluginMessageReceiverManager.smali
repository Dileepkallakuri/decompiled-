.class public Lorg/apache/cordova/firebase/FirebasePluginMessageReceiverManager;
.super Ljava/lang/Object;
.source "FirebasePluginMessageReceiverManager.java"


# static fields
.field private static receivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/cordova/firebase/FirebasePluginMessageReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/apache/cordova/firebase/FirebasePluginMessageReceiverManager;->receivers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)Z
    .locals 3

    .line 20
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePluginMessageReceiverManager;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/cordova/firebase/FirebasePluginMessageReceiver;

    .line 21
    invoke-virtual {v2, p0}, Lorg/apache/cordova/firebase/FirebasePluginMessageReceiver;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static register(Lorg/apache/cordova/firebase/FirebasePluginMessageReceiver;)V
    .locals 1

    .line 15
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePluginMessageReceiverManager;->receivers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static sendMessage(Landroid/os/Bundle;)Z
    .locals 3

    .line 32
    sget-object v0, Lorg/apache/cordova/firebase/FirebasePluginMessageReceiverManager;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/cordova/firebase/FirebasePluginMessageReceiver;

    .line 33
    invoke-virtual {v2, p0}, Lorg/apache/cordova/firebase/FirebasePluginMessageReceiver;->sendMessage(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
