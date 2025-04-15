.class public final synthetic Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/apache/cordova/CallbackContext;

.field public final synthetic f$1:Lcom/adobe/phonegap/push/PushPlugin;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/cordova/CallbackContext;Lcom/adobe/phonegap/push/PushPlugin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda9;->f$0:Lorg/apache/cordova/CallbackContext;

    iput-object p2, p0, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda9;->f$1:Lcom/adobe/phonegap/push/PushPlugin;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda9;->f$0:Lorg/apache/cordova/CallbackContext;

    iget-object v1, p0, Lcom/adobe/phonegap/push/PushPlugin$$ExternalSyntheticLambda9;->f$1:Lcom/adobe/phonegap/push/PushPlugin;

    invoke-static {v0, v1}, Lcom/adobe/phonegap/push/PushPlugin;->$r8$lambda$PqMCIb28bg9rrrrmY1atmeTpsSk(Lorg/apache/cordova/CallbackContext;Lcom/adobe/phonegap/push/PushPlugin;)V

    return-void
.end method
