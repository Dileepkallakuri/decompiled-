.class final Lcom/google/firebase/firestore/remote/TestingHooks;
.super Ljava/lang/Object;
.source "TestingHooks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;,
        Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchListener;
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/firebase/firestore/remote/TestingHooks;


# instance fields
.field private final existenceFilterMismatchListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/google/firebase/firestore/remote/TestingHooks;

    invoke-direct {v0}, Lcom/google/firebase/firestore/remote/TestingHooks;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/remote/TestingHooks;->instance:Lcom/google/firebase/firestore/remote/TestingHooks;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/TestingHooks;->existenceFilterMismatchListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method static getInstance()Lcom/google/firebase/firestore/remote/TestingHooks;
    .locals 1

    .line 49
    sget-object v0, Lcom/google/firebase/firestore/remote/TestingHooks;->instance:Lcom/google/firebase/firestore/remote/TestingHooks;

    return-object v0
.end method

.method static synthetic lambda$notifyOnExistenceFilterMismatch$0(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;)V
    .locals 0

    .line 63
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchListener;

    if-eqz p0, :cond_0

    .line 65
    invoke-interface {p0, p1}, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchListener;->onExistenceFilterMismatch(Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method addExistenceFilterMismatchListener(Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 1

    const-string v0, "a null listener is not allowed"

    .line 91
    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 94
    iget-object p1, p0, Lcom/google/firebase/firestore/remote/TestingHooks;->existenceFilterMismatchListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance p1, Lcom/google/firebase/firestore/remote/TestingHooks$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Lcom/google/firebase/firestore/remote/TestingHooks$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/remote/TestingHooks;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object p1
.end method

.method synthetic lambda$addExistenceFilterMismatchListener$1$com-google-firebase-firestore-remote-TestingHooks(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/TestingHooks;->existenceFilterMismatchListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method notifyOnExistenceFilterMismatch(Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;)V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/TestingHooks;->existenceFilterMismatchListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 61
    sget-object v2, Lcom/google/firebase/firestore/util/Executors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/firebase/firestore/remote/TestingHooks$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, p1}, Lcom/google/firebase/firestore/remote/TestingHooks$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
