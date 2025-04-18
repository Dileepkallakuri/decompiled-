.class final Lio/grpc/internal/PickFirstLoadBalancer;
.super Lio/grpc/LoadBalancer;
.source "PickFirstLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/PickFirstLoadBalancer$RequestConnectionPicker;,
        Lio/grpc/internal/PickFirstLoadBalancer$Picker;
    }
.end annotation


# instance fields
.field private final helper:Lio/grpc/LoadBalancer$Helper;

.field private subchannel:Lio/grpc/LoadBalancer$Subchannel;


# direct methods
.method constructor <init>(Lio/grpc/LoadBalancer$Helper;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lio/grpc/LoadBalancer;-><init>()V

    const-string v0, "helper"

    .line 44
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/LoadBalancer$Helper;

    iput-object p1, p0, Lio/grpc/internal/PickFirstLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/PickFirstLoadBalancer;Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/PickFirstLoadBalancer;->processSubchannelState(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V

    return-void
.end method

.method static synthetic access$200(Lio/grpc/internal/PickFirstLoadBalancer;)Lio/grpc/LoadBalancer$Helper;
    .locals 0

    .line 39
    iget-object p0, p0, Lio/grpc/internal/PickFirstLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    return-object p0
.end method

.method private processSubchannelState(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V
    .locals 3

    .line 93
    invoke-virtual {p2}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    .line 94
    sget-object v1, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-virtual {p2}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v1

    sget-object v2, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-eq v1, v2, :cond_1

    invoke-virtual {p2}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v1

    sget-object v2, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v1, v2, :cond_2

    .line 98
    :cond_1
    iget-object v1, p0, Lio/grpc/internal/PickFirstLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    invoke-virtual {v1}, Lio/grpc/LoadBalancer$Helper;->refreshNameResolution()V

    .line 102
    :cond_2
    sget-object v1, Lio/grpc/internal/PickFirstLoadBalancer$2;->$SwitchMap$io$grpc$ConnectivityState:[I

    invoke-virtual {v0}, Lio/grpc/ConnectivityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 p1, 0x4

    if-ne v1, p1, :cond_3

    .line 115
    new-instance p1, Lio/grpc/internal/PickFirstLoadBalancer$Picker;

    invoke-virtual {p2}, Lio/grpc/ConnectivityStateInfo;->getStatus()Lio/grpc/Status;

    move-result-object p2

    invoke-static {p2}, Lio/grpc/LoadBalancer$PickResult;->withError(Lio/grpc/Status;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/grpc/internal/PickFirstLoadBalancer$Picker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    goto :goto_1

    .line 118
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported state:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_4
    new-instance p2, Lio/grpc/internal/PickFirstLoadBalancer$Picker;

    invoke-static {p1}, Lio/grpc/LoadBalancer$PickResult;->withSubchannel(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/grpc/internal/PickFirstLoadBalancer$Picker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    goto :goto_0

    .line 109
    :cond_5
    new-instance p1, Lio/grpc/internal/PickFirstLoadBalancer$Picker;

    invoke-static {}, Lio/grpc/LoadBalancer$PickResult;->withNoResult()Lio/grpc/LoadBalancer$PickResult;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/grpc/internal/PickFirstLoadBalancer$Picker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    goto :goto_1

    .line 104
    :cond_6
    new-instance p2, Lio/grpc/internal/PickFirstLoadBalancer$RequestConnectionPicker;

    invoke-direct {p2, p0, p1}, Lio/grpc/internal/PickFirstLoadBalancer$RequestConnectionPicker;-><init>(Lio/grpc/internal/PickFirstLoadBalancer;Lio/grpc/LoadBalancer$Subchannel;)V

    :goto_0
    move-object p1, p2

    .line 120
    :goto_1
    iget-object p2, p0, Lio/grpc/internal/PickFirstLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    invoke-virtual {p2, v0, p1}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    return-void
.end method


# virtual methods
.method public acceptResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)Z
    .locals 4

    .line 49
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NameResolver returned no usable address. addrs="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", attrs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAttributes()Lio/grpc/Attributes;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {v0, p1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/internal/PickFirstLoadBalancer;->handleNameResolutionError(Lio/grpc/Status;)V

    const/4 p1, 0x0

    return p1

    .line 57
    :cond_0
    iget-object p1, p0, Lio/grpc/internal/PickFirstLoadBalancer;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    if-nez p1, :cond_1

    .line 58
    iget-object p1, p0, Lio/grpc/internal/PickFirstLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    .line 59
    invoke-static {}, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->newBuilder()Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {v1, v0}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->setAddresses(Ljava/util/List;)Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->build()Lio/grpc/LoadBalancer$CreateSubchannelArgs;

    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Lio/grpc/LoadBalancer$Helper;->createSubchannel(Lio/grpc/LoadBalancer$CreateSubchannelArgs;)Lio/grpc/LoadBalancer$Subchannel;

    move-result-object p1

    .line 62
    new-instance v0, Lio/grpc/internal/PickFirstLoadBalancer$1;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/PickFirstLoadBalancer$1;-><init>(Lio/grpc/internal/PickFirstLoadBalancer;Lio/grpc/LoadBalancer$Subchannel;)V

    invoke-virtual {p1, v0}, Lio/grpc/LoadBalancer$Subchannel;->start(Lio/grpc/LoadBalancer$SubchannelStateListener;)V

    .line 68
    iput-object p1, p0, Lio/grpc/internal/PickFirstLoadBalancer;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    .line 72
    iget-object v0, p0, Lio/grpc/internal/PickFirstLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    sget-object v1, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    new-instance v2, Lio/grpc/internal/PickFirstLoadBalancer$Picker;

    invoke-static {p1}, Lio/grpc/LoadBalancer$PickResult;->withSubchannel(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/grpc/internal/PickFirstLoadBalancer$Picker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    invoke-virtual {v0, v1, v2}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 73
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$Subchannel;->requestConnection()V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p1, v0}, Lio/grpc/LoadBalancer$Subchannel;->updateAddresses(Ljava/util/List;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public handleNameResolutionError(Lio/grpc/Status;)V
    .locals 3

    .line 83
    iget-object v0, p0, Lio/grpc/internal/PickFirstLoadBalancer;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Subchannel;->shutdown()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lio/grpc/internal/PickFirstLoadBalancer;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    .line 89
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/PickFirstLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    new-instance v2, Lio/grpc/internal/PickFirstLoadBalancer$Picker;

    invoke-static {p1}, Lio/grpc/LoadBalancer$PickResult;->withError(Lio/grpc/Status;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object p1

    invoke-direct {v2, p1}, Lio/grpc/internal/PickFirstLoadBalancer$Picker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    invoke-virtual {v0, v1, v2}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    return-void
.end method

.method public requestConnection()V
    .locals 1

    .line 132
    iget-object v0, p0, Lio/grpc/internal/PickFirstLoadBalancer;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Subchannel;->requestConnection()V

    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 125
    iget-object v0, p0, Lio/grpc/internal/PickFirstLoadBalancer;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Subchannel;->shutdown()V

    :cond_0
    return-void
.end method
