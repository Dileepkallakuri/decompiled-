.class final Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;
.super Lio/grpc/stub/ClientCalls$StartableListener;
.source "ClientCalls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ClientCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnaryStreamToFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/stub/ClientCalls$StartableListener<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field private isValueReceived:Z

.field private final responseFuture:Lio/grpc/stub/ClientCalls$GrpcFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/stub/ClientCalls$GrpcFuture<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRespT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/stub/ClientCalls$GrpcFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/stub/ClientCalls$GrpcFuture<",
            "TRespT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 515
    invoke-direct {p0, v0}, Lio/grpc/stub/ClientCalls$StartableListener;-><init>(Lio/grpc/stub/ClientCalls$1;)V

    const/4 v0, 0x0

    .line 512
    iput-boolean v0, p0, Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;->isValueReceived:Z

    .line 516
    iput-object p1, p0, Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;->responseFuture:Lio/grpc/stub/ClientCalls$GrpcFuture;

    return-void
.end method


# virtual methods
.method public onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 2

    .line 535
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    iget-boolean p1, p0, Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;->isValueReceived:Z

    if-nez p1, :cond_0

    .line 538
    iget-object p1, p0, Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;->responseFuture:Lio/grpc/stub/ClientCalls$GrpcFuture;

    sget-object v0, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v1, "No value received for unary call"

    .line 539
    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 540
    invoke-virtual {v0, p2}, Lio/grpc/Status;->asRuntimeException(Lio/grpc/Metadata;)Lio/grpc/StatusRuntimeException;

    move-result-object p2

    .line 538
    invoke-virtual {p1, p2}, Lio/grpc/stub/ClientCalls$GrpcFuture;->setException(Ljava/lang/Throwable;)Z

    .line 542
    :cond_0
    iget-object p1, p0, Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;->responseFuture:Lio/grpc/stub/ClientCalls$GrpcFuture;

    iget-object p2, p0, Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;->value:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lio/grpc/stub/ClientCalls$GrpcFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 544
    :cond_1
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;->responseFuture:Lio/grpc/stub/ClientCalls$GrpcFuture;

    invoke-virtual {p1, p2}, Lio/grpc/Status;->asRuntimeException(Lio/grpc/Metadata;)Lio/grpc/StatusRuntimeException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/stub/ClientCalls$GrpcFuture;->setException(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method public onHeaders(Lio/grpc/Metadata;)V
    .locals 0

    return-void
.end method

.method public onMessage(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 525
    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;->isValueReceived:Z

    if-nez v0, :cond_0

    .line 529
    iput-object p1, p0, Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;->value:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 530
    iput-boolean p1, p0, Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;->isValueReceived:Z

    return-void

    .line 526
    :cond_0
    sget-object p1, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v0, "More than one value received for unary call"

    invoke-virtual {p1, v0}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 527
    invoke-virtual {p1}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object p1

    throw p1
.end method

.method onStart()V
    .locals 2

    .line 550
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;->responseFuture:Lio/grpc/stub/ClientCalls$GrpcFuture;

    invoke-static {v0}, Lio/grpc/stub/ClientCalls$GrpcFuture;->access$600(Lio/grpc/stub/ClientCalls$GrpcFuture;)Lio/grpc/ClientCall;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/grpc/ClientCall;->request(I)V

    return-void
.end method
