.class Lorg/apache/cordova/firebase/FirebasePlugin$79;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->updateDocumentInFirestoreCollection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
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

    .line 2936
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$79;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$79;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$79;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2939
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$79;->val$args:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2940
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$79;->val$args:Lorg/json/JSONArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2941
    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$79;->val$args:Lorg/json/JSONArray;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2942
    iget-object v3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$79;->val$args:Lorg/json/JSONArray;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    .line 2944
    iget-object v4, p0, Lorg/apache/cordova/firebase/FirebasePlugin$79;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v4, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$3800(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v3, :cond_0

    const-string v3, "lastUpdate"

    .line 2947
    new-instance v4, Lcom/google/firebase/Timestamp;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-direct {v4, v5}, Lcom/google/firebase/Timestamp;-><init>(Ljava/util/Date;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2950
    :cond_0
    iget-object v3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$79;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v3}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$500(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v0

    .line 2951
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$79$2;

    invoke-direct {v1, p0}, Lorg/apache/cordova/firebase/FirebasePlugin$79$2;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$79;)V

    .line 2952
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$79$1;

    invoke-direct {v1, p0}, Lorg/apache/cordova/firebase/FirebasePlugin$79$1;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$79;)V

    .line 2958
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2965
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$79;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method
