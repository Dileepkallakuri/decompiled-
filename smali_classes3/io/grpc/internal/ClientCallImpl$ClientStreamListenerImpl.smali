.class Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;
.super Ljava/lang/Object;
.source "ClientCallImpl.java"

# interfaces
.implements Lio/grpc/internal/ClientStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ClientCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientStreamListenerImpl"
.end annotation


# instance fields
.field private exceptionStatus:Lio/grpc/Status;

.field private final observer:Lio/grpc/ClientCall$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/grpc/internal/ClientCallImpl;


# direct methods
.method public constructor <init>(Lio/grpc/internal/ClientCallImpl;Lio/grpc/ClientCall$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;)V"
        }
    .end annotation

    .line 588
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "observer"

    .line 589
    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/ClientCall$Listener;

    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->observer:Lio/grpc/ClientCall$Listener;

    return-void
.end method

.method static synthetic access$500(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;)Lio/grpc/Status;
    .locals 0

    .line 584
    iget-object p0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->exceptionStatus:Lio/grpc/Status;

    return-object p0
.end method

.method static synthetic access$600(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;)Lio/grpc/ClientCall$Listener;
    .locals 0

    .line 584
    iget-object p0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->observer:Lio/grpc/ClientCall$Listener;

    return-object p0
.end method

.method static synthetic access$700(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;Lio/grpc/Status;)V
    .locals 0

    .line 584
    invoke-direct {p0, p1}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->exceptionThrown(Lio/grpc/Status;)V

    return-void
.end method

.method private closedInternal(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V
    .locals 2

    .line 709
    iget-object p2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {p2}, Lio/grpc/internal/ClientCallImpl;->access$1000(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/Deadline;

    move-result-object p2

    .line 710
    invoke-virtual {p1}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v0

    sget-object v1, Lio/grpc/Status$Code;->CANCELLED:Lio/grpc/Status$Code;

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 714
    invoke-virtual {p2}, Lio/grpc/Deadline;->isExpired()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 715
    new-instance p1, Lio/grpc/internal/InsightBuilder;

    invoke-direct {p1}, Lio/grpc/internal/InsightBuilder;-><init>()V

    .line 716
    iget-object p2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {p2}, Lio/grpc/internal/ClientCallImpl;->access$100(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/internal/ClientStream;

    move-result-object p2

    invoke-interface {p2, p1}, Lio/grpc/internal/ClientStream;->appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V

    .line 717
    sget-object p2, Lio/grpc/Status;->DEADLINE_EXCEEDED:Lio/grpc/Status;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "ClientCall was cancelled at or after deadline. "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/grpc/Status;->augmentDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 720
    new-instance p3, Lio/grpc/Metadata;

    invoke-direct {p3}, Lio/grpc/Metadata;-><init>()V

    .line 725
    :cond_0
    invoke-static {}, Lio/perfmark/PerfMark;->linkOut()Lio/perfmark/Link;

    move-result-object p2

    .line 765
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$800(Lio/grpc/internal/ClientCallImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;

    invoke-direct {v1, p0, p2, p1, p3}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;-><init>(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;Lio/perfmark/Link;Lio/grpc/Status;Lio/grpc/Metadata;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private exceptionThrown(Lio/grpc/Status;)V
    .locals 1

    .line 600
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->exceptionStatus:Lio/grpc/Status;

    .line 601
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$100(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    return-void
.end method


# virtual methods
.method public closed(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V
    .locals 2

    .line 699
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object v0

    const-string v1, "ClientStreamListener.closed"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 701
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->closedInternal(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    iget-object p1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {p1}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object p1

    invoke-static {v1, p1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {p2}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object p2

    invoke-static {v1, p2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw p1
.end method

.method public headersRead(Lio/grpc/Metadata;)V
    .locals 4

    .line 606
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object v0

    const-string v1, "ClientStreamListener.headersRead"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 607
    invoke-static {}, Lio/perfmark/PerfMark;->linkOut()Lio/perfmark/Link;

    move-result-object v0

    .line 639
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v2}, Lio/grpc/internal/ClientCallImpl;->access$800(Lio/grpc/internal/ClientCallImpl;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1HeadersRead;

    invoke-direct {v3, p0, v0, p1}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1HeadersRead;-><init>(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;Lio/perfmark/Link;Lio/grpc/Metadata;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    iget-object p1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {p1}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object p1

    invoke-static {v1, p1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object v0

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw p1
.end method

.method public messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V
    .locals 4

    .line 647
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object v0

    const-string v1, "ClientStreamListener.messagesAvailable"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 648
    invoke-static {}, Lio/perfmark/PerfMark;->linkOut()Lio/perfmark/Link;

    move-result-object v0

    .line 691
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v2}, Lio/grpc/internal/ClientCallImpl;->access$800(Lio/grpc/internal/ClientCallImpl;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1MessagesAvailable;

    invoke-direct {v3, p0, v0, p1}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1MessagesAvailable;-><init>(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;Lio/perfmark/Link;Lio/grpc/internal/StreamListener$MessageProducer;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    iget-object p1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {p1}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object p1

    invoke-static {v1, p1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object v0

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw p1
.end method

.method public onReady()V
    .locals 4

    .line 770
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$900(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/MethodDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor$MethodType;->clientSendsOneMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 774
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object v0

    const-string v1, "ClientStreamListener.onReady"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 775
    invoke-static {}, Lio/perfmark/PerfMark;->linkOut()Lio/perfmark/Link;

    move-result-object v0

    .line 807
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v2}, Lio/grpc/internal/ClientCallImpl;->access$800(Lio/grpc/internal/ClientCallImpl;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamOnReady;

    invoke-direct {v3, p0, v0}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamOnReady;-><init>(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;Lio/perfmark/Link;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object v0

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v2}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object v2

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v0
.end method
