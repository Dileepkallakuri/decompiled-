.class Lcom/google/firebase/functions/FirebaseContextProvider;
.super Ljava/lang/Object;
.source "FirebaseContextProvider.java"

# interfaces
.implements Lcom/google/firebase/functions/ContextProvider;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final appCheckRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private final instanceId:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final tokenProvider:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Deferred;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;",
            ">;",
            "Lcom/google/firebase/inject/Deferred<",
            "Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FirebaseContextProvider"

    .line 35
    iput-object v0, p0, Lcom/google/firebase/functions/FirebaseContextProvider;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/functions/FirebaseContextProvider;->appCheckRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 48
    iput-object p1, p0, Lcom/google/firebase/functions/FirebaseContextProvider;->tokenProvider:Lcom/google/firebase/inject/Provider;

    .line 49
    iput-object p2, p0, Lcom/google/firebase/functions/FirebaseContextProvider;->instanceId:Lcom/google/firebase/inject/Provider;

    .line 50
    iput-object p4, p0, Lcom/google/firebase/functions/FirebaseContextProvider;->executor:Ljava/util/concurrent/Executor;

    .line 51
    new-instance p1, Lcom/google/firebase/functions/FirebaseContextProvider$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/google/firebase/functions/FirebaseContextProvider$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/functions/FirebaseContextProvider;)V

    invoke-interface {p3, p1}, Lcom/google/firebase/inject/Deferred;->whenAvailable(Lcom/google/firebase/inject/Deferred$DeferredHandler;)V

    return-void
.end method

.method private getAppCheckToken()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/google/firebase/functions/FirebaseContextProvider;->appCheckRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 106
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 109
    invoke-interface {v0, v1}, Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;->getToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/functions/FirebaseContextProvider;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/functions/FirebaseContextProvider$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/google/firebase/functions/FirebaseContextProvider$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/functions/FirebaseContextProvider;)V

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private getAuthToken()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/firebase/functions/FirebaseContextProvider;->tokenProvider:Lcom/google/firebase/inject/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/internal/InternalAuthProvider;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 82
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 84
    invoke-interface {v0, v1}, Lcom/google/firebase/auth/internal/InternalAuthProvider;->getAccessToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/functions/FirebaseContextProvider;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/functions/FirebaseContextProvider$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/google/firebase/functions/FirebaseContextProvider$$ExternalSyntheticLambda4;-><init>()V

    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAuthToken$3(Lcom/google/android/gms/tasks/Task;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    .line 91
    instance-of v0, p0, Lcom/google/firebase/internal/api/FirebaseNoSignedInUserException;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 94
    :cond_0
    throw p0

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/auth/GetTokenResult;

    invoke-virtual {p0}, Lcom/google/firebase/auth/GetTokenResult;->getToken()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static synthetic lambda$new$0(Lcom/google/firebase/appcheck/AppCheckTokenResult;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getContext()Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/functions/HttpsCallableContext;",
            ">;"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lcom/google/firebase/functions/FirebaseContextProvider;->getAuthToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 67
    invoke-direct {p0}, Lcom/google/firebase/functions/FirebaseContextProvider;->getAppCheckToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/tasks/Task;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 68
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->whenAll([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/functions/FirebaseContextProvider;->executor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/firebase/functions/FirebaseContextProvider$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0, v1}, Lcom/google/firebase/functions/FirebaseContextProvider$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/functions/FirebaseContextProvider;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)V

    .line 69
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getAppCheckToken$4$com-google-firebase-functions-FirebaseContextProvider(Lcom/google/firebase/appcheck/AppCheckTokenResult;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Lcom/google/firebase/appcheck/AppCheckTokenResult;->getError()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error getting App Check token. Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/appcheck/AppCheckTokenResult;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FirebaseContextProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 117
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 119
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/appcheck/AppCheckTokenResult;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getContext$2$com-google-firebase-functions-FirebaseContextProvider(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    new-instance p3, Lcom/google/firebase/functions/HttpsCallableContext;

    .line 74
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/functions/FirebaseContextProvider;->instanceId:Lcom/google/firebase/inject/Provider;

    .line 75
    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;

    invoke-interface {v0}, Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p3, p1, v0, p2}, Lcom/google/firebase/functions/HttpsCallableContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {p3}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$new$1$com-google-firebase-functions-FirebaseContextProvider(Lcom/google/firebase/inject/Provider;)V
    .locals 1

    .line 53
    invoke-interface {p1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;

    .line 54
    iget-object v0, p0, Lcom/google/firebase/functions/FirebaseContextProvider;->appCheckRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 56
    new-instance v0, Lcom/google/firebase/functions/FirebaseContextProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/firebase/functions/FirebaseContextProvider$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, v0}, Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;->addAppCheckTokenListener(Lcom/google/firebase/appcheck/interop/AppCheckTokenListener;)V

    return-void
.end method
