.class final Lio/grpc/okhttp/OkHttpServerTransport;
.super Ljava/lang/Object;
.source "OkHttpServerTransport.java"

# interfaces
.implements Lio/grpc/internal/ServerTransport;
.implements Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;
.implements Lio/grpc/okhttp/OutboundFlowController$Transport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;,
        Lio/grpc/okhttp/OkHttpServerTransport$StreamState;,
        Lio/grpc/okhttp/OkHttpServerTransport$KeepAlivePinger;,
        Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;,
        Lio/grpc/okhttp/OkHttpServerTransport$Config;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Lokio/ByteString;

.field private static final CONNECTION:Lokio/ByteString;

.field private static final CONNECT_METHOD:Lokio/ByteString;

.field private static final CONTENT_LENGTH:Lokio/ByteString;

.field private static final CONTENT_TYPE:Lokio/ByteString;

.field private static final GRACEFUL_SHUTDOWN_PING:I = 0x1111

.field private static final HOST:Lokio/ByteString;

.field private static final HTTP_METHOD:Lokio/ByteString;

.field private static final KEEPALIVE_PING:I = 0xdead

.field private static final PATH:Lokio/ByteString;

.field private static final POST_METHOD:Lokio/ByteString;

.field private static final SCHEME:Lokio/ByteString;

.field private static final TE:Lokio/ByteString;

.field private static final TE_TRAILERS:Lokio/ByteString;

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private abruptShutdown:Z

.field private attributes:Lio/grpc/Attributes;

.field private final bareSocket:Ljava/net/Socket;

.field private final config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

.field private forcefulCloseTimer:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

.field private goAwayStatus:Lio/grpc/Status;

.field private goAwayStreamId:I

.field private gracefulShutdown:Z

.field private handshakeShutdown:Z

.field private final keepAliveEnforcer:Lio/grpc/internal/KeepAliveEnforcer;

.field private keepAliveManager:Lio/grpc/internal/KeepAliveManager;

.field private lastStreamId:I

.field private listener:Lio/grpc/internal/ServerTransportListener;

.field private final lock:Ljava/lang/Object;

.field private final logId:Lio/grpc/InternalLogId;

.field private maxConnectionAgeMonitor:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private maxConnectionIdleManager:Lio/grpc/internal/MaxConnectionIdleManager;

.field private outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

.field private scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private secondGoawayTimer:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private securityInfo:Lio/grpc/InternalChannelz$Security;

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/grpc/okhttp/OkHttpServerTransport$StreamState;",
            ">;"
        }
    .end annotation
.end field

.field private final tracer:Lio/grpc/internal/TransportTracer;

.field private transportExecutor:Ljava/util/concurrent/Executor;

.field private final variant:Lio/grpc/okhttp/internal/framed/Variant;


