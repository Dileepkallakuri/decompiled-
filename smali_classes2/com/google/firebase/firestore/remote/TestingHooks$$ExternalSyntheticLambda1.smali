.class public final synthetic Lcom/google/firebase/firestore/remote/TestingHooks$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$1:Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/TestingHooks$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/TestingHooks$$ExternalSyntheticLambda1;->f$1:Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/TestingHooks$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/TestingHooks$$ExternalSyntheticLambda1;->f$1:Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/remote/TestingHooks;->lambda$notifyOnExistenceFilterMismatch$0(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;)V

    return-void
.end method
