.class final Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;
.super Lio/reactivex/internal/util/LinkedArrayList;
.source "FlowableCache.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CacheState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/util/LinkedArrayList;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

.field static final TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;


# instance fields
.field final connection:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field volatile isConnected:Z

.field final source:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation
.end field

.field sourceDone:Z

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    .line 111
    sput-object v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    new-array v0, v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    .line 114
    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    return-void
.end method

.method constructor <init>(Lio/reactivex/Flowable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "TT;>;I)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p2}, Lio/reactivex/internal/util/LinkedArrayList;-><init>(I)V

    .line 106
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->connection:Ljava/util/concurrent/atomic/AtomicReference;

    .line 127
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->source:Lio/reactivex/Flowable;

    .line 128
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public addChild(Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<",
            "TT;>;)Z"
        }
    .end annotation

    .line 139
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    .line 140
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 143
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 145
    new-array v3, v3, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    .line 146
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    aput-object p1, v3, v1

    .line 148
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v3}, Landroidx/webkit/ProcessGlobalConfig$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public connect()V
    .locals 1

    .line 200
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->source:Lio/reactivex/Flowable;

    invoke-virtual {v0, p0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->isConnected:Z

    return-void
.end method

.method public onComplete()V
    .locals 4

    .line 231
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->sourceDone:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->sourceDone:Z

    .line 233
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    .line 234
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->add(Ljava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->connection:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 236
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 237
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->replay()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 216
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->sourceDone:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->sourceDone:Z

    .line 218
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 219
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->add(Ljava/lang/Object;)V

    .line 220
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->connection:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 221
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 222
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->replay()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 205
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->sourceDone:Z

    if-nez v0, :cond_0

    .line 206
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 207
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->add(Ljava/lang/Object;)V

    .line 208
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 209
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->replay()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 3

    .line 192
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->connection:Ljava/util/concurrent/atomic/AtomicReference;

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v0, p1, v1, v2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;J)Z

    return-void
.end method

.method public removeChild(Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 160
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    .line 161
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 167
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    :goto_1
    if-gez v3, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 178
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 180
    new-array v5, v5, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    .line 181
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v3, 0x1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    .line 182
    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 184
    :goto_2
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Landroidx/webkit/ProcessGlobalConfig$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
