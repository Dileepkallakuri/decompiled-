.class public final Lio/reactivex/internal/subscribers/ForEachWhileSubscriber;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ForEachWhileSubscriber.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/reactivestreams/Subscription;",
        ">;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3d1b3ceaf2a05f88L


# instance fields
.field done:Z

.field final onComplete:Lio/reactivex/functions/Action;

.field final onError:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final onNext:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/functions/Predicate;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/functions/Action;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 44
    iput-object p1, p0, Lio/reactivex/internal/subscribers/ForEachWhileSubscriber;->onNext:Lio/reactivex/functions/Predicate;

    .line 45
    iput-object p2, p0, Lio/reactivex/internal/subscribers/ForEachWhileSubscriber;->onError:Lio/reactivex/functions/Consumer;

    .line 46
    iput-object p3, p0, Lio/reactivex/internal/subscribers/ForEachWhileSubscriber;->onComplete:Lio/reactivex/functions/Action;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 107
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 112
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/ForEachWhileSubscriber;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->isCancelled(Lorg/reactivestreams/Subscription;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 93
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/ForEachWhileSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lio/reactivex/internal/subscribers/ForEachWhileSubscriber;->done:Z

    .line 98
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/subscribers/ForEachWhileSubscriber;->onComplete:Lio/reactivex/functions/Action;

    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 100
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 101
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 78
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/ForEachWhileSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lio/reactivex/internal/subscribers/ForEachWhileSubscriber;->done:Z

    .line 84
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/subscribers/ForEachWhileSubscriber;->onError:Lio/reactivex/functions/Consumer;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 86
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 87
    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 56
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/ForEachWhileSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/subscribers/ForEachWhileSubscriber;->onNext:Lio/reactivex/functions/Predicate;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 71
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/ForEachWhileSubscriber;->dispose()V

    .line 72
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/ForEachWhileSubscriber;->onComplete()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 64
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 65
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/ForEachWhileSubscriber;->dispose()V

    .line 66
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscribers/ForEachWhileSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 51
    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;J)Z

    return-void
.end method
