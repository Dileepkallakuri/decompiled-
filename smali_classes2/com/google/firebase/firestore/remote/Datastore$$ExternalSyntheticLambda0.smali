.class public final synthetic Lcom/google/firebase/firestore/remote/Datastore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/remote/Datastore;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/remote/Datastore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/Datastore$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/remote/Datastore;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/Datastore$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/remote/Datastore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/remote/Datastore;->lambda$runAggregateQuery$1$com-google-firebase-firestore-remote-Datastore(Lcom/google/android/gms/tasks/Task;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
