.class public final Lio/grpc/internal/StatsTraceContext;
.super Ljava/lang/Object;
.source "StatsTraceContext.java"


# static fields
.field public static final NOOP:Lio/grpc/internal/StatsTraceContext;


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final tracers:[Lio/grpc/StreamTracer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lio/grpc/internal/StatsTraceContext;

    const/4 v1, 0x0

    new-array v1, v1, [Lio/grpc/StreamTracer;

    invoke-direct {v0, v1}, Lio/grpc/internal/StatsTraceContext;-><init>([Lio/grpc/StreamTracer;)V

    sput-object v0, Lio/grpc/internal/StatsTraceContext;->NOOP:Lio/grpc/internal/StatsTraceContext;

    return-void
.end method

.method constructor <init>([Lio/grpc/StreamTracer;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/grpc/internal/StatsTraceContext;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    iput-object p1, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    return-void
.end method

.method public static newClientContext([Lio/grpc/ClientStreamTracer;Lio/grpc/Attributes;Lio/grpc/Metadata;)Lio/grpc/internal/StatsTraceContext;
    .locals 4

    .line 51
    new-instance v0, Lio/grpc/internal/StatsTraceContext;

    invoke-direct {v0, p0}, Lio/grpc/internal/StatsTraceContext;-><init>([Lio/grpc/StreamTracer;)V

    .line 52
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 53
    invoke-virtual {v3, p1, p2}, Lio/grpc/ClientStreamTracer;->streamCreated(Lio/grpc/Attributes;Lio/grpc/Metadata;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static newServerContext(Ljava/util/List;Ljava/lang/String;Lio/grpc/Metadata;)Lio/grpc/internal/StatsTraceContext;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;",
            "Ljava/lang/String;",
            "Lio/grpc/Metadata;",
            ")",
            "Lio/grpc/internal/StatsTraceContext;"
        }
    .end annotation

    .line 65
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    sget-object p0, Lio/grpc/internal/StatsTraceContext;->NOOP:Lio/grpc/internal/StatsTraceContext;

    return-object p0

    .line 68
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lio/grpc/StreamTracer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 70
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/ServerStreamTracer$Factory;

    invoke-virtual {v3, p1, p2}, Lio/grpc/ServerStreamTracer$Factory;->newServerStreamTracer(Ljava/lang/String;Lio/grpc/Metadata;)Lio/grpc/ServerStreamTracer;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_1
    new-instance p0, Lio/grpc/internal/StatsTraceContext;

    invoke-direct {p0, v1}, Lio/grpc/internal/StatsTraceContext;-><init>([Lio/grpc/StreamTracer;)V

    return-object p0
.end method


# virtual methods
.method public clientInboundHeaders()V
    .locals 4

    .line 105
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 106
    check-cast v3, Lio/grpc/ClientStreamTracer;

    invoke-virtual {v3}, Lio/grpc/ClientStreamTracer;->inboundHeaders()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clientInboundTrailers(Lio/grpc/Metadata;)V
    .locals 4

    .line 116
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 117
    check-cast v3, Lio/grpc/ClientStreamTracer;

    invoke-virtual {v3, p1}, Lio/grpc/ClientStreamTracer;->inboundTrailers(Lio/grpc/Metadata;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clientOutboundHeaders()V
    .locals 4

    .line 94
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 95
    check-cast v3, Lio/grpc/ClientStreamTracer;

    invoke-virtual {v3}, Lio/grpc/ClientStreamTracer;->outboundHeaders()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getTracersForTest()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/StreamTracer;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public inboundMessage(I)V
    .locals 4

    .line 177
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 178
    invoke-virtual {v3, p1}, Lio/grpc/StreamTracer;->inboundMessage(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public inboundMessageRead(IJJ)V
    .locals 9

    .line 199
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    .line 200
    invoke-virtual/range {v3 .. v8}, Lio/grpc/StreamTracer;->inboundMessageRead(IJJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public inboundUncompressedSize(J)V
    .locals 4

    .line 232
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 233
    invoke-virtual {v3, p1, p2}, Lio/grpc/StreamTracer;->inboundUncompressedSize(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public inboundWireSize(J)V
    .locals 4

    .line 243
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 244
    invoke-virtual {v3, p1, p2}, Lio/grpc/StreamTracer;->inboundWireSize(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public outboundMessage(I)V
    .locals 4

    .line 166
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 167
    invoke-virtual {v3, p1}, Lio/grpc/StreamTracer;->outboundMessage(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public outboundMessageSent(IJJ)V
    .locals 9

    .line 188
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    .line 189
    invoke-virtual/range {v3 .. v8}, Lio/grpc/StreamTracer;->outboundMessageSent(IJJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public outboundUncompressedSize(J)V
    .locals 4

    .line 210
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 211
    invoke-virtual {v3, p1, p2}, Lio/grpc/StreamTracer;->outboundUncompressedSize(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public outboundWireSize(J)V
    .locals 4

    .line 221
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 222
    invoke-virtual {v3, p1, p2}, Lio/grpc/StreamTracer;->outboundWireSize(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public serverCallStarted(Lio/grpc/ServerStreamTracer$ServerCallInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerStreamTracer$ServerCallInfo<",
            "**>;)V"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 142
    check-cast v3, Lio/grpc/ServerStreamTracer;

    invoke-virtual {v3, p1}, Lio/grpc/ServerStreamTracer;->serverCallStarted(Lio/grpc/ServerStreamTracer$ServerCallInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public serverFilterContext(Lio/grpc/Context;)Lio/grpc/Context;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Context;",
            ")",
            "Lio/grpc/Context;"
        }
    .end annotation

    const-string v0, "context"

    .line 127
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/Context;

    .line 128
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 129
    move-object v4, v3

    check-cast v4, Lio/grpc/ServerStreamTracer;

    invoke-virtual {v4, p1}, Lio/grpc/ServerStreamTracer;->filterContext(Lio/grpc/Context;)Lio/grpc/Context;

    move-result-object p1

    const-string v4, "%s returns null context"

    .line 130
    invoke-static {p1, v4, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public streamClosed(Lio/grpc/Status;)V
    .locals 4

    .line 153
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 155
    invoke-virtual {v3, p1}, Lio/grpc/StreamTracer;->streamClosed(Lio/grpc/Status;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
