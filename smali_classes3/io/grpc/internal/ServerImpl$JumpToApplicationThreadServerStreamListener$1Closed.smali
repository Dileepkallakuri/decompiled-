.class final Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1Closed;
.super Lio/grpc/internal/ContextRunnable;
.source "ServerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->closedInternal(Lio/grpc/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Closed"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

.field final synthetic val$link:Lio/perfmark/Link;

.field final synthetic val$status:Lio/grpc/Status;


# direct methods
.method constructor <init>(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;Lio/perfmark/Link;Lio/grpc/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 914
    iput-object p1, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1Closed;->this$0:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    iput-object p2, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1Closed;->val$link:Lio/perfmark/Link;

    iput-object p3, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1Closed;->val$status:Lio/grpc/Status;

    .line 915
    invoke-static {p1}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->access$2800(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;)Lio/grpc/Context$CancellableContext;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/internal/ContextRunnable;-><init>(Lio/grpc/Context;)V

    return-void
.end method


# virtual methods
.method public runInContext()V
    .locals 3

    .line 920
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1Closed;->this$0:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->access$2900(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;)Lio/perfmark/Tag;

    move-result-object v0

    const-string v1, "ServerCallListener(app).closed"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 921
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1Closed;->val$link:Lio/perfmark/Link;

    invoke-static {v0}, Lio/perfmark/PerfMark;->linkIn(Lio/perfmark/Link;)V

    .line 923
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1Closed;->this$0:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->access$3000(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;)Lio/grpc/internal/ServerStreamListener;

    move-result-object v0

    iget-object v2, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1Closed;->val$status:Lio/grpc/Status;

    invoke-interface {v0, v2}, Lio/grpc/internal/ServerStreamListener;->closed(Lio/grpc/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1Closed;->this$0:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->access$2900(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;)Lio/perfmark/Tag;

    move-result-object v0

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1Closed;->this$0:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    invoke-static {v2}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->access$2900(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;)Lio/perfmark/Tag;

    move-result-object v2

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v0
.end method
