.class Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;
.super Ljava/lang/Object;
.source "OkHttpServerTransport.java"

# interfaces
.implements Lio/grpc/okhttp/internal/framed/FrameReader$Handler;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpServerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrameHandler"
.end annotation


# instance fields
.field private connectionUnacknowledgedBytesRead:I

.field private final frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

.field private final frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

.field private receivedSettings:Z

.field final synthetic this$0:Lio/grpc/okhttp/OkHttpServerTransport;


# direct methods
.method public constructor <init>(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/okhttp/internal/framed/FrameReader;)V
    .locals 2

    .line 541
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    new-instance p1, Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-class v1, Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-direct {p1, v0, v1}, Lio/grpc/okhttp/OkHttpFrameLogger;-><init>(Ljava/util/logging/Level;Ljava/lang/Class;)V

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    .line 542
    iput-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    return-void
.end method

.method private connectionError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V
    .locals 4

    .line 1001
    iget v0, p1, Lio/grpc/okhttp/internal/framed/ErrorCode;->httpCode:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lio/grpc/internal/GrpcUtil$Http2Error;->statusForCode(J)Lio/grpc/Status;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const-string v3, "HTTP2 connection error: %s \'%s\'"

    .line 1002
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 1003
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1, p1, p2, v0, v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$500(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;Lio/grpc/Status;Z)V

    return-void
.end method

