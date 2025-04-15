.class Lorg/apache/cordova/firebase/FirebasePlugin$4;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->hasPermission(Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$4;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 671
    :try_start_0
    invoke-static {}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1000()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    .line 672
    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    .line 675
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    .line 676
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$4;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    const-string v2, "POST_NOTIFICATIONS"

    invoke-virtual {v1, v2}, Lorg/apache/cordova/firebase/FirebasePlugin;->hasRuntimePermission(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 679
    :goto_0
    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iget-object v4, p0, Lorg/apache/cordova/firebase/FirebasePlugin$4;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v4, v3}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$1100(Lorg/apache/cordova/firebase/FirebasePlugin;Z)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/apache/cordova/CallbackContext;->success(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 681
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_2
    return-void
.end method
