.class final Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor$MetadataCapturingClientCall$MetadataCapturingClientCallListener;
.super Lio/grpc/ForwardingClientCallListener$SimpleForwardingClientCallListener;
.source "MetadataUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor$MetadataCapturingClientCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MetadataCapturingClientCallListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ForwardingClientCallListener$SimpleForwardingClientCallListener<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor$MetadataCapturingClientCall;


# direct methods
.method constructor <init>(Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor$MetadataCapturingClientCall;Lio/grpc/ClientCall$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;)V"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor$MetadataCapturingClientCall$MetadataCapturingClientCallListener;->this$1:Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor$MetadataCapturingClientCall;

    .line 174
    invoke-direct {p0, p2}, Lio/grpc/ForwardingClientCallListener$SimpleForwardingClientCallListener;-><init>(Lio/grpc/ClientCall$Listener;)V

    return-void
.end method


# virtual methods
.method public onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor$MetadataCapturingClientCall$MetadataCapturingClientCallListener;->this$1:Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor$MetadataCapturingClientCall;

    iget-object v0, v0, Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor$MetadataCapturingClientCall;->this$0:Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor;

    iget-object v0, v0, Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor;->trailersCapture:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 186
    invoke-super {p0, p1, p2}, Lio/grpc/ForwardingClientCallListener$SimpleForwardingClientCallListener;->onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V

    return-void
.end method

.method public onHeaders(Lio/grpc/Metadata;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor$MetadataCapturingClientCall$MetadataCapturingClientCallListener;->this$1:Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor$MetadataCapturingClientCall;

    iget-object v0, v0, Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor$MetadataCapturingClientCall;->this$0:Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor;

    iget-object v0, v0, Lio/grpc/stub/MetadataUtils$MetadataCapturingClientInterceptor;->headersCapture:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 180
    invoke-super {p0, p1}, Lio/grpc/ForwardingClientCallListener$SimpleForwardingClientCallListener;->onHeaders(Lio/grpc/Metadata;)V

    return-void
.end method
