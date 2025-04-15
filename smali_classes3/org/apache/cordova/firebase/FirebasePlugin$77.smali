.class Lorg/apache/cordova/firebase/FirebasePlugin$77;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->addDocumentToFirestoreCollection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
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

    .line 2864
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$77;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$77;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$77;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2867
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$77;->val$args:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2868
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$77;->val$args:Lorg/json/JSONArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2869
    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$77;->val$args:Lorg/json/JSONArray;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v2

    .line 2871
    iget-object v3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$77;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v3, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$3800(Lorg/apache/cordova/firebase/FirebasePlugin;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v2, :cond_0

    const-string v2, "created"

    .line 2874
    new-instance v3, Lcom/google/firebase/Timestamp;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-direct {v3, v4}, Lcom/google/firebase/Timestamp;-><init>(Ljava/util/Date;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lastUpdate"

    .line 2875
    new-instance v3, Lcom/google/firebase/Timestamp;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-direct {v3, v4}, Lcom/google/firebase/Timestamp;-><init>(Ljava/util/Date;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2878
    :cond_0
    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$77;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v2}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$500(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    .line 2879
    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/CollectionReference;->add(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$77$2;

    invoke-direct {v1, p0}, Lorg/apache/cordova/firebase/FirebasePlugin$77$2;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$77;)V

    .line 2880
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$77$1;

    invoke-direct {v1, p0}, Lorg/apache/cordova/firebase/FirebasePlugin$77$1;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$77;)V

    .line 2886
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2893
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$77;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method
