.class Lorg/apache/cordova/firebase/FirebasePlugin$83$1;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Lcom/google/firebase/firestore/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin$83;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/firestore/EventListener<",
        "Lcom/google/firebase/firestore/DocumentSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/firebase/FirebasePlugin$83;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin$83;)V
    .locals 0

    .line 3093
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$83$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$83;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/google/firebase/firestore/DocumentSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 2

    if-nez p2, :cond_2

    .line 3099
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "eventType"

    const-string v1, "change"

    .line 3100
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    .line 3102
    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getMetadata()Lcom/google/firebase/firestore/SnapshotMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/SnapshotMetadata;->hasPendingWrites()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "local"

    goto :goto_0

    :cond_0
    const-string v0, "remote"

    :goto_0
    const-string v1, "source"

    .line 3103
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "fromCache"

    .line 3105
    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getMetadata()Lcom/google/firebase/firestore/SnapshotMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/SnapshotMetadata;->isFromCache()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    .line 3107
    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentSnapshot;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3108
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$83$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$83;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$83;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getData()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$3900(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "snapshot"

    .line 3109
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3111
    :cond_1
    iget-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$83$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$83;

    iget-object p1, p1, Lorg/apache/cordova/firebase/FirebasePlugin$83;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$83$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$83;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$83;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1, p2, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->sendPluginResultAndKeepCallback(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_1

    .line 3113
    :cond_2
    iget-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$83$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$83;

    iget-object p1, p1, Lorg/apache/cordova/firebase/FirebasePlugin$83;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3116
    iget-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$83$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$83;

    iget-object p2, p2, Lorg/apache/cordova/firebase/FirebasePlugin$83;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 0

    .line 3093
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    invoke-virtual {p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$83$1;->onEvent(Lcom/google/firebase/firestore/DocumentSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method
