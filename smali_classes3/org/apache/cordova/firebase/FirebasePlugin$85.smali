.class Lorg/apache/cordova/firebase/FirebasePlugin$85;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->listenToFirestoreCollection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

.field final synthetic val$args:Lorg/json/JSONArray;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 3172
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$85;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$85;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$85;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "id"

    .line 3175
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$85;->val$args:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3177
    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$85;->val$args:Lorg/json/JSONArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3178
    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$85;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3180
    :goto_0
    iget-object v3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$85;->val$args:Lorg/json/JSONArray;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    .line 3182
    iget-object v4, p0, Lorg/apache/cordova/firebase/FirebasePlugin$85;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v4}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$500(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    if-eqz v2, :cond_1

    .line 3185
    iget-object v4, p0, Lorg/apache/cordova/firebase/FirebasePlugin$85;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v4, v2, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$4100(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lcom/google/firebase/firestore/Query;)Lcom/google/firebase/firestore/Query;

    move-result-object v1

    :cond_1
    if-eqz v3, :cond_2

    .line 3189
    sget-object v2, Lcom/google/firebase/firestore/MetadataChanges;->INCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    :goto_1
    new-instance v3, Lorg/apache/cordova/firebase/FirebasePlugin$85$1;

    invoke-direct {v3, p0}, Lorg/apache/cordova/firebase/FirebasePlugin$85$1;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$85;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/firestore/Query;->addSnapshotListener(Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v1

    .line 3238
    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$85;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v2, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$4000(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/firebase/firestore/ListenerRegistration;)Ljava/lang/String;

    move-result-object v1

    .line 3239
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "eventType"

    .line 3240
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3241
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3242
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$85;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$85;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v2, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->sendPluginResultAndKeepCallback(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 3245
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$85;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_2
    return-void
.end method
