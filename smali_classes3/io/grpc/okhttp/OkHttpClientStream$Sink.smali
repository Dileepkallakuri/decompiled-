.class Lio/grpc/okhttp/OkHttpClientStream$Sink;
.super Ljava/lang/Object;
.source "OkHttpClientStream.java"

# interfaces
.implements Lio/grpc/internal/AbstractClientStream$Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpClientStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Sink"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/okhttp/OkHttpClientStream;


# direct methods
.method constructor <init>(Lio/grpc/okhttp/OkHttpClientStream;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Lio/grpc/Status;)V
    .locals 4

    const-string v0, "OkHttpClientStream$Sink.cancel"

    .line 184
    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    .line 186
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientStream;->access$200(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->access$300(Lio/grpc/okhttp/OkHttpClientStream$TransportState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 187
    :try_start_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientStream;->access$200(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->access$900(Lio/grpc/okhttp/OkHttpClientStream$TransportState;Lio/grpc/Status;ZLio/grpc/Metadata;)V

    .line 188
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p1, "OkHttpClientStream$Sink.cancel"

    .line 190
    invoke-static {p1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 188
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    const-string v0, "OkHttpClientStream$Sink.cancel"

    .line 190
    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw p1
.end method

.method public writeFrame(Lio/grpc/internal/WritableBuffer;ZZI)V
    .locals 2

    const-string v0, "OkHttpClientStream$Sink.writeFrame"

    .line 160
    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 163
    invoke-static {}, Lio/grpc/okhttp/OkHttpClientStream;->access$500()Lokio/Buffer;

    move-result-object p1

    goto :goto_0

    .line 165
    :cond_0
    check-cast p1, Lio/grpc/okhttp/OkHttpWritableBuffer;

    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpWritableBuffer;->buffer()Lokio/Buffer;

    move-result-object p1

    .line 166
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_1

    .line 168
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {v1, v0}, Lio/grpc/okhttp/OkHttpClientStream;->access$600(Lio/grpc/okhttp/OkHttpClientStream;I)V

    .line 173
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientStream;->access$200(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->access$300(Lio/grpc/okhttp/OkHttpClientStream$TransportState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    :try_start_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientStream;->access$200(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->access$700(Lio/grpc/okhttp/OkHttpClientStream$TransportState;Lokio/Buffer;ZZ)V

    .line 175
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpClientStream;->access$800(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/internal/TransportTracer;

    move-result-object p1

    invoke-virtual {p1, p4}, Lio/grpc/internal/TransportTracer;->reportMessageSent(I)V

    .line 176
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p1, "OkHttpClientStream$Sink.writeFrame"

    .line 178
    invoke-static {p1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 176
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    const-string p2, "OkHttpClientStream$Sink.writeFrame"

    .line 178
    invoke-static {p2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw p1
.end method

.method public writeHeaders(Lio/grpc/Metadata;[B)V
    .locals 3

    const-string v0, "OkHttpClientStream$Sink.writeHeaders"

    .line 142
    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientStream;->access$000(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 145
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lio/grpc/okhttp/OkHttpClientStream;->access$102(Lio/grpc/okhttp/OkHttpClientStream;Z)Z

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_0
    :try_start_0
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpClientStream;->access$200(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object p2

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->access$300(Lio/grpc/okhttp/OkHttpClientStream$TransportState;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    :try_start_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientStream;->access$200(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->access$400(Lio/grpc/okhttp/OkHttpClientStream$TransportState;Lio/grpc/Metadata;Ljava/lang/String;)V

    .line 151
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p1, "OkHttpClientStream$Sink.writeHeaders"

    .line 153
    invoke-static {p1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 151
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    const-string p2, "OkHttpClientStream$Sink.writeHeaders"

    .line 153
    invoke-static {p2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw p1
.end method
