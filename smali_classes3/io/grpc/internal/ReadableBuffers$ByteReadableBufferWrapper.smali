.class Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;
.super Lio/grpc/internal/AbstractReadableBuffer;
.source "ReadableBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ReadableBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteReadableBufferWrapper"
.end annotation


# instance fields
.field final bytes:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 238
    invoke-direct {p0}, Lio/grpc/internal/AbstractReadableBuffer;-><init>()V

    const-string v0, "bytes"

    .line 239
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .line 310
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public arrayOffset()I
    .locals 2

    .line 315
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    iget-object v1, p0, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public byteBufferSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 340
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public hasArray()Z
    .locals 1

    .line 305
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    return v0
.end method

.method public mark()V
    .locals 1

    .line 325
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic readBytes(I)Lio/grpc/internal/ReadableBuffer;
    .locals 0

    .line 235
    invoke-virtual {p0, p1}, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->readBytes(I)Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;

    move-result-object p1

    return-object p1
.end method

.method public readBytes(I)Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;
    .locals 3

    .line 296
    invoke-virtual {p0, p1}, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->checkReadable(I)V

    .line 297
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 299
    iget-object v1, p0, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 300
    new-instance p1, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;

    invoke-direct {p1, v0}, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;-><init>(Ljava/nio/ByteBuffer;)V

    return-object p1
.end method

.method public readBytes(Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    invoke-virtual {p0, p2}, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->checkReadable(I)V

    .line 283
    invoke-virtual {p0}, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->arrayOffset()I

    move-result v1

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 285
    iget-object p1, p0, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 288
    :cond_0
    new-array p2, p2, [B

    .line 289
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 290
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)V
    .locals 4

    const-string v0, "dest"

    .line 267
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 269
    invoke-virtual {p0, v0}, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->checkReadable(I)V

    .line 272
    iget-object v1, p0, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 273
    iget-object v2, p0, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 276
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 277
    iget-object p1, p0, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public readBytes([BII)V
    .locals 1

    .line 261
    invoke-virtual {p0, p3}, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->checkReadable(I)V

    .line 262
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public readUnsignedByte()I
    .locals 1

    const/4 v0, 0x1

    .line 249
    invoke-virtual {p0, v0}, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->checkReadable(I)V

    .line 250
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readableBytes()I
    .locals 1

    .line 244
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 330
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    return-void
.end method

.method public skipBytes(I)V
    .locals 2

    .line 255
    invoke-virtual {p0, p1}, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->checkReadable(I)V

    .line 256
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
