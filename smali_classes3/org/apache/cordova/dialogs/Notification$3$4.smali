.class Lorg/apache/cordova/dialogs/Notification$3$4;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/dialogs/Notification$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/dialogs/Notification$3;


# direct methods
.method constructor <init>(Lorg/apache/cordova/dialogs/Notification$3;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lorg/apache/cordova/dialogs/Notification$3$4;->this$1:Lorg/apache/cordova/dialogs/Notification$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 273
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 274
    iget-object p1, p0, Lorg/apache/cordova/dialogs/Notification$3$4;->this$1:Lorg/apache/cordova/dialogs/Notification$3;

    iget-object p1, p1, Lorg/apache/cordova/dialogs/Notification$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method
