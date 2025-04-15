.class public abstract Lorg/apache/cordova/firebase/FirebasePluginMessageReceiver;
.super Ljava/lang/Object;
.source "FirebasePluginMessageReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {p0}, Lorg/apache/cordova/firebase/FirebasePluginMessageReceiverManager;->register(Lorg/apache/cordova/firebase/FirebasePluginMessageReceiver;)V

    return-void
.end method


# virtual methods
.method public abstract onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)Z
.end method

.method public abstract sendMessage(Landroid/os/Bundle;)Z
.end method
