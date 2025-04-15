.class Lorg/apache/cordova/firebase/FirebasePlugin$83;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->listenToDocumentInFirestoreCollection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
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

    .line 3085
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$83;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$83;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$83;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "id"

    .line 3088
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$83;->val$args:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3089
    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$83;->val$args:Lorg/json/JSONArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3090
    iget-object v3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$83;->val$args:Lorg/json/JSONArray;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    .line 3092
    iget-object v4, p0, Lorg/apache/cordova/firebase/FirebasePlugin$83;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v4}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$500(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v1

    if-eqz v3, :cond_0

    .line 3093
    sget-object v2, Lcom/google/firebase/firestore/MetadataChanges;->INCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    :goto_0
    new-instance v3, Lorg/apache/cordova/firebase/FirebasePlugin$83$1;

    invoke-direct {v3, p0}, Lorg/apache/cordova/firebase/FirebasePlugin$83$1;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$83;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v1

    .line 3121
    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$83;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v2, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$4000(Lorg/apache/cordova/firebase/FirebasePlugin;Lcom/google/firebase/firestore/ListenerRegistration;)Ljava/lang/String;

    move-result-object v1

    .line 3122
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "eventType"

    .line 3123
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3124
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3125
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$83;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$83;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v2, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->sendPluginResultAndKeepCallback(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3127
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$83;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_1
    return-void
.end method
