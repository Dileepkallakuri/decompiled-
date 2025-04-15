.class Lorg/apache/cordova/firebase/FirebasePlugin$84;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->fetchFirestoreCollection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
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

    .line 3134
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$84;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$84;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$84;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3137
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$84;->val$args:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3138
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$84;->val$args:Lorg/json/JSONArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v1

    .line 3139
    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$84;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v2}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$500(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    if-eqz v1, :cond_0

    .line 3142
    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$84;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v2, v1, v0}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$4100(Lorg/apache/cordova/firebase/FirebasePlugin;Lorg/json/JSONArray;Lcom/google/firebase/firestore/Query;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    .line 3145
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/firestore/Query;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$84$1;

    invoke-direct {v1, p0}, Lorg/apache/cordova/firebase/FirebasePlugin$84$1;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$84;)V

    .line 3146
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3165
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$84;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method
