.class public abstract Lio/reactivex/Maybe;
.super Ljava/lang/Object;
.source "Maybe.java"

# interfaces
.implements Lio/reactivex/MaybeSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/MaybeSource<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static amb(Ljava/lang/Iterable;)Lio/reactivex/Maybe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 66
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeAmb;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/reactivex/internal/operators/maybe/MaybeAmb;-><init>([Lio/reactivex/MaybeSource;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static varargs ambArray([Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 86
    array-length v0, p0

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Lio/reactivex/Maybe;->empty()Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0

    .line 89
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 90
    aget-object p0, p0, v0

    invoke-static {p0}, Lio/reactivex/Maybe;->wrap(Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0

    .line 92
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeAmb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/maybe/MaybeAmb;-><init>([Lio/reactivex/MaybeSource;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 140
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 141
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 142
    invoke-static {v0}, Lio/reactivex/Maybe;->concatArray([Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 172
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 173
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 174
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 175
    invoke-static {v0}, Lio/reactivex/Maybe;->concatArray([Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 207
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 208
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 209
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 210
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 211
    invoke-static {v0}, Lio/reactivex/Maybe;->concatArray([Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Ljava/lang/Iterable;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 112
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeConcatIterable;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeConcatIterable;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lorg/reactivestreams/Publisher;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x2

    .line 233
    invoke-static {p0, v0}, Lio/reactivex/Maybe;->concat(Lorg/reactivestreams/Publisher;I)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lorg/reactivestreams/Publisher;I)Lio/reactivex/Flowable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;I)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 257
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 258
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    .line 259
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableConcatMapPublisher;

    invoke-static {}, Lio/reactivex/internal/operators/maybe/MaybeToPublisher;->instance()Lio/reactivex/functions/Function;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v0, p0, v1, p1, v2}, Lio/reactivex/internal/operators/flowable/FlowableConcatMapPublisher;-><init>(Lorg/reactivestreams/Publisher;Lio/reactivex/functions/Function;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArray([Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 279
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 280
    array-length v0, p0

    if-nez v0, :cond_0

    .line 281
    invoke-static {}, Lio/reactivex/Flowable;->empty()Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0

    .line 283
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 284
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeToFlowable;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeToFlowable;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0

    .line 286
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeConcatArray;-><init>([Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArrayDelayError([Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 310
    array-length v0, p0

    if-nez v0, :cond_0

    .line 311
    invoke-static {}, Lio/reactivex/Flowable;->empty()Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0

    .line 313
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 314
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeToFlowable;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeToFlowable;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0

    .line 316
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError;-><init>([Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArrayEager([Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 340
    invoke-static {p0}, Lio/reactivex/Flowable;->fromArray([Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/maybe/MaybeToPublisher;->instance()Lio/reactivex/functions/Function;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->concatMapEager(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static concatDelayError(Ljava/lang/Iterable;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 363
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 364
    invoke-static {p0}, Lio/reactivex/Flowable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/maybe/MaybeToPublisher;->instance()Lio/reactivex/functions/Function;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->concatMapDelayError(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static concatDelayError(Lorg/reactivestreams/Publisher;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 387
    invoke-static {p0}, Lio/reactivex/Flowable;->fromPublisher(Lorg/reactivestreams/Publisher;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/maybe/MaybeToPublisher;->instance()Lio/reactivex/functions/Function;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->concatMapDelayError(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static concatEager(Ljava/lang/Iterable;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 411
    invoke-static {p0}, Lio/reactivex/Flowable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/maybe/MaybeToPublisher;->instance()Lio/reactivex/functions/Function;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->concatMapEager(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static concatEager(Lorg/reactivestreams/Publisher;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 437
    invoke-static {p0}, Lio/reactivex/Flowable;->fromPublisher(Lorg/reactivestreams/Publisher;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/maybe/MaybeToPublisher;->instance()Lio/reactivex/functions/Function;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->concatMapEager(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lio/reactivex/MaybeOnSubscribe;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeOnSubscribe<",
            "TT;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 481
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 482
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeCreate;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeCreate;-><init>(Lio/reactivex/MaybeOnSubscribe;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "maybeSupplier is null"

    .line 500
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 501
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeDefer;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeDefer;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static empty()Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 520
    sget-object v0, Lio/reactivex/internal/operators/maybe/MaybeEmpty;->INSTANCE:Lio/reactivex/internal/operators/maybe/MaybeEmpty;

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public static error(Ljava/lang/Throwable;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "exception is null"

    .line 544
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 545
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeError;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static error(Ljava/util/concurrent/Callable;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "errorSupplier is null"

    .line 569
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 570
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeErrorCallable;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeErrorCallable;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Action;",
            ")",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "run is null"

    .line 588
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 589
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeFromAction;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeFromAction;-><init>(Lio/reactivex/functions/Action;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "callable is null"

    .line 667
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 668
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeFromCallable;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeFromCallable;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static fromCompletable(Lio/reactivex/CompletableSource;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/CompletableSource;",
            ")",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "completableSource is null"

    .line 607
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 608
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeFromCompletable;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeFromCompletable;-><init>(Lio/reactivex/CompletableSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static fromFuture(Ljava/util/concurrent/Future;)Lio/reactivex/Maybe;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "future is null"

    .line 700
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 701
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeFromFuture;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lio/reactivex/internal/operators/maybe/MaybeFromFuture;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static fromFuture(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "future is null"

    .line 737
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    .line 738
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 739
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeFromFuture;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/maybe/MaybeFromFuture;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            ")",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "run is null"

    .line 757
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 758
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeFromRunnable;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeFromRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static fromSingle(Lio/reactivex/SingleSource;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/SingleSource<",
            "TT;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "singleSource is null"

    .line 626
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 627
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeFromSingle;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeFromSingle;-><init>(Lio/reactivex/SingleSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "item is null"

    .line 784
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 785
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeJust;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeJust;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 968
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 969
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 970
    invoke-static {v0}, Lio/reactivex/Maybe;->mergeArray([Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1019
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1020
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1021
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 1022
    invoke-static {v0}, Lio/reactivex/Maybe;->mergeArray([Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1073
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1074
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1075
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 1076
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 1077
    invoke-static {v0}, Lio/reactivex/Maybe;->mergeArray([Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Ljava/lang/Iterable;)Lio/reactivex/Flowable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 819
    invoke-static {p0}, Lio/reactivex/Flowable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Maybe;->merge(Lorg/reactivestreams/Publisher;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lorg/reactivestreams/Publisher;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const v0, 0x7fffffff

    .line 853
    invoke-static {p0, v0}, Lio/reactivex/Maybe;->merge(Lorg/reactivestreams/Publisher;I)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lorg/reactivestreams/Publisher;I)Lio/reactivex/Flowable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;I)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source is null"

    .line 889
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 890
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    .line 891
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapPublisher;

    invoke-static {}, Lio/reactivex/internal/operators/maybe/MaybeToPublisher;->instance()Lio/reactivex/functions/Function;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapPublisher;-><init>(Lorg/reactivestreams/Publisher;Lio/reactivex/functions/Function;ZII)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source is null"

    .line 921
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 922
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeFlatten;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->identity()Lio/reactivex/functions/Function;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/maybe/MaybeFlatten;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static varargs mergeArray([Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1112
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1113
    array-length v0, p0

    if-nez v0, :cond_0

    .line 1114
    invoke-static {}, Lio/reactivex/Flowable;->empty()Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0

    .line 1116
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1117
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeToFlowable;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeToFlowable;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0

    .line 1119
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray;-><init>([Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static varargs mergeArrayDelayError([Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1154
    array-length v0, p0

    if-nez v0, :cond_0

    .line 1155
    invoke-static {}, Lio/reactivex/Flowable;->empty()Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0

    .line 1157
    :cond_0
    invoke-static {p0}, Lio/reactivex/Flowable;->fromArray([Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/operators/maybe/MaybeToPublisher;->instance()Lio/reactivex/functions/Function;

    move-result-object v1

    const/4 v2, 0x1

    array-length p0, p0

    invoke-virtual {v0, v1, v2, p0}, Lio/reactivex/Flowable;->flatMap(Lio/reactivex/functions/Function;ZI)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1307
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1308
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 1309
    invoke-static {v0}, Lio/reactivex/Maybe;->mergeArrayDelayError([Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1349
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1350
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1351
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 1352
    invoke-static {v0}, Lio/reactivex/Maybe;->mergeArrayDelayError([Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1396
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1397
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1398
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 1399
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 1400
    invoke-static {v0}, Lio/reactivex/Maybe;->mergeArrayDelayError([Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Ljava/lang/Iterable;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1193
    invoke-static {p0}, Lio/reactivex/Flowable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Flowable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/maybe/MaybeToPublisher;->instance()Lio/reactivex/functions/Function;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/Flowable;->flatMap(Lio/reactivex/functions/Function;Z)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lorg/reactivestreams/Publisher;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const v0, 0x7fffffff

    .line 1229
    invoke-static {p0, v0}, Lio/reactivex/Maybe;->mergeDelayError(Lorg/reactivestreams/Publisher;I)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lorg/reactivestreams/Publisher;I)Lio/reactivex/Flowable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;I)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source is null"

    .line 1269
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 1270
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    .line 1271
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapPublisher;

    invoke-static {}, Lio/reactivex/internal/operators/maybe/MaybeToPublisher;->instance()Lio/reactivex/functions/Function;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapPublisher;-><init>(Lorg/reactivestreams/Publisher;Lio/reactivex/functions/Function;ZII)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static never()Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1423
    sget-object v0, Lio/reactivex/internal/operators/maybe/MaybeNever;->INSTANCE:Lio/reactivex/internal/operators/maybe/MaybeNever;

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public static sequenceEqual(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1449
    invoke-static {}, Lio/reactivex/internal/functions/ObjectHelper;->equalsPredicate()Lio/reactivex/functions/BiPredicate;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lio/reactivex/Maybe;->sequenceEqual(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/BiPredicate;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public static sequenceEqual(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/BiPredicate;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/functions/BiPredicate<",
            "-TT;-TT;>;)",
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1479
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1480
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isEqual is null"

    .line 1481
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1482
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/maybe/MaybeEqualSingle;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/BiPredicate;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Single;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/Maybe<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1504
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/Maybe;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/Maybe<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 1528
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 1529
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1531
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeTimer;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/maybe/MaybeTimer;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static unsafeCreate(Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "TT;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1548
    instance-of v0, p0, Lio/reactivex/Maybe;

    if-nez v0, :cond_0

    const-string v0, "onSubscribe is null"

    .line 1551
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1552
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeUnsafeCreate;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeUnsafeCreate;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0

    .line 1549
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsafeCreate(Maybe) should be upgraded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static using(Ljava/util/concurrent/Callable;Lio/reactivex/functions/Function;Lio/reactivex/functions/Consumer;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TD;>;",
            "Lio/reactivex/functions/Function<",
            "-TD;+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;",
            "Lio/reactivex/functions/Consumer<",
            "-TD;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x1

    .line 1581
    invoke-static {p0, p1, p2, v0}, Lio/reactivex/Maybe;->using(Ljava/util/concurrent/Callable;Lio/reactivex/functions/Function;Lio/reactivex/functions/Consumer;Z)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static using(Ljava/util/concurrent/Callable;Lio/reactivex/functions/Function;Lio/reactivex/functions/Consumer;Z)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TD;>;",
            "Lio/reactivex/functions/Function<",
            "-TD;+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;",
            "Lio/reactivex/functions/Consumer<",
            "-TD;>;Z)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "resourceSupplier is null"

    .line 1616
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sourceSupplier is null"

    .line 1617
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposer is null"

    .line 1618
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1619
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeUsing;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/maybe/MaybeUsing;-><init>(Ljava/util/concurrent/Callable;Lio/reactivex/functions/Function;Lio/reactivex/functions/Consumer;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "TT;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1636
    instance-of v0, p0, Lio/reactivex/Maybe;

    if-eqz v0, :cond_0

    .line 1637
    check-cast p0, Lio/reactivex/Maybe;

    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "onSubscribe is null"

    .line 1639
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1640
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeUnsafeCreate;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeUnsafeCreate;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function9;)Lio/reactivex/Maybe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT1;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT2;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT3;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT4;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT5;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT6;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT7;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT8;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT9;>;",
            "Lio/reactivex/functions/Function9<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lio/reactivex/Maybe<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 2076
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2077
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 2078
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 2079
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 2080
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 2081
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 2082
    invoke-static {p6, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 2083
    invoke-static {p7, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source9 is null"

    .line 2084
    invoke-static {p8, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2085
    invoke-static {p9}, Lio/reactivex/internal/functions/Functions;->toFunction(Lio/reactivex/functions/Function9;)Lio/reactivex/functions/Function;

    move-result-object p9

    const/16 v0, 0x9

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    const/16 p0, 0x8

    aput-object p8, v0, p0

    invoke-static {p9, v0}, Lio/reactivex/Maybe;->zipArray(Lio/reactivex/functions/Function;[Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function8;)Lio/reactivex/Maybe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT1;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT2;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT3;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT4;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT5;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT6;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT7;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT8;>;",
            "Lio/reactivex/functions/Function8<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lio/reactivex/Maybe<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 2010
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2011
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 2012
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 2013
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 2014
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 2015
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 2016
    invoke-static {p6, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 2017
    invoke-static {p7, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2018
    invoke-static {p8}, Lio/reactivex/internal/functions/Functions;->toFunction(Lio/reactivex/functions/Function8;)Lio/reactivex/functions/Function;

    move-result-object p8

    const/16 v0, 0x8

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    invoke-static {p8, v0}, Lio/reactivex/Maybe;->zipArray(Lio/reactivex/functions/Function;[Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function7;)Lio/reactivex/Maybe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT1;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT2;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT3;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT4;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT5;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT6;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT7;>;",
            "Lio/reactivex/functions/Function7<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lio/reactivex/Maybe<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1949
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1950
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1951
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 1952
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 1953
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 1954
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 1955
    invoke-static {p6, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1956
    invoke-static {p7}, Lio/reactivex/internal/functions/Functions;->toFunction(Lio/reactivex/functions/Function7;)Lio/reactivex/functions/Function;

    move-result-object p7

    const/4 v0, 0x7

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    invoke-static {p7, v0}, Lio/reactivex/Maybe;->zipArray(Lio/reactivex/functions/Function;[Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function6;)Lio/reactivex/Maybe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT1;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT2;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT3;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT4;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT5;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT6;>;",
            "Lio/reactivex/functions/Function6<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lio/reactivex/Maybe<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1892
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1893
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1894
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 1895
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 1896
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 1897
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1898
    invoke-static {p6}, Lio/reactivex/internal/functions/Functions;->toFunction(Lio/reactivex/functions/Function6;)Lio/reactivex/functions/Function;

    move-result-object p6

    const/4 v0, 0x6

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    invoke-static {p6, v0}, Lio/reactivex/Maybe;->zipArray(Lio/reactivex/functions/Function;[Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function5;)Lio/reactivex/Maybe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT1;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT2;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT3;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT4;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT5;>;",
            "Lio/reactivex/functions/Function5<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lio/reactivex/Maybe<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1840
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1841
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1842
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 1843
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 1844
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1845
    invoke-static {p5}, Lio/reactivex/internal/functions/Functions;->toFunction(Lio/reactivex/functions/Function5;)Lio/reactivex/functions/Function;

    move-result-object p5

    const/4 v0, 0x5

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    invoke-static {p5, v0}, Lio/reactivex/Maybe;->zipArray(Lio/reactivex/functions/Function;[Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function4;)Lio/reactivex/Maybe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT1;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT2;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT3;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT4;>;",
            "Lio/reactivex/functions/Function4<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lio/reactivex/Maybe<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1792
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1793
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1794
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 1795
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1796
    invoke-static {p4}, Lio/reactivex/internal/functions/Functions;->toFunction(Lio/reactivex/functions/Function4;)Lio/reactivex/functions/Function;

    move-result-object p4

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {p4, v0}, Lio/reactivex/Maybe;->zipArray(Lio/reactivex/functions/Function;[Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function3;)Lio/reactivex/Maybe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT1;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT2;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT3;>;",
            "Lio/reactivex/functions/Function3<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "Lio/reactivex/Maybe<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1748
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1749
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1750
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1751
    invoke-static {p3}, Lio/reactivex/internal/functions/Functions;->toFunction(Lio/reactivex/functions/Function3;)Lio/reactivex/functions/Function;

    move-result-object p3

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {p3, v0}, Lio/reactivex/Maybe;->zipArray(Lio/reactivex/functions/Function;[Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Maybe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT1;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT2;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-TT1;-TT2;+TR;>;)",
            "Lio/reactivex/Maybe<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1709
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1710
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1711
    invoke-static {p2}, Lio/reactivex/internal/functions/Functions;->toFunction(Lio/reactivex/functions/BiFunction;)Lio/reactivex/functions/Function;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, v0}, Lio/reactivex/Maybe;->zipArray(Lio/reactivex/functions/Function;[Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/Maybe<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "zipper is null"

    .line 1673
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    .line 1674
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1675
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeZipIterable;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeZipIterable;-><init>(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static varargs zipArray(Lio/reactivex/functions/Function;[Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;[",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Maybe<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 2119
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2120
    array-length v0, p1

    if-nez v0, :cond_0

    .line 2121
    invoke-static {}, Lio/reactivex/Maybe;->empty()Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "zipper is null"

    .line 2123
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2124
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeZipArray;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/maybe/MaybeZipArray;-><init>([Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final ambWith(Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 2151
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2152
    invoke-static {v0}, Lio/reactivex/Maybe;->ambArray([Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final as(Lio/reactivex/MaybeConverter;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeConverter<",
            "TT;+TR;>;)TR;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "converter is null"

    .line 2174
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/MaybeConverter;

    invoke-interface {p1, p0}, Lio/reactivex/MaybeConverter;->apply(Lio/reactivex/Maybe;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final blockingGet()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 2193
    new-instance v0, Lio/reactivex/internal/observers/BlockingMultiObserver;

    invoke-direct {v0}, Lio/reactivex/internal/observers/BlockingMultiObserver;-><init>()V

    .line 2194
    invoke-virtual {p0, v0}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/MaybeObserver;)V

    .line 2195
    invoke-virtual {v0}, Lio/reactivex/internal/observers/BlockingMultiObserver;->blockingGet()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final blockingGet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "defaultValue is null"

    .line 2215
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2216
    new-instance v0, Lio/reactivex/internal/observers/BlockingMultiObserver;

    invoke-direct {v0}, Lio/reactivex/internal/observers/BlockingMultiObserver;-><init>()V

    .line 2217
    invoke-virtual {p0, v0}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/MaybeObserver;)V

    .line 2218
    invoke-virtual {v0, p1}, Lio/reactivex/internal/observers/BlockingMultiObserver;->blockingGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final cache()Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 2243
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeCache;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeCache;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public final cast(Ljava/lang/Class;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TU;>;)",
            "Lio/reactivex/Maybe<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "clazz is null"

    .line 2260
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2261
    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->castFunction(Ljava/lang/Class;)Lio/reactivex/functions/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Maybe;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final compose(Lio/reactivex/MaybeTransformer;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeTransformer<",
            "-TT;+TR;>;)",
            "Lio/reactivex/Maybe<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "transformer is null"

    .line 2286
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/MaybeTransformer;

    invoke-interface {p1, p0}, Lio/reactivex/MaybeTransformer;->apply(Lio/reactivex/Maybe;)Lio/reactivex/MaybeSource;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Maybe;->wrap(Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;)",
            "Lio/reactivex/Maybe<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 2308
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2309
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeFlatten;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeFlatten;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final concatWith(Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 2335
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2336
    invoke-static {p0, p1}, Lio/reactivex/Maybe;->concat(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final contains(Ljava/lang/Object;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "item is null"

    .line 2358
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2359
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeContains;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeContains;-><init>(Lio/reactivex/MaybeSource;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Single;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public final count()Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 2380
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeCount;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeCount;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Single;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public final defaultIfEmpty(Ljava/lang/Object;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "item is null"

    .line 2406
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2407
    invoke-static {p1}, Lio/reactivex/Maybe;->just(Ljava/lang/Object;)Lio/reactivex/Maybe;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Maybe;->switchIfEmpty(Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 2431
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/Maybe;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 2456
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2457
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2458
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeDelay;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-object v1, v0

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/maybe/MaybeDelay;-><init>(Lio/reactivex/MaybeSource;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final delay(Lorg/reactivestreams/Publisher;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "TU;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "delayIndicator is null"

    .line 2487
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2488
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher;-><init>(Lio/reactivex/MaybeSource;Lorg/reactivestreams/Publisher;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final delaySubscription(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 2534
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/Maybe;->delaySubscription(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final delaySubscription(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    .line 2560
    invoke-static {p1, p2, p3, p4}, Lio/reactivex/Flowable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Maybe;->delaySubscription(Lorg/reactivestreams/Publisher;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final delaySubscription(Lorg/reactivestreams/Publisher;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "TU;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "subscriptionIndicator is null"

    .line 2511
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2512
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeDelaySubscriptionOtherPublisher;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeDelaySubscriptionOtherPublisher;-><init>(Lio/reactivex/MaybeSource;Lorg/reactivestreams/Publisher;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final doAfterSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "doAfterSuccess is null"

    .line 2579
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2580
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeDoAfterSuccess;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeDoAfterSuccess;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Consumer;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final doAfterTerminate(Lio/reactivex/functions/Action;)Lio/reactivex/Maybe;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Action;",
            ")",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 2603
    new-instance v8, Lio/reactivex/internal/operators/maybe/MaybePeek;

    .line 2604
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v2

    .line 2605
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v3

    .line 2606
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v4

    sget-object v5, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    const-string v0, "onAfterTerminate is null"

    .line 2608
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lio/reactivex/functions/Action;

    sget-object v7, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lio/reactivex/internal/operators/maybe/MaybePeek;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V

    .line 2603
    invoke-static {v8}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Action;",
            ")",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "onFinally is null"

    .line 2632
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2633
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeDoFinally;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeDoFinally;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Action;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Maybe;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Action;",
            ")",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 2677
    new-instance v8, Lio/reactivex/internal/operators/maybe/MaybePeek;

    .line 2678
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v2

    .line 2679
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v3

    .line 2680
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v4

    const-string v0, "onComplete is null"

    .line 2681
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lio/reactivex/functions/Action;

    sget-object v6, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    sget-object v7, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lio/reactivex/internal/operators/maybe/MaybePeek;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V

    .line 2677
    invoke-static {v8}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final doOnDispose(Lio/reactivex/functions/Action;)Lio/reactivex/Maybe;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Action;",
            ")",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 2650
    new-instance v8, Lio/reactivex/internal/operators/maybe/MaybePeek;

    .line 2651
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v2

    .line 2652
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v3

    .line 2653
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v4

    sget-object v5, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    sget-object v6, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    const-string v0, "onDispose is null"

    .line 2656
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lio/reactivex/functions/Action;

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lio/reactivex/internal/operators/maybe/MaybePeek;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V

    .line 2650
    invoke-static {v8}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Maybe;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 2702
    new-instance v8, Lio/reactivex/internal/operators/maybe/MaybePeek;

    .line 2703
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v2

    .line 2704
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v3

    const-string v0, "onError is null"

    .line 2705
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lio/reactivex/functions/Consumer;

    sget-object v5, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    sget-object v6, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    sget-object v7, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lio/reactivex/internal/operators/maybe/MaybePeek;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V

    .line 2702
    invoke-static {v8}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final doOnEvent(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "onEvent is null"

    .line 2729
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2730
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeDoOnEvent;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeDoOnEvent;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/BiConsumer;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Maybe;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 2746
    new-instance v8, Lio/reactivex/internal/operators/maybe/MaybePeek;

    const-string v0, "onSubscribe is null"

    .line 2747
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/reactivex/functions/Consumer;

    .line 2748
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v3

    .line 2749
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v4

    sget-object v5, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    sget-object v6, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    sget-object v7, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lio/reactivex/internal/operators/maybe/MaybePeek;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V

    .line 2746
    invoke-static {v8}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Maybe;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 2771
    new-instance v8, Lio/reactivex/internal/operators/maybe/MaybePeek;

    .line 2772
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v2

    const-string v0, "onSubscribe is null"

    .line 2773
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lio/reactivex/functions/Consumer;

    .line 2774
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v4

    sget-object v5, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    sget-object v6, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    sget-object v7, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lio/reactivex/internal/operators/maybe/MaybePeek;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V

    .line 2771
    invoke-static {v8}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "predicate is null"

    .line 2801
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2802
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeFilter;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeFilter;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Predicate;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;)",
            "Lio/reactivex/Maybe<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 2825
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2826
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeFlatten;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeFlatten;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TU;>;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/Maybe<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 2888
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    .line 2889
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2890
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;)",
            "Lio/reactivex/Maybe<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "onSuccessMapper is null"

    .line 2856
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onErrorMapper is null"

    .line 2857
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCompleteSupplier is null"

    .line 2858
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2859
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/CompletableSource;",
            ">;)",
            "Lio/reactivex/Completable;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 3064
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3065
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapCompletable;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeFlatMapCompletable;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Completable;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapObservable(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;>;)",
            "Lio/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 2964
    invoke-virtual {p0}, Lio/reactivex/Maybe;->toObservable()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapPublisher(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;)",
            "Lio/reactivex/Flowable<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 2990
    invoke-virtual {p0}, Lio/reactivex/Maybe;->toFlowable()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/Flowable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapSingle(Lio/reactivex/functions/Function;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/SingleSource<",
            "+TR;>;>;)",
            "Lio/reactivex/Single<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 3014
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3015
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingle;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingle;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Single;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapSingleElement(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/SingleSource<",
            "+TR;>;>;)",
            "Lio/reactivex/Maybe<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 3041
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3042
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final flattenAsFlowable(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Lio/reactivex/Flowable<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 2917
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2918
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableFlowable;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableFlowable;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final flattenAsObservable(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Lio/reactivex/Observable<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 2941
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2942
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final hide()Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 3081
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeHide;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeHide;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public final ignoreElement()Lio/reactivex/Completable;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 3100
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeIgnoreElementCompletable;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Completable;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 3118
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Single;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public final lift(Lio/reactivex/MaybeOperator;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeOperator<",
            "+TR;-TT;>;)",
            "Lio/reactivex/Maybe<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "onLift is null"

    .line 3271
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3272
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeLift;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeLift;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeOperator;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final map(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+TR;>;)",
            "Lio/reactivex/Maybe<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 3294
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3295
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeMap;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeMap;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final mergeWith(Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 3321
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3322
    invoke-static {p0, p1}, Lio/reactivex/Maybe;->merge(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    .line 3346
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3347
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeObserveOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeObserveOn;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/Scheduler;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final ofType(Ljava/lang/Class;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "Lio/reactivex/Maybe<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "clazz is null"

    .line 3369
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3370
    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->isInstanceOf(Ljava/lang/Class;)Lio/reactivex/functions/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Maybe;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Maybe;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/Maybe;->cast(Ljava/lang/Class;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorComplete()Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 3483
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->alwaysTrue()Lio/reactivex/functions/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Maybe;->onErrorComplete(Lio/reactivex/functions/Predicate;)Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorComplete(Lio/reactivex/functions/Predicate;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Predicate<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "predicate is null"

    .line 3500
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3502
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeOnErrorComplete;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Predicate;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorResumeNext(Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "next is null"

    .line 3527
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3528
    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->justFunction(Ljava/lang/Object;)Lio/reactivex/functions/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Maybe;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "resumeFunction is null"

    .line 3553
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3554
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorNext;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/maybe/MaybeOnErrorNext;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "valueSupplier is null"

    .line 3579
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3580
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeOnErrorReturn;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorReturnItem(Ljava/lang/Object;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "item is null"

    .line 3604
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3605
    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->justFunction(Ljava/lang/Object;)Lio/reactivex/functions/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Maybe;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final onExceptionResumeNext(Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "next is null"

    .line 3633
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3634
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeOnErrorNext;

    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->justFunction(Ljava/lang/Object;)Lio/reactivex/functions/Function;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/maybe/MaybeOnErrorNext;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final onTerminateDetach()Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 3650
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeDetach;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeDetach;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public final repeat()Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 3671
    invoke-virtual {p0, v0, v1}, Lio/reactivex/Maybe;->repeat(J)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public final repeat(J)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 3699
    invoke-virtual {p0}, Lio/reactivex/Maybe;->toFlowable()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/reactivex/Flowable;->repeat(J)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final repeatUntil(Lio/reactivex/functions/BooleanSupplier;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/BooleanSupplier;",
            ")",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 3726
    invoke-virtual {p0}, Lio/reactivex/Maybe;->toFlowable()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/Flowable;->repeatUntil(Lio/reactivex/functions/BooleanSupplier;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final repeatWhen(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Object;",
            ">;+",
            "Lorg/reactivestreams/Publisher<",
            "*>;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 3755
    invoke-virtual {p0}, Lio/reactivex/Maybe;->toFlowable()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/Flowable;->repeatWhen(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final retry()Lio/reactivex/Maybe;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 3778
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->alwaysTrue()Lio/reactivex/functions/Predicate;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lio/reactivex/Maybe;->retry(JLio/reactivex/functions/Predicate;)Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public final retry(J)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 3826
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->alwaysTrue()Lio/reactivex/functions/Predicate;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/Maybe;->retry(JLio/reactivex/functions/Predicate;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final retry(JLio/reactivex/functions/Predicate;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/reactivex/functions/Predicate<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 3843
    invoke-virtual {p0}, Lio/reactivex/Maybe;->toFlowable()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/reactivex/Flowable;->retry(JLio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Flowable;->singleElement()Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final retry(Lio/reactivex/functions/BiPredicate;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/BiPredicate<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 3801
    invoke-virtual {p0}, Lio/reactivex/Maybe;->toFlowable()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/Flowable;->retry(Lio/reactivex/functions/BiPredicate;)Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Flowable;->singleElement()Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final retry(Lio/reactivex/functions/Predicate;)Lio/reactivex/Maybe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Predicate<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 3859
    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/Maybe;->retry(JLio/reactivex/functions/Predicate;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final retryUntil(Lio/reactivex/functions/BooleanSupplier;)Lio/reactivex/Maybe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/BooleanSupplier;",
            ")",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "stop is null"

    .line 3874
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide v0, 0x7fffffffffffffffL

    .line 3875
    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->predicateReverseFor(Lio/reactivex/functions/BooleanSupplier;)Lio/reactivex/functions/Predicate;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/Maybe;->retry(JLio/reactivex/functions/Predicate;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final retryWhen(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lorg/reactivestreams/Publisher<",
            "*>;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 3955
    invoke-virtual {p0}, Lio/reactivex/Maybe;->toFlowable()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/Flowable;->retryWhen(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Flowable;->singleElement()Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe()Lio/reactivex/disposables/Disposable;
    .locals 3
    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 3975
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/functions/Functions;->ON_ERROR_MISSING:Lio/reactivex/functions/Consumer;

    sget-object v2, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    invoke-virtual {p0, v0, v1, v2}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 4000
    sget-object v0, Lio/reactivex/internal/functions/Functions;->ON_ERROR_MISSING:Lio/reactivex/functions/Consumer;

    sget-object v1, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 4026
    sget-object v0, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/functions/Action;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "onSuccess is null"

    .line 4057
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 4058
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 4059
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4060
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver;

    invoke-direct {v0, p1, p2, p3}, Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver;-><init>(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)V

    invoke-virtual {p0, v0}, Lio/reactivex/Maybe;->subscribeWith(Lio/reactivex/MaybeObserver;)Lio/reactivex/MaybeObserver;

    move-result-object p1

    check-cast p1, Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method public final subscribe(Lio/reactivex/MaybeObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "observer is null"

    .line 4066
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4068
    invoke-static {p0, p1}, Lio/reactivex/plugins/RxJavaPlugins;->onSubscribe(Lio/reactivex/Maybe;Lio/reactivex/MaybeObserver;)Lio/reactivex/MaybeObserver;

    move-result-object p1

    const-string v0, "observer returned by the RxJavaPlugins hook is null"

    .line 4070
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4073
    :try_start_0
    invoke-virtual {p0, p1}, Lio/reactivex/Maybe;->subscribeActual(Lio/reactivex/MaybeObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 4077
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 4078
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "subscribeActual failed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 4079
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4080
    throw v0

    :catch_0
    move-exception p1

    .line 4075
    throw p1
.end method

.method protected abstract subscribeActual(Lio/reactivex/MaybeObserver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    .line 4112
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4113
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeSubscribeOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeSubscribeOn;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/Scheduler;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final subscribeWith(Lio/reactivex/MaybeObserver;)Lio/reactivex/MaybeObserver;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;>(TE;)TE;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 4142
    invoke-virtual {p0, p1}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/MaybeObserver;)V

    return-object p1
.end method

.method public final switchIfEmpty(Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 4164
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4165
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmpty;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmpty;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final switchIfEmpty(Lio/reactivex/SingleSource;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleSource<",
            "+TT;>;)",
            "Lio/reactivex/Single<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 4188
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4189
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/SingleSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Single;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public final takeUntil(Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "TU;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 4213
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4214
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final takeUntil(Lorg/reactivestreams/Publisher;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "TU;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 4242
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4243
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeTakeUntilPublisher;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeTakeUntilPublisher;-><init>(Lio/reactivex/MaybeSource;Lorg/reactivestreams/Publisher;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final test()Lio/reactivex/observers/TestObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observers/TestObserver<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 4510
    new-instance v0, Lio/reactivex/observers/TestObserver;

    invoke-direct {v0}, Lio/reactivex/observers/TestObserver;-><init>()V

    .line 4511
    invoke-virtual {p0, v0}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/MaybeObserver;)V

    return-object v0
.end method

.method public final test(Z)Lio/reactivex/observers/TestObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/observers/TestObserver<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 4528
    new-instance v0, Lio/reactivex/observers/TestObserver;

    invoke-direct {v0}, Lio/reactivex/observers/TestObserver;-><init>()V

    if-eqz p1, :cond_0

    .line 4531
    invoke-virtual {v0}, Lio/reactivex/observers/TestObserver;->cancel()V

    .line 4534
    :cond_0
    invoke-virtual {p0, v0}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/MaybeObserver;)V

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 4267
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/Maybe;->timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    const-string v0, "other is null"

    .line 4293
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4294
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v5

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lio/reactivex/Maybe;->timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    .line 4350
    invoke-static {p1, p2, p3, p4}, Lio/reactivex/Maybe;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Maybe;->timeout(Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "fallback is null"

    .line 4322
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4323
    invoke-static {p1, p2, p3, p4}, Lio/reactivex/Maybe;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object p1

    invoke-virtual {p0, p1, p5}, Lio/reactivex/Maybe;->timeout(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "TU;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "timeoutIndicator is null"

    .line 4368
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4369
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "TU;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "timeoutIndicator is null"

    .line 4389
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fallback is null"

    .line 4390
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4391
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(Lorg/reactivestreams/Publisher;)Lio/reactivex/Maybe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "TU;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "timeoutIndicator is null"

    .line 4413
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4414
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeTimeoutPublisher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/maybe/MaybeTimeoutPublisher;-><init>(Lio/reactivex/MaybeSource;Lorg/reactivestreams/Publisher;Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(Lorg/reactivestreams/Publisher;Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "TU;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "timeoutIndicator is null"

    .line 4438
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fallback is null"

    .line 4439
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4440
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeTimeoutPublisher;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/maybe/MaybeTimeoutPublisher;-><init>(Lio/reactivex/MaybeSource;Lorg/reactivestreams/Publisher;Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final to(Lio/reactivex/functions/Function;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Maybe<",
            "TT;>;TR;>;)TR;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    :try_start_0
    const-string v0, "convert is null"

    .line 3390
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/functions/Function;

    invoke-interface {p1, p0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3392
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 3393
    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final toFlowable()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 3413
    instance-of v0, p0, Lio/reactivex/internal/fuseable/FuseToFlowable;

    if-eqz v0, :cond_0

    .line 3414
    move-object v0, p0

    check-cast v0, Lio/reactivex/internal/fuseable/FuseToFlowable;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/FuseToFlowable;->fuseToFlowable()Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0

    .line 3416
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeToFlowable;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeToFlowable;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public final toObservable()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 3432
    instance-of v0, p0, Lio/reactivex/internal/fuseable/FuseToObservable;

    if-eqz v0, :cond_0

    .line 3433
    move-object v0, p0

    check-cast v0, Lio/reactivex/internal/fuseable/FuseToObservable;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/FuseToObservable;->fuseToObservable()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 3435
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeToObservable;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeToObservable;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toSingle()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 3468
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeToSingle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/maybe/MaybeToSingle;-><init>(Lio/reactivex/MaybeSource;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Single;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public final toSingle(Ljava/lang/Object;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/Single<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "defaultValue is null"

    .line 3452
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3453
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeToSingle;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeToSingle;-><init>(Lio/reactivex/MaybeSource;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Single;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public final unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    .line 4457
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4458
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/Scheduler;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public final zipWith(Lio/reactivex/MaybeSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TU;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/Maybe<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 4490
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4491
    invoke-static {p0, p1, p2}, Lio/reactivex/Maybe;->zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method
