.class Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;
.super Ljava/lang/Object;
.source "InProcessTransport.java"

# interfaces
.implements Lio/grpc/internal/ClientStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/inprocess/InProcessTransport$InProcessStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InProcessClientStream"
.end annotation


# instance fields
.field final callOptions:Lio/grpc/CallOptions;

.field private closed:Z

.field private outboundSeqNo:I

.field private serverNotifyHalfClose:Z

.field private serverReceiveQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/grpc/internal/StreamListener$MessageProducer;",
            ">;"
        }
    .end annotation
.end field

.field private serverRequested:I

.field private serverStreamListener:Lio/grpc/internal/ServerStreamListener;

.field final statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

.field private final syncContext:Lio/grpc/SynchronizationContext;

.field final synthetic this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;


# direct methods
.method constructor <init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream;Lio/grpc/CallOptions;Lio/grpc/internal/StatsTraceContext;)V
    .locals 1

    .line 722
    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    new-instance v0, Lio/grpc/SynchronizationContext;

    iget-object p1, p1, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    .line 707
    invoke-static {p1}, Lio/grpc/inprocess/InProcessTransport;->access$1100(Lio/grpc/inprocess/InProcessTransport;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/grpc/SynchronizationContext;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->syncContext:Lio/grpc/SynchronizationContext;

    .line 710
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverReceiveQueue:Ljava/util/ArrayDeque;

    .line 723
    iput-object p2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->callOptions:Lio/grpc/CallOptions;

    .line 724
    iput-object p3, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    return-void
.end method

.method static synthetic access$1300(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;Lio/grpc/internal/ServerStreamListener;)V
    .locals 0

    .line 701
    invoke-direct {p0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->setListener(Lio/grpc/internal/ServerStreamListener;)V

    return-void
.end method

.method static synthetic access$1400(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;I)Z
    .locals 0

    .line 701
    invoke-direct {p0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverRequested(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;Lio/grpc/Status;Lio/grpc/Status;)V
    .locals 0

    .line 701
    invoke-direct {p0, p1, p2}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverClosed(Lio/grpc/Status;Lio/grpc/Status;)V

    return-void
.end method

.method private internalCancel(Lio/grpc/Status;Lio/grpc/Status;)Z
    .locals 6

    .line 826
    monitor-enter p0

    .line 827
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->closed:Z

    if-eqz v0, :cond_0

    .line 828
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 830
    iput-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->closed:Z

    .line 833
    :cond_1
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverReceiveQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/StreamListener$MessageProducer;

    if-eqz v1, :cond_2

    .line 835
    :goto_0
    invoke-interface {v1}, Lio/grpc/internal/StreamListener$MessageProducer;->next()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    .line 837
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 839
    :try_start_2
    invoke-static {}, Lio/grpc/inprocess/InProcessTransport;->access$2200()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Exception closing stream"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 843
    :cond_2
    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2400(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    move-result-object v1

    iget-object v1, v1, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    invoke-virtual {v1, p2}, Lio/grpc/internal/StatsTraceContext;->streamClosed(Lio/grpc/Status;)V

    .line 844
    iget-object p2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream$$ExternalSyntheticLambda1;-><init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;Lio/grpc/Status;)V

    invoke-virtual {p2, v1}, Lio/grpc/SynchronizationContext;->executeLater(Ljava/lang/Runnable;)V

    .line 845
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 846
    iget-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {p1}, Lio/grpc/SynchronizationContext;->drain()V

    return v0

    :catchall_1
    move-exception p1

    .line 845
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private serverClosed(Lio/grpc/Status;Lio/grpc/Status;)V
    .locals 0

    .line 777
    invoke-direct {p0, p1, p2}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->internalCancel(Lio/grpc/Status;Lio/grpc/Status;)Z

    return-void
.end method

.method private serverRequested(I)Z
    .locals 5

    .line 753
    monitor-enter p0

    .line 754
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 755
    monitor-exit p0

    return v1

    .line 757
    :cond_0
    iget v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverRequested:I

    const/4 v2, 0x1

    if-lez v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    add-int/2addr v0, p1

    .line 758
    iput v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverRequested:I

    .line 760
    :goto_1
    iget p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverRequested:I

    if-lez p1, :cond_2

    iget-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverReceiveQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 761
    iget p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverRequested:I

    sub-int/2addr p1, v2

    iput p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverRequested:I

    .line 762
    iget-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverReceiveQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/StreamListener$MessageProducer;

    .line 763
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v4, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream$$ExternalSyntheticLambda3;-><init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;Lio/grpc/internal/StreamListener$MessageProducer;)V

    invoke-virtual {v0, v4}, Lio/grpc/SynchronizationContext;->executeLater(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 766
    :cond_2
    iget-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverReceiveQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverNotifyHalfClose:Z

    if-eqz p1, :cond_3

    .line 767
    iput-boolean v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverNotifyHalfClose:Z

    .line 768
    iget-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream$$ExternalSyntheticLambda4;-><init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;)V

    invoke-virtual {p1, v0}, Lio/grpc/SynchronizationContext;->executeLater(Ljava/lang/Runnable;)V

    .line 770
    :cond_3
    iget p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverRequested:I

    if-lez p1, :cond_4

    move p1, v2

    goto :goto_2

    :cond_4
    move p1, v1

    .line 771
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->drain()V

    if-nez v3, :cond_5

    if-eqz p1, :cond_5

    move v1, v2

    :cond_5
    return v1

    :catchall_0
    move-exception p1

    .line 771
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized setListener(Lio/grpc/internal/ServerStreamListener;)V
    .locals 0

    monitor-enter p0

    .line 728
    :try_start_0
    iput-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverStreamListener:Lio/grpc/internal/ServerStreamListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V
    .locals 0

    return-void
.end method

.method public cancel(Lio/grpc/Status;)V
    .locals 1

    .line 816
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport;->access$1900(Lio/grpc/inprocess/InProcessTransport;)Z

    move-result v0

    invoke-static {p1, v0}, Lio/grpc/inprocess/InProcessTransport;->access$2000(Lio/grpc/Status;Z)Lio/grpc/Status;

    move-result-object v0

    .line 817
    invoke-direct {p0, v0, v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->internalCancel(Lio/grpc/Status;Lio/grpc/Status;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 820
    :cond_0
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2400(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->access$2600(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;Lio/grpc/Status;)V

    .line 821
    iget-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2100(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)V

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 889
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport;->access$3000(Lio/grpc/inprocess/InProcessTransport;)Lio/grpc/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public halfClose()V
    .locals 2

    .line 852
    monitor-enter p0

    .line 853
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->closed:Z

    if-eqz v0, :cond_0

    .line 854
    monitor-exit p0

    return-void

    .line 856
    :cond_0
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverReceiveQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 857
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream$$ExternalSyntheticLambda2;-><init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->executeLater(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 859
    iput-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverNotifyHalfClose:Z

    .line 861
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->drain()V

    return-void

    :catchall_0
    move-exception v0

    .line 861
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isReady()Z
    .locals 2

    monitor-enter p0

    .line 807
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 808
    monitor-exit p0

    return v1

    .line 810
    :cond_0
    :try_start_1
    iget v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverRequested:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method synthetic lambda$halfClose$5$io-grpc-inprocess-InProcessTransport$InProcessStream$InProcessClientStream()V
    .locals 1

    .line 857
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverStreamListener:Lio/grpc/internal/ServerStreamListener;

    invoke-interface {v0}, Lio/grpc/internal/ServerStreamListener;->halfClosed()V

    return-void
.end method

.method synthetic lambda$internalCancel$4$io-grpc-inprocess-InProcessTransport$InProcessStream$InProcessClientStream(Lio/grpc/Status;)V
    .locals 1

    .line 844
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverStreamListener:Lio/grpc/internal/ServerStreamListener;

    invoke-interface {v0, p1}, Lio/grpc/internal/ServerStreamListener;->closed(Lio/grpc/Status;)V

    return-void
.end method

.method synthetic lambda$request$0$io-grpc-inprocess-InProcessTransport$InProcessStream$InProcessClientStream()V
    .locals 1

    .line 737
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverStreamListener:Lio/grpc/internal/ServerStreamListener;

    invoke-interface {v0}, Lio/grpc/internal/ServerStreamListener;->onReady()V

    return-void
.end method

.method synthetic lambda$serverRequested$1$io-grpc-inprocess-InProcessTransport$InProcessStream$InProcessClientStream(Lio/grpc/internal/StreamListener$MessageProducer;)V
    .locals 1

    .line 763
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverStreamListener:Lio/grpc/internal/ServerStreamListener;

    invoke-interface {v0, p1}, Lio/grpc/internal/ServerStreamListener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V

    return-void
.end method

.method synthetic lambda$serverRequested$2$io-grpc-inprocess-InProcessTransport$InProcessStream$InProcessClientStream()V
    .locals 1

    .line 768
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverStreamListener:Lio/grpc/internal/ServerStreamListener;

    invoke-interface {v0}, Lio/grpc/internal/ServerStreamListener;->halfClosed()V

    return-void
.end method

.method synthetic lambda$writeMessage$3$io-grpc-inprocess-InProcessTransport$InProcessStream$InProcessClientStream(Lio/grpc/internal/StreamListener$MessageProducer;)V
    .locals 1

    .line 794
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverStreamListener:Lio/grpc/internal/ServerStreamListener;

    invoke-interface {v0, p1}, Lio/grpc/internal/ServerStreamListener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V

    return-void
.end method

.method public optimizeForDirectExecutor()V
    .locals 0

    return-void
.end method

.method public request(I)V
    .locals 1

    .line 733
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2400(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->access$2500(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 735
    monitor-enter p0

    .line 736
    :try_start_0
    iget-boolean p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->closed:Z

    if-nez p1, :cond_0

    .line 737
    iget-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream$$ExternalSyntheticLambda0;-><init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;)V

    invoke-virtual {p1, v0}, Lio/grpc/SynchronizationContext;->executeLater(Ljava/lang/Runnable;)V

    .line 739
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    iget-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {p1}, Lio/grpc/SynchronizationContext;->drain()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 739
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 1

    .line 870
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2302(Lio/grpc/inprocess/InProcessTransport$InProcessStream;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setCompressor(Lio/grpc/Compressor;)V
    .locals 0

    return-void
.end method

.method public setDeadline(Lio/grpc/Deadline;)V
    .locals 4

    .line 912
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2900(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/Metadata;

    move-result-object v0

    sget-object v1, Lio/grpc/internal/GrpcUtil;->TIMEOUT_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {v0, v1}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 913
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 914
    iget-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2900(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/Metadata;

    move-result-object p1

    sget-object v2, Lio/grpc/internal/GrpcUtil;->TIMEOUT_KEY:Lio/grpc/Metadata$Key;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)V
    .locals 0

    return-void
.end method

.method public setFullStreamDecompression(Z)V
    .locals 0

    return-void
.end method

.method public setMaxInboundMessageSize(I)V
    .locals 0

    return-void
.end method

.method public setMaxOutboundMessageSize(I)V
    .locals 0

    return-void
.end method

.method public setMessageCompression(Z)V
    .locals 0

    return-void
.end method

.method public start(Lio/grpc/internal/ClientStreamListener;)V
    .locals 4

    .line 875
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2400(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->access$2700(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;Lio/grpc/internal/ClientStreamListener;)V

    .line 877
    iget-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object p1, p1, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    monitor-enter p1

    .line 878
    :try_start_0
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    invoke-virtual {v0}, Lio/grpc/internal/StatsTraceContext;->clientOutboundHeaders()V

    .line 879
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport;->access$800(Lio/grpc/inprocess/InProcessTransport;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 880
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->callOptions:Lio/grpc/CallOptions;

    invoke-static {v0}, Lio/grpc/internal/GrpcUtil;->shouldBeCountedForInUse(Lio/grpc/CallOptions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport;->access$900(Lio/grpc/inprocess/InProcessTransport;)Lio/grpc/internal/InUseStateAggregator;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/grpc/internal/InUseStateAggregator;->updateObjectInUse(Ljava/lang/Object;Z)V

    .line 883
    :cond_0
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->this$0:Lio/grpc/inprocess/InProcessTransport;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport;->access$500(Lio/grpc/inprocess/InProcessTransport;)Lio/grpc/internal/ServerTransportListener;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v1}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2400(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v2}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2800(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/MethodDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v3}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2900(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/Metadata;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lio/grpc/internal/ServerTransportListener;->streamCreated(Lio/grpc/internal/ServerStream;Ljava/lang/String;Lio/grpc/Metadata;)V

    .line 884
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeMessage(Ljava/io/InputStream;)V
    .locals 8

    .line 782
    monitor-enter p0

    .line 783
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->closed:Z

    if-eqz v0, :cond_0

    .line 784
    monitor-exit p0

    return-void

    .line 786
    :cond_0
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->outboundSeqNo:I

    invoke-virtual {v0, v1}, Lio/grpc/internal/StatsTraceContext;->outboundMessage(I)V

    .line 787
    iget-object v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget v3, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->outboundSeqNo:I

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    invoke-virtual/range {v2 .. v7}, Lio/grpc/internal/StatsTraceContext;->outboundMessageSent(IJJ)V

    .line 788
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2400(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget v1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->outboundSeqNo:I

    invoke-virtual {v0, v1}, Lio/grpc/internal/StatsTraceContext;->inboundMessage(I)V

    .line 789
    iget-object v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->this$1:Lio/grpc/inprocess/InProcessTransport$InProcessStream;

    invoke-static {v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream;->access$2400(Lio/grpc/inprocess/InProcessTransport$InProcessStream;)Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;

    move-result-object v0

    iget-object v1, v0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessServerStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget v2, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->outboundSeqNo:I

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    invoke-virtual/range {v1 .. v6}, Lio/grpc/internal/StatsTraceContext;->inboundMessageRead(IJJ)V

    .line 790
    iget v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->outboundSeqNo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->outboundSeqNo:I

    .line 791
    new-instance v0, Lio/grpc/inprocess/InProcessTransport$SingleMessageProducer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/inprocess/InProcessTransport$SingleMessageProducer;-><init>(Ljava/io/InputStream;Lio/grpc/inprocess/InProcessTransport$1;)V

    .line 792
    iget p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverRequested:I

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 793
    iput p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverRequested:I

    .line 794
    iget-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0}, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream$$ExternalSyntheticLambda5;-><init>(Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;Lio/grpc/internal/StreamListener$MessageProducer;)V

    invoke-virtual {p1, v1}, Lio/grpc/SynchronizationContext;->executeLater(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 796
    :cond_1
    iget-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->serverReceiveQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 798
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    iget-object p1, p0, Lio/grpc/inprocess/InProcessTransport$InProcessStream$InProcessClientStream;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {p1}, Lio/grpc/SynchronizationContext;->drain()V

    return-void

    :catchall_0
    move-exception p1

    .line 798
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
