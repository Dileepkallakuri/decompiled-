.class public final synthetic Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/json/JSONArray;

.field public final synthetic f$1:Lcom/adobe/phonegap/push/PushPlugin;

.field public final synthetic f$2:Lorg/apache/cordova/CallbackContext;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda6;->f$0:Lorg/json/JSONArray;

    iput-object p2, p0, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda6;->f$1:Lcom/adobe/phonegap/push/PushPlugin;

    iput-object p3, p0, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda6;->f$2:Lorg/apache/cordova/CallbackContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda6;->f$0:Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda6;->f$1:Lcom/adobe/phonegap/push/PushPlugin;

    iget-object v2, p0, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda6;->f$2:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2}, Lcom/adobe/phonegap/push/PushPlugin;->$r8$lambda$7vAyOYKdFgIwcObHhRg3GbStzwY(Lorg/json/JSONArray;Lcom/adobe/phonegap/push/PushPlugin;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method
