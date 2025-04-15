.class Lorg/apache/cordova/firebase/FirebasePlugin$81;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin;->documentExistsInFirestoreCollection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
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

    .line 3000
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$81;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    iput-object p2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$81;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lorg/apache/cordova/firebase/FirebasePlugin$81;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3003
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/firebase/FirebasePlugin$81;->val$args:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3004
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$81;->val$args:Lorg/json/JSONArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3006
    iget-object v2, p0, Lorg/apache/cordova/firebase/FirebasePlugin$81;->this$0:Lorg/apache/cordova/firebase/FirebasePlugin;

    invoke-static {v2}, Lorg/apache/cordova/firebase/FirebasePlugin;->access$500(Lorg/apache/cordova/firebase/FirebasePlugin;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v0

    .line 3007
    invoke-virtual {v0}, Lcom/google/firebase/firestore/DocumentReference;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$81$2;

    invoke-direct {v1, p0}, Lorg/apache/cordova/firebase/FirebasePlugin$81$2;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$81;)V

    .line 3008
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/firebase/FirebasePlugin$81$1;

    invoke-direct {v1, p0}, Lorg/apache/cordova/firebase/FirebasePlugin$81$1;-><init>(Lorg/apache/cordova/firebase/FirebasePlugin$81;)V

    .line 3026
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3033
    iget-object v1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$81;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lorg/apache/cordova/firebase/FirebasePlugin;->handleExceptionWithContext(Ljava/lang/Exception;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method
