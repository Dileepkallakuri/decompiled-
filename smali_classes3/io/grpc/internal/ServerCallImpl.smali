.class final Lio/grpc/internal/ServerCallImpl;
.super Lio/grpc/ServerCall;
.source "ServerCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ServerCall<",
        "TReqT;TRespT;>;"
    }
.end annotation


# static fields
.field static final MISSING_RESPONSE:Ljava/lang/String; = "Completed without a response"

.field static final TOO_MANY_RESPONSES:Ljava/lang/String; = "Too many responses"

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private volatile cancelled:Z

.field private closeCalled:Z

.field private compressor:Lio/grpc/Compressor;

.field private final compressorRegistry:Lio/grpc/CompressorRegistry;

.field private final context:Lio/grpc/Context$CancellableContext;

.field private final decompressorRegistry:Lio/grpc/DecompressorRegistry;

.field private final messageAcceptEncoding:[B

.field private messageSent:Z

.field private final method:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field private sendHeadersCalled:Z

.field private serverCallTracer:Lio/grpc/internal/CallTracer;

.field private final stream:Lio/grpc/internal/ServerStream;

.field private final tag:Lio/perfmark/Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lio/grpc/internal/ServerCallImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ServerCallImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lio/grpc/internal/ServerStream;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/Context$CancellableContext;Lio/grpc/DecompressorRegistry;Lio/grpc/CompressorRegistry;Lio/grpc/internal/CallTracer;Lio/perfmark/Tag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/ServerStream;",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/Context$CancellableContext;",
            "Lio/grpc/DecompressorRegistry;",
            "Lio/grpc/CompressorRegistry;",
            "Lio/grpc/internal/CallTracer;",
            "Lio/perfmark/Tag;",
            ")V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lio/grpc/ServerCall;-><init>()V

    .line 79
    iput-object p1, p0, Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;

    .line 80
    iput-object p2, p0, Lio/grpc/internal/ServerCallImpl;->method:Lio/grpc/MethodDescriptor;

    .line 81
    iput-object p4, p0, Lio/grpc/internal/ServerCallImpl;->context:Lio/grpc/Context$CancellableContext;

    .line 82
    sget-object p1, Lio/grpc/internal/GrpcUtil;->MESSAGE_ACCEPT_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p3, p1}, Lio/grpc/Metadata;->get(Lio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lio/grpc/internal/ServerCallImpl;->messageAcceptEncoding:[B

    .line 83
    iput-object p5, p0, Lio/grpc/internal/ServerCallImpl;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 84
    iput-object p6, p0, Lio/grpc/internal/ServerCallImpl;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 85
    iput-object p7, p0, Lio/grpc/internal/ServerCallImpl;->serverCallTracer:Lio/grpc/internal/CallTracer;

    .line 86
    invoke-virtual {p7}, Lio/grpc/internal/CallTracer;->reportCallStarted()V

    .line 87
    iput-object p8, p0, Lio/grpc/internal/ServerCallImpl;->tag:Lio/perfmark/Tag;

    return-void
.end method

.method static synthetic access$100(Lio/grpc/internal/ServerCallImpl;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lio/grpc/internal/ServerCallImpl;->cancelled:Z

    return p0
.end method

.method static synthetic access$102(Lio/grpc/internal/ServerCallImpl;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lio/grpc/internal/ServerCallImpl;->cancelled:Z

    return p1
.end method

.method static synthetic access$200(Lio/grpc/internal/ServerCallImpl;)Lio/perfmark/Tag;
    .locals 0

    .line 50
    iget-object p0, p0, Lio/grpc/internal/ServerCallImpl;->tag:Lio/perfmark/Tag;

    return-object p0
.end method

.method static synthetic access$300(Lio/grpc/internal/ServerCallImpl;)Lio/grpc/MethodDescriptor;
    .locals 0

    .line 50
    iget-object p0, p0, Lio/grpc/internal/ServerCallImpl;->method:Lio/grpc/MethodDescriptor;

    return-object p0
.end method

.method private closeInternal(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 3

    .line 219
    iget-boolean v0, p0, Lio/grpc/internal/ServerCallImpl;->closeCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "call already closed"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 221
    :try_start_0
    iput-boolean v1, p0, Lio/grpc/internal/ServerCallImpl;->closeCalled:Z

    .line 223
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->method:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor$MethodType;->serverSendsOneMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/grpc/internal/ServerCallImpl;->messageSent:Z

    if-nez v0, :cond_0

    .line 224
    sget-object p2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v0, "Completed without a response"

    invoke-virtual {p2, v0}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/grpc/internal/ServerCallImpl;->internalClose(Lio/grpc/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iget-object p2, p0, Lio/grpc/internal/ServerCallImpl;->serverCallTracer:Lio/grpc/internal/CallTracer;

    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result p1

    invoke-virtual {p2, p1}, Lio/grpc/internal/CallTracer;->reportCallEnded(Z)V

    return-void

    .line 228
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;

    invoke-interface {v0, p1, p2}, Lio/grpc/internal/ServerStream;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    iget-object p2, p0, Lio/grpc/internal/ServerCallImpl;->serverCallTracer:Lio/grpc/internal/CallTracer;

    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result p1

    invoke-virtual {p2, p1}, Lio/grpc/internal/CallTracer;->reportCallEnded(Z)V

    return-void

    :catchall_0
    move-exception p2

    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->serverCallTracer:Lio/grpc/internal/CallTracer;

    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result p1

    invoke-virtual {v0, p1}, Lio/grpc/internal/CallTracer;->reportCallEnded(Z)V

    throw p2
.end method

.method private internalClose(Lio/grpc/Status;)V
    .locals 4

    .line 274
    sget-object v0, Lio/grpc/internal/ServerCallImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Cancelling the stream with status {0}"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/ServerStream;->cancel(Lio/grpc/Status;)V

    .line 276
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->serverCallTracer:Lio/grpc/internal/CallTracer;

    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result p1

    invoke-virtual {v0, p1}, Lio/grpc/internal/CallTracer;->reportCallEnded(Z)V

    return-void
.end method

.method private sendHeadersInternal(Lio/grpc/Metadata;)V
    .locals 5

    .line 111
    iget-boolean v0, p0, Lio/grpc/internal/ServerCallImpl;->sendHeadersCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "sendHeaders has already been called"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 112
    iget-boolean v0, p0, Lio/grpc/internal/ServerCallImpl;->closeCalled:Z

    xor-int/2addr v0, v1

    const-string v2, "call is closed"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 114
    sget-object v0, Lio/grpc/internal/GrpcUtil;->CONTENT_LENGTH_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p1, v0}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 115
    sget-object v0, Lio/grpc/internal/GrpcUtil;->MESSAGE_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p1, v0}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 116
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->compressor:Lio/grpc/Compressor;

    if-nez v0, :cond_0

    .line 117
    sget-object v0, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    iput-object v0, p0, Lio/grpc/internal/ServerCallImpl;->compressor:Lio/grpc/Compressor;

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->messageAcceptEncoding:[B

    if-eqz v0, :cond_1

    .line 121
    sget-object v0, Lio/grpc/internal/GrpcUtil;->ACCEPT_ENCODING_SPLITTER:Lcom/google/common/base/Splitter;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lio/grpc/internal/ServerCallImpl;->messageAcceptEncoding:[B

    sget-object v4, Lio/grpc/internal/GrpcUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 122
    invoke-virtual {v0, v2}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    iget-object v2, p0, Lio/grpc/internal/ServerCallImpl;->compressor:Lio/grpc/Compressor;

    .line 123
    invoke-interface {v2}, Lio/grpc/Compressor;->getMessageEncoding()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v0, v2}, Lio/grpc/internal/GrpcUtil;->iterableContains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    sget-object v0, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    iput-object v0, p0, Lio/grpc/internal/ServerCallImpl;->compressor:Lio/grpc/Compressor;

    goto :goto_0

    .line 128
    :cond_1
    sget-object v0, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    iput-object v0, p0, Lio/grpc/internal/ServerCallImpl;->compressor:Lio/grpc/Compressor;

    .line 133
    :cond_2
    :goto_0
    sget-object v0, Lio/grpc/internal/GrpcUtil;->MESSAGE_ENCODING_KEY:Lio/grpc/Metadata$Key;

    iget-object v2, p0, Lio/grpc/internal/ServerCallImpl;->compressor:Lio/grpc/Compressor;

    invoke-interface {v2}, Lio/grpc/Compressor;->getMessageEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;

    iget-object v2, p0, Lio/grpc/internal/ServerCallImpl;->compressor:Lio/grpc/Compressor;

    invoke-interface {v0, v2}, Lio/grpc/internal/ServerStream;->setCompressor(Lio/grpc/Compressor;)V

    .line 137
    sget-object v0, Lio/grpc/internal/GrpcUtil;->MESSAGE_ACCEPT_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p1, v0}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 138
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 139
    invoke-static {v0}, Lio/grpc/InternalDecompressorRegistry;->getRawAdvertisedMessageEncodings(Lio/grpc/DecompressorRegistry;)[B

    move-result-object v0

    .line 140
    array-length v2, v0

    if-eqz v2, :cond_3

    .line 141
    sget-object v2, Lio/grpc/internal/GrpcUtil;->MESSAGE_ACCEPT_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p1, v2, v0}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 146
    :cond_3
    iput-boolean v1, p0, Lio/grpc/internal/ServerCallImpl;->sendHeadersCalled:Z

    .line 147
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/ServerStream;->writeHeaders(Lio/grpc/Metadata;)V

    return-void
.end method

.method private sendMessageInternal(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 161
    iget-boolean v0, p0, Lio/grpc/internal/ServerCallImpl;->sendHeadersCalled:Z

    const-string v1, "sendHeaders has not been called"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 162
    iget-boolean v0, p0, Lio/grpc/internal/ServerCallImpl;->closeCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "call is closed"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->method:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor$MethodType;->serverSendsOneMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/grpc/internal/ServerCallImpl;->messageSent:Z

    if-eqz v0, :cond_0

    .line 165
    sget-object p1, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v0, "Too many responses"

    invoke-virtual {p1, v0}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/internal/ServerCallImpl;->internalClose(Lio/grpc/Status;)V

    return-void

    .line 169
    :cond_0
    iput-boolean v1, p0, Lio/grpc/internal/ServerCallImpl;->messageSent:Z

    .line 171
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->method:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0, p1}, Lio/grpc/MethodDescriptor;->streamResponse(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    .line 172
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/ServerStream;->writeMessage(Ljava/io/InputStream;)V

    .line 173
    invoke-virtual {p0}, Lio/grpc/internal/ServerCallImpl;->getMethodDescriptor()Lio/grpc/MethodDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/MethodDescriptor$MethodType;->serverSendsOneMessage()Z

    move-result p1

    if-nez p1, :cond_1

    .line 174
    iget-object p1, p0, Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;

    invoke-interface {p1}, Lio/grpc/internal/ServerStream;->flush()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 179
    sget-object v0, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    const-string v1, "Server sendMessage() failed with Error"

    .line 180
    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    new-instance v1, Lio/grpc/Metadata;

    invoke-direct {v1}, Lio/grpc/Metadata;-><init>()V

    .line 179
    invoke-virtual {p0, v0, v1}, Lio/grpc/internal/ServerCallImpl;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 182
    throw p1

    :catch_1
    move-exception p1

    .line 177
    invoke-static {p1}, Lio/grpc/Status;->fromThrowable(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {p0, p1, v0}, Lio/grpc/internal/ServerCallImpl;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public close(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 2

    .line 210
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->tag:Lio/perfmark/Tag;

    const-string v1, "ServerCall.close"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 212
    :try_start_0
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/ServerCallImpl;->closeInternal(Lio/grpc/Status;Lio/grpc/Metadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    iget-object p1, p0, Lio/grpc/internal/ServerCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, p1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lio/grpc/internal/ServerCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, p2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw p1
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 245
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;

    invoke-interface {v0}, Lio/grpc/internal/ServerStream;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;

    invoke-interface {v0}, Lio/grpc/internal/ServerStream;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethodDescriptor()Lio/grpc/MethodDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->method:Lio/grpc/MethodDescriptor;

    return-object v0
.end method

.method public getSecurityLevel()Lio/grpc/SecurityLevel;
    .locals 2

    .line 260
    invoke-virtual {p0}, Lio/grpc/internal/ServerCallImpl;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    if-nez v0, :cond_0

    .line 262
    invoke-super {p0}, Lio/grpc/ServerCall;->getSecurityLevel()Lio/grpc/SecurityLevel;

    move-result-object v0

    return-object v0

    .line 264
    :cond_0
    sget-object v1, Lio/grpc/internal/GrpcAttributes;->ATTR_SECURITY_LEVEL:Lio/grpc/Attributes$Key;

    invoke-virtual {v0, v1}, Lio/grpc/Attributes;->get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/SecurityLevel;

    if-nez v0, :cond_1

    .line 265
    invoke-super {p0}, Lio/grpc/ServerCall;->getSecurityLevel()Lio/grpc/SecurityLevel;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lio/grpc/internal/ServerCallImpl;->cancelled:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lio/grpc/internal/ServerCallImpl;->closeCalled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 205
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;

    invoke-interface {v0}, Lio/grpc/internal/ServerStream;->isReady()Z

    move-result v0

    return v0
.end method

.method newServerStreamListener(Lio/grpc/ServerCall$Listener;)Lio/grpc/internal/ServerStreamListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerCall$Listener<",
            "TReqT;>;)",
            "Lio/grpc/internal/ServerStreamListener;"
        }
    .end annotation

    .line 240
    new-instance v0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;

    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl;->context:Lio/grpc/Context$CancellableContext;

    invoke-direct {v0, p0, p1, v1}, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;-><init>(Lio/grpc/internal/ServerCallImpl;Lio/grpc/ServerCall$Listener;Lio/grpc/Context$CancellableContext;)V

    return-object v0
.end method

.method public request(I)V
    .locals 2

    .line 92
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->tag:Lio/perfmark/Tag;

    const-string v1, "ServerCall.request"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 94
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/ServerStream;->request(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object p1, p0, Lio/grpc/internal/ServerCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, p1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw p1
.end method

.method public sendHeaders(Lio/grpc/Metadata;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->tag:Lio/perfmark/Tag;

    const-string v1, "ServerCall.sendHeaders"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 104
    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/internal/ServerCallImpl;->sendHeadersInternal(Lio/grpc/Metadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object p1, p0, Lio/grpc/internal/ServerCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, p1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw p1
.end method

.method public sendMessage(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->tag:Lio/perfmark/Tag;

    const-string v1, "ServerCall.sendMessage"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 154
    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/internal/ServerCallImpl;->sendMessageInternal(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object p1, p0, Lio/grpc/internal/ServerCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, p1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->tag:Lio/perfmark/Tag;

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw p1
.end method

.method public setCompression(Ljava/lang/String;)V
    .locals 3

    .line 194
    iget-boolean v0, p0, Lio/grpc/internal/ServerCallImpl;->sendHeadersCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "sendHeaders has been called"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->compressorRegistry:Lio/grpc/CompressorRegistry;

    invoke-virtual {v0, p1}, Lio/grpc/CompressorRegistry;->lookupCompressor(Ljava/lang/String;)Lio/grpc/Compressor;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ServerCallImpl;->compressor:Lio/grpc/Compressor;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "Unable to find compressor by name %s"

    .line 197
    invoke-static {v1, v0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMessageCompression(Z)V
    .locals 1

    .line 188
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/ServerStream;->setMessageCompression(Z)V

    return-void
.end method
