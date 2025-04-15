.class Lorg/apache/cordova/firebase/FirebasePlugin$85$1;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Lcom/google/firebase/firestore/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin$85;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/firestore/EventListener<",
        "Lcom/google/firebase/firestore/QuerySnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/firebase/FirebasePlugin$85;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin$85;)V
    .locals 0

    .line 3189
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$85$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$85;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 7

    if-nez p2, :cond_6

    .line 3195
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "eventType"

    const-string v1, "change"

    .line 3196
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3198
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3200
    invoke-virtual {p1}, Lcom/google/firebase/firestore/QuerySnapshot;->getDocumentChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/DocumentChange;

    .line 3202
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3204
    sget-object v3, Lorg/apache/cordova/firebase/FirebasePlugin$95;->$SwitchMap$com$google$firebase$firestore$DocumentChange$Type:[I

    invoke-virtual {v1}, Lcom/google/firebase/firestore/DocumentChange;->getType()Lcom/google/firebase/firestore/DocumentChange$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/firestore/DocumentChange$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    const-string v5, "type"

    if-eq v3, v4, :cond_2

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1

    const/4 v6, 0x3

    if-eq v3, v6, :cond_0

    :try_start_1
    const-string v3, "metadata"

    .line 3215
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_0
    const-string v3, "removed"

    .line 3212
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    const-string v3, "modified"

    .line 3209
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    const-string v3, "new"

    .line 3206
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3218
    :goto_1
    invoke-virtual {v1}, Lcom/google/firebase/firestore/DocumentChange;->getDocument()Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    move-result-object v1

    const-string v3, "snapshot"

    .line 3219
    iget-object v5, p0, Lorg/apache/cordova/firebase/FirebasePlugin$85$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$85;

    iget-object v5, v5, Lorg/apache/cordova/firebase/FirebasePlugin$85;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/QueryDocumentSnapshot;->getData()Ljava/util/Map;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$3900(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "source"

    .line 3220
    invoke-virtual {v1}, Lcom/google/firebase/firestore/QueryDocumentSnapshot;->getMetadata()Lcom/google/firebase/firestore/SnapshotMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/firestore/SnapshotMetadata;->hasPendingWrites()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "local"

    goto :goto_2

    :cond_3
    const-string v5, "remote"

    :goto_2
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "fromCache"

    .line 3221
    invoke-virtual {v1}, Lcom/google/firebase/firestore/QueryDocumentSnapshot;->getMetadata()Lcom/google/firebase/firestore/SnapshotMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/firestore/SnapshotMetadata;->isFromCache()Z

    move-result v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3223
    invoke-virtual {v1}, Lcom/google/firebase/firestore/QueryDocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v1, v4

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    const-string p1, "documents"

    .line 3226
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3228
    :cond_5
    iget-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$85$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$85;

    iget-object p1, p1, Lorg/apache/cordova/firebase/FirebasePlugin$85;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$85$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$85;

    iget-object v0, v0, Lorg/apache/cordova/firebase/FirebasePlugin$85;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1, p2, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->sendPluginResultAndKeepCallback(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_3

    .line 3230
    :cond_6
    iget-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$85$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$85;

    iget-object p1, p1, Lorg/apache/cordova/firebase/FirebasePlugin$85;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p2, p1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 3233
    iget-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$85$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$85;

    iget-object p2, p2, Lorg/apache/cordova/firebase/FirebasePlugin$85;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_3
    return-void
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 0

    .line 3189
    check-cast p1, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {p0, p1, p2}, Lorg/apache/cordova/firebase/FirebasePlugin$85$1;->onEvent(Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method