.method private headerBlockSize(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)I"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 791
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 792
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/okhttp/internal/framed/Header;

    .line 793
    iget-object v4, v3, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    iget-object v3, v3, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    add-int/2addr v4, v3

    int-to-long v3, v4

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x7fffffff

    .line 795
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method private respondWithGrpcError(IZLio/grpc/Status$Code;Ljava/lang/String;)V
    .locals 2

    .line 1069
    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    .line 1070
    sget-object v1, Lio/grpc/InternalStatus;->CODE_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p3}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 1071
    sget-object p3, Lio/grpc/InternalStatus;->MESSAGE_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {v0, p3, p4}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    const/4 p3, 0x0

    .line 1072
    invoke-static {v0, p3}, Lio/grpc/okhttp/Headers;->createResponseTrailers(Lio/grpc/Metadata;Z)Ljava/util/List;

    move-result-object p3

    .line 1074
    iget-object p4, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p4}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object p4

    monitor-enter p4

    .line 1075
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->synReply(ZILjava/util/List;)V

    if-nez p2, :cond_0

    .line 1077
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object p2

    sget-object p3, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p2, p1, p3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 1079
    :cond_0
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 1080
    monitor-exit p4

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private respondWithHttpError(IZILio/grpc/Status$Code;Ljava/lang/String;)V
    .locals 4

    .line 1030
    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    .line 1031
    sget-object v1, Lio/grpc/InternalStatus;->CODE_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p4}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 1032
    sget-object p4, Lio/grpc/InternalStatus;->MESSAGE_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {v0, p4, p5}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    const-string p4, "text/plain; charset=utf-8"

    .line 1034
    invoke-static {p3, p4, v0}, Lio/grpc/okhttp/Headers;->createHttpResponseHeaders(ILjava/lang/String;Lio/grpc/Metadata;)Ljava/util/List;

    move-result-object p3

    .line 1035
    new-instance p4, Lokio/Buffer;

    invoke-direct {p4}, Lokio/Buffer;-><init>()V

    invoke-virtual {p4, p5}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p4

    .line 1037
    iget-object p5, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p5}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object p5

    monitor-enter p5

    .line 1038
    :try_start_0
    new-instance v0, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 1039
    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OkHttpServerTransport$Config;

    move-result-object v3

    iget v3, v3, Lio/grpc/okhttp/OkHttpServerTransport$Config;->flowControlWindow:I

    invoke-direct {v0, p1, v1, v2, v3}, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;-><init>(ILjava/lang/Object;Lio/grpc/okhttp/OutboundFlowController;I)V

    .line 1040
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1041
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/KeepAliveEnforcer;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/internal/KeepAliveEnforcer;->onTransportActive()V

    .line 1042
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3400(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/MaxConnectionIdleManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1043
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3400(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/MaxConnectionIdleManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/internal/MaxConnectionIdleManager;->onTransportActive()V

    .line 1046
    :cond_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 1048
    new-instance p2, Lokio/Buffer;

    invoke-direct {p2}, Lokio/Buffer;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->inboundDataReceived(Lokio/Buffer;IZ)V

    .line 1050
    :cond_1
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->headers(ILjava/util/List;)V

    .line 1051
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object p1

    .line 1052
    invoke-virtual {v0}, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->getOutboundFlowState()Lio/grpc/okhttp/OutboundFlowController$StreamState;

    move-result-object p2

    .line 1051
    invoke-virtual {p1, v1, p2, p4, v1}, Lio/grpc/okhttp/OutboundFlowController;->data(ZLio/grpc/okhttp/OutboundFlowController$StreamState;Lokio/Buffer;Z)V

    .line 1053
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object p1

    .line 1054
    invoke-virtual {v0}, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->getOutboundFlowState()Lio/grpc/okhttp/OutboundFlowController$StreamState;

    move-result-object p2

    new-instance p3, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, v0}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler$$ExternalSyntheticLambda0;-><init>(Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;)V

    .line 1053
    invoke-virtual {p1, p2, p3}, Lio/grpc/okhttp/OutboundFlowController;->notifyWhenNoPendingData(Lio/grpc/okhttp/OutboundFlowController$StreamState;Ljava/lang/Runnable;)V

    .line 1055
    monitor-exit p5

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private rstOkAtEndOfHttpError(Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;)V
    .locals 4

    .line 1059
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1060
    :try_start_0
    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->hasReceivedEndOfStream()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1061
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v1

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->access$3700(Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;)I

    move-result v2

    sget-object v3, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, v2, v3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 1063
    :cond_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->access$3700(Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;)I

    move-result p1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lio/grpc/okhttp/OkHttpServerTransport;->streamClosed(IZ)V

    .line 1064
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V
    .locals 7

    .line 1011
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p2, v0, :cond_0

    .line 1012
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$600()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Responding with RST_STREAM {0}: {1}"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p2, v6, v3

    aput-object p3, v6, v1

    invoke-virtual {v0, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1015
    :cond_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1016
    :try_start_0
    iget-object v4, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v4}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 1017
    iget-object v4, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v4}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v4

    invoke-virtual {v4}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 1018
    iget-object v4, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v4}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;

    if-eqz v4, :cond_1

    .line 1020
    sget-object v5, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v6, "Responded with RST_STREAM %s: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p3, v2, v1

    .line 1022
    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1021
    invoke-virtual {v5, p2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p2

    .line 1020
    invoke-interface {v4, p2}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->transportReportStatus(Lio/grpc/Status;)V

    .line 1023
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-virtual {p2, p1, v3}, Lio/grpc/okhttp/OkHttpServerTransport;->streamClosed(IZ)V

    .line 1025
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    return-void
.end method

.method public alternateService(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
    .locals 0

    return-void
.end method

.method public data(ZILokio/BufferedSource;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 805
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    .line 806
    invoke-interface {p3}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v3

    move v2, p2

    move v4, p4

    move v5, p1

    .line 805
    invoke-virtual/range {v0 .. v5}, Lio/grpc/okhttp/OkHttpFrameLogger;->logData(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;ILokio/Buffer;IZ)V

    if-nez p2, :cond_0

    .line 808
    sget-object p1, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string p2, "Stream 0 is reserved for control messages. RFC7540 section 5.1.1"

    invoke-direct {p0, p1, p2}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    return-void

    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    .line 814
    sget-object p1, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string p2, "Clients cannot open even numbered streams. RFC7540 section 5.1.1"

    invoke-direct {p0, p1, p2}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    return-void

    :cond_1
    int-to-long v0, p4

    .line 822
    invoke-interface {p3, v0, v1}, Lokio/BufferedSource;->require(J)V

    .line 824
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 825
    :try_start_0
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;

    if-nez v3, :cond_2

    .line 827
    invoke-interface {p3, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 828
    sget-object p1, Lio/grpc/okhttp/internal/framed/ErrorCode;->STREAM_CLOSED:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string p3, "Received data for closed stream"

    invoke-direct {p0, p2, p1, p3}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 829
    monitor-exit v2

    return-void

    .line 831
    :cond_2
    invoke-interface {v3}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->hasReceivedEndOfStream()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 832
    invoke-interface {p3, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 833
    sget-object p1, Lio/grpc/okhttp/internal/framed/ErrorCode;->STREAM_CLOSED:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string p3, "Received DATA for half-closed (remote) stream. RFC7540 section 5.1"

    invoke-direct {p0, p2, p1, p3}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 835
    monitor-exit v2

    return-void

    .line 837
    :cond_3
    invoke-interface {v3}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->inboundWindowAvailable()I

    move-result v4

    if-ge v4, p4, :cond_4

    .line 838
    invoke-interface {p3, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 839
    sget-object p1, Lio/grpc/okhttp/internal/framed/ErrorCode;->FLOW_CONTROL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string p3, "Received DATA size exceeded window size. RFC7540 section 6.9"

    invoke-direct {p0, p2, p1, p3}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 841
    monitor-exit v2

    return-void

    .line 843
    :cond_4
    new-instance p2, Lokio/Buffer;

    invoke-direct {p2}, Lokio/Buffer;-><init>()V

    .line 844
    invoke-interface {p3}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object p3

    invoke-virtual {p2, p3, v0, v1}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 845
    invoke-interface {v3, p2, p4, p1}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->inboundDataReceived(Lokio/Buffer;IZ)V

    .line 846
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 849
    iget p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionUnacknowledgedBytesRead:I

    add-int/2addr p1, p4

    iput p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionUnacknowledgedBytesRead:I

    int-to-float p1, p1

    .line 850
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 851
    invoke-static {p2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OkHttpServerTransport$Config;

    move-result-object p2

    iget p2, p2, Lio/grpc/okhttp/OkHttpServerTransport$Config;->flowControlWindow:I

    int-to-float p2, p2

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float/2addr p2, p3

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_5

    .line 852
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 853
    :try_start_1
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object p2

    iget p3, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionUnacknowledgedBytesRead:I

    int-to-long p3, p3

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p3, p4}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->windowUpdate(IJ)V

    .line 854
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 855
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 856
    iput v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionUnacknowledgedBytesRead:I

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 855
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :cond_5
    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 846
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public goAway(ILio/grpc/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V
    .locals 7

    .line 941
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/grpc/okhttp/OkHttpFrameLogger;->logGoAway(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;ILio/grpc/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V

    const-string p1, "Received GOAWAY: %s \'%s\'"

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 943
    invoke-virtual {p3}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 944
    iget v1, p2, Lio/grpc/okhttp/internal/framed/ErrorCode;->httpCode:I

    int-to-long v5, v1

    invoke-static {v5, v6}, Lio/grpc/internal/GrpcUtil$Http2Error;->statusForCode(J)Lio/grpc/Status;

    move-result-object v1

    .line 945
    invoke-virtual {v1, p1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 946
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, p2}, Lio/grpc/okhttp/internal/framed/ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 947
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$600()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Received GOAWAY: {0} {1}"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    .line 948
    invoke-virtual {p3}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v4

    .line 947
    invoke-virtual {v1, v3, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 950
    :cond_0
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 951
    :try_start_0
    iget-object p3, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p3, p1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$402(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/Status;)Lio/grpc/Status;

    .line 952
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public headers(ZZIILjava/util/List;Lio/grpc/okhttp/internal/framed/HeadersMode;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;",
            "Lio/grpc/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v0, p2

    move/from16 v2, p3

    move-object/from16 v1, p5

    .line 605
    iget-object v3, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v4, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v3, v4, v2, v1, v0}, Lio/grpc/okhttp/OkHttpFrameLogger;->logHeaders(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;ILjava/util/List;Z)V

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_0

    .line 610
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v1, "Clients cannot open even numbered streams. RFC7540 section 5.1.1"

    invoke-direct {v7, v0, v1}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    return-void

    .line 615
    :cond_0
    iget-object v3, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 616
    :try_start_0
    iget-object v4, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v4}, Lio/grpc/okhttp/OkHttpServerTransport;->access$900(Lio/grpc/okhttp/OkHttpServerTransport;)I

    move-result v4

    if-le v2, v4, :cond_1

    .line 617
    monitor-exit v3

    return-void

    .line 619
    :cond_1
    iget-object v4, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v4}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1000(Lio/grpc/okhttp/OkHttpServerTransport;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v2, v4, :cond_2

    move v4, v6

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    if-eqz v4, :cond_3

    .line 621
    iget-object v8, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v8, v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1002(Lio/grpc/okhttp/OkHttpServerTransport;I)I

    .line 623
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 625
    invoke-direct {v7, v1}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->headerBlockSize(Ljava/util/List;)I

    move-result v3

    .line 626
    iget-object v8, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v8}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OkHttpServerTransport$Config;

    move-result-object v8

    iget v8, v8, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxInboundMetadataSize:I

    const/4 v9, 0x2

    if-le v3, v8, :cond_4

    const/16 v4, 0x1af

    .line 627
    sget-object v8, Lio/grpc/Status$Code;->RESOURCE_EXHAUSTED:Lio/grpc/Status$Code;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "Request metadata larger than %d: %d"

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v11, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 631
    invoke-static {v11}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OkHttpServerTransport$Config;

    move-result-object v11

    iget v11, v11, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxInboundMetadataSize:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v5

    .line 632
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v6

    .line 628
    invoke-static {v1, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p2

    move-object v5, v8

    .line 627
    invoke-direct/range {v1 .. v6}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->respondWithHttpError(IZILio/grpc/Status$Code;Ljava/lang/String;)V

    return-void

    .line 636
    :cond_4
    sget-object v3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v1, v3}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1200(Ljava/util/List;Lokio/ByteString;)V

    const/4 v3, 0x0

    move-object v8, v3

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    .line 642
    :goto_1
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v13

    const/16 v14, 0x3a

    if-lez v13, :cond_9

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/grpc/okhttp/internal/framed/Header;

    iget-object v13, v13, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v13, v5}, Lokio/ByteString;->getByte(I)B

    move-result v13

    if-ne v13, v14, :cond_9

    .line 643
    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/grpc/okhttp/internal/framed/Header;

    .line 644
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1300()Lokio/ByteString;

    move-result-object v14

    iget-object v15, v13, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v14, v15}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    if-nez v8, :cond_5

    .line 645
    iget-object v8, v13, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    goto :goto_1

    .line 646
    :cond_5
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1400()Lokio/ByteString;

    move-result-object v14

    iget-object v15, v13, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v14, v15}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    if-nez v10, :cond_6

    .line 647
    iget-object v10, v13, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    goto :goto_1

    .line 648
    :cond_6
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1500()Lokio/ByteString;

    move-result-object v14

    iget-object v15, v13, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v14, v15}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    if-nez v11, :cond_7

    .line 649
    iget-object v11, v13, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    goto :goto_1

    .line 650
    :cond_7
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1600()Lokio/ByteString;

    move-result-object v14

    iget-object v15, v13, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v14, v15}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    if-nez v12, :cond_8

    .line 651
    iget-object v12, v13, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    goto :goto_1

    .line 653
    :cond_8
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v1, "Unexpected pseudo header. RFC7540 section 8.1.2.1"

    invoke-direct {v7, v2, v0, v1}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    return-void

    :cond_9
    move v13, v5

    .line 658
    :goto_2
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v15

    if-ge v13, v15, :cond_b

    .line 659
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lio/grpc/okhttp/internal/framed/Header;

    iget-object v15, v15, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v15, v5}, Lokio/ByteString;->getByte(I)B

    move-result v15

    if-ne v15, v14, :cond_a

    .line 660
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v1, "Pseudo header not before regular headers. RFC7540 section 8.1.2.1"

    invoke-direct {v7, v2, v0, v1}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    return-void

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 665
    :cond_b
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1700()Lokio/ByteString;

    move-result-object v13

    invoke-virtual {v13, v8}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    if-eqz v4, :cond_d

    if-eqz v8, :cond_c

    if-eqz v10, :cond_c

    if-nez v11, :cond_d

    .line 668
    :cond_c
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v1, "Missing required pseudo header. RFC7540 section 8.1.2.3"

    invoke-direct {v7, v2, v0, v1}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    return-void

    .line 672
    :cond_d
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1800()Lokio/ByteString;

    move-result-object v10

    invoke-static {v1, v10}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1900(Ljava/util/List;Lokio/ByteString;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 673
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v1, "Connection-specific headers not permitted. RFC7540 section 8.1.2.2"

    invoke-direct {v7, v2, v0, v1}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    return-void

    :cond_e
    if-nez v4, :cond_12

    if-eqz v0, :cond_11

    .line 680
    iget-object v0, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 681
    :try_start_1
    iget-object v0, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;

    if-nez v0, :cond_f

    .line 683
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->STREAM_CLOSED:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v3, "Received headers for closed stream"

    invoke-direct {v7, v2, v0, v3}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 684
    monitor-exit v1

    return-void

    .line 686
    :cond_f
    invoke-interface {v0}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->hasReceivedEndOfStream()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 687
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->STREAM_CLOSED:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v3, "Received HEADERS for half-closed (remote) stream. RFC7540 section 5.1"

    invoke-direct {v7, v2, v0, v3}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 689
    monitor-exit v1

    return-void

    .line 692
    :cond_10
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    invoke-interface {v0, v2, v5, v6}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->inboundDataReceived(Lokio/Buffer;IZ)V

    .line 693
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    .line 694
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 696
    :cond_11
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v1, "Headers disallowed in the middle of the stream. RFC7540 section 8.1"

    invoke-direct {v7, v2, v0, v1}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    return-void

    :cond_12
    if-nez v12, :cond_14

    .line 703
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2100()Lokio/ByteString;

    move-result-object v4

    invoke-static {v1, v4, v5}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2200(Ljava/util/List;Lokio/ByteString;I)I

    move-result v4

    const/4 v10, -0x1

    if-eq v4, v10, :cond_14

    .line 705
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2100()Lokio/ByteString;

    move-result-object v12

    add-int/lit8 v13, v4, 0x1

    invoke-static {v1, v12, v13}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2200(Ljava/util/List;Lokio/ByteString;I)I

    move-result v12

    if-eq v12, v10, :cond_13

    const/16 v4, 0x190

    .line 706
    sget-object v5, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    const-string v6, "Multiple host headers disallowed. RFC7230 section 5.4"

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->respondWithHttpError(IZILio/grpc/Status$Code;Ljava/lang/String;)V

    return-void

    .line 710
    :cond_13
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/okhttp/internal/framed/Header;

    iget-object v12, v4, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    :cond_14
    move-object v4, v12

    .line 713
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2100()Lokio/ByteString;

    move-result-object v10

    invoke-static {v1, v10}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1200(Ljava/util/List;Lokio/ByteString;)V

    .line 716
    invoke-virtual {v11}, Lokio/ByteString;->size()I

    move-result v10

    if-eqz v10, :cond_1e

    invoke-virtual {v11, v5}, Lokio/ByteString;->getByte(I)B

    move-result v10

    const/16 v12, 0x2f

    if-eq v10, v12, :cond_15

    goto/16 :goto_5

    .line 721
    :cond_15
    invoke-static {v11}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2300(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 723
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2400()Lokio/ByteString;

    move-result-object v10

    invoke-static {v1, v10}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2500(Ljava/util/List;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v10

    if-nez v10, :cond_16

    const/16 v4, 0x19f

    .line 725
    sget-object v5, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    const-string v6, "Content-Type is missing or duplicated"

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->respondWithHttpError(IZILio/grpc/Status$Code;Ljava/lang/String;)V

    return-void

    .line 729
    :cond_16
    invoke-static {v10}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2300(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v10

    .line 730
    invoke-static {v10}, Lio/grpc/internal/GrpcUtil;->isGrpcContentType(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_17

    const/16 v4, 0x19f

    .line 731
    sget-object v5, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Content-Type is not supported: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->respondWithHttpError(IZILio/grpc/Status$Code;Ljava/lang/String;)V

    return-void

    .line 736
    :cond_17
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2600()Lokio/ByteString;

    move-result-object v10

    invoke-virtual {v10, v8}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_18

    const/16 v4, 0x195

    .line 737
    sget-object v5, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "HTTP Method is not supported: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 738
    invoke-static {v8}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2300(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p2

    .line 737
    invoke-direct/range {v1 .. v6}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->respondWithHttpError(IZILio/grpc/Status$Code;Ljava/lang/String;)V

    return-void

    .line 742
    :cond_18
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2700()Lokio/ByteString;

    move-result-object v8

    invoke-static {v1, v8}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2500(Ljava/util/List;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v8

    .line 743
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2800()Lokio/ByteString;

    move-result-object v10

    invoke-virtual {v10, v8}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1a

    .line 744
    sget-object v1, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    const-string v3, "Expected header TE: %s, but %s is received. Some intermediate proxy may not support trailers"

    new-array v4, v9, [Ljava/lang/Object;

    .line 747
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2800()Lokio/ByteString;

    move-result-object v9

    invoke-static {v9}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2300(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    if-nez v8, :cond_19

    const-string v5, "<missing>"

    goto :goto_3

    :cond_19
    invoke-static {v8}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2300(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    aput-object v5, v4, v6

    .line 745
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 744
    invoke-direct {v7, v2, v0, v1, v3}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->respondWithGrpcError(IZLio/grpc/Status$Code;Ljava/lang/String;)V

    return-void

    .line 750
    :cond_1a
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2900()Lokio/ByteString;

    move-result-object v6

    invoke-static {v1, v6}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1200(Ljava/util/List;Lokio/ByteString;)V

    .line 752
    invoke-static/range {p5 .. p5}, Lio/grpc/okhttp/Utils;->convertHeaders(Ljava/util/List;)Lio/grpc/Metadata;

    move-result-object v1

    .line 753
    iget-object v6, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 754
    invoke-static {v6}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OkHttpServerTransport$Config;

    move-result-object v6

    iget-object v6, v6, Lio/grpc/okhttp/OkHttpServerTransport$Config;->streamTracerFactories:Ljava/util/List;

    invoke-static {v6, v15, v1}, Lio/grpc/internal/StatsTraceContext;->newServerContext(Ljava/util/List;Ljava/lang/String;Lio/grpc/Metadata;)Lio/grpc/internal/StatsTraceContext;

    move-result-object v6

    .line 755
    iget-object v8, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v8}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v19

    monitor-enter v19

    .line 756
    :try_start_2
    new-instance v14, Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    iget-object v9, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 759
    invoke-static {v9}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OkHttpServerTransport$Config;

    move-result-object v8

    iget v11, v8, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxInboundMessageSize:I

    iget-object v8, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 761
    invoke-static {v8}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v13

    iget-object v8, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 762
    invoke-static {v8}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v16

    iget-object v8, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 763
    invoke-static {v8}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object v17

    iget-object v8, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 764
    invoke-static {v8}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OkHttpServerTransport$Config;

    move-result-object v8

    iget v12, v8, Lio/grpc/okhttp/OkHttpServerTransport$Config;->flowControlWindow:I

    iget-object v8, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 765
    invoke-static {v8}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3200(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/TransportTracer;

    move-result-object v18

    move-object v8, v14

    move/from16 v10, p3

    move/from16 v20, v12

    move-object v12, v6

    move-object/from16 p1, v14

    move-object/from16 v14, v16

    move-object/from16 p4, v15

    move-object/from16 v15, v17

    move/from16 v16, v20

    move-object/from16 v17, v18

    move-object/from16 v18, p4

    invoke-direct/range {v8 .. v18}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;-><init>(Lio/grpc/okhttp/OkHttpServerTransport;IILio/grpc/internal/StatsTraceContext;Ljava/lang/Object;Lio/grpc/okhttp/ExceptionHandlingFrameWriter;Lio/grpc/okhttp/OutboundFlowController;ILio/grpc/internal/TransportTracer;Ljava/lang/String;)V

    .line 767
    new-instance v14, Lio/grpc/okhttp/OkHttpServerStream;

    iget-object v8, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 769
    invoke-static {v8}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3300(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/Attributes;

    move-result-object v10

    if-nez v4, :cond_1b

    goto :goto_4

    .line 770
    :cond_1b
    invoke-static {v4}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2300(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v3

    :goto_4
    move-object v11, v3

    iget-object v3, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 772
    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3200(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/TransportTracer;

    move-result-object v13

    move-object v8, v14

    move-object/from16 v9, p1

    move-object v12, v6

    invoke-direct/range {v8 .. v13}, Lio/grpc/okhttp/OkHttpServerStream;-><init>(Lio/grpc/okhttp/OkHttpServerStream$TransportState;Lio/grpc/Attributes;Ljava/lang/String;Lio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;)V

    .line 773
    iget-object v3, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 774
    iget-object v3, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerTransport;->access$000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/KeepAliveEnforcer;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/internal/KeepAliveEnforcer;->onTransportActive()V

    .line 775
    iget-object v3, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3400(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/MaxConnectionIdleManager;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 776
    iget-object v3, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3400(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/MaxConnectionIdleManager;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/internal/MaxConnectionIdleManager;->onTransportActive()V

    .line 779
    :cond_1c
    iget-object v3, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v4, p1

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    iget-object v2, v7, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3500(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/ServerTransportListener;

    move-result-object v2

    move-object/from16 v3, p4

    invoke-interface {v2, v14, v3, v1}, Lio/grpc/internal/ServerTransportListener;->streamCreated(Lio/grpc/internal/ServerStream;Ljava/lang/String;Lio/grpc/Metadata;)V

    .line 781
    invoke-virtual {v4}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->onStreamAllocated()V

    if-eqz v0, :cond_1d

    .line 783
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {v4, v1, v5, v0}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->inboundDataReceived(Lokio/Buffer;IZ)V

    .line 785
    :cond_1d
    monitor-exit v19

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1e
    :goto_5
    const/16 v4, 0x194

    .line 717
    sget-object v5, Lio/grpc/Status$Code;->UNIMPLEMENTED:Lio/grpc/Status$Code;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Expected path to start with /: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 718
    invoke-static {v11}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2300(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p2

    .line 717
    invoke-direct/range {v1 .. v6}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->respondWithHttpError(IZILio/grpc/Status$Code;Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception v0

    .line 623
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method synthetic lambda$respondWithHttpError$0$io-grpc-okhttp-OkHttpServerTransport$FrameHandler(Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;)V
    .locals 0

    .line 1054
    invoke-direct {p0, p1}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->rstOkAtEndOfHttpError(Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;)V

    return-void
.end method

.method public ping(ZII)V
    .locals 6

    .line 911
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/KeepAliveEnforcer;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/KeepAliveEnforcer;->pingAcceptable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 912
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    sget-object p2, Lio/grpc/okhttp/internal/framed/ErrorCode;->ENHANCE_YOUR_CALM:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string p3, "too_many_pings"

    sget-object v0, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    const-string v1, "Too many pings from client"

    .line 913
    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    const/4 v1, 0x0

    .line 912
    invoke-static {p1, p2, p3, v0, v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$500(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;Lio/grpc/Status;Z)V

    return-void

    :cond_0
    int-to-long v0, p2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p3

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    if-nez p1, :cond_1

    .line 918
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v2, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {p1, v2, v0, v1}, Lio/grpc/okhttp/OkHttpFrameLogger;->logPing(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;J)V

    .line 919
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 920
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->ping(ZII)V

    .line 921
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 922
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 924
    :cond_1
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object p2, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {p1, p2, v0, v1}, Lio/grpc/okhttp/OkHttpFrameLogger;->logPingAck(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;J)V

    const-wide/32 p1, 0xdead

    cmp-long p1, p1, v0

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-wide/16 p1, 0x1111

    cmp-long p1, p1, v0

    if-nez p1, :cond_3

    .line 929
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3600(Lio/grpc/okhttp/OkHttpServerTransport;)V

    return-void

    .line 932
    :cond_3
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$600()Ljava/util/logging/Logger;

    move-result-object p1

    sget-object p2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "Received unexpected ping ack: "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public priority(IIIZ)V
    .locals 6

    .line 987
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/grpc/okhttp/OkHttpFrameLogger;->logPriority(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;IIIZ)V

    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 958
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/grpc/okhttp/OkHttpFrameLogger;->logPushPromise(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;IILjava/util/List;)V

    .line 963
    sget-object p1, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string p2, "PUSH_PROMISE only allowed on peer-initiated streams. RFC7540 section 6.6"

    invoke-direct {p0, p1, p2}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method public rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V
    .locals 4

    .line 862
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v0, v1, p1, p2}, Lio/grpc/okhttp/OkHttpFrameLogger;->logRstStream(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 865
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, p2}, Lio/grpc/okhttp/internal/framed/ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->CANCEL:Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 866
    invoke-virtual {v0, p2}, Lio/grpc/okhttp/internal/framed/ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->STREAM_CLOSED:Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 867
    invoke-virtual {v0, p2}, Lio/grpc/okhttp/internal/framed/ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 868
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$600()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received RST_STREAM: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 870
    :cond_0
    iget p2, p2, Lio/grpc/okhttp/internal/framed/ErrorCode;->httpCode:I

    int-to-long v0, p2

    invoke-static {v0, v1}, Lio/grpc/internal/GrpcUtil$Http2Error;->statusForCode(J)Lio/grpc/Status;

    move-result-object p2

    const-string v0, "RST_STREAM"

    .line 871
    invoke-virtual {p2, v0}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p2

    .line 872
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 873
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;

    if-eqz v1, :cond_1

    .line 875
    invoke-interface {v1, p2}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->inboundRstReceived(Lio/grpc/Status;)V

    .line 876
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Lio/grpc/okhttp/OkHttpServerTransport;->streamClosed(IZ)V

    .line 878
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 8

    .line 547
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 548
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "OkHttpServerTransport"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 550
    :try_start_0
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    invoke-interface {v2}, Lio/grpc/okhttp/internal/framed/FrameReader;->readConnectionPreface()V

    .line 551
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    invoke-interface {v2, p0}, Lio/grpc/okhttp/internal/framed/FrameReader;->nextFrame(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 552
    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v3, "Failed to read initial SETTINGS"

    invoke-direct {p0, v2, v3}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 584
    :try_start_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->exhaust(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 589
    :catch_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 590
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$800(Lio/grpc/okhttp/OkHttpServerTransport;)V

    .line 591
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    .line 555
    :cond_0
    :try_start_2
    iget-boolean v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->receivedSettings:Z

    if-nez v2, :cond_1

    .line 556
    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v3, "First HTTP/2 frame must be SETTINGS. RFC7540 section 3.5"

    invoke-direct {p0, v2, v3}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 584
    :try_start_3
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 561
    :cond_1
    :goto_1
    :try_start_4
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    invoke-interface {v2, p0}, Lio/grpc/okhttp/internal/framed/FrameReader;->nextFrame(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 562
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$200(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/KeepAliveManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 563
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$200(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/KeepAliveManager;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/internal/KeepAliveManager;->onDataReceived()V

    goto :goto_1

    .line 570
    :cond_2
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 571
    :try_start_5
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerTransport;->access$400(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/Status;

    move-result-object v3

    .line 572
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v3, :cond_3

    .line 574
    :try_start_6
    sget-object v2, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v3, "TCP connection closed or IOException"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v3

    .line 576
    :cond_3
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    sget-object v4, Lio/grpc/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v5, "I/O failure"

    invoke-static {v2, v4, v5, v3, v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$500(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;Lio/grpc/Status;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 584
    :try_start_7
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v3

    .line 572
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v2

    .line 578
    :try_start_a
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$600()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Error decoding HTTP/2 frames"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 579
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    sget-object v4, Lio/grpc/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v5, "Error in frame decoder"

    sget-object v6, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v7, "Error decoding HTTP/2 frames"

    .line 580
    invoke-virtual {v6, v7}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v6

    invoke-virtual {v6, v2}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v2

    .line 579
    invoke-static {v3, v4, v5, v2, v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$500(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;Lio/grpc/Status;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 584
    :try_start_b
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->exhaust(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    .line 589
    :catch_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 590
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$800(Lio/grpc/okhttp/OkHttpServerTransport;)V

    .line 591
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception v1

    .line 584
    :try_start_c
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/internal/GrpcUtil;->exhaust(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 589
    :catch_2
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 590
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$800(Lio/grpc/okhttp/OkHttpServerTransport;)V

    .line 591
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v1
.end method

.method public settings(ZLio/grpc/okhttp/internal/framed/Settings;)V
    .locals 3

    .line 883
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v0, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {p1, v0, p2}, Lio/grpc/okhttp/OkHttpFrameLogger;->logSettings(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;Lio/grpc/okhttp/internal/framed/Settings;)V

    .line 884
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    const/4 v0, 0x7

    .line 886
    :try_start_0
    invoke-static {p2, v0}, Lio/grpc/okhttp/OkHttpSettingsUtil;->isSet(Lio/grpc/okhttp/internal/framed/Settings;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 887
    invoke-static {p2, v0}, Lio/grpc/okhttp/OkHttpSettingsUtil;->get(Lio/grpc/okhttp/internal/framed/Settings;I)I

    move-result v0

    .line 889
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/grpc/okhttp/OutboundFlowController;->initialOutboundWindowSize(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 895
    :goto_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->ackSettings(Lio/grpc/okhttp/internal/framed/Settings;)V

    .line 896
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 897
    iget-boolean p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->receivedSettings:Z

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 898
    iput-boolean p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->receivedSettings:Z

    .line 899
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3500(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/ServerTransportListener;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3300(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/Attributes;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/grpc/internal/ServerTransportListener;->transportReady(Lio/grpc/Attributes;)Lio/grpc/Attributes;

    move-result-object v1

    invoke-static {p2, v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3302(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/Attributes;)Lio/grpc/Attributes;

    :cond_1
    if-eqz v0, :cond_2

    .line 904
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/okhttp/OutboundFlowController;->writeStreams()V

    .line 906
    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public windowUpdate(IJ)V
    .locals 2

    .line 969
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/grpc/okhttp/OkHttpFrameLogger;->logWindowsUpdate(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;IJ)V

    .line 973
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p1, :cond_0

    .line 975
    :try_start_0
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object p1

    const/4 v1, 0x0

    long-to-int p2, p2

    invoke-virtual {p1, v1, p2}, Lio/grpc/okhttp/OutboundFlowController;->windowUpdate(Lio/grpc/okhttp/OutboundFlowController$StreamState;I)I

    goto :goto_0

    .line 977
    :cond_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;

    if-eqz p1, :cond_1

    .line 979
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object v1

    invoke-interface {p1}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->getOutboundFlowState()Lio/grpc/okhttp/OutboundFlowController$StreamState;

    move-result-object p1

    long-to-int p2, p2

    invoke-virtual {v1, p1, p2}, Lio/grpc/okhttp/OutboundFlowController;->windowUpdate(Lio/grpc/okhttp/OutboundFlowController$StreamState;I)I

    .line 982
    :cond_1
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
