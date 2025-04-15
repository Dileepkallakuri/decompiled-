.class Lorg/apache/cordova/firebase/FirebasePlugin$14;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->sendCrash(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/firebase/FirebasePlugin;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin;)V
    .locals 0

    .line 915
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$14;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 918
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This is a crash"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