# direct methods
.method public static synthetic $r8$lambda$ALOBgbbDELx6tGFqwlJhh8l9tXw(Lio/grpc/okhttp/OkHttpServerTransport;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpServerTransport;->triggerGracefulSecondGoaway()V

    return-void
.end method

.method public static synthetic $r8$lambda$flgsAsNzYEmFgg-lWiIuWF4ZDco(Lio/grpc/okhttp/OkHttpServerTransport;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpServerTransport;->triggerForcefulClose()V

    return-void
.end method

.method public static synthetic $r8$lambda$lp3kgwTOPa4ym7SMWPJ_Q3pTsnQ(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/TransportTracer$FlowControlWindows;
    .locals 0

    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpServerTransport;->readFlowControlWindow()Lio/grpc/internal/TransportTracer$FlowControlWindows;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-class v0, Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->log:Ljava/util/logging/Logger;

    const-string v0, ":method"

    .line 77
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->HTTP_METHOD:Lokio/ByteString;

    const-string v0, "CONNECT"

    .line 78
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->CONNECT_METHOD:Lokio/ByteString;

    const-string v0, "POST"

    .line 79
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->POST_METHOD:Lokio/ByteString;

    const-string v0, ":scheme"

    .line 80
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->SCHEME:Lokio/ByteString;

    const-string v0, ":path"

    .line 81
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->PATH:Lokio/ByteString;

    const-string v0, ":authority"

    .line 82
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->AUTHORITY:Lokio/ByteString;

    const-string v0, "connection"

    .line 83
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->CONNECTION:Lokio/ByteString;

    const-string v0, "host"

    .line 84
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->HOST:Lokio/ByteString;

    const-string v0, "te"

    .line 85
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->TE:Lokio/ByteString;

    const-string v0, "trailers"

    .line 86
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->TE_TRAILERS:Lokio/ByteString;

    const-string v0, "content-type"

    .line 87
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->CONTENT_TYPE:Lokio/ByteString;

    const-string v0, "content-length"

    .line 88
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->CONTENT_LENGTH:Lokio/ByteString;

    return-void
.end method

.method public constructor <init>(Lio/grpc/okhttp/OkHttpServerTransport$Config;Ljava/net/Socket;)V
    .locals 3

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lio/grpc/okhttp/internal/framed/Http2;

    invoke-direct {v0}, Lio/grpc/okhttp/internal/framed/Http2;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->variant:Lio/grpc/okhttp/internal/framed/Variant;

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->streams:Ljava/util/Map;

    const v0, 0x7fffffff

    .line 121
    iput v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->goAwayStreamId:I

    const-string v0, "config"

    .line 137
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    const-string v0, "bareSocket"

    .line 138
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->bareSocket:Ljava/net/Socket;

    .line 140
    iget-object v0, p1, Lio/grpc/okhttp/OkHttpServerTransport$Config;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    invoke-virtual {v0}, Lio/grpc/internal/TransportTracer$Factory;->create()Lio/grpc/internal/TransportTracer;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->tracer:Lio/grpc/internal/TransportTracer;

    .line 141
    new-instance v1, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda5;-><init>(Lio/grpc/okhttp/OkHttpServerTransport;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/TransportTracer;->setFlowControlWindowReader(Lio/grpc/internal/TransportTracer$FlowControlReader;)V

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/grpc/InternalLogId;->allocate(Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/InternalLogId;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport;->logId:Lio/grpc/InternalLogId;

    .line 143
    iget-object p2, p1, Lio/grpc/okhttp/OkHttpServerTransport$Config;->transportExecutorPool:Lio/grpc/internal/ObjectPool;

    invoke-interface {p2}, Lio/grpc/internal/ObjectPool;->getObject()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport;->transportExecutor:Ljava/util/concurrent/Executor;

    .line 144
    iget-object p2, p1, Lio/grpc/okhttp/OkHttpServerTransport$Config;->scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;

    invoke-interface {p2}, Lio/grpc/internal/ObjectPool;->getObject()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 145
    new-instance p2, Lio/grpc/internal/KeepAliveEnforcer;

    iget-boolean v0, p1, Lio/grpc/okhttp/OkHttpServerTransport$Config;->permitKeepAliveWithoutCalls:Z

    iget-wide v1, p1, Lio/grpc/okhttp/OkHttpServerTransport$Config;->permitKeepAliveTimeInNanos:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p2, v0, v1, v2, p1}, Lio/grpc/internal/KeepAliveEnforcer;-><init>(ZJLjava/util/concurrent/TimeUnit;)V

    iput-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport;->keepAliveEnforcer:Lio/grpc/internal/KeepAliveEnforcer;

    return-void
.end method

.method private abruptShutdown(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;Lio/grpc/Status;Z)V
    .locals 6

    .line 319
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->abruptShutdown:Z

    if-eqz v1, :cond_0

    .line 321
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 323
    iput-boolean v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->abruptShutdown:Z

    .line 324
    iput-object p3, p0, Lio/grpc/okhttp/OkHttpServerTransport;->goAwayStatus:Lio/grpc/Status;

    .line 326
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->secondGoawayTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 327
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v1, 0x0

    .line 328
    iput-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->secondGoawayTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 330
    :cond_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz p4, :cond_2

    .line 332
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lio/grpc/okhttp/internal/framed/ErrorCode;->CANCEL:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v3, v4, v5}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 334
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;

    invoke-interface {v2, p3}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->transportReportStatus(Lio/grpc/Status;)V

    goto :goto_0

    .line 336
    :cond_3
    iget-object p3, p0, Lio/grpc/okhttp/OkHttpServerTransport;->streams:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->clear()V

    .line 341
    iget-object p3, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    iget p4, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lastStreamId:I

    sget-object v1, Lio/grpc/internal/GrpcUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p3, p4, p1, p2}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->goAway(ILio/grpc/okhttp/internal/framed/ErrorCode;[B)V

    .line 342
    iget p1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lastStreamId:I

    iput p1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->goAwayStreamId:I

    .line 343
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {p1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->close()V

    .line 344
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p2, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda1;-><init>(Lio/grpc/okhttp/OkHttpServerTransport;)V

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-interface {p1, p2, v1, v2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->forcefulCloseTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 346
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic access$000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/KeepAliveEnforcer;
    .locals 0

    .line 72
    iget-object p0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->keepAliveEnforcer:Lio/grpc/internal/KeepAliveEnforcer;

    return-object p0
.end method

.method static synthetic access$1000(Lio/grpc/okhttp/OkHttpServerTransport;)I
    .locals 0

    .line 72
    iget p0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lastStreamId:I

    return p0
.end method

.method static synthetic access$1002(Lio/grpc/okhttp/OkHttpServerTransport;I)I
    .locals 0

    .line 72
    iput p1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lastStreamId:I

    return p1
.end method

.method static synthetic access$1100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OkHttpServerTransport$Config;
    .locals 0

    .line 72
    iget-object p0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    return-object p0
.end method

.method static synthetic access$1200(Ljava/util/List;Lokio/ByteString;)V
    .locals 0

    .line 72
    invoke-static {p0, p1}, Lio/grpc/okhttp/OkHttpServerTransport;->headerRemove(Ljava/util/List;Lokio/ByteString;)V

    return-void
.end method

.method static synthetic access$1300()Lokio/ByteString;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->HTTP_METHOD:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$1400()Lokio/ByteString;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->SCHEME:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$1500()Lokio/ByteString;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->PATH:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$1600()Lokio/ByteString;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->AUTHORITY:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$1700()Lokio/ByteString;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->CONNECT_METHOD:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$1800()Lokio/ByteString;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->CONNECTION:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$1900(Ljava/util/List;Lokio/ByteString;)Z
    .locals 0

    .line 72
    invoke-static {p0, p1}, Lio/grpc/okhttp/OkHttpServerTransport;->headerContains(Ljava/util/List;Lokio/ByteString;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/KeepAliveManager;
    .locals 0

    .line 72
    iget-object p0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    return-object p0
.end method

.method static synthetic access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;
    .locals 0

    .line 72
    iget-object p0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->streams:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2100()Lokio/ByteString;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->HOST:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$2200(Ljava/util/List;Lokio/ByteString;I)I
    .locals 0

    .line 72
    invoke-static {p0, p1, p2}, Lio/grpc/okhttp/OkHttpServerTransport;->headerFind(Ljava/util/List;Lokio/ByteString;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lokio/ByteString;)Ljava/lang/String;
    .locals 0

    .line 72
    invoke-static {p0}, Lio/grpc/okhttp/OkHttpServerTransport;->asciiString(Lokio/ByteString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400()Lokio/ByteString;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->CONTENT_TYPE:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$2500(Ljava/util/List;Lokio/ByteString;)Lokio/ByteString;
    .locals 0

    .line 72
    invoke-static {p0, p1}, Lio/grpc/okhttp/OkHttpServerTransport;->headerGetRequiredSingle(Ljava/util/List;Lokio/ByteString;)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600()Lokio/ByteString;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->POST_METHOD:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$2700()Lokio/ByteString;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->TE:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$2800()Lokio/ByteString;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->TE_TRAILERS:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$2900()Lokio/ByteString;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->CONTENT_LENGTH:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;
    .locals 0

    .line 72
    iget-object p0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;
    .locals 0

    .line 72
    iget-object p0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    return-object p0
.end method

.method static synthetic access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;
    .locals 0

    .line 72
    iget-object p0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    return-object p0
.end method

.method static synthetic access$3200(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/TransportTracer;
    .locals 0

    .line 72
    iget-object p0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->tracer:Lio/grpc/internal/TransportTracer;

    return-object p0
.end method

.method static synthetic access$3300(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/Attributes;
    .locals 0

    .line 72
    iget-object p0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->attributes:Lio/grpc/Attributes;

    return-object p0
.end method

.method static synthetic access$3302(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/Attributes;)Lio/grpc/Attributes;
    .locals 0

    .line 72
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->attributes:Lio/grpc/Attributes;

    return-object p1
.end method

.method static synthetic access$3400(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/MaxConnectionIdleManager;
    .locals 0

    .line 72
    iget-object p0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->maxConnectionIdleManager:Lio/grpc/internal/MaxConnectionIdleManager;

    return-object p0
.end method

.method static synthetic access$3500(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/ServerTransportListener;
    .locals 0

    .line 72
    iget-object p0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->listener:Lio/grpc/internal/ServerTransportListener;

    return-object p0
.end method

.method static synthetic access$3600(Lio/grpc/okhttp/OkHttpServerTransport;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpServerTransport;->triggerGracefulSecondGoaway()V

    return-void
.end method

.method static synthetic access$400(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/Status;
    .locals 0

    .line 72
    iget-object p0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->goAwayStatus:Lio/grpc/Status;

    return-object p0
.end method

.method static synthetic access$402(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/Status;)Lio/grpc/Status;
    .locals 0

    .line 72
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->goAwayStatus:Lio/grpc/Status;

    return-object p1
.end method

.method static synthetic access$500(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;Lio/grpc/Status;Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lio/grpc/okhttp/OkHttpServerTransport;->abruptShutdown(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;Lio/grpc/Status;Z)V

    return-void
.end method

.method static synthetic access$600()Ljava/util/logging/Logger;
    .locals 1

    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpServerTransport;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;
    .locals 0

    .line 72
    iget-object p0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->bareSocket:Ljava/net/Socket;

    return-object p0
.end method

.method static synthetic access$800(Lio/grpc/okhttp/OkHttpServerTransport;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpServerTransport;->terminated()V

    return-void
.end method

.method static synthetic access$900(Lio/grpc/okhttp/OkHttpServerTransport;)I
    .locals 0

    .line 72
    iget p0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->goAwayStreamId:I

    return p0
.end method

.method private static asciiString(Lokio/ByteString;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 448
    :goto_0
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 449
    invoke-virtual {p0, v0}, Lokio/ByteString;->getByte(I)B

    move-result v1

    const/16 v2, 0x80

    if-lt v1, v2, :cond_0

    .line 450
    sget-object v0, Lio/grpc/internal/GrpcUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lokio/ByteString;->string(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    :cond_1
    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static headerContains(Ljava/util/List;Lokio/ByteString;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;",
            "Lokio/ByteString;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 466
    invoke-static {p0, p1, v0}, Lio/grpc/okhttp/OkHttpServerTransport;->headerFind(Ljava/util/List;Lokio/ByteString;I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static headerFind(Ljava/util/List;Lokio/ByteString;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;",
            "Lokio/ByteString;",
            "I)I"
        }
    .end annotation

    .line 457
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 458
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/internal/framed/Header;

    iget-object v0, v0, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v0, p1}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static headerGetRequiredSingle(Ljava/util/List;Lokio/ByteString;)Lokio/ByteString;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;",
            "Lokio/ByteString;",
            ")",
            "Lokio/ByteString;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 478
    invoke-static {p0, p1, v0}, Lio/grpc/okhttp/OkHttpServerTransport;->headerFind(Ljava/util/List;Lokio/ByteString;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v3, v0, 0x1

    .line 482
    invoke-static {p0, p1, v3}, Lio/grpc/okhttp/OkHttpServerTransport;->headerFind(Ljava/util/List;Lokio/ByteString;I)I

    move-result p1

    if-eq p1, v2, :cond_1

    return-object v1

    .line 485
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/okhttp/internal/framed/Header;

    iget-object p0, p0, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    return-object p0
.end method

.method private static headerRemove(Ljava/util/List;Lokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 471
    :goto_0
    invoke-static {p0, p1, v0}, Lio/grpc/okhttp/OkHttpServerTransport;->headerFind(Ljava/util/List;Lokio/ByteString;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 472
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readFlowControlWindow()Lio/grpc/internal/TransportTracer$FlowControlWindows;
    .locals 6

    .line 395
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 396
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    if-nez v1, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lio/grpc/okhttp/OutboundFlowController;->windowUpdate(Lio/grpc/okhttp/OutboundFlowController$StreamState;I)I

    move-result v1

    int-to-long v1, v1

    .line 399
    :goto_0
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget v3, v3, Lio/grpc/okhttp/OkHttpServerTransport$Config;->flowControlWindow:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    float-to-long v3, v3

    .line 400
    new-instance v5, Lio/grpc/internal/TransportTracer$FlowControlWindows;

    invoke-direct {v5, v1, v2, v3, v4}, Lio/grpc/internal/TransportTracer$FlowControlWindows;-><init>(JJ)V

    monitor-exit v0

    return-object v5

    :catchall_0
    move-exception v1

    .line 401
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private shutdown(Ljava/lang/Long;)V
    .locals 5

    .line 257
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->gracefulShutdown:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->abruptShutdown:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 261
    iput-boolean v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->gracefulShutdown:Z

    .line 262
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    if-nez v2, :cond_1

    .line 263
    iput-boolean v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->handshakeShutdown:Z

    .line 264
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->bareSocket:Ljava/net/Socket;

    invoke-static {p1}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 269
    :cond_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda0;-><init>(Lio/grpc/okhttp/OkHttpServerTransport;)V

    .line 270
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 269
    invoke-interface {v1, v2, v3, v4, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->secondGoawayTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 271
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const/4 v2, 0x0

    new-array v3, v2, [B

    const v4, 0x7fffffff

    invoke-virtual {p1, v4, v1, v3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->goAway(ILio/grpc/okhttp/internal/framed/ErrorCode;[B)V

    .line 272
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    const/16 v1, 0x1111

    invoke-virtual {p1, v2, v2, v1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->ping(ZII)V

    .line 273
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {p1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 275
    :goto_0
    monitor-exit v0

    return-void

    .line 259
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 275
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private startIo(Lio/grpc/internal/SerializingExecutor;)V
    .locals 17

    move-object/from16 v1, p0

    .line 158
    :try_start_0
    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->bareSocket:Ljava/net/Socket;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 159
    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget-object v0, v0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->handshakerSocketFactory:Lio/grpc/okhttp/HandshakerSocketFactory;

    iget-object v2, v1, Lio/grpc/okhttp/OkHttpServerTransport;->bareSocket:Ljava/net/Socket;

    sget-object v3, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    .line 160
    invoke-interface {v0, v2, v3}, Lio/grpc/okhttp/HandshakerSocketFactory;->handshake(Ljava/net/Socket;Lio/grpc/Attributes;)Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;

    move-result-object v0

    .line 161
    iget-object v2, v0, Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;->socket:Ljava/net/Socket;

    .line 162
    iget-object v3, v0, Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;->attributes:Lio/grpc/Attributes;

    iput-object v3, v1, Lio/grpc/okhttp/OkHttpServerTransport;->attributes:Lio/grpc/Attributes;

    const/16 v3, 0x2710

    move-object/from16 v4, p1

    .line 165
    invoke-static {v4, v1, v3}, Lio/grpc/okhttp/AsyncSink;->sink(Lio/grpc/internal/SerializingExecutor;Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;I)Lio/grpc/okhttp/AsyncSink;

    move-result-object v3

    .line 166
    invoke-static {v2}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lio/grpc/okhttp/AsyncSink;->becomeConnected(Lokio/Sink;Ljava/net/Socket;)V

    .line 167
    iget-object v4, v1, Lio/grpc/okhttp/OkHttpServerTransport;->variant:Lio/grpc/okhttp/internal/framed/Variant;

    .line 168
    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lio/grpc/okhttp/internal/framed/Variant;->newWriter(Lokio/BufferedSink;Z)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v4

    .line 167
    invoke-virtual {v3, v4}, Lio/grpc/okhttp/AsyncSink;->limitControlFramesWriter(Lio/grpc/okhttp/internal/framed/FrameWriter;)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v3

    .line 169
    new-instance v4, Lio/grpc/okhttp/OkHttpServerTransport$1;

    invoke-direct {v4, v1, v3}, Lio/grpc/okhttp/OkHttpServerTransport$1;-><init>(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/okhttp/internal/framed/FrameWriter;)V

    .line 190
    iget-object v3, v1, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :try_start_1
    iget-object v0, v0, Lio/grpc/okhttp/HandshakerSocketFactory$HandshakeResult;->securityInfo:Lio/grpc/InternalChannelz$Security;

    iput-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->securityInfo:Lio/grpc/InternalChannelz$Security;

    .line 198
    new-instance v0, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-direct {v0, v1, v4}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;-><init>(Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;Lio/grpc/okhttp/internal/framed/FrameWriter;)V

    iput-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    .line 199
    new-instance v0, Lio/grpc/okhttp/OutboundFlowController;

    iget-object v4, v1, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-direct {v0, v1, v4}, Lio/grpc/okhttp/OutboundFlowController;-><init>(Lio/grpc/okhttp/OutboundFlowController$Transport;Lio/grpc/okhttp/internal/framed/FrameWriter;)V

    iput-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    .line 203
    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {v0}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->connectionPreface()V

    .line 204
    new-instance v0, Lio/grpc/okhttp/internal/framed/Settings;

    invoke-direct {v0}, Lio/grpc/okhttp/internal/framed/Settings;-><init>()V

    .line 205
    iget-object v4, v1, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget v4, v4, Lio/grpc/okhttp/OkHttpServerTransport$Config;->flowControlWindow:I

    const/4 v5, 0x7

    invoke-static {v0, v5, v4}, Lio/grpc/okhttp/OkHttpSettingsUtil;->set(Lio/grpc/okhttp/internal/framed/Settings;II)V

    .line 207
    iget-object v4, v1, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget v4, v4, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxInboundMetadataSize:I

    const/4 v5, 0x6

    invoke-static {v0, v5, v4}, Lio/grpc/okhttp/OkHttpSettingsUtil;->set(Lio/grpc/okhttp/internal/framed/Settings;II)V

    .line 209
    iget-object v4, v1, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {v4, v0}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->settings(Lio/grpc/okhttp/internal/framed/Settings;)V

    .line 210
    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget v0, v0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->flowControlWindow:I

    const v4, 0xffff

    if-le v0, v4, :cond_0

    .line 211
    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    iget-object v5, v1, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget v5, v5, Lio/grpc/okhttp/OkHttpServerTransport$Config;->flowControlWindow:I

    sub-int/2addr v5, v4

    int-to-long v4, v5

    invoke-virtual {v0, v6, v4, v5}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->windowUpdate(IJ)V

    .line 214
    :cond_0
    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {v0}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 215
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :try_start_2
    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget-wide v3, v0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->keepAliveTimeNanos:J

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v0, v3, v7

    if-eqz v0, :cond_1

    .line 218
    new-instance v0, Lio/grpc/internal/KeepAliveManager;

    new-instance v10, Lio/grpc/okhttp/OkHttpServerTransport$KeepAlivePinger;

    const/4 v3, 0x0

    invoke-direct {v10, v1, v3}, Lio/grpc/okhttp/OkHttpServerTransport$KeepAlivePinger;-><init>(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/okhttp/OkHttpServerTransport$1;)V

    iget-object v11, v1, Lio/grpc/okhttp/OkHttpServerTransport;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, v1, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget-wide v12, v3, Lio/grpc/okhttp/OkHttpServerTransport$Config;->keepAliveTimeNanos:J

    iget-object v3, v1, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget-wide v14, v3, Lio/grpc/okhttp/OkHttpServerTransport$Config;->keepAliveTimeoutNanos:J

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lio/grpc/internal/KeepAliveManager;-><init>(Lio/grpc/internal/KeepAliveManager$KeepAlivePinger;Ljava/util/concurrent/ScheduledExecutorService;JJZ)V

    iput-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    .line 221
    invoke-virtual {v0}, Lio/grpc/internal/KeepAliveManager;->onTransportStarted()V

    .line 224
    :cond_1
    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget-wide v3, v0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxConnectionIdleNanos:J

    cmp-long v0, v3, v7

    if-eqz v0, :cond_2

    .line 225
    new-instance v0, Lio/grpc/internal/MaxConnectionIdleManager;

    iget-object v3, v1, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget-wide v3, v3, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxConnectionIdleNanos:J

    invoke-direct {v0, v3, v4}, Lio/grpc/internal/MaxConnectionIdleManager;-><init>(J)V

    iput-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->maxConnectionIdleManager:Lio/grpc/internal/MaxConnectionIdleManager;

    .line 226
    new-instance v3, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda3;-><init>(Lio/grpc/okhttp/OkHttpServerTransport;)V

    iget-object v4, v1, Lio/grpc/okhttp/OkHttpServerTransport;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v3, v4}, Lio/grpc/internal/MaxConnectionIdleManager;->start(Ljava/lang/Runnable;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 229
    :cond_2
    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget-wide v3, v0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxConnectionAgeInNanos:J

    cmp-long v0, v3, v7

    if-eqz v0, :cond_3

    .line 231
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v7, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v3, v7

    const-wide v7, 0x3feccccccccccccdL    # 0.9

    add-double/2addr v3, v7

    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget-wide v7, v0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxConnectionAgeInNanos:J

    long-to-double v7, v7

    mul-double/2addr v3, v7

    double-to-long v3, v3

    .line 232
    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lio/grpc/internal/LogExceptionRunnable;

    new-instance v7, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda4;

    invoke-direct {v7, v1}, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda4;-><init>(Lio/grpc/okhttp/OkHttpServerTransport;)V

    invoke-direct {v5, v7}, Lio/grpc/internal/LogExceptionRunnable;-><init>(Ljava/lang/Runnable;)V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v5, v3, v4, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->maxConnectionAgeMonitor:Ljava/util/concurrent/ScheduledFuture;

    .line 238
    :cond_3
    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->transportExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;

    iget-object v4, v1, Lio/grpc/okhttp/OkHttpServerTransport;->variant:Lio/grpc/okhttp/internal/framed/Variant;

    .line 239
    invoke-static {v2}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2

    invoke-interface {v4, v2, v6}, Lio/grpc/okhttp/internal/framed/Variant;->newReader(Lokio/BufferedSource;Z)Lio/grpc/okhttp/internal/framed/FrameReader;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;-><init>(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/okhttp/internal/framed/FrameReader;)V

    .line 238
    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 215
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 241
    :goto_0
    iget-object v2, v1, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 242
    :try_start_5
    iget-boolean v3, v1, Lio/grpc/okhttp/OkHttpServerTransport;->handshakeShutdown:Z

    if-nez v3, :cond_4

    .line 243
    sget-object v3, Lio/grpc/okhttp/OkHttpServerTransport;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, "Socket failed to handshake"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    :cond_4
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 246
    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport;->bareSocket:Ljava/net/Socket;

    invoke-static {v0}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 247
    invoke-direct/range {p0 .. p0}, Lio/grpc/okhttp/OkHttpServerTransport;->terminated()V

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    .line 245
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method private terminated()V
    .locals 3

    .line 355
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->forcefulCloseTimer:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 357
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v1, 0x0

    .line 358
    iput-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->forcefulCloseTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 360
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {v0}, Lio/grpc/internal/KeepAliveManager;->onTransportTermination()V

    .line 364
    :cond_1
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->maxConnectionIdleManager:Lio/grpc/internal/MaxConnectionIdleManager;

    if-eqz v0, :cond_2

    .line 365
    invoke-virtual {v0}, Lio/grpc/internal/MaxConnectionIdleManager;->onTransportTermination()V

    .line 368
    :cond_2
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->maxConnectionAgeMonitor:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_3

    .line 369
    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 371
    :cond_3
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget-object v0, v0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->transportExecutorPool:Lio/grpc/internal/ObjectPool;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->transportExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Lio/grpc/internal/ObjectPool;->returnObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->transportExecutor:Ljava/util/concurrent/Executor;

    .line 372
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget-object v0, v0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 373
    invoke-interface {v0, v1}, Lio/grpc/internal/ObjectPool;->returnObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 374
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->listener:Lio/grpc/internal/ServerTransportListener;

    invoke-interface {v0}, Lio/grpc/internal/ServerTransportListener;->transportTerminated()V

    return-void

    :catchall_0
    move-exception v1

    .line 360
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private triggerForcefulClose()V
    .locals 1

    .line 351
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->bareSocket:Ljava/net/Socket;

    invoke-static {v0}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method private triggerGracefulSecondGoaway()V
    .locals 5

    .line 279
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->secondGoawayTimer:Ljava/util/concurrent/ScheduledFuture;

    if-nez v1, :cond_0

    .line 281
    monitor-exit v0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 283
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v1, 0x0

    .line 284
    iput-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->secondGoawayTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 285
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    iget v3, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lastStreamId:I

    sget-object v4, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    new-array v2, v2, [B

    invoke-virtual {v1, v3, v4, v2}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->goAway(ILio/grpc/okhttp/internal/framed/ErrorCode;[B)V

    .line 286
    iget v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lastStreamId:I

    iput v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->goAwayStreamId:I

    .line 287
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {v1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->close()V

    goto :goto_0

    .line 290
    :cond_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {v1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 292
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getActiveStreams()[Lio/grpc/okhttp/OutboundFlowController$StreamState;
    .locals 6

    .line 411
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->streams:Ljava/util/Map;

    .line 413
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lio/grpc/okhttp/OutboundFlowController$StreamState;

    .line 415
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;

    add-int/lit8 v5, v3, 0x1

    .line 416
    invoke-interface {v4}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->getOutboundFlowState()Lio/grpc/okhttp/OutboundFlowController$StreamState;

    move-result-object v4

    aput-object v4, v1, v3

    move v3, v5

    goto :goto_0

    .line 418
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 419
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLogId()Lio/grpc/InternalLogId;
    .locals 1

    .line 406
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->logId:Lio/grpc/InternalLogId;

    return-object v0
.end method

.method public getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 379
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public getStats()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 385
    :try_start_0
    new-instance v7, Lio/grpc/InternalChannelz$SocketStats;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->tracer:Lio/grpc/internal/TransportTracer;

    .line 386
    invoke-virtual {v1}, Lio/grpc/internal/TransportTracer;->getStats()Lio/grpc/InternalChannelz$TransportStats;

    move-result-object v2

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->bareSocket:Ljava/net/Socket;

    .line 387
    invoke-virtual {v1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->bareSocket:Ljava/net/Socket;

    .line 388
    invoke-virtual {v1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v4

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->bareSocket:Ljava/net/Socket;

    .line 389
    invoke-static {v1}, Lio/grpc/okhttp/Utils;->getSocketOptions(Ljava/net/Socket;)Lio/grpc/InternalChannelz$SocketOptions;

    move-result-object v5

    iget-object v6, p0, Lio/grpc/okhttp/OkHttpServerTransport;->securityInfo:Lio/grpc/InternalChannelz$Security;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/grpc/InternalChannelz$SocketStats;-><init>(Lio/grpc/InternalChannelz$TransportStats;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/InternalChannelz$SocketOptions;Lio/grpc/InternalChannelz$Security;)V

    .line 385
    invoke-static {v7}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 391
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic lambda$start$0$io-grpc-okhttp-OkHttpServerTransport(Lio/grpc/internal/SerializingExecutor;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lio/grpc/okhttp/OkHttpServerTransport;->startIo(Lio/grpc/internal/SerializingExecutor;)V

    return-void
.end method

.method synthetic lambda$startIo$1$io-grpc-okhttp-OkHttpServerTransport()V
    .locals 2

    .line 233
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->config:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    iget-wide v0, v0, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxConnectionAgeGraceInNanos:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/okhttp/OkHttpServerTransport;->shutdown(Ljava/lang/Long;)V

    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "failureCause"

    .line 312
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    invoke-virtual {v0, p1}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    .line 314
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v1, "I/O failure"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lio/grpc/okhttp/OkHttpServerTransport;->abruptShutdown(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;Lio/grpc/Status;Z)V

    return-void
.end method

.method public shutdown()V
    .locals 3

    .line 253
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/okhttp/OkHttpServerTransport;->shutdown(Ljava/lang/Long;)V

    return-void
.end method

.method public shutdownNow(Lio/grpc/Status;)V
    .locals 3

    .line 297
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 299
    iput-boolean v2, p0, Lio/grpc/okhttp/OkHttpServerTransport;->handshakeShutdown:Z

    .line 300
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->bareSocket:Ljava/net/Socket;

    invoke-static {p1}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 301
    monitor-exit v0

    return-void

    .line 303
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v1, ""

    invoke-direct {p0, v0, v1, p1, v2}, Lio/grpc/okhttp/OkHttpServerTransport;->abruptShutdown(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;Lio/grpc/Status;Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 303
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public start(Lio/grpc/internal/ServerTransportListener;)V
    .locals 1

    const-string v0, "listener"

    .line 150
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/ServerTransportListener;

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->listener:Lio/grpc/internal/ServerTransportListener;

    .line 152
    new-instance p1, Lio/grpc/internal/SerializingExecutor;

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->transportExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p1, v0}, Lio/grpc/internal/SerializingExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    .line 153
    new-instance v0, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lio/grpc/okhttp/OkHttpServerTransport$$ExternalSyntheticLambda2;-><init>(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/internal/SerializingExecutor;)V

    invoke-virtual {p1, v0}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method streamClosed(IZ)V
    .locals 2

    .line 427
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 428
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->streams:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 430
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->keepAliveEnforcer:Lio/grpc/internal/KeepAliveEnforcer;

    invoke-virtual {p1}, Lio/grpc/internal/KeepAliveEnforcer;->onTransportIdle()V

    .line 431
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->maxConnectionIdleManager:Lio/grpc/internal/MaxConnectionIdleManager;

    if-eqz p1, :cond_0

    .line 432
    invoke-virtual {p1}, Lio/grpc/internal/MaxConnectionIdleManager;->onTransportIdle()V

    .line 435
    :cond_0
    iget-boolean p1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->gracefulShutdown:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->streams:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 436
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {p1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->close()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 439
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {p1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 442
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
