.class final Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;
.super Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;
.source "RoundRobinLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/RoundRobinLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EmptyPicker"
.end annotation


# instance fields
.field private final status:Lio/grpc/Status;


# direct methods
.method constructor <init>(Lio/grpc/Status;)V
    .locals 1
    .param p1    # Lio/grpc/Status;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 340
    invoke-direct {p0, v0}, Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;-><init>(Lio/grpc/util/RoundRobinLoadBalancer$1;)V

    const-string v0, "status"

    .line 341
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/Status;

    iput-object p1, p0, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;->status:Lio/grpc/Status;

    return-void
.end method


# virtual methods
.method isEquivalentTo(Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;)Z
    .locals 2

    .line 351
    instance-of v0, p1, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;->status:Lio/grpc/Status;

    check-cast p1, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;

    iget-object v1, p1, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;->status:Lio/grpc/Status;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;->status:Lio/grpc/Status;

    .line 352
    invoke-virtual {v0}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;->status:Lio/grpc/Status;

    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;
    .locals 0

    .line 346
    iget-object p1, p0, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;->status:Lio/grpc/Status;

    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lio/grpc/LoadBalancer$PickResult;->withNoResult()Lio/grpc/LoadBalancer$PickResult;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;->status:Lio/grpc/Status;

    invoke-static {p1}, Lio/grpc/LoadBalancer$PickResult;->withError(Lio/grpc/Status;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 357
    const-class v0, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;

    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "status"

    iget-object v2, p0, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;->status:Lio/grpc/Status;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
